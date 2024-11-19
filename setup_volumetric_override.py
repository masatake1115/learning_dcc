
#============ Setup boundingbox node ==============#
#hou.node("..").createNode("box")


#========= Setup building generator utility node ======#
# Create node
n = hou.node("..").createNode("labs::building_generator_utility::2.0")
# Select "VolumetricVerride" radio button
n.parm("folder01").set(3)
# Set module name
n.parm("string1").set("!!!!!!!")


#============= TODO: Connect boundingbox to utility node input[0] ==========#



#============= Debug snippets =================#
#print( n.asCode() )# Commadn to check radio buttion parameter name