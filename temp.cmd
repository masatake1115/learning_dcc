# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node buildings (Object/geo)
opadd -e -n geo buildings
oplocate -x -4.4050900000000004 -y 0.054611800000000002 buildings
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' buildings
opset -S on buildings
opparm -V 21.0.440 buildings stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock buildings -*
chautoscope buildings -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off buildings
opexprlanguage -s hscript buildings
opuserdata -n '___Version___' -v '21.0.440' buildings
opcf buildings

# Node area (Sop/curve::2.0)
opadd -e -n curve::2.0 area
oplocate -x -0.68746200000000002 -y 0.59489099999999995 area
opspareds "" area
opparm area  targetorients ( 0 )
opparm -V 2 area group ( "" ) sepparm3 ( ) outputtype ( polygon ) order ( 4 ) convertcurves ( off ) sepparm ( ) mode ( BUTTONS_curve_mode_select ) interpmethod ( smoothcurvature ) enablebezierops ( off ) operations ( "" ) delete ( 0 ) fuse ( 0 ) cut ( 0 ) join ( 0 ) deleteseg ( 0 ) fusebranch ( 0 ) splitbranch ( 0 ) close ( 0 ) createroundedcorners ( 0 ) removeroundedcorners ( 0 ) reverse ( 0 ) sepparm6 ( ) pointoperations ( "" ) makecorner ( 0 ) makesmooth ( 0 ) makebalanced ( 0 ) contract ( 0 ) expand ( 0 ) straightenseg ( 0 ) makeauto ( 0 ) makemanual ( 0 ) sepparm4 ( ) sepparm5 ( ) reset ( 0 ) recache ( 0 ) updatefrominput ( on ) snaponclose ( on ) maintainpoint ( off ) approxendtangents ( off ) caching ( 0 ) stashgeo ( "" ) savedstashgeo ( 'geometry:f05TSmJbKwALZmlsZXZlcnNpb24mACsBCDIxLjAuNDQwJgErAghoYXNpbmRleCYCMSsDCnBvaW50Y291bnQmAxEJKwQLdmVydGV4Y291bnQmBBEJKwUOcHJpbWl0aXZlY291bnQmBREBKwYEaW5mbyYGeysHBmFydGlzdCYHKwgFbWFzYXQmCCsJCHNvZnR3YXJlJgkrChBIb3VkaW5pIDIxLjAuNDQwJgorCwRkYXRlJgsrDBMyMDI1LTA5LTIzIDIzOjI5OjA5JgwrDQhob3N0bmFtZSYNKw4PREVTS1RPUC1PUjFLT1YyJg4rDwZib3VuZHMmD0AZBnrAtMGS6uNBAAAAAAAAAACOoMLBVzpRQSsQEXByaW1jb3VudF9zdW1tYXJ5JhAnFCAgICAgICAgICAxIFBvbHlnb24KKxERYXR0cmlidXRlX3N1bW1hcnkmESfyBAEgICAgIDQgcG9pbnQgYXR0cmlidXRlczoJUCwgX19mdXNlX3B0bnVtLCBfX3JvdW5kZWRfY29ybmVyX3BhcnQsIF9fcm91bmRlZF9jb3JuZXJfcmFkaXVzCiAgICAgMiBwcmltaXRpdmUgYXR0cmlidXRlczoJX19vcmRlciwgX190eXBlbmFtZQogICAgIDQgZ2xvYmFsIGF0dHJpYnV0ZXM6CV9fc29mdHRyYW5zZm9ybV9zY2FsZSwgX19zb2Z0dHJhbnNmb3JtX3RyYW5zbGF0ZSwgX190cmFuc2Zvcm1pbmdfaGFuZGxlLCBfX3NvZnR0cmFuc2Zvcm1fcm90YXRlCisSDWdyb3VwX3N1bW1hcnkmEieFICAgICA1IHBvaW50IGdyb3VwczoJCV9fYXV0b19wdHMKCV9fYWN0aXZlX3B0cwoJX19zbW9vdGhfcHRzCglfX3NvZnR4Zm9ybV9wdHMKCV9fY29ybmVyX3B0cwogICAgIDEgcHJpbWl0aXZlIGdyb3VwczoJX19jb252ZXJ0X3ByaW1zCn0rEwh0b3BvbG9neSYTWysUCHBvaW50cmVmJhRbKxUHaW5kaWNlcyYVQBIJAAABAAIAAwAEAAUABgAHAAgAXV0rFgphdHRyaWJ1dGVzJhZbKxcPcG9pbnRhdHRyaWJ1dGVzJhdbW1srGAVzY29wZSYYKxkGcHVibGljJhkrGgR0eXBlJhorGwdudW1lcmlj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' ) parmpoints ( 'geometry:f05TSmJbKwALZmlsZXZlcnNpb24mACsBCDIxLjAuNDQwJgErAghoYXNpbmRleCYCMSsDCnBvaW50Y291bnQmAxEjKwQLdmVydGV4Y291bnQmBBEAKwUOcHJpbWl0aXZlY291bnQmBREAKwYEaW5mbyYGeysHBmFydGlzdCYHKwgFbWFzYXQmCCsJCHNvZnR3YXJlJgkrChBIb3VkaW5pIDIxLjAuNDQwJgorCwRkYXRlJgsrDBMyMDI1LTA5LTIzIDIzOjI5OjA5JgwrDQhob3N0bmFtZSYNKw4PREVTS1RPUC1PUjFLT1YyJg4rDwZib3VuZHMmD0AZBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACsQEWF0dHJpYnV0ZV9zdW1tYXJ5JhAn8q0BICAgIDMyIHBvaW50IGF0dHJpYnV0ZXM6CWFjdGl2ZXBvaW50cywgc2NhbGUsIGFwcHJveGVuZHRhbmdlbnRzLCBtYWludGFpbnBvaW50LCBjb25zdHJhaW5zdHJhaWdodGVuLCBwbGFuZW9yaWcsIHNtb290aHB0cywgaGFuZGxlcDBwb3MsIHNlZ21lbnRiZXppZXJjbG9zZSwgY29ybmVycHRzLCByb3VuZGNvcm5lcnJhZGl1cywgYXV0b3B0cywgaGFuZGxlcDFwb3MsIGhhbmRsZXB0cywgcGxhbmVubWwsIHBpdm90dHJhbnNsYXRlLCByb3VuZGNvcm5lcnB0cywgaGFuZGxlcDJwb3MsIG9yZGVyLCBzb2Z0dHJhbnNmb3JtLCBwaXZvdHJvdGF0ZSwgb3B0eXBlLCBzb2Z0dHJhbnNmb3JtcmFkLCBhdXRvYmV6aWVyLCBpbnRlcnBtZXRob2QsIGFkZHB0cywgb3V0cHV0dHlwZSwgdHJhbnNsYXRlLCBQLCBhY3RpdmVwcmltLCByb3RhdGUsIGNvbnZlcnRjdXJ2ZXMKfSsRCHRvcG9sb2d5JhFbKxIIcG9pbnRyZWYmElsrEwdpbmRpY2VzJhNAEgBdXSsUCmF0dHJpYnV0ZXMmFFsrFQ9wb2ludGF0dHJpYnV0ZXMmFVtbWysWBXNjb3BlJhYrFwZwdWJsaWMmFysYBHR5cGUmGCsZB251bWVyaWMmGSsaBG5hbWUmGisbAVAmGyscB29wdGlvbnMmHHsmGHsmGCsdBnN0cmluZyYdKx4FdmFsdWUmHisfBXBvaW50Jh99fV1bKyAEc2l6ZSYgEQMrIQdzdG9yYWdlJiErIghmcHJlYWwzMiYiKyMIZGVmYXVsdHMmI1smIBEBJiErJAhmcHJlYWw2NCYkKyUGdmFsdWVzJiVAGgEAAAAAAAAAAF0mJVsmIBEDJiEmIismCHBhZ2VzaXplJiYSAAQrJxFjb25zdGFudHBhZ2VmbGFncyYnW0AQAQEAAABdKygLcmF3cGFnZWRhdGEmKEAZAwAAAAAAAAAAAAAAAF1dXVtbJhYmFyYYJh0mGispDGFjdGl2ZXBvaW50cyYpJhx7fV1bJiARASYhKyoFaW50MzImKisrB3N0cmluZ3MmK1srLAMwIDgmLCstATgmLSsuAzAtMSYuKy8DMi0zJi8rMAE0JjArMQM1LTYmMSsyATYmMiszATcmMys0ATUmNCs1ATAmNSs2ATImNis3ATMmNys4ATEmOF0mE1smIBEBJiEmKiYmEgAEJihAEyP//////////////////////////////////////////wAAAAABAAAAAgAAAAMAAAAEAAAABQAAAAYAAAAHAAAAAQAAAAIAAAAHAAAABAAAAAYAAAAIAAAABwAAAAYAAAAJAAAACgAAAAsAAAAMAAAACQAAAAEAAAAHAAAACAAAAAQAAAALAAAACgAAAF1dXVtbJhYmFyYYJhkmGis5CmFjdGl2ZXByaW0mOSYceyYYeyYYJh0mHis6FW5vbmFyaXRobWV0aWNfaW50ZWdlciY6fX1dWyYgEQEmISYqJiNbJiARASYhKzsFaW50NjQmOyYlQBQBAAAAAAAAAABdJiVbJiARASYhJiomJhIABCYoQBMjAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABdXV1bWyYWJhcmGCYdJhorPAZhZGRwdHMmPCYce31dWyYgEQEmISYqJitbKz1VMC4zMzYwODI2OTY5MTQ2NzI4NSwwLjAsLTQuMDEwNDA2NDk0MTQwNjI1IDQuODUxMTUzMzczNzE4MjYyLDAuMCwtMi43OTQ4MTAyOTUxMDQ5ODA1ICY9Kz4qNS4wMjQ4MTAzMTQxNzg0NjcsMC4wLC0wLjM2MzYxODM3Mzg3MDg0OTYgJj4rPyozLjYzNTU1NzY1MTUxOTc3NTQsMC4wLDIuNDcyNzcyMzU5ODQ4MDIyNSAmPytAKi00LjE3ODk4Nzk3OTg4ODkxNiwwLjAsMi4wMjg5ODMzNTQ1Njg0ODE0ICZAK0EqLTUuNDkxMDU5NzgwMTIwODUsMC4wLC0wLjU5NTE2MDQ4NDMxMzk2NDggJkErQistNC4yNzU0NjQwNTc5MjIzNjMsMC4wLC0yLjEzODc3NDM5NDk4OTAxMzcgJkIrQy0tMC40MzU3MjQyODgyMjUxNzM5NSwwLjAsLTEuMDM4OTQ5NDg5NTkzNTA1OSAmQytEKi0xLjQxOTc3ODIyNzgwNjA5MTMsMC4wLC00LjI0MTk0ODYwNDU4Mzc0ICZEXSYTWyYgEQEmISYqJiYSAAQmKEATIwAAAAABAAAAAgAAAAMAAAAEAAAABQAAAAYAAAAHAAAA////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////XV1dW1smFiYXJhgmGSYaK0URYXBwcm94ZW5kdGFuZ2VudHMmRSYceyYYeyYYJh0mHiY6fX1dWyYgEQEmISYqJiNbJiARASYhJjsmJUAUAQAAAAAAAAAAXSYlWyYgEQEmISYqJiYSAAQmJ1tAEAEBAAAAXSYoQBMBAAAAAF1dXVtbJhYmFyYYJhkmGitGCmF1dG9iZXppZXImRiYceyYYeyYYJh0mHiY6fX1dWyYgEQEmISYqJiNbJiARASYhJjsmJUAUAQAAAAAAAAAAXSYlWyYgEQEmISYqJiYSAAQmJ1tAEAEBAAAAXSYoQBMBAAAAAF1dXVtbJhYmFyYYJh0mGitHB2F1dG9wdHMmRyYce31dWyYgEQEmISYqJitbXSYTWyYgEQEmISYqJiYSAAQmJ1tAEAEBAAAAXSYoQBMB/////11dXVtbJhYmFyYYJhkmGitIE2NvbnN0cmFpbnN0cmFpZ2h0ZW4mSCYceyYYeyYYJh0mHiY6fX1d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' ) stashid ( ; ) ninputprimscached ( 0 ) softtransform ( off ) softtransformrad ( 0.5 ) output ( 0 ) outputcornerpts ( off ) cornerptsgroup ( corner_points ) outputsmoothpts ( off ) smoothptsgroup ( smooth_points ) outputautopts ( off ) autoptsgroup ( auto_points ) outputname ( off ) name ( '$OS' ) nameattrib ( name ) outputxaxis ( off ) xaxisname ( out ) outputyaxis ( off ) yaxisname ( up ) outputzaxis ( off ) zaxisname ( tangent ) outputorient ( off ) orientname ( orient ) tangenttype ( avgdir ) aligntangent ( on ) targetorients ( 0 ) curoperation ( 0 ) optype ( transform ) activepoints ( "" ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) addpts ( "" ) activeprim ( 0 ) cornerpts ( "" ) smoothpts ( * ) autopts ( "" ) pivottransformfolder ( 0 ) pivottranslate ( 0 0 0 ) pivotrotate ( 0 0 0 ) pivotfixed ( off ) roundedcornersfolder ( 0 ) viewroundcorners ( on ) roundcornerpts ( "" ) roundcornerradius ( 0 ) bakeroundcorners ( 0 ) showroundcornerwidget ( on ) showroundcornerlabels ( on ) editedgeops ( 0 ) planeorig ( 0 0 0 ) planenml ( 0 1 0 ) constrainstraighten ( off ) handleparmsfolder ( 0 ) handlepts ( -1 -1 -1 ) handlep0pos ( -1 0 0 ) handlep1pos ( 0 0 0 ) handlep2pos ( 1 0 0 )
chlock area -*
chautoscope area -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off area
opexprlanguage -s hscript area
opuserdata -n '___Version___' -v '2' area
opuserdata -n '___toolcount___' -v '1' area
opuserdata -n '___toolid___' -v 'sop_curve' area
opuserdata -n 'allow_selecting_segments' -v '1' area
opuserdata -n 'enable_hud' -v '1' area
opuserdata -n 'enableorientguide' -v '1' area
opuserdata -n 'open_prefs' -v '0' area
opuserdata -n 'orient_angle_step_size' -v '15.0' area
opuserdata -n 'orientguidedensity' -v '0.75' area
opuserdata -n 'orientguidescale' -v '0.75' area
opuserdata -n 'picking_mode' -v '0' area
opuserdata -n 'relative_segment_align' -v '0' area
opuserdata -n 'show_hover_labels' -v '1' area
opuserdata -n 'show_preview_curve' -v '1' area
opuserdata -n 'show_tangent_handles_on_all_selected' -v '1' area

