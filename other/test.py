import pymxs
rt = pymxs.runtime

# 1) TriMesh(Editable Mesh??????????)???
obj = rt.selection[0]
rt.convertToMesh(obj)     # TriMesh ???
mesh = obj.mesh           # TriMesh ????


# 2) ???????????
print(f"Num Verts: {mesh.numverts}")
print(f"Num Faces: {mesh.numfaces}")


for f in range(mesh.numfaces):
	print("-------------------- face[%d] ----------------------" % f )

	# Get face
	face = rt.meshop.getFace(mesh, f+1)

	# Get vertex indicecs
	v1_id = face[0]#face.v1
	v2_id = face[1]#face.v2
	v3_id = face[2]#face.v3
	
	# Get vertex positions
	v1 = mesh.vertices[face[0]].pos
	v2 = mesh.vertices[face[1]].pos
	v3 = mesh.vertices[face[2]].pos

	# Compute area
	area = rt.distance(v1, v2) * rt.distance(v1, v3) * 0.5

	print( "Face[%d]: Verts = (%d, %d, %d)" % (f, v1_id, v2_id, v3_id) )
	
	print( "  v1 = ", v1 )
	print( "  v2 = ", v2 )
	print( "  v3 = ", v3 )
	print( "  Area = ", area )