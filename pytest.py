import unreal


api = unreal.HoudiniPublicAPIBlueprintLib.get_api()

print( "//============== pytest imported. =================//" )

unreal.EditorActorSubsystem
def func():

	# Fetch material from asset browser
	mat = unreal.load_asset('/Game/fjh_Inst.fjh_Inst')
	print(mat)

	print( "test.py::func()........." )
	# TODO: Get current selected actor
	actors = unreal.get_editor_subsystem(unreal.EditorActorSubsystem).get_selected_level_actors()
	print( actors )
	# https://www.tacolor.xyz/tapython/get_object_in_unreal_engine_editor.html
	if( actors ):
		# Get/Set actor properties
		actors[0].set_editor_property("InitialLifeSpan", 0.0)

		# Get/Set Component properties    https://forums.unrealengine.com/t/python-convert-actors-to-static-mesh/152073
		static_meshes = actors[0].get_components_by_class(unreal.StaticMeshComponent.static_class())
		if( static_meshes ):
			meshcomp = static_meshes[0]
			#print( type(meshcomp) )
			# Set material. slot index required.
			#meshcomp.set_material(0,mat)

			# Get slot names
			mat_slot_names = unreal.StaticMeshComponent.get_material_slot_names(meshcomp)
			print( mat_slot_names )

			# Get slot index from material names  https://forums.unrealengine.com/t/get-material-slot-name-for-static-mesh/145674/4
			for mat_name in mat_slot_names:
				slot_idx = meshcomp.get_material_index( mat_name )
				print( "material slot name: %s, slot: %d" % ( mat_name, slot_idx) )

			# Push Bake Materials button??
			# https://github.com/sideeffects/HoudiniEngineForUnreal-v2/blob/Houdini18.5-4.27/Content/Examples/Python/bake_output_object_example.py
