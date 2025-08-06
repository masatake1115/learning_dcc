import hou

def convert_hda_to_subnet():
    # Get selected nodes
    selected_nodes = hou.selectedNodes()
    
    # Check if exactly one node is selected and it's an HDA
    if len(selected_nodes) != 1:
        print("Error: Please select exactly one HDA node.")
        return
    hda_node = selected_nodes[0]
    if not hda_node.type().definition():
        print("Error: Selected node is not an HDA.")
        return
    
    try:
        # Store parent and original position
        parent = hda_node.parent()
        position = hda_node.position()
        
        # Allow editing of contents (unlock HDA)
        if not hda_node.isEditable():
            hda_node.allowEditingOfContents()
        
        # Create a new subnet to hold extracted contents
        subnet = parent.createNode("subnet", hda_node.name() + "_subnet")
        
        # Manually extract contents by copying nodes from inside the HDA
        internal_nodes = hda_node.children()
        if not internal_nodes:
            print("Warning: HDA contains no nodes to extract.")
            subnet.destroy()
            return
        
        # Record original positions and copy nodes to the subnet
        node_map = {}  # Map original nodes to their copies
        node_positions = {}  # Map original nodes to their positions
        for node in internal_nodes:
            node_positions[node] = node.position()  # Store original position
            new_node = subnet.copyItems([node])[0]
            node_map[node] = new_node
        
        # Set positions of copied nodes to match original layout
        for orig_node, new_node in node_map.items():
            if orig_node in node_positions:
                new_node.setPosition(node_positions[orig_node])
        
        # Reconnect nodes inside the subnet to preserve internal wiring
        for orig_node, new_node in node_map.items():
            for i, input_node in enumerate(orig_node.inputs()):
                if input_node in node_map:
                    new_node.setInput(i, node_map[input_node])
        
        # Copy parameter interface
        parm_templates = hda_node.parmTemplateGroup().entries()
        new_parm_group = subnet.parmTemplateGroup()#hou.ParmTemplateGroup()
        for parm_template in parm_templates:
            new_parm_group.addParmTemplate(parm_template)
        #    new_parm_group.append(parm_template)
        subnet.setParmTemplateGroup(new_parm_group)
        
        # Match parameter values
        for parm in hda_node.parms():
            parm_name = parm.name()
            subnet_parm = subnet.parm(parm_name)
            if subnet_parm:
                try:
                    subnet_parm.set(parm.eval())
                except:
                    pass  # Skip if parameter types mismatch
        
        # Position the subnet where the HDA was
        subnet.setPosition(position)
        
        # Connect subnet to the same inputs and outputs as the HDA
        for i, input_node in enumerate(hda_node.inputs()):
            subnet.setInput(i, input_node)
        for conn in hda_node.outputConnections():
            output_node = conn.outputNode()
            input_index = conn.inputIndex()
            output_node.setInput(input_index, subnet, conn.outputIndex())
        
        # Delete the original HDA
        hda_node.destroy()
        
        # Select the new subnet
        subnet.setSelected(True)
        
        print(f"HDA '{subnet.name()}' converted to subnet successfully!")
        
    except Exception as e:
        print(f"Error converting HDA to subnet: {str(e)}")
        if subnet:
            subnet.destroy()  # Clean up if subnet was created

# Run the tool
convert_hda_to_subnet()