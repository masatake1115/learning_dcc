# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node my_custom_building_generator (Object/geo)
opadd -e -n geo my_custom_building_generator
oplocate -x -1.8249211356466875 -y 0.44936907921303693 my_custom_building_generator
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' my_custom_building_generator
opset -S on my_custom_building_generator
opparm -V 20.5.370 my_custom_building_generator stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock my_custom_building_generator -*
chautoscope my_custom_building_generator -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off my_custom_building_generator
opexprlanguage -s hscript my_custom_building_generator
opuserdata -n '___Version___' -v '20.5.370' my_custom_building_generator
opcf my_custom_building_generator

# Network Box __netbox1
nbadd __netbox1
nblocate -x -16.1316 -y -1.5086 __netbox1
nbsize -w 4.89655 -h 6.82563 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 8.54604 -y 1.52783 __netbox2
nbsize -w 2.8 -h 1.7 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Node Param (Sop/null)
opadd -e -n null Param
oplocate -x 3.6493799999999998 -y 4.9728599999999998 Param
opspareds '    parm {         name    "copyinput"         baseparm         label   "Copy Input (Note: Input will be still cooked if disabled)"         export  none     }     parm {         name    "cacheinput"         baseparm         label   "Cache Input"         export  none     }     parm {         name    "FloorHeight"         label   "FloorHeight"         type    float         default { "2.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "aaaaa"         label   "HasRoof"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RoofHeight"         label   "RoofHeight"         type    float         default { "0" }         hidewhen "{ aaaaa == 0 }"         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RoofDepth"         label   "RoofDepth"         type    float         default { "0" }         hidewhen "{ aaaaa == 0 }"         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "NumFloors"         label   "NumFloors"         type    integer         default { "1" }         range   { 1! 10 }         parmtag { "script_callback_language" "python" }     } ' Param
opparm -V 20.5.370 Param copyinput ( on ) cacheinput ( off ) FloorHeight ( 1.88 ) aaaaa ( on ) RoofHeight ( 0 ) RoofDepth ( 0 ) NumFloors ( 10 )
chlock Param -*
chautoscope Param -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Param
opexprlanguage -s hscript Param
opuserdata -n '___Version___' -v '20.5.370' Param

# Node floor1_outline1 (Sop/add)
opadd -e -n add floor1_outline1
oplocate -x 0.62936099999999995 -y 4.8302399999999999 floor1_outline1
opspareds "" floor1_outline1
opparm floor1_outline1  points ( 4 ) prims ( 1 )
opparm -V 20.5.370 floor1_outline1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0 10 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 10 0 10 ) weight2 ( 1 ) usept3 ( on ) pt3 ( 10 0 0 ) weight3 ( 1 )
chlock floor1_outline1 -*
chautoscope floor1_outline1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off floor1_outline1
opexprlanguage -s hscript floor1_outline1
opuserdata -n '___Version___' -v '20.5.370' floor1_outline1

