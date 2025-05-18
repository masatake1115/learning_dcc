from PySide2.QtWidgets import*
from PySide2.QtCore import*



"""
def get_all_parm_templates( all_parms, node_type ):
    parms = node_type.parmTemplates()
    
    for parm in parms:
        if parm.type() == hou.parmTemplateType.Folder:
            get_all_parm_templates(all_parms, parm)
        elif parm.type() != hou.parmTemplateType.FolderSet:
            all_parms.append(parm)
    return all_parms
"""

def get_all_parm_templates( all_parms, node ):

    #nodeTemp = node.parmTemplateGroup()
    #parms = nodeTemp.parmTemplates()
    #for p in parms:
    #    print( p )
   
    nodeTemp = node.parmTemplateGroup()
    parms = nodeTemp.parmTemplates()
    
    for parm in parms:
        if parm.type() == hou.parmTemplateType.Folder:
            get_all_parm_templates(all_parms, parm)
        elif parm.type() != hou.parmTemplateType.FolderSet:
            if( not parm in node.spareParms() ):
                all_parms.append(parm)
    return all_parms        
        

def promoteParams(node):
    definition = node.type().definition()
    params_group = node.parmTemplateGroup()
    definition.setParmTemplateGroup(params_group)
    definition.updateFromNode(node)
    
    

class MyWidget( QFrame ):

    def __init__( self ):
        super().__init__()

        self.buttons = {}
        self.layout = QVBoxLayout()
        
        
        self.resize(500, 500)
        
        
        self.setLayout(self.layout)
        
        self.buttons["Add"] = QPushButton("Add")
        self.buttons["Remove"] = QPushButton("Remove")
        self.buttons["Selected Nodes"] = QPushButton("Selected Nodes")
        self.buttons["Parent Node"] = QPushButton("Parent Node")
        self.buttons["Create HDA"] = QPushButton("Create HDA")
        
        self.layout.addWidget( self.buttons["Add"] )
        self.layout.addWidget( self.buttons["Remove"] )
        self.layout.addWidget( self.buttons["Selected Nodes"] )
        self.layout.addWidget( self.buttons["Parent Node"] )
        self.layout.addWidget( self.buttons["Create HDA"] )
        
        self.buttons["Add"].clicked.connect(self.on_add_button_clicked)
        self.buttons["Remove"].clicked.connect(self.on_remove_button_clicked)
        self.buttons["Selected Nodes"].clicked.connect(self.on_sel_node_button_clicked)
        self.buttons["Parent Node"].clicked.connect(self.on_parent_node_button_clicked)
        
        self.buttons["Create HDA"].clicked.connect( self.on_create_hda_button_clicked )
        
        
        
    def on_add_button_clicked( self ):
        print("Add..." )
        
        
    def on_remove_button_clicked( self ):
        print("Remove...")
        for node in hou.selectedNodes():
            node.destroy()
            
        
    def on_sel_node_button_clicked( self ):
        for node in hou.selectedNodes():
            print( node.parent().path(), node.name(), node.type().name() )
                        
            all_parms = get_all_parm_templates([], node )
            for parm in all_parms:
                print( parm )
            
        
    def on_parent_node_button_clicked( self ):
        
        ne = hou.ui.paneTabOfType(hou.paneTabType.NetworkEditor, 0)
        node = ne.pwd()
        print("Parent node: ", node)       
        
        
    def on_create_hda_button_clicked( self ):
        subnet_node_list = [ node for node in hou.selectedNodes() if node.canCreateDigitalAsset() ]#node.type().name()=="subnet" ]
    
        for node in subnet_node_list:
            print( node.parent().path(), node.name() )
            asset_name = "hda_" + node.name()
            hda_file_name = "$HIP/otls/" + asset_name + ".hda"
            description = asset_name 
            version = "0.1"
            
            node.cook(force=True)
            #all_parms = get_all_parm_templates([], node )
            
            #for p in all_parms:
            #    #if( not p.parmTemplate().isSpare() ):
            #    try:
            #        node.addSpareParmTuple(p)
            #    except: pass
                
            
            
            hda = node.createDigitalAsset(
                name = asset_name,
                hda_file_name = hda_file_name,
                description = description,
                min_num_inputs = 0,
                max_num_inputs = 0,
                compress_contents= False,
                change_node_type= True,
                create_backup= False,                
            )
            
            promoteParams(hda)# IMPORTANT!!!! Migrates all custom parameters from subnet to hda


w = MyWidget()

w.setParent( hou.qt.mainWindow(), Qt.Window )

w.show()


#def selectionChanged():
#    print("selectionChanged()...")
 
#hou.ui.addSelectionCallback( selectionChanged )        
#hou.ui.removeSelectionCallback(selectionChanged)
