import random
import pymxs
rt = pymxs.runtime

# ---------------------------------------------------------
# ??
# ---------------------------------------------------------
num_samples = 50     # ?????Box??
box_size = 5         # Box????
target_obj = rt.selection[0]  # Extrude??????????????

# ---------------------------------------------------------
# ?????(??)
# ---------------------------------------------------------
rt.convertToMesh(target_obj)
mesh = target_obj.mesh

# ---------------------------------------------------------
# ????????????????????????
# ---------------------------------------------------------
face_areas = []
total_area = 0.0

mesh.faces
mesh.verts


for f in range(1, mesh.numfaces + 1):
    # ????
    face = mesh.faces[f]
    print( face )
    
    v1 = mesh.verts[face[0]]

    v1 = mesh.getVert(mesh.getFace(f)[0])
    v2 = mesh.getVert(mesh.getFace(f)[1])
    v3 = mesh.getVert(mesh.getFace(f)[2])

    # ?????(???)
    area = rt.distance(v1, v2) * rt.distance(v1, v3) * 0.5
    face_areas.append(area)
    total_area += area

# ?????????????
weights = [a / total_area for a in face_areas]


# ---------------------------------------------------------
# ???????????????????
# ---------------------------------------------------------
def sample_point_on_face(face_id):
    face = mesh.getFace(face_id)
    v1 = mesh.getVert(face[0])
    v2 = mesh.getVert(face[1])
    v3 = mesh.getVert(face[2])

    # ??????????????????
    r1 = random.random()
    r2 = random.random()

    # r1 + r2 > 1 ????????????
    if r1 + r2 > 1:
        r1 = 1 - r1
        r2 = 1 - r2

    x = v1.x + r1 * (v2.x - v1.x) + r2 * (v3.x - v1.x)
    y = v1.y + r1 * (v2.y - v1.y) + r2 * (v3.y - v1.y)
    z = v1.z + r1 * (v2.z - v1.z) + r2 * (v3.z - v1.z)

    return rt.Point3(x, y, z)


# ---------------------------------------------------------
# ???????Box???
# ---------------------------------------------------------
for i in range(num_samples):
    # ????????
    face_id = random.choices(range(1, mesh.numfaces + 1), weights=weights)[0]

    # ???????????
    pos = sample_point_on_face(face_id)

    # ???????(??)
    rot = rt.eulerAngles(random.uniform(0,360),
                         random.uniform(0,360),
                         random.uniform(0,360))

    # Box ??
    b = rt.Box(width=box_size, length=box_size, height=box_size)
    b.position = pos
    b.rotation = rt.quat(rot)