# Node Stack_Floor_Outline (Sop/attribwrangle)
opadd -e -n attribwrangle Stack_Floor_Outline
oplocate -x 0.62636099999999995 -y 3.5015100000000001 Stack_Floor_Outline
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }          }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' Stack_Floor_Outline
opparm Stack_Floor_Outline  bindings ( 0 ) groupbindings ( 0 )
opparm Stack_Floor_Outline folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int numFloors = chi("../Param/NumFloors");\nfloat floorHeight = chf("../Param/FloorHeight");\n\n\nint GenerateFloorOutline( int input_ch; float h; int fl )\n{\n    int num_points = npoints( input_ch );\n    if( num_points==0 ) return -1;\n    \n    int primid = addprim( geoself(), "polyline" );\n    int first_id = -1;// first point id\n\n    for(int i=0; i<num_points; ++i)\n    {\n        vector p = point( input_ch, "P", i );// + {0, h, 0};\n        p.y=h;\n        int pt = addpoint( geoself(), p );\n        if( i==0 ) first_id = pt;// record first point id\n        addvertex( geoself(), primid, pt );\n    }\n    addvertex(0, primid, first_id );\n    \n    setprimattrib(0, "FloorIdx", primid, fl);\n    \n    return primid;\n}\n\n\n//printf("%d\\n", numFloors);\nfor( int fl=0; fl<numFloors; ++fl )\n    GenerateFloorOutline( 1, fl*floorHeight, fl );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 )
chlock Stack_Floor_Outline -*
chautoscope Stack_Floor_Outline -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Stack_Floor_Outline
opexprlanguage -s hscript Stack_Floor_Outline
opuserdata -n '___Version___' -v '' Stack_Floor_Outline

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x -1.8549599999999999 -y -3.7732000000000001 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '20.5.370' copytopoints1

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x -13.385 -y 4.8170299999999999 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1.5 1 0.1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
nbop __netbox1 add box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x -1.8549599999999999 -y -2.1441300000000001 resample1
opspareds "" resample1
opparm -V 20.5.370 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( 1.07 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.370' resample1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -14.388199999999999 -y -1.3586 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node color1 (Sop/color)
opadd -e -n color color1
oplocate -x -13.385 -y 3.45736 color1
opspareds "" color1
opparm color1  ramp ( 2 )
opparm color1 group ( 0 ) grouptype ( points ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 0 0 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color1 -*
chautoscope color1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color1
nbop __netbox1 add color1
opexprlanguage -s hscript color1
opuserdata -n '___Version___' -v '' color1
opuserdata -n '___toolcount___' -v '2' color1
opuserdata -n '___toolid___' -v 'sop_color' color1

# Node color2 (Sop/color)
opadd -e -n color color2
oplocate -x -13.385 -y 2.5657800000000002 color2
opspareds "" color2
opparm color2  ramp ( 2 )
opparm color2 group ( 1 ) grouptype ( points ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 0 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color2 -*
chautoscope color2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color2
nbop __netbox1 add color2
opexprlanguage -s hscript color2
opuserdata -n '___Version___' -v '' color2
opuserdata -n '___toolcount___' -v '2' color2
opuserdata -n '___toolid___' -v 'sop_color' color2

# Node color3 (Sop/color)
opadd -e -n color color3
oplocate -x -13.385 -y 1.6877599999999999 color3
opspareds "" color3
opparm color3  ramp ( 2 )
opparm color3 group ( 2 ) grouptype ( points ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 1 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color3 -*
chautoscope color3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color3
nbop __netbox1 add color3
opexprlanguage -s hscript color3
opuserdata -n '___Version___' -v '' color3
opuserdata -n '___toolcount___' -v '2' color3
opuserdata -n '___toolid___' -v 'sop_color' color3

# Node color4 (Sop/color)
opadd -e -n color color4
oplocate -x -13.385 -y 0.72842499999999999 color4
opspareds "" color4
opparm color4  ramp ( 2 )
opparm color4 group ( 3 ) grouptype ( points ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 0 1 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color4 -*
chautoscope color4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color4
nbop __netbox1 add color4
opexprlanguage -s hscript color4
opuserdata -n '___Version___' -v '' color4
opuserdata -n '___toolcount___' -v '2' color4
opuserdata -n '___toolid___' -v 'sop_color' color4

# Node box2 (Sop/box)
opadd -e -n box box2
oplocate -x 8.94604 -y 2.72783 box2
opspareds "" box2
opparm -V 20.5.370 box2 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 15 12 4.4 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box2 -*
chautoscope box2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box2
nbop __netbox2 add box2
opexprlanguage -s hscript box2
opuserdata -n '___Version___' -v '20.5.370' box2

# Node boolean1 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean1
oplocate -x 5.4335800000000001 -y 0.61449799999999999 boolean1
opspareds "" boolean1
opparm -V 20.5.370 boolean1 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( subtract ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean1 -*
chautoscope boolean1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean1
opexprlanguage -s hscript boolean1
opuserdata -n '___Version___' -v '20.5.370' boolean1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 8.94604 -y 1.72783 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 9.133987584114074 5.058424770832062 9.074366188049316 ) r ( 0 55.37402583491539 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
nbop __netbox2 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node Close_Floor_Geometry (Sop/ends)
opadd -e -n ends Close_Floor_Geometry
oplocate -x 5.4335800000000001 -y 1.72783 Close_Floor_Geometry
opspareds "" Close_Floor_Geometry
opparm -V 20.5.370 Close_Floor_Geometry group ( "" ) pshapeu ( on ) pshapev ( off ) closeu ( closesharp ) closev ( sameclosure ) clampu ( sameclamp ) clampv ( sameclamp )
chlock Close_Floor_Geometry -*
chautoscope Close_Floor_Geometry -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Close_Floor_Geometry
opexprlanguage -s hscript Close_Floor_Geometry
opuserdata -n '___Version___' -v '20.5.370' Close_Floor_Geometry

# Node polypath2 (Sop/polypath)
opadd -e -n polypath polypath2
oplocate -x 5.4335800000000001 -y -0.30696200000000001 polypath2
opspareds "" polypath2
opparm polypath2 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath2 -*
chautoscope polypath2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath2
opexprlanguage -s hscript polypath2
opuserdata -n '___Version___' -v '' polypath2

# Node PreorpcessFootprint (Sop/subnet)
opadd -e -n subnet PreorpcessFootprint
oplocate -x 5.4335800000000001 -y -6.2124899999999998 PreorpcessFootprint
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0.001" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     } ' PreorpcessFootprint
opparm -V 20.5.370 PreorpcessFootprint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RemoveInlinePointDist ( 0.05 ) RotationDirection ( 0 )
chlock PreorpcessFootprint -*
chautoscope PreorpcessFootprint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PreorpcessFootprint
opexprlanguage -s hscript PreorpcessFootprint
opuserdata -n '___Version___' -v '20.5.370' PreorpcessFootprint
opcf PreorpcessFootprint

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.5357700000000001e-08 -y -9.6666000000000007 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node convexhull1 (Sop/shrinkwrap::2.0)
opadd -e -n shrinkwrap::2.0 convexhull1
oplocate -x 6.7910399999999997 -y -1.02522 convexhull1
opspareds "" convexhull1
opparm -V 20.5.370 convexhull1 group ( "" ) type ( xyz ) planesrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) shrinkamount ( 0 ) preserveattribs ( on ) removeinlinepoints ( on )
chlock convexhull1 -*
chautoscope convexhull1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on convexhull1
opexprlanguage -s hscript convexhull1
opuserdata -n '___Version___' -v '20.5.370' convexhull1

# Node generate_local_axis (Sop/attribwrangle)
opadd -e -n attribwrangle generate_local_axis
oplocate -x 10.949199999999999 -y -5.5002500000000003 generate_local_axis
opspareds "" generate_local_axis
opparm generate_local_axis  bindings ( 0 ) groupbindings ( 0 )
opparm generate_local_axis folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// Get center\nvector center = vector(0.0);\nfor( int i=0; i<npoints(1); ++i )\n    center += point(1, "P", i);\ncenter /= npoints(1);\n\nvector axis1 = normalize( point(1,"P",1) - point(1,"P",0) ) * 10.0;\nvector axis2 = normalize( point(1,"P",2) - point(1,"P",1) ) * 10.0;\n\nvector z_dir = abs(axis1.z) > abs(axis2.z) ? axis1 : axis2;\nvector x_dir = abs(axis1.z) <= abs(axis2.z) ? axis1 : axis2;\n\n\nif( z_dir.z < 0 )   z_dir = -z_dir;\nif( x_dir.x < 0 )   x_dir = -x_dir;\n\nint origin = addpoint(0, center );\n\nint prim_zdir = addprim( 0, "polyline" );\naddprimattrib(0, "Cd", {1,1,1});\n\nint z_end = addpoint( 0, z_dir + center );\naddvertex( 0, prim_zdir, origin );\naddvertex( 0, prim_zdir, z_end );\nsetprimattrib( 0, "Cd", prim_zdir, {0,0,1} );\n\n\nint prim_xdir = addprim( 0, "polyline" );\nint x_end = addpoint( 0, x_dir + center );\naddvertex( 0, prim_xdir, origin );\naddvertex( 0, prim_xdir, x_end );\nsetprimattrib( 0, "Cd", prim_xdir, {1,0,0} );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock generate_local_axis -*
chautoscope generate_local_axis -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off generate_local_axis
opexprlanguage -s hscript generate_local_axis
opuserdata -n '___Version___' -v '' generate_local_axis

# Node minimum_bounding_rectangle (Sop/python)
opadd -e -n python minimum_bounding_rectangle
oplocate -x 7.6585900000000002 -y -3.0403500000000001 minimum_bounding_rectangle
opspareds "" minimum_bounding_rectangle
opparm -V 20.5.370 minimum_bounding_rectangle python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\ndef MinimumBoundingRectangle( hull_points ):\n    """\n    Find the smallest bounding rectangle for a set of points.\n    Returns a set of points representing the corners of the bounding box.\n\n    :param points: an nx2 matrix of coordinates\n    :rval: an nx2 matrix of coordinates\n    """\n    pi2 = np.pi/2.\n\n    # calculate edge angles\n    edges = np.zeros((len(hull_points)-1, 2))\n    edges = hull_points[1:] - hull_points[:-1]\n\n    angles = np.zeros((len(edges)))\n    angles = np.arctan2(edges[:, 1], edges[:, 0])\n\n    angles = np.abs(np.mod(angles, pi2))\n    angles = np.unique(angles)\n\n    # find rotation matrices\n    rotations = np.vstack([\n        np.cos(angles),\n        np.cos(angles-pi2),\n        np.cos(angles+pi2),\n        np.cos(angles)]).T\n    rotations = rotations.reshape((-1, 2, 2))\n\n    # apply rotations to the hull\n    rot_points = np.dot(rotations, hull_points.T)\n\n    # find the bounding points\n    min_x = np.nanmin(rot_points[:, 0], axis=1)\n    max_x = np.nanmax(rot_points[:, 0], axis=1)\n    min_y = np.nanmin(rot_points[:, 1], axis=1)\n    max_y = np.nanmax(rot_points[:, 1], axis=1)\n\n    # find the box with the best area\n    areas = (max_x - min_x) * (max_y - min_y)\n    best_idx = np.argmin(areas)\n\n    # return the best box\n    x1 = max_x[best_idx]\n    x2 = min_x[best_idx]\n    y1 = max_y[best_idx]\n    y2 = min_y[best_idx]\n    r = rotations[best_idx]\n\n    rval = np.zeros((4, 2))\n    rval[0] = np.dot([x1, y2], r)\n    rval[1] = np.dot([x2, y2], r)\n    rval[2] = np.dot([x2, y1], r)\n    rval[3] = np.dot([x1, y1], r)\n\n    return rval\n\n\n\nconvex_hull = node.input(1).geometry()\n\n\npoints = np.empty((0,2),float)\n\nfor p in convex_hull.points():\n    pos = p.position()\n    points = np.append( points, np.array([[pos.x(),pos.z()]]), axis=0 )\n   \n#print( points )\n\nmbr = MinimumBoundingRectangle( points )\nmbr_len = len(mbr)\n\nrotdir = convex_hull.prims()[0].attribValue("RotDir")\nif( rotdir==1 ):\n    mbr = mbr[::-1]#mbr.reverse()\n\n\n# Register mbr points\nfor p in mbr:\n    point = geo.createPoint()\n    point.setPosition( (p[0], 0.0, p[1]) )\n\n# Create primitive\npoly = geo.createPolygon(False)\nfor i in range(mbr_len):    \n    poly.addVertex( geo.point(i) )\npoly.addVertex( geo.point(0) )\n    \n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock minimum_bounding_rectangle -*
chautoscope minimum_bounding_rectangle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off minimum_bounding_rectangle
opexprlanguage -s hscript minimum_bounding_rectangle
opuserdata -n '___Version___' -v '20.5.370' minimum_bounding_rectangle

# Node quick_hull (Sop/python)
opadd -e -n python quick_hull
oplocate -x 3.97627 -y -1.02522 quick_hull
opspareds "" quick_hull
opparm -V 20.5.370 quick_hull python ( 'import math\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\n\ndef DotProduct( a, b ):\n    return a.x() * b.x() + a.y() * b.y()\n\n\n    \n# Returns z component of 2d vector crossproduct\ndef CrossProductZ( a, b ):\n        return a.x() * b.y() - b.x() * a.y()\n\n\n\ndef Distance( a, b ):\n    d = a-b\n    return math.sqrt( d.x()*d.x() + d.y()*d.y() )\n        \n    \n    \ndef ClosestPointOnLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    s = 0\n    O = Q1\n\n    Q12 = Q2 - Q1\n\n    Q12_P       = DotProduct( Q12, P )\n    Q12_Q1      = DotProduct( Q12, Q1 )\n    Q12_Q12     = DotProduct( Q12, Q12 )\n\n    if( Q12_Q12 < 1.0e-9 ):\n        return\n\n    s = ( Q12_P - Q12_Q1 ) / Q12_Q12\n    if( clampQ1 ): s = max( s, 0 )\n    if( clampQ2 ): s = min( s, 1 )\n\n    O = Q1 + s*Q12\n\n    return O, s\n\n\n\n# Distance to line segment\ndef DistanceToLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    #O = Point2D()# closest point on line segment(Q1, Q2)\n    #s = 0.0# Q1->Q2 vector scale\n    O, s = ClosestPointOnLineSegment( P, Q1, Q2, clampQ1, clampQ2 )\n    return Distance( P, O )\n\n\n\n\ndef IsAbove( p, q1, q2 ):\n    return CrossProductZ( q2-q1, p-q1 ) > 0\n\n\n\ndef GatherAbove( points, q1, q2 ):\n\n    results = []\n    farthest_idx = -1\n\n    max_d = 0\n    for p in points:\n        # Check if p is on the left side(above) of line segment (q1,q2)\n        if( not IsAbove( p, q1, q2 ) ): continue\n        \n        d = DistanceToLineSegment( p, q1, q2, False, False )\n        if( d > max_d ):# Record fartherst point index\n            max_d = d\n            farthest_idx = len(results)\n        results.append(p)\n\n    return results, farthest_idx\n\n\n\ndef QuickHull_rec( points, q1, q2 ):#, hull_points ):\n\n    #print( "//============= QuickHull_rec: %s, %s ===============//" % (q1, q2) )\n\n    hull_points = []\n\n    upper_points, farthest_idx = GatherAbove( points, q1, q2 )\n\n    if( farthest_idx!=-1 ):# The farthest point found.\n        #print( "  appending farthest upper point to hull_points:", upper_points[farthest_idx] )\n\n        # Traverse (q1-farthest) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, q1, upper_points[farthest_idx] )#, hull_points )\n\n        # Append farthest point\n        hull_points.append( upper_points[farthest_idx] )\n\n        # Traverse (farthest-q2) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, upper_points[farthest_idx], q2 )#, hull_points )\n\n    return hull_points\n\n\n\ndef QuickHull( points ):\n    # 出力\n    hull_points = []\n\n    # Get split segment end points\n    q1, q2 = ( min( points, key=lambda item : item.x()), max( points, key=lambda item : item.x()) )\n\n    hull_points.append(q1)\n    hull_points += QuickHull_rec( points, q1, q2)#, hull_points )\n\n    hull_points.append(q2)\n    hull_points += QuickHull_rec( points, q2, q1)#, hull_points )\n\n    return hull_points\n\n\n    \n\n\n#################################################################\n#                           main                                #\n#################################################################\ngeom_in1 = node.input(1).geometry()\n\nrotdir = geom_in1.prims()[0].attribValue("RotDir")\n\npoints = [ hou.Vector2(p.position().x(), p.position().z()) for p in geom_in1.points() ]\n\nhull_points = QuickHull( points )\n\n\nif( rotdir==1 ):\n    hull_points.reverse()\n\n\npoly = geo.createPolygon(False)\nfor p in hull_points:\n    point = geo.createPoint()\n    point.setPosition( (p.x(), 0.0, p.y()) )\n    poly.addVertex( point )\npoly.addVertex( geo.point(0) )\n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock quick_hull -*
chautoscope quick_hull -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off quick_hull
opexprlanguage -s hscript quick_hull
opuserdata -n '___Version___' -v '20.5.370' quick_hull

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 3.97627 -y -9.6666000000000007 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node output2 (Sop/output)
opadd -e -n output output2
oplocate -x 7.6585900000000002 -y -9.6666000000000007 output2
opspareds "" output2
opparm -V 20.5.370 output2 outputidx ( 2 )
chlock output2 -*
chautoscope output2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output2
opexprlanguage -s hscript output2
opuserdata -n '___Version___' -v '20.5.370' output2

# Node output3 (Sop/output)
opadd -e -n output output3
oplocate -x 10.952199999999999 -y -9.6666000000000007 output3
opspareds "" output3
opparm -V 20.5.370 output3 outputidx ( 3 )
chlock output3 -*
chautoscope output3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output3
opexprlanguage -s hscript output3
opuserdata -n '___Version___' -v '20.5.370' output3

# Node PathCleansing (Sop/subnet)
opadd -e -n subnet PathCleansing
oplocate -x -1.11759e-08 -y 3.8114499999999998 PathCleansing
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' PathCleansing
chblockbegin
chadd -t 0 0 PathCleansing RotationDirection
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' PathCleansing/RotationDirection
chadd -t 0 0 PathCleansing RemoveInlinePointDist
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' PathCleansing/RemoveInlinePointDist
chblockend
opparm -V 20.5.370 PathCleansing label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RotationDirection ( RotationDirection ) RemoveInlinePointDist ( RemoveInlinePointDist )
chlock PathCleansing -*
chautoscope PathCleansing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PathCleansing
opexprlanguage -s hscript PathCleansing
opuserdata -n '___Version___' -v '20.5.370' PathCleansing
opcf PathCleansing

# Network Box __netbox1
nbadd __netbox1
nblocate -x -0.399999 -y -2.40335 __netbox1
nbsize -w 2.8 -h 1.62583 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -3.9903400000000002 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Check_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Check_rotation_direction
oplocate -x -0.00300001 -y 1.26894 Check_rotation_direction
opspareds "" Check_rotation_direction
opparm Check_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
opparm Check_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int pts[] = primpoints(0, @primnum);\nfloat sum = 0.0;\nint count = len(pts);\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  p0 = point(0, "P", pts[i]),\n            p1 = point(0, "P", pts[i+1]);\n    \n    sum += (p1.x - p0.x) * (p1.z + p0.z);\n}\n\n\ni@RotDir = sum > 0.0;//0:CCW, 1:CW\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_rotation_direction -*
chautoscope Check_rotation_direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_rotation_direction
opexprlanguage -s hscript Check_rotation_direction
opuserdata -n '___Version___' -v '' Check_rotation_direction

# Node Check_if_curve_is_closed (Sop/attribwrangle)
opadd -e -n attribwrangle Check_if_curve_is_closed
oplocate -x -0.00300001 -y 2.3064300000000002 Check_if_curve_is_closed
opspareds "" Check_if_curve_is_closed
opparm Check_if_curve_is_closed  bindings ( 0 ) groupbindings ( 0 )
opparm Check_if_curve_is_closed folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( ' int pts[] = primpoints(0, @primnum);\ni@IsClosed = primintrinsic(0, "closed", @primnum) || pts[0] == pts[-1];' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_if_curve_is_closed -*
chautoscope Check_if_curve_is_closed -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_if_curve_is_closed
opexprlanguage -s hscript Check_if_curve_is_closed
opuserdata -n '___Version___' -v '' Check_if_curve_is_closed

# Node Reconstruct_outline_with_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Reconstruct_outline_with_rotation_direction
oplocate -x -0.00300001 -y 0.12872900000000001 Reconstruct_outline_with_rotation_direction
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "RotationDirection"                 label   "Rotationdirection"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' Reconstruct_outline_with_rotation_direction
opparm Reconstruct_outline_with_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 Reconstruct_outline_with_rotation_direction RotationDirection
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' Reconstruct_outline_with_rotation_direction/RotationDirection
chblockend
opparm Reconstruct_outline_with_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int in = 1;\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\nfor( int i=0; i<nprimitives(in); ++i )\n{\n    int rot_dir = prim(in, "RotDir", i);\n    int is_closed = prim(in, "IsClosed", i);\n\n    int pts[] = primpoints(in, i);\n\n    if( len(pts)==0 ) continue;\n    \n    // Align rotation direction to input parameter\n    if( rot_dir==rotation_direction )\n        pts = reverse(pts);\n\n    int prim = addprim(0, "polyline");\n    for( int j=0; j<len(pts); ++j )\n    {\n        vector p = point(in, "P", pts[j] );\n        int newpt = addpoint(0, p);\n        addvertex(0, prim, newpt);\n    }\n\n    setprimattrib(0, "RotDir", prim, rotation_direction);\n    setprimattrib(0, "IsClosed", prim, is_closed);\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) RotationDirection ( RotationDirection )
chlock Reconstruct_outline_with_rotation_direction -*
chautoscope Reconstruct_outline_with_rotation_direction -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Reconstruct_outline_with_rotation_direction
opexprlanguage -s hscript Reconstruct_outline_with_rotation_direction
opuserdata -n '___Version___' -v '' Reconstruct_outline_with_rotation_direction

# Node polypath1 (Sop/polypath)
opadd -e -n polypath polypath1
oplocate -x -1.11759e-08 -y 3.2925800000000001 polypath1
opspareds "" polypath1
opparm polypath1 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath1 -*
chautoscope polypath1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath1
opexprlanguage -s hscript polypath1
opuserdata -n '___Version___' -v '' polypath1

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -1.11759e-08 -y -1.45824 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox1 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x -1.11759e-08 -y -2.3840699999999999 facet1
opspareds "" facet1
chblockbegin
chadd -t 0 0 facet1 inlinedist
chkey -t 0 -v 0.001 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' facet1/inlinedist
chblockend
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( inlinedist ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
nbop __netbox1 add facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node sort_points_by_vertex_order (Sop/sort)
opadd -e -n sort sort_points_by_vertex_order
oplocate -x -1.11759e-08 -y 4.37357 sort_points_by_vertex_order
opspareds "" sort_points_by_vertex_order
opparm -V 20.5.370 sort_points_by_vertex_order pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_points_by_vertex_order -*
chautoscope sort_points_by_vertex_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_points_by_vertex_order
opexprlanguage -s hscript sort_points_by_vertex_order
opuserdata -n '___Version___' -v '20.5.370' sort_points_by_vertex_order
oporder -e output0 Check_rotation_direction Check_if_curve_is_closed Reconstruct_outline_with_rotation_direction polypath1 fuse1 facet1 sort_points_by_vertex_order 
opcf ..

# Node ComputeEdgeNormalTangent (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent
oplocate -x -0.00300001 -y 2.69916 ComputeEdgeNormalTangent
opspareds "" ComputeEdgeNormalTangent
opparm ComputeEdgeNormalTangent  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent -*
chautoscope ComputeEdgeNormalTangent -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent
opexprlanguage -s hscript ComputeEdgeNormalTangent
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent

# Node ComputeCornerNormal (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeCornerNormal
oplocate -x -0.00300001 -y 1.4759899999999999 ComputeCornerNormal
opspareds "" ComputeCornerNormal
opparm ComputeCornerNormal  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeCornerNormal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int is_closed = i@IsClosed;\n\n// Compute corner normals \nfor( int i=!i@IsClosed; i<npoints(0)-!i@IsClosed; ++i )\n{\n    int i_prev = (i-1)%npoints(0);\n    vector corner_normal= point(0,"edge_normal",i) + point(0,"edge_normal",i_prev);\n    \n    setpointattrib(0, "corner_normal", i, normalize(corner_normal));\n}\n\n/*\nint last = npoints(0)-1;\nvector e_n_last = point(0, "edge_normal", last);\n\nif( i@IsClosed )\n{\n    vector corner_normal= point(0,"edge_normal",0) + e_n_last;\n    setpointattrib(0, "corner_normal", 0, normalize(corner_normal));\n    \n    corner_normal= e_n_last + point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, normalize(corner_normal));    \n}\n*/\n\nif( !i@IsClosed )\n{\n    int last = npoints(0)-1;\n    //vector e_n_last = point(0, "edge_normal", last);\n\n    vector corner_normal = point(0,"edge_normal",0);\n    setpointattrib(0, "corner_normal", 0, corner_normal );\n\n    corner_normal = point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, corner_normal );\n}\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeCornerNormal -*
chautoscope ComputeCornerNormal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeCornerNormal
opexprlanguage -s hscript ComputeCornerNormal
opuserdata -n '___Version___' -v '' ComputeCornerNormal

# Node compute_closest_quick_hull_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_quick_hull_edge
oplocate -x -0.0029999699999999998 -y -7.12859 compute_closest_quick_hull_edge
opspareds "" compute_closest_quick_hull_edge
opparm compute_closest_quick_hull_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_quick_hull_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int foot=0, hull=1;\n\nint h = 0;\nint f = -1;\n\nvector hp = point(hull, "P", h);\nfor( int i=0; i<npoints(foot); ++i )\n{\n    vector fp = point(foot, "P", i) * set(1,0,1);\n    if( distance2(fp, hp) < 1.0e-6 )\n    {\n        f = i;\n        break;\n    }\n}\n\nif( f==-1 ) return;\n\n//printf( "f_start: %d, h_start: %d\\n", f, h );\n\n\nfor( int i=0; i<npoints(hull); ++i )// for each hul point\n{\n    int h_next = (i + h + 1) % npoints(hull);\n    hp = point(hull, "P", h_next);\n    \n    for( int j=0; j<npoints(foot); ++j )\n    {\n        vector fp = point(foot, "P", f) * set(1,0,1);\n        \n        if( distance(hp, fp) < 1.0e-4 )\n        {\n            //printf("      break at f: %d\\n", f);\n            break;\n        }\n            \n        //printf( "    h_next: %d(%f), f: %d(%f)\\n", h_next, hp, f, fp );\n        int hull_id = (h_next-1)%npoints(hull);\n        setpointattrib(foot, "HullID", f, hull_id );\n        \n        int mbr_id = point(hull,"MBRID", hull_id);\n        setpointattrib(foot, "MBRID", f, mbr_id);\n        \n        \n        f = (f + 1) % npoints(foot);\n    }\n    \n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_quick_hull_edge -*
chautoscope compute_closest_quick_hull_edge -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_quick_hull_edge
opexprlanguage -s hscript compute_closest_quick_hull_edge
opuserdata -n '___Version___' -v '' compute_closest_quick_hull_edge

# Node compute_closest_mbr_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_mbr_edge
oplocate -x 3.9732699999999999 -y -5.8430799999999996 compute_closest_mbr_edge
opspareds "" compute_closest_mbr_edge
opparm compute_closest_mbr_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_mbr_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mbr=1;\n\nvector next = point(0, "P", (@ptnum+1)%npoints(0));\nvector edgedir_h = normalize(next - @P);\n\ni@MBRID = -1;\nfloat dot_max = -1;\n\nfor( int i=0; i<4; ++i )\n{\n    vector  p0 = point(mbr, "P", i),\n            p1 = point(mbr, "P", (i+1)%4 );\n    vector edgedir_mbr = normalize(p1 - p0);\n    \n    float dot = dot(edgedir_h, edgedir_mbr);\n    if( dot > dot_max )\n    {\n        dot_max = dot;\n        i@MBRID = i;\n    }\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_mbr_edge -*
chautoscope compute_closest_mbr_edge -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_mbr_edge
opexprlanguage -s hscript compute_closest_mbr_edge
opuserdata -n '___Version___' -v '' compute_closest_mbr_edge

# Node Area (Sop/attribwrangle)
opadd -e -n attribwrangle Area
oplocate -x -0.00300001 -y 0.335924 Area
opspareds "" Area
opparm Area  bindings ( 0 ) groupbindings ( 0 )
opparm Area folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area -*
chautoscope Area -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area
opexprlanguage -s hscript Area
opuserdata -n '___Version___' -v '' Area

# Node PolyArea (Sop/python)
opadd -e -n python PolyArea
oplocate -x -6.8956600000000003 -y -0.14574999999999999 PolyArea
opspareds "" PolyArea
opparm -V 20.5.370 PolyArea python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\ndef PolyArea(x,y):\n    return 0.5*np.abs(np.dot(x,np.roll(y,1))-np.dot(y,np.roll(x,1)))\n    \n\nx = y = np.arange(0)\nfor point in geo.points():\n    x = np.append( x, point.position().x() )\n    y = np.append( y, point.position().z() )\n\n#print(x)\n#print(y)\nprint( PolyArea(x,y) )\n#x=np.append(x, 9999)\n#y = np.sqrt(1-x**2)\n' ) maintainstate ( off )
chlock PolyArea -*
chautoscope PolyArea -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on PolyArea
opexprlanguage -s hscript PolyArea
opuserdata -n '___Version___' -v '20.5.370' PolyArea

# Node Area1 (Sop/attribwrangle)
opadd -e -n attribwrangle Area1
oplocate -x 3.9732699999999999 -y -2.0548199999999999 Area1
opspareds "" Area1
opparm Area1  bindings ( 0 ) groupbindings ( 0 )
opparm Area1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area1 -*
chautoscope Area1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area1
opexprlanguage -s hscript Area1
opuserdata -n '___Version___' -v '' Area1

# Node Area2 (Sop/attribwrangle)
opadd -e -n attribwrangle Area2
oplocate -x 7.6555900000000001 -y -4.1319499999999998 Area2
opspareds "" Area2
opparm Area2  bindings ( 0 ) groupbindings ( 0 )
opparm Area2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area2 -*
chautoscope Area2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area2
opexprlanguage -s hscript Area2
opuserdata -n '___Version___' -v '' Area2

# Node ComputeEdgeNormalTangent1 (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent1
oplocate -x 7.6555900000000001 -y -6.7416700000000001 ComputeEdgeNormalTangent1
opspareds "" ComputeEdgeNormalTangent1
opparm ComputeEdgeNormalTangent1  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent1 -*
chautoscope ComputeEdgeNormalTangent1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent1
opexprlanguage -s hscript ComputeEdgeNormalTangent1
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent1
oporder -e output0 convexhull1 generate_local_axis minimum_bounding_rectangle quick_hull output1 output2 output3 PathCleansing ComputeEdgeNormalTangent ComputeCornerNormal compute_closest_quick_hull_edge compute_closest_mbr_edge Area PolyArea Area1 Area2 ComputeEdgeNormalTangent1 
opcf ..

# Node Outline (Sop/null)
opadd -e -n null Outline
oplocate -x 3.46732 -y -9.6344399999999997 Outline
opspareds "" Outline
opparm -V 20.5.370 Outline copyinput ( on ) cacheinput ( off )
chlock Outline -*
chautoscope Outline -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Outline
opexprlanguage -s hscript Outline
opuserdata -n '___Version___' -v '20.5.370' Outline

# Node ConvexHull (Sop/null)
opadd -e -n null ConvexHull
oplocate -x 5.4850099999999999 -y -9.6344399999999997 ConvexHull
opspareds "" ConvexHull
opparm -V 20.5.370 ConvexHull copyinput ( on ) cacheinput ( off )
chlock ConvexHull -*
chautoscope ConvexHull -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ConvexHull
opexprlanguage -s hscript ConvexHull
opuserdata -n '___Version___' -v '20.5.370' ConvexHull

# Node BaseMBR (Sop/null)
opadd -e -n null BaseMBR
oplocate -x 7.2890600000000001 -y -9.6344399999999997 BaseMBR
opspareds "" BaseMBR
opparm -V 20.5.370 BaseMBR copyinput ( on ) cacheinput ( off )
chlock BaseMBR -*
chautoscope BaseMBR -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 BaseMBR
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off BaseMBR
opexprlanguage -s hscript BaseMBR
opuserdata -n '___Version___' -v '20.5.370' BaseMBR

# Node LocalAxis (Sop/null)
opadd -e -n null LocalAxis
oplocate -x 7.7715699999999996 -y -7.5001300000000004 LocalAxis
opspareds "" LocalAxis
opparm -V 20.5.370 LocalAxis copyinput ( on ) cacheinput ( off )
chlock LocalAxis -*
chautoscope LocalAxis -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 LocalAxis
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off LocalAxis
opexprlanguage -s hscript LocalAxis
opuserdata -n '___Version___' -v '20.5.370' LocalAxis

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 5.4335800000000001 -y -4.72661 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 0 ) grouptype ( prims ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node attribute1 (Sop/attribute)
opadd -e -n attribute attribute1
oplocate -x 0.028180699999999999 -y -10.9887 attribute1
opspareds "" attribute1
opparm attribute1  ptrenames ( 5 ) vtxrenames ( 5 ) primrenames ( 5 ) detailrenames ( 5 ) rmanconversions ( 5 )
opparm -V 20.5.370 attribute1 stdswitcher ( 0 0 0 0 0 ) _label1_ ( From To ) ptrenames ( 5 ) ptdel ( "" ) ptkeep ( * ) _label2_ ( From To ) vtxrenames ( 5 ) vtxdel ( "" ) vtxkeep ( * ) _label3_ ( From To ) primrenames ( 5 ) primdel ( "" ) primkeep ( * ) _label4_ ( From To ) detailrenames ( 5 ) dtldel ( "" ) dtlkeep ( * ) _label5_ ( RiName RiType Offset "" ) rmanconversions ( 5 ) ridefault ( off ) updatevar ( on ) overwrite ( off ) encodenames ( off ) frompt0 ( edge_normal ) topt0 ( N ) frompt1 ( "" ) topt1 ( "" ) frompt2 ( "" ) topt2 ( "" ) frompt3 ( "" ) topt3 ( "" ) frompt4 ( "" ) topt4 ( "" ) fromvtx0 ( "" ) tovtx0 ( "" ) fromvtx1 ( "" ) tovtx1 ( "" ) fromvtx2 ( "" ) tovtx2 ( "" ) fromvtx3 ( "" ) tovtx3 ( "" ) fromvtx4 ( "" ) tovtx4 ( "" ) frompr0 ( "" ) topr0 ( "" ) frompr1 ( "" ) topr1 ( "" ) frompr2 ( "" ) topr2 ( "" ) frompr3 ( "" ) topr3 ( "" ) frompr4 ( "" ) topr4 ( "" ) fromdtl0 ( "" ) todtl0 ( "" ) fromdtl1 ( "" ) todtl1 ( "" ) fromdtl2 ( "" ) todtl2 ( "" ) fromdtl3 ( "" ) todtl3 ( "" ) fromdtl4 ( "" ) todtl4 ( "" ) hname0 ( "" ) riname0 ( "" ) ritype0 ( vtx_float ) rioff0 ( 0 ) hname1 ( "" ) riname1 ( "" ) ritype1 ( vtx_float ) rioff1 ( 0 ) hname2 ( "" ) riname2 ( "" ) ritype2 ( vtx_float ) rioff2 ( 0 ) hname3 ( "" ) riname3 ( "" ) ritype3 ( vtx_float ) rioff3 ( 0 ) hname4 ( "" ) riname4 ( "" ) ritype4 ( vtx_float ) rioff4 ( 0 )
chlock attribute1 -*
chautoscope attribute1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribute1
opexprlanguage -s hscript attribute1
opuserdata -n '___Version___' -v '20.5.370' attribute1

# Node direction (Sop/attribwrangle)
opadd -e -n attribwrangle direction
oplocate -x 10.235799999999999 -y -8.3883299999999998 direction
opspareds "" direction
opparm direction  bindings ( 0 ) groupbindings ( 0 )
opparm direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@Direction = set(1.0, 0.0, 1.0);\n\nv@Direction = normalize(v@Direction);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock direction -*
chautoscope direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off direction
opexprlanguage -s hscript direction
opuserdata -n '___Version___' -v '' direction

# Node DirectionalWeight (Sop/attribwrangle)
opadd -e -n attribwrangle DirectionalWeight
oplocate -x 7.28606 -y -11.552099999999999 DirectionalWeight
opspareds "" DirectionalWeight
opparm DirectionalWeight  bindings ( 0 ) groupbindings ( 0 )
opparm DirectionalWeight folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector dir = detail(1, "Direction");\nvector edge_n = v@edge_normal;\n\nf@Dir_Weight = dot(dir, edge_n);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock DirectionalWeight -*
chautoscope DirectionalWeight -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off DirectionalWeight
opexprlanguage -s hscript DirectionalWeight
opuserdata -n '___Version___' -v '' DirectionalWeight

# Node attribute2 (Sop/attribute)
opadd -e -n attribute attribute2
oplocate -x 6.8239000000000001 -y -14.258900000000001 attribute2
opspareds "" attribute2
opparm attribute2  ptrenames ( 5 ) vtxrenames ( 5 ) primrenames ( 5 ) detailrenames ( 5 ) rmanconversions ( 5 )
opparm -V 20.5.370 attribute2 stdswitcher ( 0 0 0 0 0 ) _label1_ ( From To ) ptrenames ( 5 ) ptdel ( "" ) ptkeep ( * ) _label2_ ( From To ) vtxrenames ( 5 ) vtxdel ( "" ) vtxkeep ( * ) _label3_ ( From To ) primrenames ( 5 ) primdel ( "" ) primkeep ( * ) _label4_ ( From To ) detailrenames ( 5 ) dtldel ( "" ) dtlkeep ( * ) _label5_ ( RiName RiType Offset "" ) rmanconversions ( 5 ) ridefault ( off ) updatevar ( on ) overwrite ( off ) encodenames ( off ) frompt0 ( Dir_Weight ) topt0 ( Cd ) frompt1 ( "" ) topt1 ( "" ) frompt2 ( "" ) topt2 ( "" ) frompt3 ( "" ) topt3 ( "" ) frompt4 ( "" ) topt4 ( "" ) fromvtx0 ( "" ) tovtx0 ( "" ) fromvtx1 ( "" ) tovtx1 ( "" ) fromvtx2 ( "" ) tovtx2 ( "" ) fromvtx3 ( "" ) tovtx3 ( "" ) fromvtx4 ( "" ) tovtx4 ( "" ) frompr0 ( "" ) topr0 ( "" ) frompr1 ( "" ) topr1 ( "" ) frompr2 ( "" ) topr2 ( "" ) frompr3 ( "" ) topr3 ( "" ) frompr4 ( "" ) topr4 ( "" ) fromdtl0 ( "" ) todtl0 ( "" ) fromdtl1 ( "" ) todtl1 ( "" ) fromdtl2 ( "" ) todtl2 ( "" ) fromdtl3 ( "" ) todtl3 ( "" ) fromdtl4 ( "" ) todtl4 ( "" ) hname0 ( "" ) riname0 ( "" ) ritype0 ( vtx_float ) rioff0 ( 0 ) hname1 ( "" ) riname1 ( "" ) ritype1 ( vtx_float ) rioff1 ( 0 ) hname2 ( "" ) riname2 ( "" ) ritype2 ( vtx_float ) rioff2 ( 0 ) hname3 ( "" ) riname3 ( "" ) ritype3 ( vtx_float ) rioff3 ( 0 ) hname4 ( "" ) riname4 ( "" ) ritype4 ( vtx_float ) rioff4 ( 0 )
chlock attribute2 -*
chautoscope attribute2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribute2
opexprlanguage -s hscript attribute2
opuserdata -n '___Version___' -v '20.5.370' attribute2

# Node Split_To_Edge_Segment (Sop/attribwrangle)
opadd -e -n attribwrangle Split_To_Edge_Segment
oplocate -x 2.3798699999999999 -y -14.6058 Split_To_Edge_Segment
opspareds "" Split_To_Edge_Segment
opparm Split_To_Edge_Segment  bindings ( 0 ) groupbindings ( 0 )
opparm Split_To_Edge_Segment folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, 0, 0);\n\nint numedges = npoints(0) - (i@IsClosed ? 0 : 1);\n\nfor( int i=0; i<numedges; ++i )\n{\n    int edge_prim = addprim(0, "polyline");\n    addvertex(0, edge_prim, i);\n    addvertex(0, edge_prim, (i+1)%npoints(0) );\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Split_To_Edge_Segment -*
chautoscope Split_To_Edge_Segment -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Split_To_Edge_Segment
opexprlanguage -s hscript Split_To_Edge_Segment
opuserdata -n '___Version___' -v '' Split_To_Edge_Segment

# Node attribpromote1 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote1
oplocate -x 2.3794200000000001 -y -15.8764 attribpromote1
opspareds "" attribpromote1
opparm -V 20.5.370 attribpromote1 inname ( 'HullID MBRID edge_length edge_normal edge_tangent Dir_Weight' ) inclass ( point ) outclass ( primitive ) usepieceattrib ( off ) pieceattrib ( name ) method ( first ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attribpromote1 -*
chautoscope attribpromote1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote1
opexprlanguage -s hscript attribpromote1
opuserdata -n '___Version___' -v '20.5.370' attribpromote1

# Node Transfer_DirWeight_Attrib (Sop/attribwrangle)
opadd -e -n attribwrangle Transfer_DirWeight_Attrib
oplocate -x 3.4643199999999998 -y -12.383100000000001 Transfer_DirWeight_Attrib
opspareds "" Transfer_DirWeight_Attrib
opparm Transfer_DirWeight_Attrib  bindings ( 0 ) groupbindings ( 0 )
opparm Transfer_DirWeight_Attrib folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@Dir_Weight = point(1, "Dir_Weight", i@MBRID);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Transfer_DirWeight_Attrib -*
chautoscope Transfer_DirWeight_Attrib -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Transfer_DirWeight_Attrib
opexprlanguage -s hscript Transfer_DirWeight_Attrib
opuserdata -n '___Version___' -v '' Transfer_DirWeight_Attrib

# Node attribpromote2 (Sop/attribpromote)
opadd -e -n attribpromote attribpromote2
oplocate -x 2.3794200000000001 -y -13.566000000000001 attribpromote2
opspareds "" attribpromote2
opparm -V 20.5.370 attribpromote2 inname ( 'Area IsClosed RotDir' ) inclass ( primitive ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attribpromote2 -*
chautoscope attribpromote2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribpromote2
opexprlanguage -s hscript attribpromote2
opuserdata -n '___Version___' -v '20.5.370' attribpromote2

# Node attribute3 (Sop/attribute)
opadd -e -n attribute attribute3
oplocate -x 1.4526300000000001 -y -17.407499999999999 attribute3
opspareds "" attribute3
opparm attribute3  ptrenames ( 5 ) vtxrenames ( 5 ) primrenames ( 5 ) detailrenames ( 5 ) rmanconversions ( 5 )
opparm -V 20.5.370 attribute3 stdswitcher ( 2 2 2 2 2 ) _label1_ ( From To ) ptrenames ( 5 ) ptdel ( "" ) ptkeep ( * ) _label2_ ( From To ) vtxrenames ( 5 ) vtxdel ( "" ) vtxkeep ( * ) _label3_ ( From To ) primrenames ( 5 ) primdel ( "" ) primkeep ( * ) _label4_ ( From To ) detailrenames ( 5 ) dtldel ( "" ) dtlkeep ( * ) _label5_ ( RiName RiType Offset "" ) rmanconversions ( 5 ) ridefault ( off ) updatevar ( on ) overwrite ( off ) encodenames ( off ) frompt0 ( "" ) topt0 ( "" ) frompt1 ( "" ) topt1 ( "" ) frompt2 ( "" ) topt2 ( "" ) frompt3 ( "" ) topt3 ( "" ) frompt4 ( "" ) topt4 ( "" ) fromvtx0 ( "" ) tovtx0 ( "" ) fromvtx1 ( "" ) tovtx1 ( "" ) fromvtx2 ( "" ) tovtx2 ( "" ) fromvtx3 ( "" ) tovtx3 ( "" ) fromvtx4 ( "" ) tovtx4 ( "" ) frompr0 ( Dir_Weight ) topr0 ( Cd ) frompr1 ( "" ) topr1 ( "" ) frompr2 ( "" ) topr2 ( "" ) frompr3 ( "" ) topr3 ( "" ) frompr4 ( "" ) topr4 ( "" ) fromdtl0 ( "" ) todtl0 ( "" ) fromdtl1 ( "" ) todtl1 ( "" ) fromdtl2 ( "" ) todtl2 ( "" ) fromdtl3 ( "" ) todtl3 ( "" ) fromdtl4 ( "" ) todtl4 ( "" ) hname0 ( "" ) riname0 ( "" ) ritype0 ( vtx_float ) rioff0 ( 0 ) hname1 ( "" ) riname1 ( "" ) ritype1 ( vtx_float ) rioff1 ( 0 ) hname2 ( "" ) riname2 ( "" ) ritype2 ( vtx_float ) rioff2 ( 0 ) hname3 ( "" ) riname3 ( "" ) ritype3 ( vtx_float ) rioff3 ( 0 ) hname4 ( "" ) riname4 ( "" ) ritype4 ( vtx_float ) rioff4 ( 0 )
chlock attribute3 -*
chautoscope attribute3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribute3
opexprlanguage -s hscript attribute3
opuserdata -n '___Version___' -v '20.5.370' attribute3

# Node sort_floor_by_FloorIdx_attrib (Sop/sort)
opadd -e -n sort sort_floor_by_FloorIdx_attrib
oplocate -x 5.4335800000000001 -y -1.41316 sort_floor_by_FloorIdx_attrib
opspareds "" sort_floor_by_FloorIdx_attrib
opparm -V 20.5.370 sort_floor_by_FloorIdx_attrib pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( attribute ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( FloorIdx ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_floor_by_FloorIdx_attrib -*
chautoscope sort_floor_by_FloorIdx_attrib -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_floor_by_FloorIdx_attrib
opexprlanguage -s hscript sort_floor_by_FloorIdx_attrib
opuserdata -n '___Version___' -v '20.5.370' sort_floor_by_FloorIdx_attrib

# Node Floor_Outlines (Sop/null)
opadd -e -n null Floor_Outlines
oplocate -x 5.4335800000000001 -y -2.6786099999999999 Floor_Outlines
opspareds "" Floor_Outlines
opparm -V 20.5.370 Floor_Outlines copyinput ( on ) cacheinput ( off )
chlock Floor_Outlines -*
chautoscope Floor_Outlines -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Floor_Outlines
opexprlanguage -s hscript Floor_Outlines
opuserdata -n '___Version___' -v '20.5.370' Floor_Outlines

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 17.938600000000001 -y -10.586 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( off ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 6 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 17.8886 -y -4.5085300000000004 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node PreorpcessFootprint1 (Sop/subnet)
opadd -e -n subnet PreorpcessFootprint1
oplocate -x 15.5762 -y -5.6282899999999998 PreorpcessFootprint1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0.001" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     } ' PreorpcessFootprint1
opparm -V 20.5.370 PreorpcessFootprint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RemoveInlinePointDist ( 0.05 ) RotationDirection ( 0 )
chlock PreorpcessFootprint1 -*
chautoscope PreorpcessFootprint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PreorpcessFootprint1
opexprlanguage -s hscript PreorpcessFootprint1
opuserdata -n '___Version___' -v '20.5.370' PreorpcessFootprint1
opcf PreorpcessFootprint1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.5357700000000001e-08 -y -9.6666000000000007 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node convexhull1 (Sop/shrinkwrap::2.0)
opadd -e -n shrinkwrap::2.0 convexhull1
oplocate -x 6.7910399999999997 -y -1.02522 convexhull1
opspareds "" convexhull1
opparm -V 20.5.370 convexhull1 group ( "" ) type ( xyz ) planesrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) shrinkamount ( 0 ) preserveattribs ( on ) removeinlinepoints ( on )
chlock convexhull1 -*
chautoscope convexhull1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on convexhull1
opexprlanguage -s hscript convexhull1
opuserdata -n '___Version___' -v '20.5.370' convexhull1

# Node generate_local_axis (Sop/attribwrangle)
opadd -e -n attribwrangle generate_local_axis
oplocate -x 10.949199999999999 -y -5.5002500000000003 generate_local_axis
opspareds "" generate_local_axis
opparm generate_local_axis  bindings ( 0 ) groupbindings ( 0 )
opparm generate_local_axis folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// Get center\nvector center = vector(0.0);\nfor( int i=0; i<npoints(1); ++i )\n    center += point(1, "P", i);\ncenter /= npoints(1);\n\nvector axis1 = normalize( point(1,"P",1) - point(1,"P",0) ) * 10.0;\nvector axis2 = normalize( point(1,"P",2) - point(1,"P",1) ) * 10.0;\n\nvector z_dir = abs(axis1.z) > abs(axis2.z) ? axis1 : axis2;\nvector x_dir = abs(axis1.z) <= abs(axis2.z) ? axis1 : axis2;\n\n\nif( z_dir.z < 0 )   z_dir = -z_dir;\nif( x_dir.x < 0 )   x_dir = -x_dir;\n\nint origin = addpoint(0, center );\n\nint prim_zdir = addprim( 0, "polyline" );\naddprimattrib(0, "Cd", {1,1,1});\n\nint z_end = addpoint( 0, z_dir + center );\naddvertex( 0, prim_zdir, origin );\naddvertex( 0, prim_zdir, z_end );\nsetprimattrib( 0, "Cd", prim_zdir, {0,0,1} );\n\n\nint prim_xdir = addprim( 0, "polyline" );\nint x_end = addpoint( 0, x_dir + center );\naddvertex( 0, prim_xdir, origin );\naddvertex( 0, prim_xdir, x_end );\nsetprimattrib( 0, "Cd", prim_xdir, {1,0,0} );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock generate_local_axis -*
chautoscope generate_local_axis -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off generate_local_axis
opexprlanguage -s hscript generate_local_axis
opuserdata -n '___Version___' -v '' generate_local_axis

# Node minimum_bounding_rectangle (Sop/python)
opadd -e -n python minimum_bounding_rectangle
oplocate -x 7.6585900000000002 -y -3.0403500000000001 minimum_bounding_rectangle
opspareds "" minimum_bounding_rectangle
opparm -V 20.5.370 minimum_bounding_rectangle python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\ndef MinimumBoundingRectangle( hull_points ):\n    """\n    Find the smallest bounding rectangle for a set of points.\n    Returns a set of points representing the corners of the bounding box.\n\n    :param points: an nx2 matrix of coordinates\n    :rval: an nx2 matrix of coordinates\n    """\n    pi2 = np.pi/2.\n\n    # calculate edge angles\n    edges = np.zeros((len(hull_points)-1, 2))\n    edges = hull_points[1:] - hull_points[:-1]\n\n    angles = np.zeros((len(edges)))\n    angles = np.arctan2(edges[:, 1], edges[:, 0])\n\n    angles = np.abs(np.mod(angles, pi2))\n    angles = np.unique(angles)\n\n    # find rotation matrices\n    rotations = np.vstack([\n        np.cos(angles),\n        np.cos(angles-pi2),\n        np.cos(angles+pi2),\n        np.cos(angles)]).T\n    rotations = rotations.reshape((-1, 2, 2))\n\n    # apply rotations to the hull\n    rot_points = np.dot(rotations, hull_points.T)\n\n    # find the bounding points\n    min_x = np.nanmin(rot_points[:, 0], axis=1)\n    max_x = np.nanmax(rot_points[:, 0], axis=1)\n    min_y = np.nanmin(rot_points[:, 1], axis=1)\n    max_y = np.nanmax(rot_points[:, 1], axis=1)\n\n    # find the box with the best area\n    areas = (max_x - min_x) * (max_y - min_y)\n    best_idx = np.argmin(areas)\n\n    # return the best box\n    x1 = max_x[best_idx]\n    x2 = min_x[best_idx]\n    y1 = max_y[best_idx]\n    y2 = min_y[best_idx]\n    r = rotations[best_idx]\n\n    rval = np.zeros((4, 2))\n    rval[0] = np.dot([x1, y2], r)\n    rval[1] = np.dot([x2, y2], r)\n    rval[2] = np.dot([x2, y1], r)\n    rval[3] = np.dot([x1, y1], r)\n\n    return rval\n\n\n\nconvex_hull = node.input(1).geometry()\n\n\npoints = np.empty((0,2),float)\n\nfor p in convex_hull.points():\n    pos = p.position()\n    points = np.append( points, np.array([[pos.x(),pos.z()]]), axis=0 )\n   \n#print( points )\n\nmbr = MinimumBoundingRectangle( points )\nmbr_len = len(mbr)\n\nrotdir = convex_hull.prims()[0].attribValue("RotDir")\nif( rotdir==1 ):\n    mbr = mbr[::-1]#mbr.reverse()\n\n\n# Register mbr points\nfor p in mbr:\n    point = geo.createPoint()\n    point.setPosition( (p[0], 0.0, p[1]) )\n\n# Create primitive\npoly = geo.createPolygon(False)\nfor i in range(mbr_len):    \n    poly.addVertex( geo.point(i) )\npoly.addVertex( geo.point(0) )\n    \n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock minimum_bounding_rectangle -*
chautoscope minimum_bounding_rectangle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off minimum_bounding_rectangle
opexprlanguage -s hscript minimum_bounding_rectangle
opuserdata -n '___Version___' -v '20.5.370' minimum_bounding_rectangle

# Node quick_hull (Sop/python)
opadd -e -n python quick_hull
oplocate -x 3.97627 -y -1.02522 quick_hull
opspareds "" quick_hull
opparm -V 20.5.370 quick_hull python ( 'import math\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\n\ndef DotProduct( a, b ):\n    return a.x() * b.x() + a.y() * b.y()\n\n\n    \n# Returns z component of 2d vector crossproduct\ndef CrossProductZ( a, b ):\n        return a.x() * b.y() - b.x() * a.y()\n\n\n\ndef Distance( a, b ):\n    d = a-b\n    return math.sqrt( d.x()*d.x() + d.y()*d.y() )\n        \n    \n    \ndef ClosestPointOnLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    s = 0\n    O = Q1\n\n    Q12 = Q2 - Q1\n\n    Q12_P       = DotProduct( Q12, P )\n    Q12_Q1      = DotProduct( Q12, Q1 )\n    Q12_Q12     = DotProduct( Q12, Q12 )\n\n    if( Q12_Q12 < 1.0e-9 ):\n        return\n\n    s = ( Q12_P - Q12_Q1 ) / Q12_Q12\n    if( clampQ1 ): s = max( s, 0 )\n    if( clampQ2 ): s = min( s, 1 )\n\n    O = Q1 + s*Q12\n\n    return O, s\n\n\n\n# Distance to line segment\ndef DistanceToLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    #O = Point2D()# closest point on line segment(Q1, Q2)\n    #s = 0.0# Q1->Q2 vector scale\n    O, s = ClosestPointOnLineSegment( P, Q1, Q2, clampQ1, clampQ2 )\n    return Distance( P, O )\n\n\n\n\ndef IsAbove( p, q1, q2 ):\n    return CrossProductZ( q2-q1, p-q1 ) > 0\n\n\n\ndef GatherAbove( points, q1, q2 ):\n\n    results = []\n    farthest_idx = -1\n\n    max_d = 0\n    for p in points:\n        # Check if p is on the left side(above) of line segment (q1,q2)\n        if( not IsAbove( p, q1, q2 ) ): continue\n        \n        d = DistanceToLineSegment( p, q1, q2, False, False )\n        if( d > max_d ):# Record fartherst point index\n            max_d = d\n            farthest_idx = len(results)\n        results.append(p)\n\n    return results, farthest_idx\n\n\n\ndef QuickHull_rec( points, q1, q2 ):#, hull_points ):\n\n    #print( "//============= QuickHull_rec: %s, %s ===============//" % (q1, q2) )\n\n    hull_points = []\n\n    upper_points, farthest_idx = GatherAbove( points, q1, q2 )\n\n    if( farthest_idx!=-1 ):# The farthest point found.\n        #print( "  appending farthest upper point to hull_points:", upper_points[farthest_idx] )\n\n        # Traverse (q1-farthest) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, q1, upper_points[farthest_idx] )#, hull_points )\n\n        # Append farthest point\n        hull_points.append( upper_points[farthest_idx] )\n\n        # Traverse (farthest-q2) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, upper_points[farthest_idx], q2 )#, hull_points )\n\n    return hull_points\n\n\n\ndef QuickHull( points ):\n    # 出力\n    hull_points = []\n\n    # Get split segment end points\n    q1, q2 = ( min( points, key=lambda item : item.x()), max( points, key=lambda item : item.x()) )\n\n    hull_points.append(q1)\n    hull_points += QuickHull_rec( points, q1, q2)#, hull_points )\n\n    hull_points.append(q2)\n    hull_points += QuickHull_rec( points, q2, q1)#, hull_points )\n\n    return hull_points\n\n\n    \n\n\n#################################################################\n#                           main                                #\n#################################################################\ngeom_in1 = node.input(1).geometry()\n\nrotdir = geom_in1.prims()[0].attribValue("RotDir")\n\npoints = [ hou.Vector2(p.position().x(), p.position().z()) for p in geom_in1.points() ]\n\nhull_points = QuickHull( points )\n\n\nif( rotdir==1 ):\n    hull_points.reverse()\n\n\npoly = geo.createPolygon(False)\nfor p in hull_points:\n    point = geo.createPoint()\n    point.setPosition( (p.x(), 0.0, p.y()) )\n    poly.addVertex( point )\npoly.addVertex( geo.point(0) )\n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock quick_hull -*
chautoscope quick_hull -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off quick_hull
opexprlanguage -s hscript quick_hull
opuserdata -n '___Version___' -v '20.5.370' quick_hull

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 3.97627 -y -9.6666000000000007 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node output2 (Sop/output)
opadd -e -n output output2
oplocate -x 7.6585900000000002 -y -9.6666000000000007 output2
opspareds "" output2
opparm -V 20.5.370 output2 outputidx ( 2 )
chlock output2 -*
chautoscope output2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output2
opexprlanguage -s hscript output2
opuserdata -n '___Version___' -v '20.5.370' output2

# Node output3 (Sop/output)
opadd -e -n output output3
oplocate -x 10.952199999999999 -y -9.6666000000000007 output3
opspareds "" output3
opparm -V 20.5.370 output3 outputidx ( 3 )
chlock output3 -*
chautoscope output3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output3
opexprlanguage -s hscript output3
opuserdata -n '___Version___' -v '20.5.370' output3

# Node PathCleansing (Sop/subnet)
opadd -e -n subnet PathCleansing
oplocate -x -1.11759e-08 -y 3.8114499999999998 PathCleansing
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' PathCleansing
chblockbegin
chadd -t 0 0 PathCleansing RotationDirection
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' PathCleansing/RotationDirection
chadd -t 0 0 PathCleansing RemoveInlinePointDist
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' PathCleansing/RemoveInlinePointDist
chblockend
opparm -V 20.5.370 PathCleansing label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RotationDirection ( RotationDirection ) RemoveInlinePointDist ( RemoveInlinePointDist )
chlock PathCleansing -*
chautoscope PathCleansing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PathCleansing
opexprlanguage -s hscript PathCleansing
opuserdata -n '___Version___' -v '20.5.370' PathCleansing
opcf PathCleansing

# Network Box __netbox1
nbadd __netbox1
nblocate -x -0.399999 -y -2.40335 __netbox1
nbsize -w 2.8 -h 1.62583 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -3.9903400000000002 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Check_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Check_rotation_direction
oplocate -x -0.00300001 -y 1.26894 Check_rotation_direction
opspareds "" Check_rotation_direction
opparm Check_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
opparm Check_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int pts[] = primpoints(0, @primnum);\nfloat sum = 0.0;\nint count = len(pts);\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  p0 = point(0, "P", pts[i]),\n            p1 = point(0, "P", pts[i+1]);\n    \n    sum += (p1.x - p0.x) * (p1.z + p0.z);\n}\n\n\ni@RotDir = sum > 0.0;//0:CCW, 1:CW\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_rotation_direction -*
chautoscope Check_rotation_direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_rotation_direction
opexprlanguage -s hscript Check_rotation_direction
opuserdata -n '___Version___' -v '' Check_rotation_direction

# Node Check_if_curve_is_closed (Sop/attribwrangle)
opadd -e -n attribwrangle Check_if_curve_is_closed
oplocate -x -0.00300001 -y 2.3064300000000002 Check_if_curve_is_closed
opspareds "" Check_if_curve_is_closed
opparm Check_if_curve_is_closed  bindings ( 0 ) groupbindings ( 0 )
opparm Check_if_curve_is_closed folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( ' int pts[] = primpoints(0, @primnum);\ni@IsClosed = primintrinsic(0, "closed", @primnum) || pts[0] == pts[-1];' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_if_curve_is_closed -*
chautoscope Check_if_curve_is_closed -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_if_curve_is_closed
opexprlanguage -s hscript Check_if_curve_is_closed
opuserdata -n '___Version___' -v '' Check_if_curve_is_closed

# Node Reconstruct_outline_with_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Reconstruct_outline_with_rotation_direction
oplocate -x -0.00300001 -y 0.12872900000000001 Reconstruct_outline_with_rotation_direction
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "RotationDirection"                 label   "Rotationdirection"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' Reconstruct_outline_with_rotation_direction
opparm Reconstruct_outline_with_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 Reconstruct_outline_with_rotation_direction RotationDirection
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' Reconstruct_outline_with_rotation_direction/RotationDirection
chblockend
opparm Reconstruct_outline_with_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int in = 1;\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\nfor( int i=0; i<nprimitives(in); ++i )\n{\n    int rot_dir = prim(in, "RotDir", i);\n    int is_closed = prim(in, "IsClosed", i);\n\n    int pts[] = primpoints(in, i);\n\n    if( len(pts)==0 ) continue;\n    \n    // Align rotation direction to input parameter\n    if( rot_dir==rotation_direction )\n        pts = reverse(pts);\n\n    int prim = addprim(0, "polyline");\n    for( int j=0; j<len(pts); ++j )\n    {\n        vector p = point(in, "P", pts[j] );\n        int newpt = addpoint(0, p);\n        addvertex(0, prim, newpt);\n    }\n\n    setprimattrib(0, "RotDir", prim, rotation_direction);\n    setprimattrib(0, "IsClosed", prim, is_closed);\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) RotationDirection ( RotationDirection )
chlock Reconstruct_outline_with_rotation_direction -*
chautoscope Reconstruct_outline_with_rotation_direction -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Reconstruct_outline_with_rotation_direction
opexprlanguage -s hscript Reconstruct_outline_with_rotation_direction
opuserdata -n '___Version___' -v '' Reconstruct_outline_with_rotation_direction

# Node polypath1 (Sop/polypath)
opadd -e -n polypath polypath1
oplocate -x -1.11759e-08 -y 3.2925800000000001 polypath1
opspareds "" polypath1
opparm polypath1 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath1 -*
chautoscope polypath1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath1
opexprlanguage -s hscript polypath1
opuserdata -n '___Version___' -v '' polypath1

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -1.11759e-08 -y -1.45824 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox1 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x -1.11759e-08 -y -2.3840699999999999 facet1
opspareds "" facet1
chblockbegin
chadd -t 0 0 facet1 inlinedist
chkey -t 0 -v 0.001 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' facet1/inlinedist
chblockend
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( inlinedist ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
nbop __netbox1 add facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node sort_points_by_vertex_order (Sop/sort)
opadd -e -n sort sort_points_by_vertex_order
oplocate -x -1.11759e-08 -y 4.37357 sort_points_by_vertex_order
opspareds "" sort_points_by_vertex_order
opparm -V 20.5.370 sort_points_by_vertex_order pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_points_by_vertex_order -*
chautoscope sort_points_by_vertex_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_points_by_vertex_order
opexprlanguage -s hscript sort_points_by_vertex_order
opuserdata -n '___Version___' -v '20.5.370' sort_points_by_vertex_order
oporder -e output0 Check_rotation_direction Check_if_curve_is_closed Reconstruct_outline_with_rotation_direction polypath1 fuse1 facet1 sort_points_by_vertex_order 
opcf ..

# Node ComputeEdgeNormalTangent (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent
oplocate -x -0.00300001 -y 2.69916 ComputeEdgeNormalTangent
opspareds "" ComputeEdgeNormalTangent
opparm ComputeEdgeNormalTangent  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent -*
chautoscope ComputeEdgeNormalTangent -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent
opexprlanguage -s hscript ComputeEdgeNormalTangent
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent

# Node ComputeCornerNormal (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeCornerNormal
oplocate -x -0.00300001 -y 1.4759899999999999 ComputeCornerNormal
opspareds "" ComputeCornerNormal
opparm ComputeCornerNormal  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeCornerNormal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int is_closed = i@IsClosed;\n\n// Compute corner normals \nfor( int i=!i@IsClosed; i<npoints(0)-!i@IsClosed; ++i )\n{\n    int i_prev = (i-1)%npoints(0);\n    vector corner_normal= point(0,"edge_normal",i) + point(0,"edge_normal",i_prev);\n    \n    setpointattrib(0, "corner_normal", i, normalize(corner_normal));\n}\n\n/*\nint last = npoints(0)-1;\nvector e_n_last = point(0, "edge_normal", last);\n\nif( i@IsClosed )\n{\n    vector corner_normal= point(0,"edge_normal",0) + e_n_last;\n    setpointattrib(0, "corner_normal", 0, normalize(corner_normal));\n    \n    corner_normal= e_n_last + point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, normalize(corner_normal));    \n}\n*/\n\nif( !i@IsClosed )\n{\n    int last = npoints(0)-1;\n    //vector e_n_last = point(0, "edge_normal", last);\n\n    vector corner_normal = point(0,"edge_normal",0);\n    setpointattrib(0, "corner_normal", 0, corner_normal );\n\n    corner_normal = point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, corner_normal );\n}\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeCornerNormal -*
chautoscope ComputeCornerNormal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeCornerNormal
opexprlanguage -s hscript ComputeCornerNormal
opuserdata -n '___Version___' -v '' ComputeCornerNormal

# Node compute_closest_quick_hull_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_quick_hull_edge
oplocate -x -0.0029999699999999998 -y -7.12859 compute_closest_quick_hull_edge
opspareds "" compute_closest_quick_hull_edge
opparm compute_closest_quick_hull_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_quick_hull_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int foot=0, hull=1;\n\nint h = 0;\nint f = -1;\n\nvector hp = point(hull, "P", h);\nfor( int i=0; i<npoints(foot); ++i )\n{\n    vector fp = point(foot, "P", i) * set(1,0,1);\n    if( distance2(fp, hp) < 1.0e-6 )\n    {\n        f = i;\n        break;\n    }\n}\n\nif( f==-1 ) return;\n\n//printf( "f_start: %d, h_start: %d\\n", f, h );\n\n\nfor( int i=0; i<npoints(hull); ++i )// for each hul point\n{\n    int h_next = (i + h + 1) % npoints(hull);\n    hp = point(hull, "P", h_next);\n    \n    for( int j=0; j<npoints(foot); ++j )\n    {\n        vector fp = point(foot, "P", f) * set(1,0,1);\n        \n        if( distance(hp, fp) < 1.0e-4 )\n        {\n            //printf("      break at f: %d\\n", f);\n            break;\n        }\n            \n        //printf( "    h_next: %d(%f), f: %d(%f)\\n", h_next, hp, f, fp );\n        int hull_id = (h_next-1)%npoints(hull);\n        setpointattrib(foot, "HullID", f, hull_id );\n        \n        int mbr_id = point(hull,"MBRID", hull_id);\n        setpointattrib(foot, "MBRID", f, mbr_id);\n        \n        \n        f = (f + 1) % npoints(foot);\n    }\n    \n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_quick_hull_edge -*
chautoscope compute_closest_quick_hull_edge -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_quick_hull_edge
opexprlanguage -s hscript compute_closest_quick_hull_edge
opuserdata -n '___Version___' -v '' compute_closest_quick_hull_edge

# Node compute_closest_mbr_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_mbr_edge
oplocate -x 3.9732699999999999 -y -5.8430799999999996 compute_closest_mbr_edge
opspareds "" compute_closest_mbr_edge
opparm compute_closest_mbr_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_mbr_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mbr=1;\n\nvector next = point(0, "P", (@ptnum+1)%npoints(0));\nvector edgedir_h = normalize(next - @P);\n\ni@MBRID = -1;\nfloat dot_max = -1;\n\nfor( int i=0; i<4; ++i )\n{\n    vector  p0 = point(mbr, "P", i),\n            p1 = point(mbr, "P", (i+1)%4 );\n    vector edgedir_mbr = normalize(p1 - p0);\n    \n    float dot = dot(edgedir_h, edgedir_mbr);\n    if( dot > dot_max )\n    {\n        dot_max = dot;\n        i@MBRID = i;\n    }\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_mbr_edge -*
chautoscope compute_closest_mbr_edge -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_mbr_edge
opexprlanguage -s hscript compute_closest_mbr_edge
opuserdata -n '___Version___' -v '' compute_closest_mbr_edge

# Node Area (Sop/attribwrangle)
opadd -e -n attribwrangle Area
oplocate -x -0.00300001 -y 0.335924 Area
opspareds "" Area
opparm Area  bindings ( 0 ) groupbindings ( 0 )
opparm Area folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area -*
chautoscope Area -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area
opexprlanguage -s hscript Area
opuserdata -n '___Version___' -v '' Area

# Node PolyArea (Sop/python)
opadd -e -n python PolyArea
oplocate -x -6.8956600000000003 -y -0.14574999999999999 PolyArea
opspareds "" PolyArea
opparm -V 20.5.370 PolyArea python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\ndef PolyArea(x,y):\n    return 0.5*np.abs(np.dot(x,np.roll(y,1))-np.dot(y,np.roll(x,1)))\n    \n\nx = y = np.arange(0)\nfor point in geo.points():\n    x = np.append( x, point.position().x() )\n    y = np.append( y, point.position().z() )\n\n#print(x)\n#print(y)\nprint( PolyArea(x,y) )\n#x=np.append(x, 9999)\n#y = np.sqrt(1-x**2)\n' ) maintainstate ( off )
chlock PolyArea -*
chautoscope PolyArea -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on PolyArea
opexprlanguage -s hscript PolyArea
opuserdata -n '___Version___' -v '20.5.370' PolyArea

# Node Area1 (Sop/attribwrangle)
opadd -e -n attribwrangle Area1
oplocate -x 3.9732699999999999 -y -2.0548199999999999 Area1
opspareds "" Area1
opparm Area1  bindings ( 0 ) groupbindings ( 0 )
opparm Area1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area1 -*
chautoscope Area1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area1
opexprlanguage -s hscript Area1
opuserdata -n '___Version___' -v '' Area1

# Node Area2 (Sop/attribwrangle)
opadd -e -n attribwrangle Area2
oplocate -x 7.6555900000000001 -y -4.1319499999999998 Area2
opspareds "" Area2
opparm Area2  bindings ( 0 ) groupbindings ( 0 )
opparm Area2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area2 -*
chautoscope Area2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area2
opexprlanguage -s hscript Area2
opuserdata -n '___Version___' -v '' Area2

# Node ComputeEdgeNormalTangent1 (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent1
oplocate -x 7.6555900000000001 -y -6.7416700000000001 ComputeEdgeNormalTangent1
opspareds "" ComputeEdgeNormalTangent1
opparm ComputeEdgeNormalTangent1  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent1 -*
chautoscope ComputeEdgeNormalTangent1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent1
opexprlanguage -s hscript ComputeEdgeNormalTangent1
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent1
oporder -e output0 convexhull1 generate_local_axis minimum_bounding_rectangle quick_hull output1 output2 output3 PathCleansing ComputeEdgeNormalTangent ComputeCornerNormal compute_closest_quick_hull_edge compute_closest_mbr_edge Area PolyArea Area1 Area2 ComputeEdgeNormalTangent1 
opcf ..

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 15.574999999999999 -y -7.9566100000000004 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node group4 (Sop/groupcreate)
opadd -e -n groupcreate group4
oplocate -x 17.0016 -y -6.9052600000000002 group4
opspareds "" group4
opparm -V 20.5.370 group4 groupname ( MBR ) grouptype ( primitive ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group4 -*
chautoscope group4 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
opexprlanguage -s hscript group4
opuserdata -n '___Version___' -v '20.5.370' group4

# Node group5 (Sop/groupcreate)
opadd -e -n groupcreate group5
oplocate -x 15.5762 -y -6.9052600000000002 group5
opspareds "" group5
opparm -V 20.5.370 group5 groupname ( ConvexHull ) grouptype ( primitive ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group5 -*
chautoscope group5 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group5
opexprlanguage -s hscript group5
opuserdata -n '___Version___' -v '20.5.370' group5

# Node group6 (Sop/groupcreate)
opadd -e -n groupcreate group6
oplocate -x 14.2904 -y -6.9052600000000002 group6
opspareds "" group6
opparm -V 20.5.370 group6 groupname ( Footprint ) grouptype ( primitive ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group6 -*
chautoscope group6 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group6
opexprlanguage -s hscript group6
opuserdata -n '___Version___' -v '20.5.370' group6

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x 17.937000000000001 -y -12.111700000000001 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( Footprint ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node box3 (Sop/box)
opadd -e -n box box3
oplocate -x 11.083600000000001 -y 2.72783 box3
opspareds "" box3
opparm -V 20.5.370 box3 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 15 12 4.4 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box3 -*
chautoscope box3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box3
nbop __netbox2 add box3
opexprlanguage -s hscript box3
opuserdata -n '___Version___' -v '20.5.370' box3

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x 11.083600000000001 -y 1.72783 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 3.699584164619445 5.058424770832062 11.994458770751953 ) r ( 0 -88.91210447930276 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
nbop __netbox2 add transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 11.282299999999999 -y 0.70762999999999998 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
nbop __netbox2 add merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node Transfer_FloorIdx (Sop/attribwrangle)
opadd -e -n attribwrangle Transfer_FloorIdx
oplocate -x 17.934000000000001 -y -9.4675399999999996 Transfer_FloorIdx
opspareds "" Transfer_FloorIdx
opparm Transfer_FloorIdx  bindings ( 0 ) groupbindings ( 0 )
opparm Transfer_FloorIdx folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int floor_idx = prim(1, "FloorIdx", 0);\n\ni@FloorIdx = floor_idx;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Transfer_FloorIdx -*
chautoscope Transfer_FloorIdx -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Transfer_FloorIdx
opexprlanguage -s hscript Transfer_FloorIdx
opuserdata -n '___Version___' -v '' Transfer_FloorIdx

# Node box4 (Sop/box)
opadd -e -n box box4
oplocate -x 13.530799999999999 -y 2.72783 box4
opspareds "" box4
opparm -V 20.5.370 box4 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 15 12 4.4 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box4 -*
chautoscope box4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box4
nbop __netbox2 add box4
opexprlanguage -s hscript box4
opuserdata -n '___Version___' -v '20.5.370' box4

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 13.530799999999999 -y 1.72783 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 3.733512797355651 12.427281677722931 0.6443986654281613 ) r ( 0 16.71399953661669 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
nbop __netbox2 add transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x 21.234300000000001 -y -13.4636 extrudevolume1
opspareds "" extrudevolume1
opparm extrudevolume1 depth ( 2 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node reverse1 (Sop/reverse)
opadd -e -n reverse reverse1
oplocate -x 17.937000000000001 -y -14.6027 reverse1
opspareds "" reverse1
opparm -V 20.5.370 reverse1 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse1 -*
chautoscope reverse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse1
opexprlanguage -s hscript reverse1
opuserdata -n '___Version___' -v '20.5.370' reverse1

# Node Close_Floor_Geometry1 (Sop/ends)
opadd -e -n ends Close_Floor_Geometry1
oplocate -x 15.1563 -y -14.318899999999999 Close_Floor_Geometry1
opspareds "" Close_Floor_Geometry1
opparm -V 20.5.370 Close_Floor_Geometry1 group ( "" ) pshapeu ( on ) pshapev ( off ) closeu ( closesharp ) closev ( sameclosure ) clampu ( sameclamp ) clampv ( sameclamp )
chlock Close_Floor_Geometry1 -*
chautoscope Close_Floor_Geometry1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Close_Floor_Geometry1
opexprlanguage -s hscript Close_Floor_Geometry1
opuserdata -n '___Version___' -v '20.5.370' Close_Floor_Geometry1

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x 15.1563 -y -15.2865 extrudevolume2
opspareds "" extrudevolume2
chblockbegin
chadd -t 0 0 extrudevolume2 depth
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Param/FloorHeight")' extrudevolume2/depth
chblockend
opparm extrudevolume2 depth ( depth ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( on ) topgrp ( extrudeTop ) outputbasegrp ( on ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 15.1563 -y -16.3596 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x 15.1563 -y -13.142099999999999 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 20.5.370 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( 'ConvexHull Footprint MBR' )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '20.5.370' groupdelete1

# Node WallModule (Sop/null)
opadd -e -n null WallModule
oplocate -x -14.388199999999999 -y -2.5964100000000001 WallModule
opspareds "" WallModule
opparm -V 20.5.370 WallModule copyinput ( on ) cacheinput ( off )
chlock WallModule -*
chautoscope WallModule -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 WallModule
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off WallModule
opexprlanguage -s hscript WallModule
opuserdata -n '___Version___' -v '20.5.370' WallModule

# Node carve1 (Sop/carve)
opadd -e -n carve carve1
oplocate -x -2.0350299999999999 -y 1.5401100000000001 carve1
opspareds "" carve1
opparm -V 20.5.370 carve1 group ( "" ) arclen ( off ) firstu ( on ) domainu1 ( 0 ) usedomainu1attrib ( constant ) domainu1attrib ( "" ) secondu ( on ) domainu2 ( 1 ) usedomainu2attrib ( constant ) domainu2attrib ( "" ) firstv ( off ) domainv1 ( 0.25 ) usedomainv1attrib ( constant ) domainv1attrib ( "" ) secondv ( off ) domainv2 ( 0.75 ) usedomainv2attrib ( constant ) domainv2attrib ( "" ) onlybreakpoints ( on on ) divsu ( 2 ) divsv ( 2 ) allubreakpoints ( on ) allvbreakpoints ( off ) stdswitcher ( 0 0 ) keepin ( on ) keepout ( off ) extractop ( xisoparm ) keepOriginal ( off )
chlock carve1 -*
chautoscope carve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off carve1
opexprlanguage -s hscript carve1
opuserdata -n '___Version___' -v '20.5.370' carve1

# Node polyframe2 (Sop/polyframe)
opadd -e -n polyframe polyframe2
oplocate -x -2.0350299999999999 -y -0.42183199999999998 polyframe2
opspareds "" polyframe2
opparm -V 20.5.370 polyframe2 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( off ) N ( N ) tangentuon ( on ) tangentu ( N ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe2 -*
chautoscope polyframe2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyframe2
opexprlanguage -s hscript polyframe2
opuserdata -n '___Version___' -v '20.5.370' polyframe2

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x -4.2211400000000001 -y -1.14103 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 20.5.370 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../WallModule/ ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '20.5.370' object_merge1

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x -3.7385100000000002 -y -2.1441300000000001 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 -90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node PreorpcessFootprint2 (Sop/subnet)
opadd -e -n subnet PreorpcessFootprint2
oplocate -x -7.1338999999999997 -y 4.0128599999999999 PreorpcessFootprint2
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0.001" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     } ' PreorpcessFootprint2
opparm -V 20.5.370 PreorpcessFootprint2 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RemoveInlinePointDist ( 0.05 ) RotationDirection ( 0 )
chlock PreorpcessFootprint2 -*
chautoscope PreorpcessFootprint2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PreorpcessFootprint2
opexprlanguage -s hscript PreorpcessFootprint2
opuserdata -n '___Version___' -v '20.5.370' PreorpcessFootprint2
opcf PreorpcessFootprint2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.5357700000000001e-08 -y -9.6666000000000007 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node convexhull1 (Sop/shrinkwrap::2.0)
opadd -e -n shrinkwrap::2.0 convexhull1
oplocate -x 6.7910399999999997 -y -1.02522 convexhull1
opspareds "" convexhull1
opparm -V 20.5.370 convexhull1 group ( "" ) type ( xyz ) planesrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) shrinkamount ( 0 ) preserveattribs ( on ) removeinlinepoints ( on )
chlock convexhull1 -*
chautoscope convexhull1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on convexhull1
opexprlanguage -s hscript convexhull1
opuserdata -n '___Version___' -v '20.5.370' convexhull1

# Node generate_local_axis (Sop/attribwrangle)
opadd -e -n attribwrangle generate_local_axis
oplocate -x 10.949199999999999 -y -5.5002500000000003 generate_local_axis
opspareds "" generate_local_axis
opparm generate_local_axis  bindings ( 0 ) groupbindings ( 0 )
opparm generate_local_axis folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// Get center\nvector center = vector(0.0);\nfor( int i=0; i<npoints(1); ++i )\n    center += point(1, "P", i);\ncenter /= npoints(1);\n\nvector axis1 = normalize( point(1,"P",1) - point(1,"P",0) ) * 10.0;\nvector axis2 = normalize( point(1,"P",2) - point(1,"P",1) ) * 10.0;\n\nvector z_dir = abs(axis1.z) > abs(axis2.z) ? axis1 : axis2;\nvector x_dir = abs(axis1.z) <= abs(axis2.z) ? axis1 : axis2;\n\n\nif( z_dir.z < 0 )   z_dir = -z_dir;\nif( x_dir.x < 0 )   x_dir = -x_dir;\n\nint origin = addpoint(0, center );\n\nint prim_zdir = addprim( 0, "polyline" );\naddprimattrib(0, "Cd", {1,1,1});\n\nint z_end = addpoint( 0, z_dir + center );\naddvertex( 0, prim_zdir, origin );\naddvertex( 0, prim_zdir, z_end );\nsetprimattrib( 0, "Cd", prim_zdir, {0,0,1} );\n\n\nint prim_xdir = addprim( 0, "polyline" );\nint x_end = addpoint( 0, x_dir + center );\naddvertex( 0, prim_xdir, origin );\naddvertex( 0, prim_xdir, x_end );\nsetprimattrib( 0, "Cd", prim_xdir, {1,0,0} );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock generate_local_axis -*
chautoscope generate_local_axis -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off generate_local_axis
opexprlanguage -s hscript generate_local_axis
opuserdata -n '___Version___' -v '' generate_local_axis

# Node minimum_bounding_rectangle (Sop/python)
opadd -e -n python minimum_bounding_rectangle
oplocate -x 7.6585900000000002 -y -3.0403500000000001 minimum_bounding_rectangle
opspareds "" minimum_bounding_rectangle
opparm -V 20.5.370 minimum_bounding_rectangle python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\ndef MinimumBoundingRectangle( hull_points ):\n    """\n    Find the smallest bounding rectangle for a set of points.\n    Returns a set of points representing the corners of the bounding box.\n\n    :param points: an nx2 matrix of coordinates\n    :rval: an nx2 matrix of coordinates\n    """\n    pi2 = np.pi/2.\n\n    # calculate edge angles\n    edges = np.zeros((len(hull_points)-1, 2))\n    edges = hull_points[1:] - hull_points[:-1]\n\n    angles = np.zeros((len(edges)))\n    angles = np.arctan2(edges[:, 1], edges[:, 0])\n\n    angles = np.abs(np.mod(angles, pi2))\n    angles = np.unique(angles)\n\n    # find rotation matrices\n    rotations = np.vstack([\n        np.cos(angles),\n        np.cos(angles-pi2),\n        np.cos(angles+pi2),\n        np.cos(angles)]).T\n    rotations = rotations.reshape((-1, 2, 2))\n\n    # apply rotations to the hull\n    rot_points = np.dot(rotations, hull_points.T)\n\n    # find the bounding points\n    min_x = np.nanmin(rot_points[:, 0], axis=1)\n    max_x = np.nanmax(rot_points[:, 0], axis=1)\n    min_y = np.nanmin(rot_points[:, 1], axis=1)\n    max_y = np.nanmax(rot_points[:, 1], axis=1)\n\n    # find the box with the best area\n    areas = (max_x - min_x) * (max_y - min_y)\n    best_idx = np.argmin(areas)\n\n    # return the best box\n    x1 = max_x[best_idx]\n    x2 = min_x[best_idx]\n    y1 = max_y[best_idx]\n    y2 = min_y[best_idx]\n    r = rotations[best_idx]\n\n    rval = np.zeros((4, 2))\n    rval[0] = np.dot([x1, y2], r)\n    rval[1] = np.dot([x2, y2], r)\n    rval[2] = np.dot([x2, y1], r)\n    rval[3] = np.dot([x1, y1], r)\n\n    return rval\n\n\n\nconvex_hull = node.input(1).geometry()\n\n\npoints = np.empty((0,2),float)\n\nfor p in convex_hull.points():\n    pos = p.position()\n    points = np.append( points, np.array([[pos.x(),pos.z()]]), axis=0 )\n   \n#print( points )\n\nmbr = MinimumBoundingRectangle( points )\nmbr_len = len(mbr)\n\nrotdir = convex_hull.prims()[0].attribValue("RotDir")\nif( rotdir==1 ):\n    mbr = mbr[::-1]#mbr.reverse()\n\n\n# Register mbr points\nfor p in mbr:\n    point = geo.createPoint()\n    point.setPosition( (p[0], 0.0, p[1]) )\n\n# Create primitive\npoly = geo.createPolygon(False)\nfor i in range(mbr_len):    \n    poly.addVertex( geo.point(i) )\npoly.addVertex( geo.point(0) )\n    \n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock minimum_bounding_rectangle -*
chautoscope minimum_bounding_rectangle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off minimum_bounding_rectangle
opexprlanguage -s hscript minimum_bounding_rectangle
opuserdata -n '___Version___' -v '20.5.370' minimum_bounding_rectangle

# Node quick_hull (Sop/python)
opadd -e -n python quick_hull
oplocate -x 3.97627 -y -1.02522 quick_hull
opspareds "" quick_hull
opparm -V 20.5.370 quick_hull python ( 'import math\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\n\n\n\ndef DotProduct( a, b ):\n    return a.x() * b.x() + a.y() * b.y()\n\n\n    \n# Returns z component of 2d vector crossproduct\ndef CrossProductZ( a, b ):\n        return a.x() * b.y() - b.x() * a.y()\n\n\n\ndef Distance( a, b ):\n    d = a-b\n    return math.sqrt( d.x()*d.x() + d.y()*d.y() )\n        \n    \n    \ndef ClosestPointOnLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    s = 0\n    O = Q1\n\n    Q12 = Q2 - Q1\n\n    Q12_P       = DotProduct( Q12, P )\n    Q12_Q1      = DotProduct( Q12, Q1 )\n    Q12_Q12     = DotProduct( Q12, Q12 )\n\n    if( Q12_Q12 < 1.0e-9 ):\n        return\n\n    s = ( Q12_P - Q12_Q1 ) / Q12_Q12\n    if( clampQ1 ): s = max( s, 0 )\n    if( clampQ2 ): s = min( s, 1 )\n\n    O = Q1 + s*Q12\n\n    return O, s\n\n\n\n# Distance to line segment\ndef DistanceToLineSegment( P, Q1, Q2, clampQ1=True, clampQ2=True ):\n    #O = Point2D()# closest point on line segment(Q1, Q2)\n    #s = 0.0# Q1->Q2 vector scale\n    O, s = ClosestPointOnLineSegment( P, Q1, Q2, clampQ1, clampQ2 )\n    return Distance( P, O )\n\n\n\n\ndef IsAbove( p, q1, q2 ):\n    return CrossProductZ( q2-q1, p-q1 ) > 0\n\n\n\ndef GatherAbove( points, q1, q2 ):\n\n    results = []\n    farthest_idx = -1\n\n    max_d = 0\n    for p in points:\n        # Check if p is on the left side(above) of line segment (q1,q2)\n        if( not IsAbove( p, q1, q2 ) ): continue\n        \n        d = DistanceToLineSegment( p, q1, q2, False, False )\n        if( d > max_d ):# Record fartherst point index\n            max_d = d\n            farthest_idx = len(results)\n        results.append(p)\n\n    return results, farthest_idx\n\n\n\ndef QuickHull_rec( points, q1, q2 ):#, hull_points ):\n\n    #print( "//============= QuickHull_rec: %s, %s ===============//" % (q1, q2) )\n\n    hull_points = []\n\n    upper_points, farthest_idx = GatherAbove( points, q1, q2 )\n\n    if( farthest_idx!=-1 ):# The farthest point found.\n        #print( "  appending farthest upper point to hull_points:", upper_points[farthest_idx] )\n\n        # Traverse (q1-farthest) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, q1, upper_points[farthest_idx] )#, hull_points )\n\n        # Append farthest point\n        hull_points.append( upper_points[farthest_idx] )\n\n        # Traverse (farthest-q2) sub segment and gather hull points\n        hull_points += QuickHull_rec( upper_points, upper_points[farthest_idx], q2 )#, hull_points )\n\n    return hull_points\n\n\n\ndef QuickHull( points ):\n    # 出力\n    hull_points = []\n\n    # Get split segment end points\n    q1, q2 = ( min( points, key=lambda item : item.x()), max( points, key=lambda item : item.x()) )\n\n    hull_points.append(q1)\n    hull_points += QuickHull_rec( points, q1, q2)#, hull_points )\n\n    hull_points.append(q2)\n    hull_points += QuickHull_rec( points, q2, q1)#, hull_points )\n\n    return hull_points\n\n\n    \n\n\n#################################################################\n#                           main                                #\n#################################################################\ngeom_in1 = node.input(1).geometry()\n\nrotdir = geom_in1.prims()[0].attribValue("RotDir")\n\npoints = [ hou.Vector2(p.position().x(), p.position().z()) for p in geom_in1.points() ]\n\nhull_points = QuickHull( points )\n\n\nif( rotdir==1 ):\n    hull_points.reverse()\n\n\npoly = geo.createPolygon(False)\nfor p in hull_points:\n    point = geo.createPoint()\n    point.setPosition( (p.x(), 0.0, p.y()) )\n    poly.addVertex( point )\npoly.addVertex( geo.point(0) )\n\ngeo.addAttrib( hou.attribType.Prim, "RotDir", rotdir )' ) maintainstate ( off )
chlock quick_hull -*
chautoscope quick_hull -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off quick_hull
opexprlanguage -s hscript quick_hull
opuserdata -n '___Version___' -v '20.5.370' quick_hull

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 3.97627 -y -9.6666000000000007 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node output2 (Sop/output)
opadd -e -n output output2
oplocate -x 7.6585900000000002 -y -9.6666000000000007 output2
opspareds "" output2
opparm -V 20.5.370 output2 outputidx ( 2 )
chlock output2 -*
chautoscope output2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output2
opexprlanguage -s hscript output2
opuserdata -n '___Version___' -v '20.5.370' output2

# Node output3 (Sop/output)
opadd -e -n output output3
oplocate -x 10.952199999999999 -y -9.6666000000000007 output3
opspareds "" output3
opparm -V 20.5.370 output3 outputidx ( 3 )
chlock output3 -*
chautoscope output3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output3
opexprlanguage -s hscript output3
opuserdata -n '___Version___' -v '20.5.370' output3

# Node PathCleansing (Sop/subnet)
opadd -e -n subnet PathCleansing
oplocate -x -1.11759e-08 -y 3.8114499999999998 PathCleansing
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "RotationDirection"         label   "RotationDirection"         type    ordinal         default { "0" }         menu {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "RemoveInlinePointDist"         label   "RemoveInlinePointDist"         type    float         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' PathCleansing
chblockbegin
chadd -t 0 0 PathCleansing RotationDirection
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' PathCleansing/RotationDirection
chadd -t 0 0 PathCleansing RemoveInlinePointDist
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' PathCleansing/RemoveInlinePointDist
chblockend
opparm -V 20.5.370 PathCleansing label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) RotationDirection ( RotationDirection ) RemoveInlinePointDist ( RemoveInlinePointDist )
chlock PathCleansing -*
chautoscope PathCleansing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off PathCleansing
opexprlanguage -s hscript PathCleansing
opuserdata -n '___Version___' -v '20.5.370' PathCleansing
opcf PathCleansing

# Network Box __netbox1
nbadd __netbox1
nblocate -x -0.399999 -y -2.40335 __netbox1
nbsize -w 2.8 -h 1.62583 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -3.9903400000000002 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Check_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Check_rotation_direction
oplocate -x -0.00300001 -y 1.26894 Check_rotation_direction
opspareds "" Check_rotation_direction
opparm Check_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
opparm Check_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int pts[] = primpoints(0, @primnum);\nfloat sum = 0.0;\nint count = len(pts);\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  p0 = point(0, "P", pts[i]),\n            p1 = point(0, "P", pts[i+1]);\n    \n    sum += (p1.x - p0.x) * (p1.z + p0.z);\n}\n\n\ni@RotDir = sum > 0.0;//0:CCW, 1:CW\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_rotation_direction -*
chautoscope Check_rotation_direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_rotation_direction
opexprlanguage -s hscript Check_rotation_direction
opuserdata -n '___Version___' -v '' Check_rotation_direction

# Node Check_if_curve_is_closed (Sop/attribwrangle)
opadd -e -n attribwrangle Check_if_curve_is_closed
oplocate -x -0.00300001 -y 2.3064300000000002 Check_if_curve_is_closed
opspareds "" Check_if_curve_is_closed
opparm Check_if_curve_is_closed  bindings ( 0 ) groupbindings ( 0 )
opparm Check_if_curve_is_closed folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( ' int pts[] = primpoints(0, @primnum);\ni@IsClosed = primintrinsic(0, "closed", @primnum) || pts[0] == pts[-1];' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Check_if_curve_is_closed -*
chautoscope Check_if_curve_is_closed -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Check_if_curve_is_closed
opexprlanguage -s hscript Check_if_curve_is_closed
opuserdata -n '___Version___' -v '' Check_if_curve_is_closed

# Node Reconstruct_outline_with_rotation_direction (Sop/attribwrangle)
opadd -e -n attribwrangle Reconstruct_outline_with_rotation_direction
oplocate -x -0.00300001 -y 0.12872900000000001 Reconstruct_outline_with_rotation_direction
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "RotationDirection"                 label   "Rotationdirection"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' Reconstruct_outline_with_rotation_direction
opparm Reconstruct_outline_with_rotation_direction  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 Reconstruct_outline_with_rotation_direction RotationDirection
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../RotationDirection")' Reconstruct_outline_with_rotation_direction/RotationDirection
chblockend
opparm Reconstruct_outline_with_rotation_direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int in = 1;\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\nfor( int i=0; i<nprimitives(in); ++i )\n{\n    int rot_dir = prim(in, "RotDir", i);\n    int is_closed = prim(in, "IsClosed", i);\n\n    int pts[] = primpoints(in, i);\n\n    if( len(pts)==0 ) continue;\n    \n    // Align rotation direction to input parameter\n    if( rot_dir==rotation_direction )\n        pts = reverse(pts);\n\n    int prim = addprim(0, "polyline");\n    for( int j=0; j<len(pts); ++j )\n    {\n        vector p = point(in, "P", pts[j] );\n        int newpt = addpoint(0, p);\n        addvertex(0, prim, newpt);\n    }\n\n    setprimattrib(0, "RotDir", prim, rotation_direction);\n    setprimattrib(0, "IsClosed", prim, is_closed);\n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) RotationDirection ( RotationDirection )
chlock Reconstruct_outline_with_rotation_direction -*
chautoscope Reconstruct_outline_with_rotation_direction -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Reconstruct_outline_with_rotation_direction
opexprlanguage -s hscript Reconstruct_outline_with_rotation_direction
opuserdata -n '___Version___' -v '' Reconstruct_outline_with_rotation_direction

# Node polypath1 (Sop/polypath)
opadd -e -n polypath polypath1
oplocate -x -1.11759e-08 -y 3.2925800000000001 polypath1
opspareds "" polypath1
opparm polypath1 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath1 -*
chautoscope polypath1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath1
opexprlanguage -s hscript polypath1
opuserdata -n '___Version___' -v '' polypath1

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -1.11759e-08 -y -1.45824 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox1 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x -1.11759e-08 -y -2.3840699999999999 facet1
opspareds "" facet1
chblockbegin
chadd -t 0 0 facet1 inlinedist
chkey -t 0 -v 0.001 -m 0 -a 0 -A 0 -T a  -F 'ch("../RemoveInlinePointDist")' facet1/inlinedist
chblockend
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( inlinedist ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
nbop __netbox1 add facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node sort_points_by_vertex_order (Sop/sort)
opadd -e -n sort sort_points_by_vertex_order
oplocate -x -1.11759e-08 -y 4.37357 sort_points_by_vertex_order
opspareds "" sort_points_by_vertex_order
opparm -V 20.5.370 sort_points_by_vertex_order pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort_points_by_vertex_order -*
chautoscope sort_points_by_vertex_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort_points_by_vertex_order
opexprlanguage -s hscript sort_points_by_vertex_order
opuserdata -n '___Version___' -v '20.5.370' sort_points_by_vertex_order
oporder -e output0 Check_rotation_direction Check_if_curve_is_closed Reconstruct_outline_with_rotation_direction polypath1 fuse1 facet1 sort_points_by_vertex_order 
opcf ..

# Node ComputeEdgeNormalTangent (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent
oplocate -x -0.00300001 -y 2.69916 ComputeEdgeNormalTangent
opspareds "" ComputeEdgeNormalTangent
opparm ComputeEdgeNormalTangent  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent -*
chautoscope ComputeEdgeNormalTangent -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent
opexprlanguage -s hscript ComputeEdgeNormalTangent
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent

# Node ComputeCornerNormal (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeCornerNormal
oplocate -x -0.00300001 -y 1.4759899999999999 ComputeCornerNormal
opspareds "" ComputeCornerNormal
opparm ComputeCornerNormal  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeCornerNormal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int is_closed = i@IsClosed;\n\n// Compute corner normals \nfor( int i=!i@IsClosed; i<npoints(0)-!i@IsClosed; ++i )\n{\n    int i_prev = (i-1)%npoints(0);\n    vector corner_normal= point(0,"edge_normal",i) + point(0,"edge_normal",i_prev);\n    \n    setpointattrib(0, "corner_normal", i, normalize(corner_normal));\n}\n\n/*\nint last = npoints(0)-1;\nvector e_n_last = point(0, "edge_normal", last);\n\nif( i@IsClosed )\n{\n    vector corner_normal= point(0,"edge_normal",0) + e_n_last;\n    setpointattrib(0, "corner_normal", 0, normalize(corner_normal));\n    \n    corner_normal= e_n_last + point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, normalize(corner_normal));    \n}\n*/\n\nif( !i@IsClosed )\n{\n    int last = npoints(0)-1;\n    //vector e_n_last = point(0, "edge_normal", last);\n\n    vector corner_normal = point(0,"edge_normal",0);\n    setpointattrib(0, "corner_normal", 0, corner_normal );\n\n    corner_normal = point(0,"edge_normal",last-1);\n    setpointattrib(0, "corner_normal", last, corner_normal );\n}\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeCornerNormal -*
chautoscope ComputeCornerNormal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeCornerNormal
opexprlanguage -s hscript ComputeCornerNormal
opuserdata -n '___Version___' -v '' ComputeCornerNormal

# Node compute_closest_quick_hull_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_quick_hull_edge
oplocate -x -0.0029999699999999998 -y -7.12859 compute_closest_quick_hull_edge
opspareds "" compute_closest_quick_hull_edge
opparm compute_closest_quick_hull_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_quick_hull_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int foot=0, hull=1;\n\nint h = 0;\nint f = -1;\n\nvector hp = point(hull, "P", h);\nfor( int i=0; i<npoints(foot); ++i )\n{\n    vector fp = point(foot, "P", i) * set(1,0,1);\n    if( distance2(fp, hp) < 1.0e-6 )\n    {\n        f = i;\n        break;\n    }\n}\n\nif( f==-1 ) return;\n\n//printf( "f_start: %d, h_start: %d\\n", f, h );\n\n\nfor( int i=0; i<npoints(hull); ++i )// for each hul point\n{\n    int h_next = (i + h + 1) % npoints(hull);\n    hp = point(hull, "P", h_next);\n    \n    for( int j=0; j<npoints(foot); ++j )\n    {\n        vector fp = point(foot, "P", f) * set(1,0,1);\n        \n        if( distance(hp, fp) < 1.0e-4 )\n        {\n            //printf("      break at f: %d\\n", f);\n            break;\n        }\n            \n        //printf( "    h_next: %d(%f), f: %d(%f)\\n", h_next, hp, f, fp );\n        int hull_id = (h_next-1)%npoints(hull);\n        setpointattrib(foot, "HullID", f, hull_id );\n        \n        int mbr_id = point(hull,"MBRID", hull_id);\n        setpointattrib(foot, "MBRID", f, mbr_id);\n        \n        \n        f = (f + 1) % npoints(foot);\n    }\n    \n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_quick_hull_edge -*
chautoscope compute_closest_quick_hull_edge -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_quick_hull_edge
opexprlanguage -s hscript compute_closest_quick_hull_edge
opuserdata -n '___Version___' -v '' compute_closest_quick_hull_edge

# Node compute_closest_mbr_edge (Sop/attribwrangle)
opadd -e -n attribwrangle compute_closest_mbr_edge
oplocate -x 3.9732699999999999 -y -5.8430799999999996 compute_closest_mbr_edge
opspareds "" compute_closest_mbr_edge
opparm compute_closest_mbr_edge  bindings ( 0 ) groupbindings ( 0 )
opparm compute_closest_mbr_edge folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int mbr=1;\n\nvector next = point(0, "P", (@ptnum+1)%npoints(0));\nvector edgedir_h = normalize(next - @P);\n\ni@MBRID = -1;\nfloat dot_max = -1;\n\nfor( int i=0; i<4; ++i )\n{\n    vector  p0 = point(mbr, "P", i),\n            p1 = point(mbr, "P", (i+1)%4 );\n    vector edgedir_mbr = normalize(p1 - p0);\n    \n    float dot = dot(edgedir_h, edgedir_mbr);\n    if( dot > dot_max )\n    {\n        dot_max = dot;\n        i@MBRID = i;\n    }\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock compute_closest_mbr_edge -*
chautoscope compute_closest_mbr_edge -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off compute_closest_mbr_edge
opexprlanguage -s hscript compute_closest_mbr_edge
opuserdata -n '___Version___' -v '' compute_closest_mbr_edge

# Node Area (Sop/attribwrangle)
opadd -e -n attribwrangle Area
oplocate -x -0.00300001 -y 0.335924 Area
opspareds "" Area
opparm Area  bindings ( 0 ) groupbindings ( 0 )
opparm Area folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area -*
chautoscope Area -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area
opexprlanguage -s hscript Area
opuserdata -n '___Version___' -v '' Area

# Node PolyArea (Sop/python)
opadd -e -n python PolyArea
oplocate -x -6.8956600000000003 -y -0.14574999999999999 PolyArea
opspareds "" PolyArea
opparm -V 20.5.370 PolyArea python ( 'import numpy as np\n\nnode = hou.pwd()\ngeo = node.geometry()\n\n# Add code to modify contents of geo.\n# Use drop down menu to select examples.\ndef PolyArea(x,y):\n    return 0.5*np.abs(np.dot(x,np.roll(y,1))-np.dot(y,np.roll(x,1)))\n    \n\nx = y = np.arange(0)\nfor point in geo.points():\n    x = np.append( x, point.position().x() )\n    y = np.append( y, point.position().z() )\n\n#print(x)\n#print(y)\nprint( PolyArea(x,y) )\n#x=np.append(x, 9999)\n#y = np.sqrt(1-x**2)\n' ) maintainstate ( off )
chlock PolyArea -*
chautoscope PolyArea -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on PolyArea
opexprlanguage -s hscript PolyArea
opuserdata -n '___Version___' -v '20.5.370' PolyArea

# Node Area1 (Sop/attribwrangle)
opadd -e -n attribwrangle Area1
oplocate -x 3.9732699999999999 -y -2.0548199999999999 Area1
opspareds "" Area1
opparm Area1  bindings ( 0 ) groupbindings ( 0 )
opparm Area1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area1 -*
chautoscope Area1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area1
opexprlanguage -s hscript Area1
opuserdata -n '___Version___' -v '' Area1

# Node Area2 (Sop/attribwrangle)
opadd -e -n attribwrangle Area2
oplocate -x 7.6555900000000001 -y -4.1319499999999998 Area2
opspareds "" Area2
opparm Area2  bindings ( 0 ) groupbindings ( 0 )
opparm Area2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float PolyArea2D( vector2 points[] )\n{\n    float area = 0.0;\n\n    for( int i=0; i<len(points); ++i )\n    {\n       int j = (i+1)%len(points);\n       area += points[i].x * points[j].y - points[j].x * points[i].y;\n    }\n    return abs( 0.5 * area );\n}\n\n\n\n\nvector2 points[];\n\nfor( int i=0; i<npoints(0); ++i )\n{\n    vector p = point(0, "P", i);\n    append( points, set(p.x, p.z) );\n}\n\n\nf@Area = PolyArea2D(points);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( 64 )
chlock Area2 -*
chautoscope Area2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Area2
opexprlanguage -s hscript Area2
opuserdata -n '___Version___' -v '' Area2

# Node ComputeEdgeNormalTangent1 (Sop/attribwrangle)
opadd -e -n attribwrangle ComputeEdgeNormalTangent1
oplocate -x 7.6555900000000001 -y -6.7416700000000001 ComputeEdgeNormalTangent1
opspareds "" ComputeEdgeNormalTangent1
opparm ComputeEdgeNormalTangent1  bindings ( 0 ) groupbindings ( 0 )
opparm ComputeEdgeNormalTangent1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector Normal2D_CCW( vector vec )\n{\n    return set(-vec.z, vec.y, vec.x);\n}\n\n\nvector Normal2D_CW( vector vec )\n{\n    return set(vec.z, vec.y, -vec.x);\n}\n\n\n\n\nint rotation_direction = chi("RotationDirection");//0:CCW, 1:CW\n\n\nint rot_dir = prim(0, "RotDir", 0);\nint is_closed = prim(0, "IsClosed", 0);\n\nint pts[] = primpoints(0, @primnum);\nint count = len(pts) - is_closed;\n\n\nfor( int i=0; i<count; ++i )\n{\n    vector  v0 = point(0, "P", pts[i]),\n            v1 = point(0, "P", pts[i+1]);\n    \n    if( i==count-1 && !is_closed )\n        break;\n            \n    vector tangent = v1 - v0;\n    setpointattrib(0, "edge_length", pts[i], length(tangent) );\n    \n    tangent = normalize(tangent);    \n    setpointattrib(0, "edge_tangent", pts[i], tangent );\n\n    if( rot_dir==0 )// CCW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CCW(tangent));\n    else// CW\n        setpointattrib(0, "edge_normal", pts[i], Normal2D_CW(tangent));\n}\n\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock ComputeEdgeNormalTangent1 -*
chautoscope ComputeEdgeNormalTangent1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ComputeEdgeNormalTangent1
opexprlanguage -s hscript ComputeEdgeNormalTangent1
opuserdata -n '___Version___' -v '' ComputeEdgeNormalTangent1
oporder -e output0 convexhull1 generate_local_axis minimum_bounding_rectangle quick_hull output1 output2 output3 PathCleansing ComputeEdgeNormalTangent ComputeCornerNormal compute_closest_quick_hull_edge compute_closest_mbr_edge Area PolyArea Area1 Area2 ComputeEdgeNormalTangent1 
opcf ..

# Node Outline1 (Sop/null)
opadd -e -n null Outline1
oplocate -x -10.4488 -y 2.5106600000000001 Outline1
opspareds "" Outline1
opparm -V 20.5.370 Outline1 copyinput ( on ) cacheinput ( off )
chlock Outline1 -*
chautoscope Outline1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 Outline1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Outline1
opexprlanguage -s hscript Outline1
opuserdata -n '___Version___' -v '20.5.370' Outline1

# Node ConvexHull1 (Sop/null)
opadd -e -n null ConvexHull1
oplocate -x -8.4311600000000002 -y 2.5106600000000001 ConvexHull1
opspareds "" ConvexHull1
opparm -V 20.5.370 ConvexHull1 copyinput ( on ) cacheinput ( off )
chlock ConvexHull1 -*
chautoscope ConvexHull1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 ConvexHull1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off ConvexHull1
opexprlanguage -s hscript ConvexHull1
opuserdata -n '___Version___' -v '20.5.370' ConvexHull1

# Node BaseMBR1 (Sop/null)
opadd -e -n null BaseMBR1
oplocate -x -6.6271100000000001 -y 2.5106600000000001 BaseMBR1
opspareds "" BaseMBR1
opparm -V 20.5.370 BaseMBR1 copyinput ( on ) cacheinput ( off )
chlock BaseMBR1 -*
chautoscope BaseMBR1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 BaseMBR1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off BaseMBR1
opexprlanguage -s hscript BaseMBR1
opuserdata -n '___Version___' -v '20.5.370' BaseMBR1

# Node LocalAxis1 (Sop/null)
opadd -e -n null LocalAxis1
oplocate -x -4.7959100000000001 -y 2.5106600000000001 LocalAxis1
opspareds "" LocalAxis1
opparm -V 20.5.370 LocalAxis1 copyinput ( on ) cacheinput ( off )
chlock LocalAxis1 -*
chautoscope LocalAxis1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 LocalAxis1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off LocalAxis1
opexprlanguage -s hscript LocalAxis1
opuserdata -n '___Version___' -v '20.5.370' LocalAxis1

# Node blast5 (Sop/blast)
opadd -e -n blast blast5
oplocate -x -6.9786099999999998 -y 5.2796000000000003 blast5
opspareds "" blast5
opparm -V 20.5.370 blast5 group ( 0 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast5 -*
chautoscope blast5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast5
opexprlanguage -s hscript blast5
opuserdata -n '___Version___' -v '20.5.370' blast5

# Node Split_to_edge_segments (Sop/attribwrangle)
opadd -e -n attribwrangle Split_to_edge_segments
oplocate -x -10.4518 -y 0.25334000000000001 Split_to_edge_segments
opspareds "" Split_to_edge_segments
opparm Split_to_edge_segments  bindings ( 0 ) groupbindings ( 0 )
opparm Split_to_edge_segments folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removeprim(0, 0, 0);\n\nint numedges = npoints(0) - (i@IsClosed ? 0 : 1);\n\nfor( int i=0; i<numedges; ++i )\n{\n    int edge_prim = addprim(0, "polyline");\n    addvertex(0, edge_prim, i);\n    addvertex(0, edge_prim, (i+1)%npoints(0) );\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Split_to_edge_segments -*
chautoscope Split_to_edge_segments -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Split_to_edge_segments
opexprlanguage -s hscript Split_to_edge_segments
opuserdata -n '___Version___' -v '' Split_to_edge_segments

# Node Move_point_attribs_to_edge (Sop/attribpromote)
opadd -e -n attribpromote Move_point_attribs_to_edge
oplocate -x -10.452299999999999 -y -0.73185999999999996 Move_point_attribs_to_edge
opspareds "" Move_point_attribs_to_edge
opparm -V 20.5.370 Move_point_attribs_to_edge inname ( 'HullID MBRID edge_length edge_normal edge_tangent' ) inclass ( point ) outclass ( primitive ) usepieceattrib ( off ) pieceattrib ( name ) method ( first ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock Move_point_attribs_to_edge -*
chautoscope Move_point_attribs_to_edge -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Move_point_attribs_to_edge
opexprlanguage -s hscript Move_point_attribs_to_edge
opuserdata -n '___Version___' -v '20.5.370' Move_point_attribs_to_edge

# Node Move_footprint_attribs_to_detail (Sop/attribpromote)
opadd -e -n attribpromote Move_footprint_attribs_to_detail
oplocate -x -10.452299999999999 -y 1.29314 Move_footprint_attribs_to_detail
opspareds "" Move_footprint_attribs_to_detail
opparm -V 20.5.370 Move_footprint_attribs_to_detail inname ( 'Area IsClosed RotDir' ) inclass ( primitive ) outclass ( detail ) usepieceattrib ( off ) pieceattrib ( name ) method ( mean ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock Move_footprint_attribs_to_detail -*
chautoscope Move_footprint_attribs_to_detail -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Move_footprint_attribs_to_detail
opexprlanguage -s hscript Move_footprint_attribs_to_detail
opuserdata -n '___Version___' -v '20.5.370' Move_footprint_attribs_to_detail

# Node blast6 (Sop/blast)
opadd -e -n blast blast6
oplocate -x -10.4488 -y -2.8134700000000001 blast6
opspareds "" blast6
opparm -V 20.5.370 blast6 group ( 3 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast6 -*
chautoscope blast6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast6
opexprlanguage -s hscript blast6
opuserdata -n '___Version___' -v '20.5.370' blast6

# Node Assign_Normal_Direction (Sop/attribwrangle)
opadd -e -n attribwrangle Assign_Normal_Direction
oplocate -x -10.4518 -y -5.4815800000000001 Assign_Normal_Direction
opspareds "" Assign_Normal_Direction
opparm Assign_Normal_Direction  bindings ( 0 ) groupbindings ( 0 )
opparm Assign_Normal_Direction folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//vector module_forward = {0, 0, 1};\n//vector edge_normal = prim(0, "edge_normal", @primnum);\n\n//3@mat = dihedral(module_forward, edge_normal);\n\n\nv@N = prim(0, "edge_normal", 0);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Assign_Normal_Direction -*
chautoscope Assign_Normal_Direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Assign_Normal_Direction
opexprlanguage -s hscript Assign_Normal_Direction
opuserdata -n '___Version___' -v '' Assign_Normal_Direction

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x -10.4488 -y -7.0427 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node object_merge2 (Sop/object_merge)
opadd -e -n object_merge object_merge2
oplocate -x -12.9679 -y -6.2014500000000004 object_merge2
opspareds "" object_merge2
opparm object_merge2  numobj ( 1 )
opparm -V 20.5.370 object_merge2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../WallModule/ ) group1 ( "" ) expand1 ( off )
chlock object_merge2 -*
chautoscope object_merge2 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge2
opexprlanguage -s hscript object_merge2
opuserdata -n '___Version___' -v '20.5.370' object_merge2

# Node GenerateModulePositions (Sop/attribwrangle)
opadd -e -n attribwrangle GenerateModulePositions
oplocate -x -10.4518 -y -4.1790099999999999 GenerateModulePositions
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "align"                 label   "Align"                 type    integer                 default { "0" }                 range   { 0! 4! }             }             parm {                 name    "ns2"                 label   "Ns2"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' GenerateModulePositions
opparm GenerateModulePositions  bindings ( 0 ) groupbindings ( 0 )
opparm GenerateModulePositions folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int align = chi("align");\n\nvector edge_normal = prim(0, "edge_normal", 0);\nvector edge_tangent = prim(0, "edge_tangent", 0);\nfloat edge_length = prim(0, "edge_length", 0);\nvector p0 = point(0, "P", primpoint(0, 0, 0) );\n\nfloat module_width = getbbox_size(1).x;\n\n// Compute num samples abd start offset\nint num_samples = int( floor(edge_length/module_width) );\nint ns2 = chi("ns2");\n\nnum_samples = ns2;\n\n\nvector start_pos = p0;\nfloat interval = module_width;\nfloat scale = 1.0;\n\n// 0: Left Alignment\nif( align==0 )\n{\n    //interval = 0;\n    //start_offset = p0;\n}\n// 1: Right Alignment\nelse if( align==1 )\n{\n    start_pos += edge_tangent*(edge_length - num_samples*module_width);\n}\n\n// 2: Center Alignment\nelse if( align==2 )\n{\n    start_pos += edge_tangent*(edge_length - num_samples*module_width)*0.5;\n}\n// 3: Equal\nelse if( align==3 )\n{\n    float gap = (edge_length - num_samples*module_width)/(num_samples+1);\n    interval += gap;\n    start_pos += gap*edge_tangent;\n}\n// 4: Scale\nelse if( align==4 )\n{\n    interval = edge_length / float(num_samples);\n    scale = interval / module_width;\n}\n\n\nfor( int i=0; i<num_samples; ++i )\n{\n    vector pos = start_pos + i*interval*edge_tangent;\n    //printf("%f\\n", pos);\n    \n    int p = addpoint(0, pos);\n    \n    setpointattrib(0, "edge_normal", p, edge_normal );\n    setpointattrib(0, "scale", p, set(scale, 1, 1) );   \n}\n\nremovepoint(0, 0);\nremovepoint(0, 1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) align ( 4 ) ns2 ( 5 )
chlock GenerateModulePositions -*
chautoscope GenerateModulePositions -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off GenerateModulePositions
opexprlanguage -s hscript GenerateModulePositions
opuserdata -n '___Version___' -v '' GenerateModulePositions

# Node object_merge3 (Sop/object_merge)
opadd -e -n object_merge object_merge3
oplocate -x -7.9613800000000001 -y -2.8119200000000002 object_merge3
opspareds "" object_merge3
opparm object_merge3  numobj ( 1 )
opparm -V 20.5.370 object_merge3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../WallModule/ ) group1 ( "" ) expand1 ( off )
chlock object_merge3 -*
chautoscope object_merge3 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge3
opexprlanguage -s hscript object_merge3
opuserdata -n '___Version___' -v '20.5.370' object_merge3

# Node font1 (Sop/font)
opadd -e -n font font1
oplocate -x -15.6182 -y 4.8170299999999999 font1
opspareds "" font1
opparm -V 20.5.370 font1 type ( poly ) file ( 'MS Gothic' ) text ( 壁 ) halign ( center ) valign ( middle ) use_descender ( off ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 0.5 0.58 ) tracking ( 0 0 ) fontsize ( 1 ) oblique ( 0 ) lod ( 1 ) autokern ( on ) hole ( on ) addattrib ( off )
chlock font1 -*
chautoscope font1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off font1
nbop __netbox1 add font1
opexprlanguage -s hscript font1
opuserdata -n '___Version___' -v '20.5.370' font1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -15.6182 -y 3.8768899999999999 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.127 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
nbop __netbox1 add polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node color5 (Sop/color)
opadd -e -n color color5
oplocate -x -15.6182 -y 0.72842499999999999 color5
opspareds "" color5
opparm color5  ramp ( 2 )
opparm color5 group ( "" ) grouptype ( points ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 1 1 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color5 -*
chautoscope color5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off color5
nbop __netbox1 add color5
opexprlanguage -s hscript color5
opuserdata -n '___Version___' -v '' color5
opuserdata -n '___toolcount___' -v '2' color5
opuserdata -n '___toolid___' -v 'sop_color' color5

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x -14.3894 -y -0.48356500000000002 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox1 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("Left Right Center Equal Stretch\nBottom Top Center Stretch\n\nfloor( edge_length / module_width )")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(-6.48021, -7.2636))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(4.13945, 1.51912))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'

# Sticky Note __stickynote2
python -c 'hou.pwd().createStickyNote("__stickynote2")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setText("z front wall module")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setPosition(hou.Vector2(-18.5514, -2.68911))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setSize(hou.Vector2(1.92737, 1.25051))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setMinimized(False)'
oporder -e Param floor1_outline1 Stack_Floor_Outline copytopoints1 box1 resample1 matchsize1 color1 color2 color3 color4 box2 boolean1 transform1 Close_Floor_Geometry polypath2 PreorpcessFootprint Outline ConvexHull BaseMBR LocalAxis blast1 attribute1 direction DirectionalWeight attribute2 Split_To_Edge_Segment attribpromote1 Transfer_DirWeight_Attrib attribpromote2 attribute3 sort_floor_by_FloorIdx_attrib Floor_Outlines foreach_end1 foreach_begin1 PreorpcessFootprint1 merge2 group4 group5 group6 blast2 box3 transform2 merge1 Transfer_FloorIdx box4 transform3 extrudevolume1 reverse1 Close_Floor_Geometry1 extrudevolume2 blast3 groupdelete1 WallModule carve1 polyframe2 object_merge1 transform4 PreorpcessFootprint2 Outline1 ConvexHull1 BaseMBR1 LocalAxis1 blast5 Split_to_edge_segments Move_point_attribs_to_edge Move_footprint_attribs_to_detail blast6 Assign_Normal_Direction copytopoints2 object_merge2 GenerateModulePositions object_merge3 font1 polyextrude1 color5 merge3 
opcf ..
opcf ..

# Node out (/out)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
opcf img

# Node comp1 (CopNet/img)
opadd -e -n img comp1
oplocate -x 1 -y 1 comp1
opspareds "" comp1
opparm -V 20.5.370 comp1
chlock comp1 -*
chautoscope comp1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e off -b off comp1
opexprlanguage -s hscript comp1
opuserdata -n '___Version___' -v '20.5.370' comp1

# Node copnet1 (CopNet/copnet)
opadd -e -n copnet copnet1
oplocate -x 0 -y 0 copnet1
opspareds "" copnet1
opparm -V 20.5.370 copnet1 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet1 -*
chautoscope copnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet1
opexprlanguage -s hscript copnet1
opuserdata -n '___Version___' -v '20.5.370' copnet1
oporder -e comp1 copnet1 
opcf ..

# Node stage (/stage)

# Node tasks (/tasks)
opcf tasks

# Node topnet1 (TopNet/topnet)
opadd -e -n topnet topnet1
oplocate -x 0 -y 0 topnet1
opspareds "" topnet1
opparm -V 20.5.370 topnet1 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( localscheduler ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet1 -*
chautoscope topnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet1
opexprlanguage -s hscript topnet1
opuserdata -n '___Version___' -v '20.5.370' topnet1
opcf topnet1

# Node localscheduler (Top/localscheduler)
opadd -e -n localscheduler localscheduler
oplocate -x 0 -y 0 localscheduler
opspareds "" localscheduler
opparm localscheduler  local_envmulti ( 0 )
opparm -V 1 localscheduler folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler -*
chautoscope localscheduler -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler
opexprlanguage -s hscript localscheduler
opuserdata -n '___Version___' -v '1' localscheduler
opcf ..
opcf ..
oporder -e obj out ch shop img vex mat stage tasks 

opcf /
opcf obj
opcf my_custom_building_generator
opwire -n floor1_outline1 -1 Stack_Floor_Outline
opwire -n transform4 -0 copytopoints1
opwire -n resample1 -1 copytopoints1
opwire -n polyframe2 -0 resample1
opwire -n merge3 -0 matchsize1
opwire -n box1 -0 color1
opwire -n color1 -0 color2
opwire -n color2 -0 color3
opwire -n color3 -0 color4
opwire -n Close_Floor_Geometry -0 boolean1
opwire -n merge1 -1 boolean1
opwire -n box2 -0 transform1
opwire -n Stack_Floor_Outline -0 Close_Floor_Geometry
opwire -n boolean1 -0 polypath2
opwire -n blast1 -0 PreorpcessFootprint
opcf PreorpcessFootprint
opwire -n compute_closest_quick_hull_edge -0 output0
opwire -n Area2 -1 generate_local_axis
opwire -n Area1 -1 minimum_bounding_rectangle
opwire -n Area -1 quick_hull
opwire -n compute_closest_mbr_edge -0 output1
opwire -n ComputeEdgeNormalTangent1 -0 output2
opwire -n generate_local_axis -0 output3
opwire -n -i 0 -0 PathCleansing
opcf PathCleansing
opwire -n facet1 -0 output0
opwire -n Check_if_curve_is_closed -0 Check_rotation_direction
opwire -n polypath1 -0 Check_if_curve_is_closed
opwire -n Check_rotation_direction -1 Reconstruct_outline_with_rotation_direction
opwire -n sort_points_by_vertex_order -0 polypath1
opwire -n Reconstruct_outline_with_rotation_direction -0 fuse1
opwire -n fuse1 -0 facet1
opwire -n -i 0 -0 sort_points_by_vertex_order
opcf ..
opwire -n PathCleansing -0 ComputeEdgeNormalTangent
opwire -n ComputeEdgeNormalTangent -0 ComputeCornerNormal
opwire -n Area -0 compute_closest_quick_hull_edge
opwire -n compute_closest_mbr_edge -1 compute_closest_quick_hull_edge
opwire -n Area1 -0 compute_closest_mbr_edge
opwire -n Area2 -1 compute_closest_mbr_edge
opwire -n ComputeCornerNormal -0 Area
opwire -n quick_hull -0 Area1
opwire -n minimum_bounding_rectangle -0 Area2
opwire -n Area2 -0 ComputeEdgeNormalTangent1
opcf ..
opwire -n PreorpcessFootprint -0 Outline
opwire -n -o 1 PreorpcessFootprint -0 ConvexHull
opwire -n -o 2 PreorpcessFootprint -0 BaseMBR
opwire -n -o 3 PreorpcessFootprint -0 LocalAxis
opwire -n Floor_Outlines -0 blast1
opwire -n Outline -0 attribute1
opwire -n BaseMBR -0 DirectionalWeight
opwire -n direction -1 DirectionalWeight
opwire -n DirectionalWeight -0 attribute2
opwire -n attribpromote2 -0 Split_To_Edge_Segment
opwire -n Split_To_Edge_Segment -0 attribpromote1
opwire -n Outline -0 Transfer_DirWeight_Attrib
opwire -n DirectionalWeight -1 Transfer_DirWeight_Attrib
opwire -n Transfer_DirWeight_Attrib -0 attribpromote2
opwire -n attribpromote1 -0 attribute3
opwire -n polypath2 -0 sort_floor_by_FloorIdx_attrib
opwire -n sort_floor_by_FloorIdx_attrib -0 Floor_Outlines
opwire -n Transfer_FloorIdx -0 foreach_end1
opwire -n Floor_Outlines -0 foreach_begin1
opwire -n foreach_begin1 -0 PreorpcessFootprint1
opcf PreorpcessFootprint1
opwire -n compute_closest_quick_hull_edge -0 output0
opwire -n Area2 -1 generate_local_axis
opwire -n Area1 -1 minimum_bounding_rectangle
opwire -n Area -1 quick_hull
opwire -n compute_closest_mbr_edge -0 output1
opwire -n ComputeEdgeNormalTangent1 -0 output2
opwire -n generate_local_axis -0 output3
opwire -n -i 0 -0 PathCleansing
opcf PathCleansing
opwire -n facet1 -0 output0
opwire -n Check_if_curve_is_closed -0 Check_rotation_direction
opwire -n polypath1 -0 Check_if_curve_is_closed
opwire -n Check_rotation_direction -1 Reconstruct_outline_with_rotation_direction
opwire -n sort_points_by_vertex_order -0 polypath1
opwire -n Reconstruct_outline_with_rotation_direction -0 fuse1
opwire -n fuse1 -0 facet1
opwire -n -i 0 -0 sort_points_by_vertex_order
opcf ..
opwire -n PathCleansing -0 ComputeEdgeNormalTangent
opwire -n ComputeEdgeNormalTangent -0 ComputeCornerNormal
opwire -n Area -0 compute_closest_quick_hull_edge
opwire -n compute_closest_mbr_edge -1 compute_closest_quick_hull_edge
opwire -n Area1 -0 compute_closest_mbr_edge
opwire -n Area2 -1 compute_closest_mbr_edge
opwire -n ComputeCornerNormal -0 Area
opwire -n quick_hull -0 Area1
opwire -n minimum_bounding_rectangle -0 Area2
opwire -n Area2 -0 ComputeEdgeNormalTangent1
opcf ..
opwire -n group6 -0 merge2
opwire -n group5 -1 merge2
opwire -n group4 -2 merge2
opwire -n -o 2 PreorpcessFootprint1 -0 group4
opwire -n -o 1 PreorpcessFootprint1 -0 group5
opwire -n PreorpcessFootprint1 -0 group6
opwire -n foreach_end1 -0 blast2
opwire -n box3 -0 transform2
opwire -n transform1 -0 merge1
opwire -n transform2 -1 merge1
opwire -n transform3 -2 merge1
opwire -n merge2 -0 Transfer_FloorIdx
opwire -n foreach_begin1 -1 Transfer_FloorIdx
opwire -n box4 -0 transform3
opwire -n blast2 -0 extrudevolume1
opwire -n extrudevolume1 -0 reverse1
opwire -n groupdelete1 -0 Close_Floor_Geometry1
opwire -n Close_Floor_Geometry1 -0 extrudevolume2
opwire -n extrudevolume2 -0 blast3
opwire -n blast2 -0 groupdelete1
opwire -n matchsize1 -0 WallModule
opwire -n Stack_Floor_Outline -0 carve1
opwire -n carve1 -0 polyframe2
opwire -n object_merge1 -0 transform4
opwire -n blast5 -0 PreorpcessFootprint2
opcf PreorpcessFootprint2
opwire -n compute_closest_quick_hull_edge -0 output0
opwire -n Area2 -1 generate_local_axis
opwire -n Area1 -1 minimum_bounding_rectangle
opwire -n Area -1 quick_hull
opwire -n compute_closest_mbr_edge -0 output1
opwire -n ComputeEdgeNormalTangent1 -0 output2
opwire -n generate_local_axis -0 output3
opwire -n -i 0 -0 PathCleansing
opcf PathCleansing
opwire -n facet1 -0 output0
opwire -n Check_if_curve_is_closed -0 Check_rotation_direction
opwire -n polypath1 -0 Check_if_curve_is_closed
opwire -n Check_rotation_direction -1 Reconstruct_outline_with_rotation_direction
opwire -n sort_points_by_vertex_order -0 polypath1
opwire -n Reconstruct_outline_with_rotation_direction -0 fuse1
opwire -n fuse1 -0 facet1
opwire -n -i 0 -0 sort_points_by_vertex_order
opcf ..
opwire -n PathCleansing -0 ComputeEdgeNormalTangent
opwire -n ComputeEdgeNormalTangent -0 ComputeCornerNormal
opwire -n Area -0 compute_closest_quick_hull_edge
opwire -n compute_closest_mbr_edge -1 compute_closest_quick_hull_edge
opwire -n Area1 -0 compute_closest_mbr_edge
opwire -n Area2 -1 compute_closest_mbr_edge
opwire -n ComputeCornerNormal -0 Area
opwire -n quick_hull -0 Area1
opwire -n minimum_bounding_rectangle -0 Area2
opwire -n Area2 -0 ComputeEdgeNormalTangent1
opcf ..
opwire -n PreorpcessFootprint2 -0 Outline1
opwire -n -o 1 PreorpcessFootprint2 -0 ConvexHull1
opwire -n -o 2 PreorpcessFootprint2 -0 BaseMBR1
opwire -n -o 3 PreorpcessFootprint2 -0 LocalAxis1
opwire -n Stack_Floor_Outline -0 blast5
opwire -n Move_footprint_attribs_to_detail -0 Split_to_edge_segments
opwire -n Split_to_edge_segments -0 Move_point_attribs_to_edge
opwire -n Outline1 -0 Move_footprint_attribs_to_detail
opwire -n Move_point_attribs_to_edge -0 blast6
opwire -n GenerateModulePositions -0 Assign_Normal_Direction
opwire -n object_merge2 -0 copytopoints2
opwire -n Assign_Normal_Direction -1 copytopoints2
opwire -n blast6 -0 GenerateModulePositions
opwire -n object_merge3 -1 GenerateModulePositions
opwire -n font1 -0 polyextrude1
opwire -n polyextrude1 -0 color5
opwire -n color5 -0 merge3
opwire -n color4 -1 merge3
opcf ..
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