# Node scatter1 (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter1
oplocate -x -0.68746200000000002 -y -0.37465199999999999 scatter1
opspareds "" scatter1
opparm -V 21.0.440 scatter1 group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) indepvoxel ( off ) forcetotal ( on ) npts ( 990 ) densityscale ( 0.8778013135972484 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) useareaforvolumes ( off ) usedensitytexture ( off ) densitytexture ( default.pic ) uvattrib ( uv ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1e6 ) seed ( 0 ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 10 ) usegeometricnormals ( off ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) useoutputidattrib ( off ) outputidattrib ( id ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( 'N uv*' ) primattribs ( "" ) detailattribs ( "" ) detailattribsasdetail ( "" )
chlock scatter1 -*
chautoscope scatter1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off scatter1
opexprlanguage -s hscript scatter1
opuserdata -n '___Version___' -v '21.0.440' scatter1

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x -5.9212999999999996 -y 1.6454200000000001 grid1
opspareds "" grid1
opparm -V 21.0.440 grid1 type ( poly ) surftype ( quads ) orient ( zx ) size ( 1 1.5 ) t ( 0 0 0 ) r ( 0 0 0 ) rows ( 2 ) cols ( 2 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '21.0.440' grid1

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x -3.7631199999999998 -y 1.6454200000000001 circle1
opspareds "" circle1
opparm -V 21.0.440 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( 0.5 1.58 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( 12 ) arc ( closed ) angle ( 0 360 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '21.0.440' circle1

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x -2.7828300000000001 -y -3.6910599999999998 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 21.0.440 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( on ) idattrib ( type ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '21.0.440' copytopoints1

# Node attribrandomize1 (Sop/attribrandomize)
opadd -e -n attribrandomize attribrandomize1
oplocate -x -0.69091199999999997 -y -2.3746499999999999 attribrandomize1
opspareds "" attribrandomize1
opparm attribrandomize1  ramp ( 3 ) values ( 4 )
opparm attribrandomize1 group ( "" ) grouptype ( guess ) class ( point ) name ( type ) operation ( set ) scale ( 1 ) folder0 ( 0 0 ) distribution ( uniformdiscrete ) dimensions ( 1 ) allsame ( off ) constvalue ( 0 0 0 0 ) valuea ( 0 0 0 0 ) valueb ( 1 1 1 1 ) probvalueb ( 0.5 ) min ( 0 0 0 0 ) max ( 1 1 1 1 ) mindiscrete ( 0 0 0 0 ) maxdiscrete ( 1 9 9 9 ) stepsize ( 1 1 1 1 ) median ( 0 0 0 0 ) onesidedmedian ( 1 1 1 1 ) medianattrib ( "" ) stddev ( 1 1 1 1 ) onesidedstddev ( 0.2 0.2 0.2 0.2 ) usefit0to ( off ) fit0to ( 0 ) usefit1to ( off ) fit1to ( 1 ) ramp ( 3 ) useminlimit ( off ) minlimit ( -100 -100 -100 -100 ) useonesidedmin ( off ) onesidedmin ( 0.1 0.1 0.1 0.1 ) usemaxlimit ( off ) maxlimit ( 100 100 100 100 ) useconeangle ( off ) coneangle ( 30 ) usepowerbias ( off ) powerbias ( 0 ) direction ( 1 0 0 0 ) directionattrib ( "" ) folder ( 0 ) valuetype ( float ) values ( 4 ) normalize ( off ) visualize ( off ) nvisualizepts ( 10000 ) usefractionattrib ( off ) fractionattrib ( fraction ) seed ( 1334 ) useseedattrib ( off ) seedattrib ( id ) ramp1pos ( 0 ) ramp1value ( 0 ) ramp1interp ( monotonecubic ) ramp2pos ( 0.5 ) ramp2value ( 0.5 ) ramp2interp ( monotonecubic ) ramp3pos ( 1 ) ramp3value ( 1 ) ramp3interp ( monotonecubic ) strvalue0 ( "" ) value0 ( 0 ) weight0 ( 1 ) strvalue1 ( "" ) value1 ( 0 ) weight1 ( 1 ) strvalue2 ( "" ) value2 ( 0 ) weight2 ( 1 ) strvalue3 ( "" ) value3 ( 0 ) weight3 ( 1 )
chlock attribrandomize1 -*
chautoscope attribrandomize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribrandomize1
opexprlanguage -s hscript attribrandomize1
opuserdata -n '___Version___' -v '' attribrandomize1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -4.52386 -y -1.57524 merge1
opspareds "" merge1
opparm -V 21.0.440 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '21.0.440' merge1

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x -5.9247500000000004 -y 0.095775299999999994 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 21.0.440 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '21.0.440' attribcreate1

# Node attribcreate2 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate2
oplocate -x -3.7665700000000002 -y 0.095775299999999994 attribcreate2
opspareds "" attribcreate2
opparm attribcreate2  numattr ( 1 )
opparm -V 21.0.440 attribcreate2 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 1 0 0 0 ) string1 ( "" ) numattr_spacerparm1 ( )
chlock attribcreate2 -*
chautoscope attribcreate2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate2
opexprlanguage -s hscript attribcreate2
opuserdata -n '___Version___' -v '21.0.440' attribcreate2

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x -6.81013 -y -1.4327700000000001 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 2 )
opparm -V 21.0.440 mergepacked1 setprimname ( on ) primname ( type ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 2 ) useinput1 ( on ) name1 ( attribcreate1 ) treatasfolder1 ( default ) useinput2 ( on ) name2 ( attribcreate2 ) treatasfolder2 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '21.0.440' mergepacked1

# Node attribcreate3 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate3
oplocate -x -0.68746200000000002 -y -1.3746499999999999 attribcreate3
opspareds "" attribcreate3
opparm attribcreate3  numattr ( 1 )
opparm -V 21.0.440 attribcreate3 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) numattr_spacerparm1 ( )
chlock attribcreate3 -*
chautoscope attribcreate3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate3
opexprlanguage -s hscript attribcreate3
opuserdata -n '___Version___' -v '21.0.440' attribcreate3

# Node detect_overlapped (Sop/boolean::2.0)
opadd -e -n boolean::2.0 detect_overlapped
oplocate -x -2.7828300000000001 -y -4.7002600000000001 detect_overlapped
opspareds "" detect_overlapped
opparm -V 21.0.440 detect_overlapped inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( detect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( on ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( on ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock detect_overlapped -*
chautoscope detect_overlapped -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off detect_overlapped
opexprlanguage -s hscript detect_overlapped
opuserdata -n '___Version___' -v '21.0.440' detect_overlapped

# Node color1 (Sop/color)
opadd -e -n color color1
oplocate -x -2.7828300000000001 -y -5.6320300000000003 color1
opspareds "" color1
opparm color1  ramp ( 2 )
opparm color1 group ( axbpolys ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 0 0.5 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color1 -*
chautoscope color1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color1
opexprlanguage -s hscript color1
opuserdata -n '___Version___' -v '' color1
opuserdata -n '___toolcount___' -v '2' color1
opuserdata -n '___toolid___' -v 'sop_color' color1

# Node remove_overlapped (Sop/attribwrangle)
opadd -e -n attribwrangle remove_overlapped
oplocate -x -2.7858299999999998 -y -6.5889800000000003 remove_overlapped
opspareds "" remove_overlapped
opparm remove_overlapped  bindings ( 0 ) groupbindings ( 0 )
opparm remove_overlapped folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int ilist[];\n//resize(ilist, nprimitives(0));\n\nfor( int i=0; i<nprimitives(0); ++i )\n{\n    int prim_ilist[] = prim(0, "axblist", i);\n    \n    foreach( int p; prim_ilist )\n    {\n        if( p < i ) append(ilist, p);\n    }\n}\n\n\nforeach( int p; ilist )\n    removeprim(0, p, 1);\n    \n/*\nint ilist[] = i[]@axblist;\nforeach( int i; ilist)\n{\n    removeprim(0, i, 1);\n}\n*/' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_overlapped -*
chautoscope remove_overlapped -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_overlapped
opexprlanguage -s hscript remove_overlapped
opuserdata -n '___Version___' -v '' remove_overlapped

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x -7.8226300000000002 -y -3.4664199999999998 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 21.0.440 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/roads/RoadSkeleton ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '21.0.440' object_merge1

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x -8.51539 -y -5.8373100000000004 extrudevolume1
opspareds "" extrudevolume1
opparm extrudevolume1 depth ( -1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -8.5749499999999994 -y -6.8373100000000004 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node boolean1 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean1
oplocate -x -6.3717600000000001 -y -10.9862 boolean1
opspareds "" boolean1
opparm -V 21.0.440 boolean1 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( detect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( on ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean1 -*
chautoscope boolean1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean1
opexprlanguage -s hscript boolean1
opuserdata -n '___Version___' -v '21.0.440' boolean1

# Node color2 (Sop/color)
opadd -e -n color color2
oplocate -x -6.3717600000000001 -y -12.0707 color2
opspareds "" color2
opparm color2  ramp ( 2 )
opparm color2 group ( axbpolys ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 0 1 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color2 -*
chautoscope color2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color2
opexprlanguage -s hscript color2
opuserdata -n '___Version___' -v '' color2
opuserdata -n '___toolcount___' -v '2' color2
opuserdata -n '___toolid___' -v 'sop_color' color2

# Node attribdelete1 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete1
oplocate -x -2.7862800000000001 -y -7.5243700000000002 attribdelete1
opspareds "" attribdelete1
opparm attribdelete1 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( Cd ) dovtxdel ( on ) vtxdel ( "" ) doprimdel ( on ) primdel ( axblist ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete1 -*
chautoscope attribdelete1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete1
opexprlanguage -s hscript attribdelete1
opuserdata -n '___Version___' -v '' attribdelete1

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x -2.7754400000000001 -y -8.5243699999999993 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 21.0.440 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( axbpolys )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '21.0.440' groupdelete1

# Node road_mask (Sop/attribwrangle)
opadd -e -n attribwrangle road_mask
oplocate -x -6.4286099999999999 -y -13.1106 road_mask
opspareds "" road_mask
opparm road_mask  bindings ( 0 ) groupbindings ( 0 )
opparm road_mask folder0 ( 0 0 ) group ( axbpolys ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, @primnum, 1);' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock road_mask -*
chautoscope road_mask -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off road_mask
opexprlanguage -s hscript road_mask
opuserdata -n '___Version___' -v '' road_mask

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 2.59477 -y -9.9287899999999993 foreach_end1
opspareds "" foreach_end1
opparm -V 21.0.440 foreach_end1 itermethod ( pieces ) method ( feedback ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) stopattrib ( "" ) multithread ( on )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '21.0.440' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 2.5867599999999999 -y -6.4521100000000002 foreach_begin1
opspareds "" foreach_begin1
opparm -V 21.0.440 foreach_begin1 method ( feedback ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '21.0.440' foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x 5.69665 -y -6.4521100000000002 foreach_count1
opspareds "" foreach_count1
opparm -V 21.0.440 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '21.0.440' foreach_count1

# Node min_max_average1 (labs::Sop/min_max_average::1.0)
opadd -e -n labs::min_max_average::1.0 min_max_average1
oplocate -x 2.5931700000000002 -y -4.3546199999999997 min_max_average1
opspareds "" min_max_average1
opparm min_max_average1  folder0 ( 1 )
opparm -V 440 min_max_average1 attribute ( ID ) attribute_type ( 1 ) attribute_rename ( 0 ) sepparm ( ) folder0 ( 1 ) method1 ( max ) prefix1 ( max_ ) suffix1 ( _average ) detail_attribute1 ( on )
chlock min_max_average1 -*
chautoscope min_max_average1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on min_max_average1
opexprlanguage -s hscript min_max_average1
opuserdata -n '___Version___' -v '440' min_max_average1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 2.5901700000000001 -y -3.3696100000000002 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@ID = @primnum;' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node boolean2 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean2
oplocate -x 2.5931700000000002 -y -7.6650099999999997 boolean2
opspareds '    groupsimple {         name    "inputa2"         label   "Set A"         grouptag { "sidefx::switcher" "inputa" }          parm {             name    "agroup"             baseparm             label   "Group"             export  none             bindselector prims "Set A"                 "Select polygons for set A and press Enter to complete."                 0 0 0x00000001 0 "" 0         }         parm {             name    "asurface"             baseparm             label   "Treat As"             joinnext             export  none         }         parm {             name    "resolvea"             baseparm             label   "Resolve Self-intersections"             export  none         }     }      groupsimple {         name    "inputb2"         label   "Set B"         grouptag { "sidefx::switcher" "inputb" }          parm {             name    "bgroup"             baseparm             label   "Group"             export  none             bindselector prims "Set B"                 "Now select polygons for set B and press Enter to complete."                 1 0 0x00000001 0 "" 0         }         parm {             name    "bsurface"             baseparm             label   "Treat As"             joinnext             export  none         }         parm {             name    "resolveb"             baseparm             label   "Resolve Self-intersections"             export  none         }     }      groupsimple {         name    "output2"         label   "Output Geometry"         grouptag { "sidefx::switcher" "output" }          parm {             name    "booleanop"             baseparm             label   "Operation"             joinnext             export  all         }         parm {             name    "subtractchoices"             baseparm             label   "Subtract Choices"             nolabel             joinnext             export  all         }         parm {             name    "shatterchoices"             baseparm             label   "Shatter Choices"             nolabel             joinnext             export  all         }         parm {             name    "opencurvesonly"             baseparm             label   "Only Use Open Curves"             export  none         }         parm {             name    "generateaaseams"             baseparm             label   "Generate A-A Seams"             export  all         }         parm {             name    "generatebbseams"             baseparm             label   "Generate B-B Seams"             export  all         }         parm {             name    "generateabseams"             baseparm             label   "Generate A-B Seams"             export  all         }         parm {             name    "adepth"             baseparm             label   "A Depth Min/Max"             export  none         }         parm {             name    "bdepth"             baseparm             label   "B Depth Min/Max"             export  none         }         parm {             name    "windingop"             baseparm             label   "Output Pieces Matching"             export  none         }         parm {             name    "mergenbrs"             baseparm             label   "Merge Adjacent Pieces"             export  none         }         parm {             name    "detriangulate"             baseparm             label   "Detriangulate"             export  all         }         parm {             name    "removeinlinepoints"             baseparm             label   "Assume Seam Polygons Are Flat"             export  all         }         parm {             name    "uniqueseams"             baseparm             label   "Unique Points Along Seams"             export  none         }         parm {             name    "correctnormals"             baseparm             label   "Correct Normals on Reversed Faces"             export  none         }         parm {             name    "useaxapolys"             baseparm             label   "useaxapolys"             nolabel             joinnext             export  none         }         parm {             name    "axapolys"             baseparm             label   "AxA Polygons"             export  none         }         parm {             name    "useaxbpolys"             baseparm             label   "useaxbpolys"             nolabel             joinnext             export  none         }         parm {             name    "axbpolys"             baseparm             label   "AxB Polygons"             export  none         }         parm {             name    "useaxalist"             baseparm             label   "useaxalist"             nolabel             joinnext             export  none         }         parm {             name    "axalist"             baseparm             label   "AxA List"             export  none         }         parm {             name    "useaxblist"             baseparm             label   "useaxblist"             nolabel             joinnext             export  none         }         parm {             name    "axblist"             baseparm             label   "AxB List"             export  none         }         parm {             name    "collapsetinyedges"             baseparm             label   "Collapse Tiny Seam-Adjacent Edges"             export  all         }         parm {             name    "lengththreshold"             baseparm             label   "Edge Length Threshold"             export  none         }     }      groupsimple {         name    "outputprimgroups2"         label   "Output Primitive Groups"         grouptag { "sidefx::switcher" "outputprimgroups" }          parm {             name    "useapolys"             baseparm             label   "useapolys"             nolabel             joinnext             export  none         }         parm {             name    "apolys"             baseparm             label   "A Polygons"             export  none         }         parm {             name    "useainsideb"             baseparm             label   "useainsideb"             nolabel             joinnext             export  none         }         parm {             name    "ainsideb"             baseparm             label   "A Inside B"             export  none         }         parm {             name    "useaoutsideb"             baseparm             label   "useaoutsideb"             nolabel             joinnext             export  none         }         parm {             name    "aoutsideb"             baseparm             label   "A Outside B"             export  none         }         parm {             name    "usebpolys"             baseparm             label   "usebpolys"             nolabel             joinnext             export  none         }         parm {             name    "bpolys"             baseparm             label   "B Polygons"             export  none         }         parm {             name    "usebinsidea"             baseparm             label   "usebinsidea"             nolabel             joinnext             export  none         }         parm {             name    "binsidea"             baseparm             label   "B Inside A"             export  none         }         parm {             name    "useboutsidea"             baseparm             label   "useboutsidea"             nolabel             joinnext             export  none         }         parm {             name    "boutsidea"             baseparm             label   "B Outside A"             export  none         }         parm {             name    "useaboverlap"             baseparm             label   "useaboverlap"             nolabel             joinnext             export  none         }         parm {             name    "aboverlap"             baseparm             label   "Overlap"             export  none         }         parm {             name    "useaonlypieces"             baseparm             label   "useaonlypieces"             nolabel             joinnext             export  none         }         parm {             name    "aonlypieces"             baseparm             label   "A-Only Pieces"             export  none         }         parm {             name    "usebonlypieces"             baseparm             label   "usebonlypieces"             nolabel             joinnext             export  none         }         parm {             name    "bonlypieces"             baseparm             label   "B-Only Pieces"             export  none         }         parm {             name    "useabpieces"             baseparm             label   "useabpieces"             nolabel             joinnext             export  none         }         parm {             name    "abpieces"             baseparm             label   "A-B Pieces"             export  none         }         parm {             name    "usereversedpolys"             baseparm             label   "usereversedpolys"             nolabel             joinnext             export  none         }         parm {             name    "reversedpolys"             baseparm             label   "Reversed Faces"             export  none         }     }      groupsimple {         name    "outputedgegroups2"         label   "Output Edge Groups"         grouptag { "sidefx::switcher" "outputedgegroups" }          parm {             name    "useaaseamedges"             baseparm             label   "useaaseamedges"             nolabel             joinnext             export  none         }         parm {             name    "aaseamedges"             baseparm             label   "A-A Seams"             export  none         }         parm {             name    "usebbseamedges"             baseparm             label   "usebbseamedges"             nolabel             joinnext             export  none         }         parm {             name    "bbseamedges"             baseparm             label   "B-B Seams"             export  none         }         parm {             name    "useabseamedges"             baseparm             label   "useabseamedges"             nolabel             joinnext             export  none         }         parm {             name    "abseamedges"             baseparm             label   "A-B Seams"             export  none         }     }      parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' boolean2
opparm -V 21.0.440 boolean2 inputa ( 0 ) agroup ( '@ID=`detail(-1,"iteration",0)`' ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( '* ^@ID=`detail(-1,"iteration",0)`' ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( detect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( on ) axapolys ( axapolys ) useaxbpolys ( on ) axbpolys ( to_del_prims ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams ) inputa2 ( 0 ) inputb2 ( 0 ) output2 ( 0 ) outputprimgroups2 ( 0 ) outputedgegroups2 ( 0 ) spare_input0 ( ../foreach_count1 )
chlock boolean2 -*
chautoscope boolean2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on boolean2
opexprlanguage -s hscript boolean2
opuserdata -n '___Version___' -v '21.0.440' boolean2

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x 2.5901700000000001 -y -8.7638300000000005 attribwrangle2
opspareds "" attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( to_del_prims ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int ID = prim(0, "ID", @primnum);\nstring group_expr = "@ID="+itoa(ID);\nint to_del_array[] = expandprimgroup(0, group_expr);\nforeach( int prim; to_del_array)\n{\n    removeprim(0, prim, 1);\n}\n' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x 2.5931700000000002 -y -12.648400000000001 null1
opspareds "" null1
opparm -V 21.0.440 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on null1
opexprlanguage -s hscript null1
opuserdata -n '___Version___' -v '21.0.440' null1

# Node compile_end1 (Sop/compile_end)
opadd -e -n compile_end compile_end1
oplocate -x 2.59477 -y -11.268800000000001 compile_end1
opspareds "" compile_end1
opparm -V 21.0.440 compile_end1 docompile ( on ) unload ( always ) primarypath ( "" ) forcerecompile ( 0 ) delayillegal ( off ) fallback ( off )
chlock compile_end1 -*
chautoscope compile_end1 -*
opcolor -c 0.75 0.75 0 compile_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on compile_end1
opexprlanguage -s hscript compile_end1
opuserdata -n '___Version___' -v '21.0.440' compile_end1

# Node compile_begin1 (Sop/compile_begin)
opadd -e -n compile_begin compile_begin1
oplocate -x 2.5867599999999999 -y -5.4142299999999999 compile_begin1
opspareds "" compile_begin1
opparm -V 21.0.440 compile_begin1 blockpath ( ../compile_end1 ) name ( "" ) optional ( off ) createbeginblock ( 0 )
chlock compile_begin1 -*
chautoscope compile_begin1 -*
opcolor -c 0.75 0.75 0 compile_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on compile_begin1
opexprlanguage -s hscript compile_begin1
opuserdata -n '___Version___' -v '21.0.440' compile_begin1

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("https://youtu.be/MXyjTTY-NDY?t=1511\nToo Slow")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(7.47469, -8.42393))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(4.30476, 1.02282))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'
oporder -e area scatter1 grid1 circle1 copytopoints1 attribrandomize1 merge1 attribcreate1 attribcreate2 mergepacked1 attribcreate3 detect_overlapped color1 remove_overlapped object_merge1 extrudevolume1 matchsize1 boolean1 color2 attribdelete1 groupdelete1 road_mask foreach_end1 foreach_begin1 foreach_count1 min_max_average1 attribwrangle1 boolean2 attribwrangle2 null1 compile_end1 compile_begin1 
opcf ..

# Node roads (Object/geo)
opadd -e -n geo roads
oplocate -x -4.4050900000000004 -y 1.25461 roads
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' roads
opset -S on roads
opparm -V 21.0.440 roads stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock roads -*
chautoscope roads -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off roads
opexprlanguage -s hscript roads
opuserdata -n '___Version___' -v '21.0.440' roads
opcf roads

# Node subnet1 (Sop/subnet)
opadd -e -n subnet subnet1
oplocate -x -1.8388500000000001 -y 0.88220699999999996 subnet1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' subnet1
opparm -V 21.0.440 subnet1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( 1.5 )
chlock subnet1 -*
chautoscope subnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off subnet1
opexprlanguage -s hscript subnet1
opuserdata -n '___Version___' -v '21.0.440' subnet1
opcf subnet1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.0029999900000000001 -y -0.30778299999999997 output0
opspareds "" output0
opparm -V 21.0.440 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '21.0.440' output0

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -1.11759e-08 -y 3.1286399999999999 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
chblockbegin
chadd -t 0 0 sweep1 radius
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F ch sweep1/radius
chadd -t 0 0 sweep1 width
chkey -t 0 -v 0.20000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' sweep1/width
chblockend
opparm -V 21.0.440 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( radius ) width ( width ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '21.0.440' sweep1

# Node centerpath (Sop/null)
opadd -e -n null centerpath
oplocate -x -1.11759e-08 -y 4.6322000000000001 centerpath
opspareds "" centerpath
opparm -V 21.0.440 centerpath copyinput ( on ) cacheinput ( off )
chlock centerpath -*
chautoscope centerpath -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off centerpath
opexprlanguage -s hscript centerpath
opuserdata -n '___Version___' -v '21.0.440' centerpath

# Node check_reversed_faces (Sop/attribwrangle)
opadd -e -n attribwrangle check_reversed_faces
oplocate -x -1.11759e-08 -y 2.02935 check_reversed_faces
opspareds "" check_reversed_faces
opparm check_reversed_faces  bindings ( 0 ) groupbindings ( 0 )
opparm check_reversed_faces folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector normal = prim_normal(0, @primnum, 0.5, 0.5);\ni@reversed = normal.y<0;\n' ) exportlist ( * ) vex_strict ( off ) vex_strictvariables ( on ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_reversed_faces -*
chautoscope check_reversed_faces -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_reversed_faces
opexprlanguage -s hscript check_reversed_faces
opuserdata -n '___Version___' -v '' check_reversed_faces

# Node reverse1 (Sop/reverse)
opadd -e -n reverse reverse1
oplocate -x 0.0029999900000000001 -y 0.97276200000000002 reverse1
opspareds "" reverse1
opparm -V 21.0.440 reverse1 group ( '@reversed==1' ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse1 -*
chautoscope reverse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse1
opexprlanguage -s hscript reverse1
opuserdata -n '___Version___' -v '21.0.440' reverse1
oporder -e output0 sweep1 centerpath check_reversed_faces reverse1 
opcf ..

# Node RoadSkeleton (Sop/null)
opadd -e -n null RoadSkeleton
oplocate -x -2.0549499999999998 -y -2.5081500000000001 RoadSkeleton
opspareds "" RoadSkeleton
opparm -V 21.0.440 RoadSkeleton copyinput ( on ) cacheinput ( off )
chlock RoadSkeleton -*
chautoscope RoadSkeleton -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 RoadSkeleton
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off RoadSkeleton
opexprlanguage -s hscript RoadSkeleton
opuserdata -n '___Version___' -v '21.0.440' RoadSkeleton

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x -1.8388500000000001 -y 2.3595999999999999 resample1
opspareds "" resample1
opparm -V 21.0.440 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.5 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( subd ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '21.0.440' resample1

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x -1.94794248499967 -y 3.6753716948387738 add1
opspareds "" add1
opparm add1  points ( 3 ) prims ( 1 )
opparm -V 21.0.440 add1 stdswitcher ( 1 1 1 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -24.20652849055884 0 -1.837452876253316 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 8.130854351776613 0 -20.396971212603695 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 31.2692439222373 0 9.614741067700127 ) weight2 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '21.0.440' add1
oporder -e subnet1 RoadSkeleton resample1 add1 
opcf ..
oporder -e buildings roads 
opcf ..

# Node out (/out)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)

# Node stage (/stage)

# Node tasks (/tasks)
oporder -e obj out ch shop img vex mat stage tasks 

opcf /
opcf obj
opcf buildings
opwire -n area -0 scatter1
opwire -n merge1 -0 copytopoints1
opwire -n attribrandomize1 -1 copytopoints1
opwire -n attribcreate3 -0 attribrandomize1
opwire -n attribcreate1 -0 merge1
opwire -n attribcreate2 -1 merge1
opwire -n grid1 -0 attribcreate1
opwire -n circle1 -0 attribcreate2
opwire -n attribcreate1 -0 mergepacked1
opwire -n attribcreate2 -1 mergepacked1
opwire -n scatter1 -0 attribcreate3
opwire -n copytopoints1 -0 detect_overlapped
opwire -n detect_overlapped -0 color1
opwire -n color1 -0 remove_overlapped
opwire -n object_merge1 -0 extrudevolume1
opwire -n extrudevolume1 -0 matchsize1
opwire -n groupdelete1 -0 boolean1
opwire -n matchsize1 -1 boolean1
opwire -n boolean1 -0 color2
opwire -n remove_overlapped -0 attribdelete1
opwire -n attribdelete1 -0 groupdelete1
opwire -n color2 -0 road_mask
opwire -n attribwrangle2 -0 foreach_end1
opwire -n compile_begin1 -0 foreach_begin1
opwire -n attribwrangle1 -0 min_max_average1
opwire -n copytopoints1 -0 attribwrangle1
opwire -n foreach_begin1 -0 boolean2
opwire -n foreach_begin1 -1 boolean2
opwire -n boolean2 -0 attribwrangle2
opwire -n compile_end1 -0 null1
opwire -n foreach_end1 -0 compile_end1
opwire -n min_max_average1 -0 compile_begin1
opcf ..
opcf roads
opwire -n resample1 -0 subnet1
opcf subnet1
opwire -n reverse1 -0 output0
opwire -n centerpath -0 sweep1
opwire -n -i 0 -0 centerpath
opwire -n sweep1 -0 check_reversed_faces
opwire -n check_reversed_faces -0 reverse1
opcf ..
opwire -n subnet1 -0 RoadSkeleton
opwire -n add1 -0 resample1
opcf ..
opcf ..
opcf $saved_path
