bld_gen = hou.node("../building_generator1")

# test Initialize parameter control
prm_floorheight = bld_gen.parm( "fFloorHeight" )
h = hou.parm("./h").eval()
prm_floorheight.set( h )

#=========== test floor override control ==============#
#`chs("../building_generator1/mpFloorOverrides")`

# Create floor override
floor_ovr = bld_gen.parm("mpFloorOverrides")
floor_ovr.set(1)

floor_h = bld_gen.parm( "fFloorHeightOverride%d" % (1) )
floor_h.set( hou.parm("./ovr1_h").eval() )

print( floor_h.eval() )
#print( floor_ovr.eval() )
