# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node test_stairs (Object/geo)
opadd -e -n geo test_stairs
oplocate -x -3.69916 -y 1.43221 test_stairs
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' test_stairs
opset -S on test_stairs
opparm -V 20.5.370 test_stairs stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock test_stairs -*
chautoscope test_stairs -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off test_stairs
opexprlanguage -s hscript test_stairs
opuserdata -n '___Version___' -v '20.5.370' test_stairs
opcf test_stairs

# Node Stairs (Sop/subnet)
opadd -e -n subnet Stairs
oplocate -x -26.3048 -y -1.1897899999999999 Stairs
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "NumFloors"         label   "NumFloors"         type    integer         default { "3" }         range   { 2 20 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.6" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "GroundFloor"         label   "GroundFloor"         type    integer         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CenterMargin"         label   "CenterMargin"         type    float         default { "0.25" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Rotation"         label   "Rotation"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Open"         label   "Open"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "HandrailWidth"         label   "HandrailWidth"         type    float         default { "0.1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "HandraiHeight"         label   "HandraiHeight"         type    float         default { "1.2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "OutsideWall"         label   "OutsideWall"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Wall"             "1" "Fence"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CentralWall"         label   "CentralWall"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Normal"             "1" "DiagonalCut"         }         parmtag { "script_callback_language" "python" }     } ' Stairs
opparm -V 20.5.370 Stairs label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) NumFloors ( 3 ) Width ( 1.6 ) Elevation ( 2.5 ) CornerType ( 0 ) GroundFloor ( 0 ) SlopeLength ( 2 ) CenterMargin ( 0.18 ) Rotation ( 1 ) Open ( 0 ) HandrailWidth ( 0.19 ) HandraiHeight ( 1.15 ) OutsideWall ( 0 ) CentralWall ( 0 )
chlock Stairs -*
chautoscope Stairs -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Stairs
opexprlanguage -s hscript Stairs
opuserdata -n '___Version___' -v '20.5.370' Stairs
opcf Stairs

# Network Box __netbox3
nbadd __netbox3
nblocate -x -3.79777 -y -1.01166 __netbox3
nbsize -w 4.35536 -h 4.32943 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox2
nbadd __netbox2
nblocate -x 4.68132 -y -2.5444 __netbox2
nbsize -w 2.8 -h 3.94089 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox1
nbadd __netbox1
nblocate -x -3.79777 -y -6.54123 __netbox1
nbsize -w 3.50982 -h 4.60108 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox4
nbadd __netbox4
nblocate -x 1.26341 -y -2.64015 __netbox4
nbsize -w 2.8 -h 0.7 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x -7.61114 -y -5.54209 __netbox5
nbsize -w 2.8 -h 0.7 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x 0 -y 4.4358599999999999 null1
opspareds "" null1
opparm -V 20.5.370 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null1
opexprlanguage -s hscript null1
opuserdata -n '___Version___' -v '20.5.370' null1

# Node merge8 (Sop/merge)
opadd -e -n merge merge8
oplocate -x -0.44470900000000002 -y -16.695799999999998 merge8
opspareds "" merge8
opparm -V 20.5.370 merge8
chlock merge8 -*
chautoscope merge8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge8
opexprlanguage -s hscript merge8
opuserdata -n '___Version___' -v '20.5.370' merge8

# Node fuse3 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse3
oplocate -x -0.44355899999999998 -y -17.608799999999999 fuse3
opspareds "" fuse3
opparm fuse3  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse3 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse3 -*
chautoscope fuse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse3
opexprlanguage -s hscript fuse3
opuserdata -n '___Version___' -v '20.5.370' fuse3

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x -0.44355899999999998 -y -18.904199999999999 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x -0.44355899999999998 -y -19.790700000000001 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Node extract_silhouette2 (labs::Sop/extract_silhouette::1.0)
opadd -e -n labs::extract_silhouette::1.0 extract_silhouette2
oplocate -x -13.640700000000001 -y -3.8456899999999998 extract_silhouette2
opspareds "" extract_silhouette2
opparm -V 370 extract_silhouette2 iExtractMode ( 0 ) mTraceAxis ( 2 ) campath ( "" ) removeoutsidesilhouette ( off ) bResample ( off ) length ( 0.1 )
chlock extract_silhouette2 -*
chautoscope extract_silhouette2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extract_silhouette2
opexprlanguage -s hscript extract_silhouette2
opuserdata -n '___Version___' -v '370' extract_silhouette2

# Node extrudevolume6 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume6
oplocate -x -13.640700000000001 -y -4.6225899999999998 extrudevolume6
opspareds "" extrudevolume6
chblockbegin
chadd -t 0 0 extrudevolume6 depth
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '-ch("../CenterMargin")*1.2' extrudevolume6/depth
chblockend
opparm extrudevolume6 depth ( depth ) basenormal ( 0 0 1 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume6 -*
chautoscope extrudevolume6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume6
opexprlanguage -s hscript extrudevolume6
opuserdata -n '___Version___' -v '' extrudevolume6

# Node boolean2 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean2
oplocate -x -16.021699999999999 -y -8.1641499999999994 boolean2
opspareds "" boolean2
opparm -V 20.5.370 boolean2 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( intersect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean2 -*
chautoscope boolean2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean2
opexprlanguage -s hscript boolean2
opuserdata -n '___Version___' -v '20.5.370' boolean2

# Node matchsize5 (Sop/matchsize)
opadd -e -n matchsize matchsize5
oplocate -x -13.6189 -y -5.6225899999999998 matchsize5
opspareds "" matchsize5
opparm matchsize5 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize5 -*
chautoscope matchsize5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize5
opexprlanguage -s hscript matchsize5
opuserdata -n '___Version___' -v '' matchsize5

# Node extrudevolume7 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume7
oplocate -x -16.021699999999999 -y -9.1110500000000005 extrudevolume7
opspareds "" extrudevolume7
chblockbegin
chadd -t 0 0 extrudevolume7 depth
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' extrudevolume7/depth
chblockend
opparm extrudevolume7 depth ( depth ) basenormal ( 0 0 1 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume7 -*
chautoscope extrudevolume7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume7
opexprlanguage -s hscript extrudevolume7
opuserdata -n '___Version___' -v '' extrudevolume7

# Node box2 (Sop/box)
opadd -e -n box box2
oplocate -x -16.602 -y -3.8816700000000002 box2
opspareds "" box2
chblockbegin
chadd -t 0 0 box2 sizex
chkey -t 0 -v 2.3999999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' box2/sizex
chadd -t 0 0 box2 sizey
chkey -t 0 -v 4.2999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation") * (ch("../NumFloors")-1)' box2/sizey
chadd -t 0 0 box2 sizez
chkey -t 0 -v 17 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")*1.3' box2/sizez
chblockend
opparm -V 20.5.370 box2 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( sizex sizey sizez ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box2 -*
chautoscope box2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box2
opexprlanguage -s hscript box2
opuserdata -n '___Version___' -v '20.5.370' box2

# Node boolean3 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean3
oplocate -x -16.602 -y -6.0232900000000003 boolean3
opspareds "" boolean3
opparm -V 20.5.370 boolean3 inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( union ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean3 -*
chautoscope boolean3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean3
opexprlanguage -s hscript boolean3
opuserdata -n '___Version___' -v '20.5.370' boolean3

# Node matchsize6 (Sop/matchsize)
opadd -e -n matchsize matchsize6
oplocate -x -16.602 -y -4.8816699999999997 matchsize6
opspareds "" matchsize6
chblockbegin
chadd -t 0 0 matchsize6 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' matchsize6/offset_x
chblockend
opparm matchsize6 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize6 -*
chautoscope matchsize6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize6
opexprlanguage -s hscript matchsize6
opuserdata -n '___Version___' -v '' matchsize6

# Node matchsize7 (Sop/matchsize)
opadd -e -n matchsize matchsize7
oplocate -x -16.021699999999999 -y -10.008800000000001 matchsize7
opspareds "" matchsize7
opparm matchsize7 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize7 -*
chautoscope matchsize7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize7
opexprlanguage -s hscript matchsize7
opuserdata -n '___Version___' -v '' matchsize7

# Node StairSkeleton (Sop/subnet)
opadd -e -n subnet StairSkeleton
oplocate -x -1.11759e-08 -y 5.6756599999999997 StairSkeleton
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "NumFloors"         label   "NumFloors"         type    integer         default { "3" }         range   { 2! 20 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.6" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "GroundFloor"         label   "GroundFloor"         type    integer         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CenterMargin"         label   "CenterMargin"         type    float         default { "0.25" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Rotation"         label   "Rotation"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Open"         label   "Open"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' StairSkeleton
chblockbegin
chadd -t 0 0 StairSkeleton NumFloors
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../NumFloors")' StairSkeleton/NumFloors
chadd -t 0 0 StairSkeleton Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' StairSkeleton/Width
chadd -t 0 0 StairSkeleton Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' StairSkeleton/Elevation
chadd -t 0 0 StairSkeleton CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' StairSkeleton/CornerType
chadd -t 0 0 StairSkeleton GroundFloor
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../GroundFloor")' StairSkeleton/GroundFloor
chadd -t 0 0 StairSkeleton SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' StairSkeleton/SlopeLength
chadd -t 0 0 StairSkeleton CenterMargin
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' StairSkeleton/CenterMargin
chadd -t 0 0 StairSkeleton Rotation
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Rotation")' StairSkeleton/Rotation
chadd -t 0 0 StairSkeleton Open
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Open")' StairSkeleton/Open
chblockend
opparm -V 20.5.370 StairSkeleton label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) NumFloors ( NumFloors ) Width ( Width ) Elevation ( Elevation ) CornerType ( CornerType ) GroundFloor ( GroundFloor ) SlopeLength ( SlopeLength ) CenterMargin ( CenterMargin ) Rotation ( Rotation ) Open ( Open )
chlock StairSkeleton -*
chautoscope StairSkeleton -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off StairSkeleton
opexprlanguage -s hscript StairSkeleton
opuserdata -n '___Version___' -v '20.5.370' StairSkeleton
opcf StairSkeleton

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.039083899999999998 -y -10.9284 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 2.1180400000000001 -y -1.3767 transform3
opspareds '    parm {         name    "group"         baseparm         label   "Group"         export  none         bindselector everything "Transform Geometry"             "Select the geometry to transform and press Enter to complete. Middle mouse to select. Left mouse to select and drag."             0 1 0xffffffff 1 grouptype 0     }     parm {         name    "grouptype"         baseparm         label   "Group Type"         export  none     }     parm {         name    "xOrd"         baseparm         label   "Transform Order"         joinnext         export  none     }     parm {         name    "rOrd"         baseparm         label   "Rotate Order"         nolabel         export  none     }     parm {         name    "t"         baseparm         label   "Translate"         export  none     }     parm {         name    "r"         baseparm         label   "Rotate"         export  none     }     parm {         name    "s"         baseparm         label   "Scale"         export  none     }     parm {         name    "shear"         baseparm         label   "Shear"         export  none     }     parm {         name    "scale"         baseparm         label   "Uniform Scale"         export  none     }     groupcollapsible {         name    "parmgroup_pivotxform2"         label   "Pivot Transform"         grouptag { "group_type" "collapsible" }         grouptag { "sidefx::switcher" "parmgroup_pivotxform" }          parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }     }      groupcollapsible {         name    "parmgroup_prexform2"         label   "Pre-Transform"         grouptag { "group_type" "collapsible" }         grouptag { "sidefx::switcher" "parmgroup_prexform" }          parm {             name    "prexform_xOrd"             baseparm             label   "Pre-Transform Order"             joinnext             export  none         }         parm {             name    "prexform_rOrd"             baseparm             label   "Pre-Rotate Order"             nolabel             export  none         }         parm {             name    "prexform_t"             baseparm             label   "Pre-Translate"             export  none         }         parm {             name    "prexform_r"             baseparm             label   "Pre-Rotate"             export  none         }         parm {             name    "prexform_s"             baseparm             label   "Pre-Scale"             export  none         }         parm {             name    "prexform_shear"             baseparm             label   "Pre-Shear"             export  none         }     }      parm {         name    "movecentroid"         baseparm         label   "Move Centroid to Origin"         joinnext         export  none     }     parm {         name    "movepivot"         baseparm         label   "Move Pivot to Centroid"         export  none     }     parm {         name    "attribs"         baseparm         label   "Attributes"         export  none     }     parm {         name    "updatenmls"         baseparm         label   "Recompute Point Normals"         export  none     }     parm {         name    "updateaffectednmls"         baseparm         label   "Recompute Affected Normals"         export  none     }     parm {         name    "vlength"         baseparm         label   "Preserve Normal Length"         export  none     }     parm {         name    "invertxform"         baseparm         label   "Invert Transformation"         export  none     }     parm {         name    "addattrib"         baseparm         label   "Output Attribute"         nolabel         joinnext         export  none     }     parm {         name    "outputattrib"         baseparm         label   "Output Attribute"         joinnext         export  none     }     parm {         name    "outputmerge"         baseparm         label   "Combine"         nolabel         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(-1, "value", 0) * ch("../Elevation")' transform3/ty
chadd -t 0 0 transform3 tz
chkey -t 0 -v 5 -m 0 -a 0 -A 0 -T a  -F 'if(ch("../Rotation")==1,1.0,-1.0)* 0.5*(ch("../Width")+ch("../CenterMargin"))' transform3/tz
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post ) parmgroup_pivotxform2 ( 0 ) parmgroup_prexform2 ( 0 ) spare_input0 ( ../foreach_count3/ )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node foreach_end3 (Sop/block_end)
opadd -e -n block_end foreach_end3
oplocate -x -0.037483900000000001 -y -6.2924199999999999 foreach_end3
opspareds "" foreach_end3
chblockbegin
chadd -t 0 0 foreach_end3 iterations
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../NumFloors")-1' foreach_end3/iterations
chadd -t 0 0 foreach_end3 startvalue
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch("../GroundFloor")' foreach_end3/startvalue
chblockend
opparm -V 20.5.370 foreach_end3 itermethod ( count ) method ( merge ) iterations ( iterations ) startvalue ( startvalue ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin3 ) templatepath ( ../foreach_begin3 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end3 -*
chautoscope foreach_end3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end3
opexprlanguage -s hscript foreach_end3
opuserdata -n '___Version___' -v '20.5.370' foreach_end3

# Node foreach_begin3 (Sop/block_begin)
opadd -e -n block_begin foreach_begin3
oplocate -x 0.0015999899999999999 -y 3.88157 foreach_begin3
opspareds "" foreach_begin3
opparm -V 20.5.370 foreach_begin3 method ( input ) blockpath ( ../foreach_end3 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin3 -*
chautoscope foreach_begin3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin3
opexprlanguage -s hscript foreach_begin3
opuserdata -n '___Version___' -v '20.5.370' foreach_begin3

# Node foreach_count3 (Sop/block_begin)
opadd -e -n block_begin foreach_count3
oplocate -x 6.03024 -y 3.88157 foreach_count3
opspareds "" foreach_count3
opparm -V 20.5.370 foreach_count3 method ( metadata ) blockpath ( ../foreach_end3 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count3 -*
chautoscope foreach_count3 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count3
opexprlanguage -s hscript foreach_count3
opuserdata -n '___Version___' -v '20.5.370' foreach_count3

# Node copytopoints3 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints3
oplocate -x -0.039083899999999998 -y -4.7190899999999996 copytopoints3
opspareds "" copytopoints3
opparm copytopoints3  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints3 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints3 -*
chautoscope copytopoints3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints3
opexprlanguage -s hscript copytopoints3
opuserdata -n '___Version___' -v '20.5.370' copytopoints3

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x -1.11759e-08 -y 5.1336700000000004 add3
opspareds "" add3
opparm add3  points ( 1 ) prims ( 1 )
opparm -V 20.5.370 add3 stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 2.2522799999999998 -y -3.3088000000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node StairSkeleton_Entrance (Sop/subnet)
opadd -e -n subnet StairSkeleton_Entrance
oplocate -x -4.7112499999999997 -y 4.8985799999999999 StairSkeleton_Entrance
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.6" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CenterMargin"         label   "CenterMargin"         type    float         default { "0.25" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Rotation"         label   "Rotation"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' StairSkeleton_Entrance
chblockbegin
chadd -t 0 0 StairSkeleton_Entrance Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' StairSkeleton_Entrance/Width
chadd -t 0 0 StairSkeleton_Entrance Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' StairSkeleton_Entrance/Elevation
chadd -t 0 0 StairSkeleton_Entrance SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' StairSkeleton_Entrance/SlopeLength
chadd -t 0 0 StairSkeleton_Entrance CenterMargin
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' StairSkeleton_Entrance/CenterMargin
chadd -t 0 0 StairSkeleton_Entrance Rotation
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Rotation")' StairSkeleton_Entrance/Rotation
chadd -t 0 0 StairSkeleton_Entrance CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' StairSkeleton_Entrance/CornerType
chblockend
opparm -V 20.5.370 StairSkeleton_Entrance label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) CenterMargin ( CenterMargin ) Rotation ( Rotation ) CornerType ( CornerType )
chlock StairSkeleton_Entrance -*
chautoscope StairSkeleton_Entrance -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off StairSkeleton_Entrance
opexprlanguage -s hscript StairSkeleton_Entrance
opuserdata -n '___Version___' -v '20.5.370' StairSkeleton_Entrance
opcf StairSkeleton_Entrance

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.0163000000000002e-09 -y -4.6933999999999996 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Straight1 (Sop/Straight)
opadd -e -n Straight Straight1
oplocate -x 4.6009900000000004 -y 3.42354 Straight1
opspareds "" Straight1
chblockbegin
chadd -t 0 0 Straight1 Length
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' Straight1/Length
chadd -t 0 0 Straight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight1/Width
chblockend
opparm Straight1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight1 -*
chautoscope Straight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight1
opexprlanguage -s hscript Straight1
opuserdata -n '___Version___' -v '' Straight1

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x -1.11759e-08 -y 2.4923299999999999 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -0.0011500099999999999 -y -2.07301 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node Straight2 (Sop/Straight)
opadd -e -n Straight Straight2
oplocate -x 5.5670000000000002 -y 0.56496500000000005 Straight2
opspareds "" Straight2
chblockbegin
chadd -t 0 0 Straight2 Length
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Length
chadd -t 0 0 Straight2 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Width
chblockend
opparm Straight2 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight2 -*
chautoscope Straight2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on Straight2
opexprlanguage -s hscript Straight2
opuserdata -n '___Version___' -v '' Straight2

# Node SlopeSkeleton_Base (Sop/subnet)
opadd -e -n subnet SlopeSkeleton_Base
oplocate -x -1.11759e-08 -y 4.1641599999999999 SlopeSkeleton_Base
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "FromDirection"         label   "FromDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "ToDirection"         label   "ToDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' SlopeSkeleton_Base
chblockbegin
chadd -t 0 0 SlopeSkeleton_Base Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' SlopeSkeleton_Base/Width
chadd -t 0 0 SlopeSkeleton_Base Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' SlopeSkeleton_Base/Elevation
chadd -t 0 0 SlopeSkeleton_Base SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' SlopeSkeleton_Base/SlopeLength
chadd -t 0 0 SlopeSkeleton_Base ToDirection
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F '{\n    # 1:left(ccw), 2:right(cw), 0:front(unused for stair)\n    return ch("../Rotation")+1;\n}' SlopeSkeleton_Base/ToDirection
chadd -t 0 0 SlopeSkeleton_Base CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' SlopeSkeleton_Base/CornerType
chblockend
opparm -V 20.5.370 SlopeSkeleton_Base label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) FromDirection ( 0 ) ToDirection ( ToDirection ) CornerType ( CornerType )
chlock SlopeSkeleton_Base -*
chautoscope SlopeSkeleton_Base -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlopeSkeleton_Base
opexprlanguage -s hscript SlopeSkeleton_Base
opuserdata -n '___Version___' -v '20.5.370' SlopeSkeleton_Base
opcf SlopeSkeleton_Base

# Network Box __netbox1
nbadd __netbox1
nblocate -x -4.81558 -y -0.635033 __netbox1
nbsize -w 6.46819 -h 4.04307 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 7.06543 -y -0.635033 __netbox2
nbsize -w 6.46819 -h 4.04307 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.15543699999999999 -y -7.75847 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Slope (Sop/Straight)
opadd -e -n Straight Slope
oplocate -x 3.4004400000000001 -y 1.2191000000000001 Slope
opspareds "" Slope
chblockbegin
chadd -t 0 0 Slope Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' Slope/Length
chadd -t 0 0 Slope Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Slope/Width
chadd -t 0 0 Slope Elevation
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Elevation")' Slope/Elevation
chblockend
opparm Slope Length ( Length ) Width ( Width ) Elevation ( Elevation )
chlock Slope -*
chautoscope Slope -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Slope
opexprlanguage -s hscript Slope
opuserdata -n '___Version___' -v '' Slope

# Node Landing (Sop/Straight)
opadd -e -n Straight Landing
oplocate -x -4.4155800000000003 -y 2.9080300000000001 Landing
opspareds "" Landing
chblockbegin
chadd -t 0 0 Landing Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Length
chadd -t 0 0 Landing Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Width
chblockend
opparm Landing Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing -*
chautoscope Landing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing
nbop __netbox1 add Landing
opexprlanguage -s hscript Landing
opuserdata -n '___Version___' -v '' Landing

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -0.156587 -y -5.9847700000000001 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x -2.5341 -y -1.6166100000000001 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node ElbowLeft (Sop/Elbow)
opadd -e -n Elbow ElbowLeft
oplocate -x -2.5341 -y 2.9080300000000001 ElbowLeft
opspareds "" ElbowLeft
chblockbegin
chadd -t 0 0 ElbowLeft Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft/Width
chadd -t 0 0 ElbowLeft CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowLeft/CornerType
chblockend
opparm ElbowLeft Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft -*
chautoscope ElbowLeft -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft
nbop __netbox1 add ElbowLeft
opexprlanguage -s hscript ElbowLeft
opuserdata -n '___Version___' -v '' ElbowLeft

# Node ElbowRight (Sop/Elbow)
opadd -e -n Elbow ElbowRight
oplocate -x -0.74738800000000005 -y 2.9080300000000001 ElbowRight
opspareds "" ElbowRight
chblockbegin
chadd -t 0 0 ElbowRight Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight/Width
chadd -t 0 0 ElbowRight CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight/CornerType
chblockend
opparm ElbowRight Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight -*
chautoscope ElbowRight -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight
nbop __netbox1 add ElbowRight
opexprlanguage -s hscript ElbowRight
opuserdata -n '___Version___' -v '' ElbowRight

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -2.5341 -y 0.71364000000000005 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../FromDirection")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
nbop __netbox1 add switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -2.5341 -y 1.74028 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 -90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
nbop __netbox1 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -0.74738800000000005 -y 1.74028 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
nbop __netbox1 add transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -2.5341 -y -0.435033 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node Landing1 (Sop/Straight)
opadd -e -n Straight Landing1
oplocate -x 7.4654299999999996 -y 2.9080300000000001 Landing1
opspareds "" Landing1
chblockbegin
chadd -t 0 0 Landing1 Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Length
chadd -t 0 0 Landing1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Width
chblockend
opparm Landing1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing1 -*
chautoscope Landing1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing1
nbop __netbox2 add Landing1
opexprlanguage -s hscript Landing1
opuserdata -n '___Version___' -v '' Landing1

# Node ElbowLeft1 (Sop/Elbow)
opadd -e -n Elbow ElbowLeft1
oplocate -x 9.3469499999999996 -y 2.9080300000000001 ElbowLeft1
opspareds "" ElbowLeft1
chblockbegin
chadd -t 0 0 ElbowLeft1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft1/Width
chadd -t 0 0 ElbowLeft1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")\n' ElbowLeft1/CornerType
chblockend
opparm ElbowLeft1 Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft1 -*
chautoscope ElbowLeft1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft1
nbop __netbox2 add ElbowLeft1
opexprlanguage -s hscript ElbowLeft1
opuserdata -n '___Version___' -v '' ElbowLeft1

# Node ElbowRight1 (Sop/Elbow)
opadd -e -n Elbow ElbowRight1
oplocate -x 11.133699999999999 -y 2.9080300000000001 ElbowRight1
opspareds "" ElbowRight1
chblockbegin
chadd -t 0 0 ElbowRight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight1/Width
chadd -t 0 0 ElbowRight1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight1/CornerType
chblockend
opparm ElbowRight1 Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight1 -*
chautoscope ElbowRight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight1
nbop __netbox2 add ElbowRight1
opexprlanguage -s hscript ElbowRight1
opuserdata -n '___Version___' -v '' ElbowRight1

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x 9.3469499999999996 -y 0.71363699999999997 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../ToDirection")' switch2/input
chblockend
opparm -V 20.5.370 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
nbop __netbox2 add switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 9.3469499999999996 -y 1.74028 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
nbop __netbox2 add transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 11.133699999999999 -y 1.74028 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
nbop __netbox2 add transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 9.3469499999999996 -y -0.40398600000000001 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node delete_handle2 (Sop/delete)
opadd -e -n delete delete_handle2
oplocate -x 0.64961599999999997 -y -3.6261999999999999 delete_handle2
opspareds "" delete_handle2
chblockbegin
chadd -t 0 0 delete_handle2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle2/rangeend
chblockend
opparm -V 20.5.370 delete_handle2 group ( 'handle_start handle_end joint_start joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle2 -*
chautoscope delete_handle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle2
opexprlanguage -s hscript delete_handle2
opuserdata -n '___Version___' -v '20.5.370' delete_handle2

# Node delete_handle3 (Sop/delete)
opadd -e -n delete delete_handle3
oplocate -x 4.1032500000000001 -y -4.7218099999999996 delete_handle3
opspareds "" delete_handle3
chblockbegin
chadd -t 0 0 delete_handle3 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle3/rangeend
chblockend
opparm -V 20.5.370 delete_handle3 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle3 -*
chautoscope delete_handle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle3
opexprlanguage -s hscript delete_handle3
opuserdata -n '___Version___' -v '20.5.370' delete_handle3

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 0.64961599999999997 -y -2.3795799999999998 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x 4.1032500000000001 -y -3.6261999999999999 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..
oporder -e output0 Slope Landing merge4 delete_handle ElbowLeft ElbowRight switch1 transform1 transform2 matchsize1 Landing1 ElbowLeft1 ElbowRight1 switch2 transform3 transform4 matchsize2 delete_handle2 delete_handle3 TransformToEndJoint TransformToEndJoint1 
opcf ..

# Node delete_handle1 (Sop/delete)
opadd -e -n delete delete_handle1
oplocate -x 2.4187699999999999 -y 0.115437 delete_handle1
opspareds "" delete_handle1
chblockbegin
chadd -t 0 0 delete_handle1 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle1/rangeend
chblockend
opparm -V 20.5.370 delete_handle1 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle1 -*
chautoscope delete_handle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle1
opexprlanguage -s hscript delete_handle1
opuserdata -n '___Version___' -v '20.5.370' delete_handle1

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 2.4187699999999999 -y 1.47786 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint2 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint2
oplocate -x 5.5670000000000002 -y -0.95821599999999996 TransformToEndJoint2
opspareds "" TransformToEndJoint2
opparm -V 20.5.370 TransformToEndJoint2 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint2 -*
chautoscope TransformToEndJoint2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on TransformToEndJoint2
opexprlanguage -s hscript TransformToEndJoint2
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint2
opcf TransformToEndJoint2

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..
oporder -e output0 Straight1 delete_handle merge1 Straight2 SlopeSkeleton_Base delete_handle1 TransformToEndJoint TransformToEndJoint2 
opcf ..

# Node StairSkeleton_Intermediate (Sop/subnet)
opadd -e -n subnet StairSkeleton_Intermediate
oplocate -x -4.7112499999999997 -y 3.5846900000000002 StairSkeleton_Intermediate
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.6" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CenterMargin"         label   "CenterMargin"         type    float         default { "0.25" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Rotation"         label   "Rotation"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' StairSkeleton_Intermediate
chblockbegin
chadd -t 0 0 StairSkeleton_Intermediate Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' StairSkeleton_Intermediate/Width
chadd -t 0 0 StairSkeleton_Intermediate Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' StairSkeleton_Intermediate/Elevation
chadd -t 0 0 StairSkeleton_Intermediate SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' StairSkeleton_Intermediate/SlopeLength
chadd -t 0 0 StairSkeleton_Intermediate CenterMargin
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' StairSkeleton_Intermediate/CenterMargin
chadd -t 0 0 StairSkeleton_Intermediate Rotation
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Rotation")' StairSkeleton_Intermediate/Rotation
chadd -t 0 0 StairSkeleton_Intermediate CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' StairSkeleton_Intermediate/CornerType
chblockend
opparm -V 20.5.370 StairSkeleton_Intermediate label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) CenterMargin ( CenterMargin ) Rotation ( Rotation ) CornerType ( CornerType )
chlock StairSkeleton_Intermediate -*
chautoscope StairSkeleton_Intermediate -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off StairSkeleton_Intermediate
opexprlanguage -s hscript StairSkeleton_Intermediate
opuserdata -n '___Version___' -v '20.5.370' StairSkeleton_Intermediate
opcf StairSkeleton_Intermediate

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.0163000000000002e-09 -y -4.4258899999999999 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Straight1 (Sop/Straight)
opadd -e -n Straight Straight1
oplocate -x 4.1365600000000002 -y 3.3977400000000002 Straight1
opspareds "" Straight1
chblockbegin
chadd -t 0 0 Straight1 Length
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' Straight1/Length
chadd -t 0 0 Straight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight1/Width
chblockend
opparm Straight1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight1 -*
chautoscope Straight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight1
opexprlanguage -s hscript Straight1
opuserdata -n '___Version___' -v '' Straight1

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x -1.11759e-08 -y 2.4923299999999999 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -0.0011500099999999999 -y -2.07301 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node Straight2 (Sop/Straight)
opadd -e -n Straight Straight2
oplocate -x 7.3318199999999996 -y 1.8722300000000001 Straight2
opspareds "" Straight2
chblockbegin
chadd -t 0 0 Straight2 Length
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Length
chadd -t 0 0 Straight2 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Width
chblockend
opparm Straight2 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight2 -*
chautoscope Straight2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on Straight2
opexprlanguage -s hscript Straight2
opuserdata -n '___Version___' -v '' Straight2

# Node delete_handle1 (Sop/delete)
opadd -e -n delete delete_handle1
oplocate -x 2.0198399999999999 -y 0.53433600000000003 delete_handle1
opspareds "" delete_handle1
chblockbegin
chadd -t 0 0 delete_handle1 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle1/rangeend
chblockend
opparm -V 20.5.370 delete_handle1 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle1 -*
chautoscope delete_handle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle1
opexprlanguage -s hscript delete_handle1
opuserdata -n '___Version___' -v '20.5.370' delete_handle1

# Node delete_handle2 (Sop/delete)
opadd -e -n delete delete_handle2
oplocate -x 4.9632800000000001 -y -0.74329800000000001 delete_handle2
opspareds "" delete_handle2
chblockbegin
chadd -t 0 0 delete_handle2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle2/rangeend
chblockend
opparm -V 20.5.370 delete_handle2 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle2 -*
chautoscope delete_handle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on delete_handle2
opexprlanguage -s hscript delete_handle2
opuserdata -n '___Version___' -v '20.5.370' delete_handle2

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 2.0198399999999999 -y 1.9756 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x 4.9632800000000001 -y 0.65972500000000001 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node SlopeSkeleton_Base (Sop/subnet)
opadd -e -n subnet SlopeSkeleton_Base
oplocate -x -1.11759e-08 -y 4.0227599999999999 SlopeSkeleton_Base
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "FromDirection"         label   "FromDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "ToDirection"         label   "ToDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' SlopeSkeleton_Base
chblockbegin
chadd -t 0 0 SlopeSkeleton_Base Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' SlopeSkeleton_Base/Width
chadd -t 0 0 SlopeSkeleton_Base Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' SlopeSkeleton_Base/Elevation
chadd -t 0 0 SlopeSkeleton_Base SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' SlopeSkeleton_Base/SlopeLength
chadd -t 0 0 SlopeSkeleton_Base FromDirection
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    # 1:left(ccw), 2:right(cw), 0:front(unused for stair)\n    return ch("../Rotation")+1;\n}' SlopeSkeleton_Base/FromDirection
chadd -t 0 0 SlopeSkeleton_Base ToDirection
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F '{\n    # 1:left(ccw), 2:right(cw), 0:front(unused for stair)\n    return ch("../Rotation")+1;\n}' SlopeSkeleton_Base/ToDirection
chadd -t 0 0 SlopeSkeleton_Base CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' SlopeSkeleton_Base/CornerType
chblockend
opparm -V 20.5.370 SlopeSkeleton_Base label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) FromDirection ( FromDirection ) ToDirection ( ToDirection ) CornerType ( CornerType )
chlock SlopeSkeleton_Base -*
chautoscope SlopeSkeleton_Base -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlopeSkeleton_Base
opexprlanguage -s hscript SlopeSkeleton_Base
opuserdata -n '___Version___' -v '20.5.370' SlopeSkeleton_Base
opcf SlopeSkeleton_Base

# Network Box __netbox1
nbadd __netbox1
nblocate -x -4.81558 -y -0.635033 __netbox1
nbsize -w 6.46819 -h 4.04307 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 7.06543 -y -0.635033 __netbox2
nbsize -w 6.46819 -h 4.04307 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.15543699999999999 -y -7.75847 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Slope (Sop/Straight)
opadd -e -n Straight Slope
oplocate -x 3.4004400000000001 -y 1.2191000000000001 Slope
opspareds "" Slope
chblockbegin
chadd -t 0 0 Slope Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' Slope/Length
chadd -t 0 0 Slope Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Slope/Width
chadd -t 0 0 Slope Elevation
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Elevation")' Slope/Elevation
chblockend
opparm Slope Length ( Length ) Width ( Width ) Elevation ( Elevation )
chlock Slope -*
chautoscope Slope -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Slope
opexprlanguage -s hscript Slope
opuserdata -n '___Version___' -v '' Slope

# Node Landing (Sop/Straight)
opadd -e -n Straight Landing
oplocate -x -4.4155800000000003 -y 2.9080300000000001 Landing
opspareds "" Landing
chblockbegin
chadd -t 0 0 Landing Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Length
chadd -t 0 0 Landing Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Width
chblockend
opparm Landing Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing -*
chautoscope Landing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing
nbop __netbox1 add Landing
opexprlanguage -s hscript Landing
opuserdata -n '___Version___' -v '' Landing

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -0.156587 -y -5.9847700000000001 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x -2.5341 -y -1.6166100000000001 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node ElbowLeft (Sop/Elbow)
opadd -e -n Elbow ElbowLeft
oplocate -x -2.5341 -y 2.9080300000000001 ElbowLeft
opspareds "" ElbowLeft
chblockbegin
chadd -t 0 0 ElbowLeft Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft/Width
chadd -t 0 0 ElbowLeft CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowLeft/CornerType
chblockend
opparm ElbowLeft Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft -*
chautoscope ElbowLeft -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft
nbop __netbox1 add ElbowLeft
opexprlanguage -s hscript ElbowLeft
opuserdata -n '___Version___' -v '' ElbowLeft

# Node ElbowRight (Sop/Elbow)
opadd -e -n Elbow ElbowRight
oplocate -x -0.74738800000000005 -y 2.9080300000000001 ElbowRight
opspareds "" ElbowRight
chblockbegin
chadd -t 0 0 ElbowRight Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight/Width
chadd -t 0 0 ElbowRight CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight/CornerType
chblockend
opparm ElbowRight Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight -*
chautoscope ElbowRight -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight
nbop __netbox1 add ElbowRight
opexprlanguage -s hscript ElbowRight
opuserdata -n '___Version___' -v '' ElbowRight

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -2.5341 -y 0.71364000000000005 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../FromDirection")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
nbop __netbox1 add switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -2.5341 -y 1.74028 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 -90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
nbop __netbox1 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -0.74738800000000005 -y 1.74028 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
nbop __netbox1 add transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -2.5341 -y -0.435033 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node Landing1 (Sop/Straight)
opadd -e -n Straight Landing1
oplocate -x 7.4654299999999996 -y 2.9080300000000001 Landing1
opspareds "" Landing1
chblockbegin
chadd -t 0 0 Landing1 Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Length
chadd -t 0 0 Landing1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Width
chblockend
opparm Landing1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing1 -*
chautoscope Landing1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing1
nbop __netbox2 add Landing1
opexprlanguage -s hscript Landing1
opuserdata -n '___Version___' -v '' Landing1

# Node ElbowLeft1 (Sop/Elbow)
opadd -e -n Elbow ElbowLeft1
oplocate -x 9.3469499999999996 -y 2.9080300000000001 ElbowLeft1
opspareds "" ElbowLeft1
chblockbegin
chadd -t 0 0 ElbowLeft1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft1/Width
chadd -t 0 0 ElbowLeft1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")\n' ElbowLeft1/CornerType
chblockend
opparm ElbowLeft1 Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft1 -*
chautoscope ElbowLeft1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft1
nbop __netbox2 add ElbowLeft1
opexprlanguage -s hscript ElbowLeft1
opuserdata -n '___Version___' -v '' ElbowLeft1

# Node ElbowRight1 (Sop/Elbow)
opadd -e -n Elbow ElbowRight1
oplocate -x 11.133699999999999 -y 2.9080300000000001 ElbowRight1
opspareds "" ElbowRight1
chblockbegin
chadd -t 0 0 ElbowRight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight1/Width
chadd -t 0 0 ElbowRight1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight1/CornerType
chblockend
opparm ElbowRight1 Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight1 -*
chautoscope ElbowRight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight1
nbop __netbox2 add ElbowRight1
opexprlanguage -s hscript ElbowRight1
opuserdata -n '___Version___' -v '' ElbowRight1

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x 9.3469499999999996 -y 0.71363699999999997 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../ToDirection")' switch2/input
chblockend
opparm -V 20.5.370 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
nbop __netbox2 add switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 9.3469499999999996 -y 1.74028 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
nbop __netbox2 add transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 11.133699999999999 -y 1.74028 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
nbop __netbox2 add transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 9.3469499999999996 -y -0.40398600000000001 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node delete_handle2 (Sop/delete)
opadd -e -n delete delete_handle2
oplocate -x 0.64961599999999997 -y -3.6261999999999999 delete_handle2
opspareds "" delete_handle2
chblockbegin
chadd -t 0 0 delete_handle2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle2/rangeend
chblockend
opparm -V 20.5.370 delete_handle2 group ( 'handle_start handle_end joint_start joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle2 -*
chautoscope delete_handle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle2
opexprlanguage -s hscript delete_handle2
opuserdata -n '___Version___' -v '20.5.370' delete_handle2

# Node delete_handle3 (Sop/delete)
opadd -e -n delete delete_handle3
oplocate -x 4.1032500000000001 -y -4.7218099999999996 delete_handle3
opspareds "" delete_handle3
chblockbegin
chadd -t 0 0 delete_handle3 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle3/rangeend
chblockend
opparm -V 20.5.370 delete_handle3 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle3 -*
chautoscope delete_handle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle3
opexprlanguage -s hscript delete_handle3
opuserdata -n '___Version___' -v '20.5.370' delete_handle3

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 0.64961599999999997 -y -2.3795799999999998 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x 4.1032500000000001 -y -3.6261999999999999 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..
oporder -e output0 Slope Landing merge4 delete_handle ElbowLeft ElbowRight switch1 transform1 transform2 matchsize1 Landing1 ElbowLeft1 ElbowRight1 switch2 transform3 transform4 matchsize2 delete_handle2 delete_handle3 TransformToEndJoint TransformToEndJoint1 
opcf ..
oporder -e output0 Straight1 delete_handle merge1 Straight2 delete_handle1 delete_handle2 TransformToEndJoint TransformToEndJoint1 SlopeSkeleton_Base 
opcf ..

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x 3.2995999999999999 -y 2.4353099999999999 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 20.5.370 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Intermediate ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '20.5.370' object_merge1

# Node transform7 (Sop/xform)
opadd -e -n xform transform7
oplocate -x 4.4229799999999999 -y -1.3767 transform7
opspareds '    parm {         name    "group"         baseparm         label   "Group"         export  none         bindselector everything "Transform Geometry"             "Select the geometry to transform and press Enter to complete. Middle mouse to select. Left mouse to select and drag."             0 1 0xffffffff 1 grouptype 0     }     parm {         name    "grouptype"         baseparm         label   "Group Type"         export  none     }     parm {         name    "xOrd"         baseparm         label   "Transform Order"         joinnext         export  none     }     parm {         name    "rOrd"         baseparm         label   "Rotate Order"         nolabel         export  none     }     parm {         name    "t"         baseparm         label   "Translate"         export  none     }     parm {         name    "r"         baseparm         label   "Rotate"         export  none     }     parm {         name    "s"         baseparm         label   "Scale"         export  none     }     parm {         name    "shear"         baseparm         label   "Shear"         export  none     }     parm {         name    "scale"         baseparm         label   "Uniform Scale"         export  none     }     groupcollapsible {         name    "parmgroup_pivotxform2"         label   "Pivot Transform"         grouptag { "group_type" "collapsible" }         grouptag { "sidefx::switcher" "parmgroup_pivotxform" }          parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }     }      groupcollapsible {         name    "parmgroup_prexform2"         label   "Pre-Transform"         grouptag { "group_type" "collapsible" }         grouptag { "sidefx::switcher" "parmgroup_prexform" }          parm {             name    "prexform_xOrd"             baseparm             label   "Pre-Transform Order"             joinnext             export  none         }         parm {             name    "prexform_rOrd"             baseparm             label   "Pre-Rotate Order"             nolabel             export  none         }         parm {             name    "prexform_t"             baseparm             label   "Pre-Translate"             export  none         }         parm {             name    "prexform_r"             baseparm             label   "Pre-Rotate"             export  none         }         parm {             name    "prexform_s"             baseparm             label   "Pre-Scale"             export  none         }         parm {             name    "prexform_shear"             baseparm             label   "Pre-Shear"             export  none         }     }      parm {         name    "movecentroid"         baseparm         label   "Move Centroid to Origin"         joinnext         export  none     }     parm {         name    "movepivot"         baseparm         label   "Move Pivot to Centroid"         export  none     }     parm {         name    "attribs"         baseparm         label   "Attributes"         export  none     }     parm {         name    "updatenmls"         baseparm         label   "Recompute Point Normals"         export  none     }     parm {         name    "updateaffectednmls"         baseparm         label   "Recompute Affected Normals"         export  none     }     parm {         name    "vlength"         baseparm         label   "Preserve Normal Length"         export  none     }     parm {         name    "invertxform"         baseparm         label   "Invert Transformation"         export  none     }     parm {         name    "addattrib"         baseparm         label   "Output Attribute"         nolabel         joinnext         export  none     }     parm {         name    "outputattrib"         baseparm         label   "Output Attribute"         joinnext         export  none     }     parm {         name    "outputmerge"         baseparm         label   "Combine"         nolabel         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' transform7
chblockbegin
chadd -t 0 0 transform7 tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$SIZEX' transform7/tx
chadd -t 0 0 transform7 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '(detail(-1, "value", 0)+0.5) * ch("../Elevation")' transform7/ty
chadd -t 0 0 transform7 tz
chkey -t 0 -v 5 -m 0 -a 0 -A 0 -T a  -F 'if(ch("../Rotation")==1,-1,1)*0.5*(ch("../Width")+ch("../CenterMargin"))' transform7/tz
chblockend
opparm -V 20.5.370 transform7 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( tx ty tz ) r ( 0 180 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post ) parmgroup_pivotxform2 ( 0 ) parmgroup_prexform2 ( 0 ) spare_input0 ( ../foreach_count3/ )
chlock transform7 -*
chautoscope transform7 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform7
opexprlanguage -s hscript transform7
opuserdata -n '___Version___' -v '20.5.370' transform7

# Node blast7 (Sop/blast)
opadd -e -n blast blast7
oplocate -x 2.1180400000000001 -y -7.0161600000000002 blast7
opspareds "" blast7
opparm -V 20.5.370 blast7 group ( handle ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast7 -*
chautoscope blast7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast7
opexprlanguage -s hscript blast7
opuserdata -n '___Version___' -v '20.5.370' blast7

# Node object_merge7 (Sop/object_merge)
opadd -e -n object_merge object_merge7
oplocate -x 1.14859 -y 2.4353099999999999 object_merge7
opspareds "" object_merge7
opparm object_merge7  numobj ( 1 )
opparm -V 20.5.370 object_merge7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Entrance/ ) group1 ( "" ) expand1 ( off )
chlock object_merge7 -*
chautoscope object_merge7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge7
opexprlanguage -s hscript object_merge7
opuserdata -n '___Version___' -v '20.5.370' object_merge7

# Node switchif5 (Sop/switchif)
opadd -e -n switchif switchif5
oplocate -x 4.4229799999999999 -y 0.096304399999999998 switchif5
opspareds '    parm {         name    "mergecondition"         baseparm         label   "Use Second Input If"         export  none     }     parm {         name    "testinput"         baseparm         label   "Test Input"         export  none     }     multiparm {         name    "tests"         label    "Number of Tests"         baseparm         default 1          parm {             name    "enable#"             baseparm             label   "enable#"             nolabel             joinnext             export  none         }         parm {             name    "type#"             baseparm             label   "Test Type"             export  none         }         parm {             name    "expr#"             baseparm             label   "Enable"             export  none         }         parm {             name    "attribtype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "attribowner#"             baseparm             label   "Class"             export  none         }         parm {             name    "attributes#"             baseparm             label   "Attributes"             export  none         }         parm {             name    "attribvaltype#"             baseparm             label   "Of Type"             export  none         }         parm {             name    "attribfloatcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribstringcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribval#"             baseparm             label   "Value"             export  none         }         parm {             name    "attribsval#"             baseparm             label   "Value"             export  none         }         parm {             name    "counttype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "countgroup#"             baseparm             label   "In Group"             export  none         }         parm {             name    "countcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "countval#"             baseparm             label   "Value"             export  none         }         parm {             name    "hasinputtype#"             baseparm             label   "Enable When"             export  none         }     }      parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' switchif5
opparm switchif5  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif5 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(-1,"iteration",0)==(detail(-1,"numiterations",0)-1)' switchif5/expr1
chblockend
opparm -V 20.5.370 switchif5 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired ) spare_input0 ( ../foreach_count3 )
chlock switchif5 -*
chautoscope switchif5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif5
opexprlanguage -s hscript switchif5
opuserdata -n '___Version___' -v '20.5.370' switchif5

# Node StairSkeleton_Exit (Sop/subnet)
opadd -e -n subnet StairSkeleton_Exit
oplocate -x -4.7112499999999997 -y 2.1954899999999999 StairSkeleton_Exit
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1.6" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CenterMargin"         label   "CenterMargin"         type    float         default { "0.25" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Rotation"         label   "Rotation"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "CCW"             "1" "CW"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Open"         label   "Open"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' StairSkeleton_Exit
chblockbegin
chadd -t 0 0 StairSkeleton_Exit Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' StairSkeleton_Exit/Width
chadd -t 0 0 StairSkeleton_Exit Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' StairSkeleton_Exit/Elevation
chadd -t 0 0 StairSkeleton_Exit SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' StairSkeleton_Exit/SlopeLength
chadd -t 0 0 StairSkeleton_Exit CenterMargin
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' StairSkeleton_Exit/CenterMargin
chadd -t 0 0 StairSkeleton_Exit Rotation
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Rotation")' StairSkeleton_Exit/Rotation
chadd -t 0 0 StairSkeleton_Exit CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' StairSkeleton_Exit/CornerType
chadd -t 0 0 StairSkeleton_Exit Open
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Open")' StairSkeleton_Exit/Open
chblockend
opparm -V 20.5.370 StairSkeleton_Exit label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) CenterMargin ( CenterMargin ) Rotation ( Rotation ) CornerType ( CornerType ) Open ( Open )
chlock StairSkeleton_Exit -*
chautoscope StairSkeleton_Exit -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off StairSkeleton_Exit
opexprlanguage -s hscript StairSkeleton_Exit
opuserdata -n '___Version___' -v '20.5.370' StairSkeleton_Exit
opcf StairSkeleton_Exit

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -7.18391 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Straight1 (Sop/Straight)
opadd -e -n Straight Straight1
oplocate -x 3.5117500000000001 -y 3.6014699999999999 Straight1
opspareds "" Straight1
chblockbegin
chadd -t 0 0 Straight1 Length
chkey -t 0 -v 0.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../CenterMargin")' Straight1/Length
chadd -t 0 0 Straight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight1/Width
chblockend
opparm Straight1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight1 -*
chautoscope Straight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight1
opexprlanguage -s hscript Straight1
opuserdata -n '___Version___' -v '' Straight1

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x 1.01955 -y 0.96947799999999995 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 1.5192300000000001 -y -1.78363 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node Straight2 (Sop/Straight)
opadd -e -n Straight Straight2
oplocate -x 6.6083499999999997 -y 2.1242000000000001 Straight2
opspareds "" Straight2
chblockbegin
chadd -t 0 0 Straight2 Length
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Length
chadd -t 0 0 Straight2 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Straight2/Width
chblockend
opparm Straight2 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Straight2 -*
chautoscope Straight2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight2
opexprlanguage -s hscript Straight2
opuserdata -n '___Version___' -v '' Straight2

# Node delete_handle2 (Sop/delete)
opadd -e -n delete delete_handle2
oplocate -x 2.8590499999999999 -y 0.96947799999999995 delete_handle2
opspareds "" delete_handle2
chblockbegin
chadd -t 0 0 delete_handle2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle2/rangeend
chblockend
opparm -V 20.5.370 delete_handle2 group ( 'handle_start joint_start handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle2 -*
chautoscope delete_handle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle2
opexprlanguage -s hscript delete_handle2
opuserdata -n '___Version___' -v '20.5.370' delete_handle2

# Node delete_handle3 (Sop/delete)
opadd -e -n delete delete_handle3
oplocate -x 5.2981199999999999 -y -0.69812200000000002 delete_handle3
opspareds "" delete_handle3
chblockbegin
chadd -t 0 0 delete_handle3 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle3/rangeend
chblockend
opparm -V 20.5.370 delete_handle3 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle3 -*
chautoscope delete_handle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle3
opexprlanguage -s hscript delete_handle3
opuserdata -n '___Version___' -v '20.5.370' delete_handle3

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 2.8590499999999999 -y 2.3127 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x 5.2981199999999999 -y 0.845109 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node SlopeSkeleton_Base (Sop/subnet)
opadd -e -n subnet SlopeSkeleton_Base
oplocate -x -1.11759e-08 -y 4.3383700000000003 SlopeSkeleton_Base
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "3" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SlopeLength"         label   "SlopeLength"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "FromDirection"         label   "FromDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "ToDirection"         label   "ToDirection"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Front"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' SlopeSkeleton_Base
chblockbegin
chadd -t 0 0 SlopeSkeleton_Base Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' SlopeSkeleton_Base/Width
chadd -t 0 0 SlopeSkeleton_Base Elevation
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' SlopeSkeleton_Base/Elevation
chadd -t 0 0 SlopeSkeleton_Base SlopeLength
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' SlopeSkeleton_Base/SlopeLength
chadd -t 0 0 SlopeSkeleton_Base FromDirection
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    # 1:left(ccw), 2:right(cw), 0:front(unused for stair)\n    return ch("../Rotation")+1;\n}' SlopeSkeleton_Base/FromDirection
chadd -t 0 0 SlopeSkeleton_Base ToDirection
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F '{\n    # 1:left(ccw), 2:right(cw), 0:front(unused for stair)\n    \n    # 1:left(cw), 2:right(ccw), 0:front\n    #return ch("../Rotation")+1;\n    return ch("../Open");\n}' SlopeSkeleton_Base/ToDirection
chadd -t 0 0 SlopeSkeleton_Base CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' SlopeSkeleton_Base/CornerType
chblockend
opparm -V 20.5.370 SlopeSkeleton_Base label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( Width ) Elevation ( Elevation ) SlopeLength ( SlopeLength ) FromDirection ( FromDirection ) ToDirection ( ToDirection ) CornerType ( CornerType )
chlock SlopeSkeleton_Base -*
chautoscope SlopeSkeleton_Base -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlopeSkeleton_Base
opexprlanguage -s hscript SlopeSkeleton_Base
opuserdata -n '___Version___' -v '20.5.370' SlopeSkeleton_Base
opcf SlopeSkeleton_Base

# Network Box __netbox1
nbadd __netbox1
nblocate -x -4.81558 -y -0.635033 __netbox1
nbsize -w 6.46819 -h 4.04307 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 7.06543 -y -0.635033 __netbox2
nbsize -w 6.46819 -h 4.04307 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.15543699999999999 -y -7.75847 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Slope (Sop/Straight)
opadd -e -n Straight Slope
oplocate -x 3.4004400000000001 -y 1.2191000000000001 Slope
opspareds "" Slope
chblockbegin
chadd -t 0 0 Slope Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' Slope/Length
chadd -t 0 0 Slope Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Slope/Width
chadd -t 0 0 Slope Elevation
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Elevation")' Slope/Elevation
chblockend
opparm Slope Length ( Length ) Width ( Width ) Elevation ( Elevation )
chlock Slope -*
chautoscope Slope -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Slope
opexprlanguage -s hscript Slope
opuserdata -n '___Version___' -v '' Slope

# Node Landing (Sop/Straight)
opadd -e -n Straight Landing
oplocate -x -4.4155800000000003 -y 2.9080300000000001 Landing
opspareds "" Landing
chblockbegin
chadd -t 0 0 Landing Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Length
chadd -t 0 0 Landing Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing/Width
chblockend
opparm Landing Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing -*
chautoscope Landing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing
nbop __netbox1 add Landing
opexprlanguage -s hscript Landing
opuserdata -n '___Version___' -v '' Landing

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -0.156587 -y -5.9847700000000001 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node delete_handle (Sop/delete)
opadd -e -n delete delete_handle
oplocate -x -2.5341 -y -1.6166100000000001 delete_handle
opspareds "" delete_handle
chblockbegin
chadd -t 0 0 delete_handle rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle/rangeend
chblockend
opparm -V 20.5.370 delete_handle group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle -*
chautoscope delete_handle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle
opexprlanguage -s hscript delete_handle
opuserdata -n '___Version___' -v '20.5.370' delete_handle

# Node ElbowLeft (Sop/Elbow)
opadd -e -n Elbow ElbowLeft
oplocate -x -2.5341 -y 2.9080300000000001 ElbowLeft
opspareds "" ElbowLeft
chblockbegin
chadd -t 0 0 ElbowLeft Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft/Width
chadd -t 0 0 ElbowLeft CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowLeft/CornerType
chblockend
opparm ElbowLeft Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft -*
chautoscope ElbowLeft -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft
nbop __netbox1 add ElbowLeft
opexprlanguage -s hscript ElbowLeft
opuserdata -n '___Version___' -v '' ElbowLeft

# Node ElbowRight (Sop/Elbow)
opadd -e -n Elbow ElbowRight
oplocate -x -0.74738800000000005 -y 2.9080300000000001 ElbowRight
opspareds "" ElbowRight
chblockbegin
chadd -t 0 0 ElbowRight Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight/Width
chadd -t 0 0 ElbowRight CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight/CornerType
chblockend
opparm ElbowRight Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight -*
chautoscope ElbowRight -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight
nbop __netbox1 add ElbowRight
opexprlanguage -s hscript ElbowRight
opuserdata -n '___Version___' -v '' ElbowRight

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -2.5341 -y 0.71364000000000005 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../FromDirection")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
nbop __netbox1 add switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -2.5341 -y 1.74028 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 -90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
nbop __netbox1 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -0.74738800000000005 -y 1.74028 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 90 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
nbop __netbox1 add transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -2.5341 -y -0.435033 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node Landing1 (Sop/Straight)
opadd -e -n Straight Landing1
oplocate -x 7.4654299999999996 -y 2.9080300000000001 Landing1
opspareds "" Landing1
chblockbegin
chadd -t 0 0 Landing1 Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Length
chadd -t 0 0 Landing1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' Landing1/Width
chblockend
opparm Landing1 Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing1 -*
chautoscope Landing1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing1
nbop __netbox2 add Landing1
opexprlanguage -s hscript Landing1
opuserdata -n '___Version___' -v '' Landing1

# Node ElbowLeft1 (Sop/Elbow)
opadd -e -n Elbow ElbowLeft1
oplocate -x 9.3469499999999996 -y 2.9080300000000001 ElbowLeft1
opspareds "" ElbowLeft1
chblockbegin
chadd -t 0 0 ElbowLeft1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowLeft1/Width
chadd -t 0 0 ElbowLeft1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")\n' ElbowLeft1/CornerType
chblockend
opparm ElbowLeft1 Direction ( 0 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowLeft1 -*
chautoscope ElbowLeft1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowLeft1
nbop __netbox2 add ElbowLeft1
opexprlanguage -s hscript ElbowLeft1
opuserdata -n '___Version___' -v '' ElbowLeft1

# Node ElbowRight1 (Sop/Elbow)
opadd -e -n Elbow ElbowRight1
oplocate -x 11.133699999999999 -y 2.9080300000000001 ElbowRight1
opspareds "" ElbowRight1
chblockbegin
chadd -t 0 0 ElbowRight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' ElbowRight1/Width
chadd -t 0 0 ElbowRight1 CornerType
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' ElbowRight1/CornerType
chblockend
opparm ElbowRight1 Direction ( 1 ) Width ( Width ) CornerType ( CornerType )
chlock ElbowRight1 -*
chautoscope ElbowRight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ElbowRight1
nbop __netbox2 add ElbowRight1
opexprlanguage -s hscript ElbowRight1
opuserdata -n '___Version___' -v '' ElbowRight1

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x 9.3469499999999996 -y 0.71363699999999997 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../ToDirection")' switch2/input
chblockend
opparm -V 20.5.370 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
nbop __netbox2 add switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 9.3469499999999996 -y 1.74028 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
nbop __netbox2 add transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 11.133699999999999 -y 1.74028 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
nbop __netbox2 add transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 9.3469499999999996 -y -0.40398600000000001 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node delete_handle2 (Sop/delete)
opadd -e -n delete delete_handle2
oplocate -x 0.64961599999999997 -y -3.6261999999999999 delete_handle2
opspareds "" delete_handle2
chblockbegin
chadd -t 0 0 delete_handle2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle2/rangeend
chblockend
opparm -V 20.5.370 delete_handle2 group ( 'handle_start handle_end joint_start joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle2 -*
chautoscope delete_handle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle2
opexprlanguage -s hscript delete_handle2
opuserdata -n '___Version___' -v '20.5.370' delete_handle2

# Node delete_handle3 (Sop/delete)
opadd -e -n delete delete_handle3
oplocate -x 4.1032500000000001 -y -4.7218099999999996 delete_handle3
opspareds "" delete_handle3
chblockbegin
chadd -t 0 0 delete_handle3 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle3/rangeend
chblockend
opparm -V 20.5.370 delete_handle3 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle3 -*
chautoscope delete_handle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle3
opexprlanguage -s hscript delete_handle3
opuserdata -n '___Version___' -v '20.5.370' delete_handle3

# Node TransformToEndJoint (Sop/subnet)
opadd -e -n subnet TransformToEndJoint
oplocate -x 0.64961599999999997 -y -2.3795799999999998 TransformToEndJoint
opspareds "" TransformToEndJoint
opparm -V 20.5.370 TransformToEndJoint label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint -*
chautoscope TransformToEndJoint -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint
opexprlanguage -s hscript TransformToEndJoint
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint
opcf TransformToEndJoint

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x 4.1032500000000001 -y -3.6261999999999999 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..
oporder -e output0 Slope Landing merge4 delete_handle ElbowLeft ElbowRight switch1 transform1 transform2 matchsize1 Landing1 ElbowLeft1 ElbowRight1 switch2 transform3 transform4 matchsize2 delete_handle2 delete_handle3 TransformToEndJoint TransformToEndJoint1 
opcf ..

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -2.0489100000000001e-08 -y -2.93709 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '(ch("../Rotation")+1)==ch("../Open")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node create_side_exit_group (Sop/attribwrangle)
opadd -e -n attribwrangle create_side_exit_group
oplocate -x -0.00300001 -y -4.7443400000000002 create_side_exit_group
opspareds "" create_side_exit_group
opparm create_side_exit_group  bindings ( 0 ) groupbindings ( 0 )
opparm create_side_exit_group folder0 ( 0 0 ) group ( '@prim_type=leftside' ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int numleftsides=0, numrightside=0;\nfor( int prim=0; prim<nprimitives(0); ++prim)\n{\n    if( prim(0,"prim_type",prim)=="leftside" )\n    {\n        if(numleftsides>0 )\n            setprimgroup(0,"leftside_exit",prim, 1);\n        numleftsides++;\n    }\n    \n    else if( prim(0,"prim_type",prim)=="rightside" )\n    {\n        if(numrightside>0 )\n            setprimgroup(0,"rightside_exit",prim, 1);\n        numrightside++;\n    }    \n}\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock create_side_exit_group -*
chautoscope create_side_exit_group -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off create_side_exit_group
opexprlanguage -s hscript create_side_exit_group
opuserdata -n '___Version___' -v '' create_side_exit_group

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x -3.14805 -y -5.60839 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( rightside_exit ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1
oporder -e output0 Straight1 delete_handle merge1 Straight2 delete_handle2 delete_handle3 TransformToEndJoint TransformToEndJoint1 SlopeSkeleton_Base switchif1 create_side_exit_group blast1 
opcf ..

# Node object_merge8 (Sop/object_merge)
opadd -e -n object_merge object_merge8
oplocate -x 5.4487699999999997 -y 2.4353099999999999 object_merge8
opspareds "" object_merge8
opparm object_merge8  numobj ( 1 )
opparm -V 20.5.370 object_merge8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Exit/ ) group1 ( "" ) expand1 ( off )
chlock object_merge8 -*
chautoscope object_merge8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge8
opexprlanguage -s hscript object_merge8
opuserdata -n '___Version___' -v '20.5.370' object_merge8

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x 2.1180400000000001 -y 0.096304399999999998 switchif1
opspareds '    parm {         name    "mergecondition"         baseparm         label   "Use Second Input If"         export  none     }     parm {         name    "testinput"         baseparm         label   "Test Input"         export  none     }     multiparm {         name    "tests"         label    "Number of Tests"         baseparm         default 1          parm {             name    "enable#"             baseparm             label   "enable#"             nolabel             joinnext             export  none         }         parm {             name    "type#"             baseparm             label   "Test Type"             export  none         }         parm {             name    "expr#"             baseparm             label   "Enable"             export  none         }         parm {             name    "attribtype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "attribowner#"             baseparm             label   "Class"             export  none         }         parm {             name    "attributes#"             baseparm             label   "Attributes"             export  none         }         parm {             name    "attribvaltype#"             baseparm             label   "Of Type"             export  none         }         parm {             name    "attribfloatcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribstringcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribval#"             baseparm             label   "Value"             export  none         }         parm {             name    "attribsval#"             baseparm             label   "Value"             export  none         }         parm {             name    "counttype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "countgroup#"             baseparm             label   "In Group"             export  none         }         parm {             name    "countcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "countval#"             baseparm             label   "Value"             export  none         }         parm {             name    "hasinputtype#"             baseparm             label   "Enable When"             export  none         }     }      parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(-1,"ivalue",0)!=0' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired ) spare_input0 ( ../foreach_count3/ )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node object_merge2 (Sop/object_merge)
opadd -e -n object_merge object_merge2
oplocate -x -10.382899999999999 -y 2.1970399999999999 object_merge2
opspareds "" object_merge2
opparm object_merge2  numobj ( 1 )
opparm -V 20.5.370 object_merge2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Entrance/ ) group1 ( "" ) expand1 ( off )
chlock object_merge2 -*
chautoscope object_merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge2
opexprlanguage -s hscript object_merge2
opuserdata -n '___Version___' -v '20.5.370' object_merge2

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x -10.380000000000001 -y -4.9522199999999996 foreach_end1
opspareds "" foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 iterations
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F '2*ch("../NumFloors")-4' foreach_end1/iterations
chadd -t 0 0 foreach_end1 startvalue
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '-ch("../GroundFloor")' foreach_end1/startvalue
chblockend
opparm -V 20.5.370 foreach_end1 itermethod ( count ) method ( feedback ) iterations ( iterations ) startvalue ( startvalue ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x -10.380000000000001 -y 0.72886700000000004 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( feedback ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x -6.6926699999999997 -y 0.72886700000000004 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.370 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '20.5.370' foreach_count1

# Node object_merge9 (Sop/object_merge)
opadd -e -n object_merge object_merge9
oplocate -x -8.0728600000000004 -y -0.25139400000000001 object_merge9
opspareds "" object_merge9
opparm object_merge9  numobj ( 1 )
opparm -V 20.5.370 object_merge9 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Intermediate/ ) group1 ( "" ) expand1 ( off )
chlock object_merge9 -*
chautoscope object_merge9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge9
opexprlanguage -s hscript object_merge9
opuserdata -n '___Version___' -v '20.5.370' object_merge9

# Node TransformToEndJoint1 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint1
oplocate -x -9.0423399999999994 -y -1.9045700000000001 TransformToEndJoint1
opspareds "" TransformToEndJoint1
opparm -V 20.5.370 TransformToEndJoint1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint1 -*
chautoscope TransformToEndJoint1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint1
opexprlanguage -s hscript TransformToEndJoint1
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint1
opcf TransformToEndJoint1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n//@P += pos_prev;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x -10.3828 -y -3.9258700000000002 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node delete_handle3 (Sop/delete)
opadd -e -n delete delete_handle3
oplocate -x -10.381600000000001 -y -1.0743799999999999 delete_handle3
opspareds "" delete_handle3
chblockbegin
chadd -t 0 0 delete_handle3 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle3/rangeend
chblockend
opparm -V 20.5.370 delete_handle3 group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle3 -*
chautoscope delete_handle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle3
opexprlanguage -s hscript delete_handle3
opuserdata -n '___Version___' -v '20.5.370' delete_handle3

# Node delete_handle4 (Sop/delete)
opadd -e -n delete delete_handle4
oplocate -x -9.0423399999999994 -y -2.8862199999999998 delete_handle4
opspareds "" delete_handle4
chblockbegin
chadd -t 0 0 delete_handle4 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle4/rangeend
chblockend
opparm -V 20.5.370 delete_handle4 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle4 -*
chautoscope delete_handle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle4
opexprlanguage -s hscript delete_handle4
opuserdata -n '___Version___' -v '20.5.370' delete_handle4

# Node object_merge10 (Sop/object_merge)
opadd -e -n object_merge object_merge10
oplocate -x -7.55443 -y -6.4543799999999996 object_merge10
opspareds "" object_merge10
opparm object_merge10  numobj ( 1 )
opparm -V 20.5.370 object_merge10 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../StairSkeleton_Exit/ ) group1 ( "" ) expand1 ( off )
chlock object_merge10 -*
chautoscope object_merge10 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off object_merge10
opexprlanguage -s hscript object_merge10
opuserdata -n '___Version___' -v '20.5.370' object_merge10

# Node TransformToEndJoint2 (Sop/subnet)
opadd -e -n subnet TransformToEndJoint2
oplocate -x -8.8439599999999992 -y -7.6817900000000003 TransformToEndJoint2
opspareds "" TransformToEndJoint2
opparm -V 20.5.370 TransformToEndJoint2 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock TransformToEndJoint2 -*
chautoscope TransformToEndJoint2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off TransformToEndJoint2
opexprlanguage -s hscript TransformToEndJoint2
opuserdata -n '___Version___' -v '20.5.370' TransformToEndJoint2
opcf TransformToEndJoint2

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.00300001 -y 3.9184100000000002 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prev=1, next=2;\n\nvector pos_next = point(next, "P", 0);\nvector dir_next = point(next, "P", 1) - pos_next;\n\nvector pos_prev = point(prev, "P", 0);\nvector dir_prev = point(prev, "P", 1) - pos_prev;\n\n//printf( "%f\\n", dir );\n@P -= pos_next;\n\nmatrix transform = dihedral( -dir_next, dir_prev );\ntranslate( transform,  pos_prev );\n\n@P *= transform;\n//@P += pos_prev;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 2.29576 -y 5.1664899999999996 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( 'handle_start joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.34664e-08 -y 2.2837800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 3 -y 6.31691 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 'handle_end joint_end' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3
oporder -e attribwrangle6 blast4 output0 blast3 
opcf ..

# Node delete_handle5 (Sop/delete)
opadd -e -n delete delete_handle5
oplocate -x -8.8439599999999992 -y -8.6634399999999996 delete_handle5
opspareds "" delete_handle5
chblockbegin
chadd -t 0 0 delete_handle5 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle5/rangeend
chblockend
opparm -V 20.5.370 delete_handle5 group ( 'handle_start joint_start' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle5 -*
chautoscope delete_handle5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle5
opexprlanguage -s hscript delete_handle5
opuserdata -n '___Version___' -v '20.5.370' delete_handle5

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -10.3828 -y -9.5233399999999993 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -10.381600000000001 -y -10.606 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( on ) folder2 ( 0 ) sourcegroup ( '@prim_type=floor' ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node delete_handle6 (Sop/delete)
opadd -e -n delete delete_handle6
oplocate -x -10.381600000000001 -y -7.1382199999999996 delete_handle6
opspareds "" delete_handle6
chblockbegin
chadd -t 0 0 delete_handle6 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_handle6/rangeend
chblockend
opparm -V 20.5.370 delete_handle6 group ( 'handle_end joint_end' ) label0 ( 'Warning: Group Is NOT Filtered by Geometry Type' ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) userandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 ) removegrp ( on ) keeppoints ( off )
chlock delete_handle6 -*
chautoscope delete_handle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off delete_handle6
opexprlanguage -s hscript delete_handle6
opuserdata -n '___Version___' -v '20.5.370' delete_handle6
oporder -e output0 transform3 foreach_end3 foreach_begin3 foreach_count3 copytopoints3 add3 merge2 StairSkeleton_Entrance StairSkeleton_Intermediate object_merge1 transform7 blast7 object_merge7 switchif5 StairSkeleton_Exit object_merge8 switchif1 object_merge2 foreach_end1 foreach_begin1 foreach_count1 object_merge9 TransformToEndJoint1 merge3 delete_handle3 delete_handle4 object_merge10 TransformToEndJoint2 delete_handle5 merge4 matchsize1 delete_handle6 
opcf ..

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x -19.447500000000002 -y -6.4717900000000004 grid1
opspareds "" grid1
chblockbegin
chadd -t 0 0 grid1 sizex
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../SlopeLength")' grid1/sizex
chadd -t 0 0 grid1 sizey
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation") * ch("../NumFloors")' grid1/sizey
chblockend
opparm -V 20.5.370 grid1 type ( poly ) surftype ( quads ) orient ( xy ) size ( sizex sizey ) t ( 0 0 0 ) r ( 0 0 0 ) rows ( 2 ) cols ( 2 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '20.5.370' grid1

# Node matchsize4 (Sop/matchsize)
opadd -e -n matchsize matchsize4
oplocate -x -19.447500000000002 -y -7.2992400000000002 matchsize4
opspareds "" matchsize4
chblockbegin
chadd -t 0 0 matchsize4 offset_x
chkey -t 0 -v -0.49199999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' matchsize4/offset_x
chblockend
opparm matchsize4 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize4 -*
chautoscope matchsize4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize4
opexprlanguage -s hscript matchsize4
opuserdata -n '___Version___' -v '' matchsize4

# Node extrudevolume3 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume3
oplocate -x -2.7304499999999998 -y -2.44015 extrudevolume3
opspareds "" extrudevolume3
chblockbegin
chadd -t 0 0 extrudevolume3 depth
chkey -t 0 -v 1.6000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandraiHeight")' extrudevolume3/depth
chblockend
opparm extrudevolume3 depth ( depth ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume3 -*
chautoscope extrudevolume3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume3
nbop __netbox1 add extrudevolume3
opexprlanguage -s hscript extrudevolume3
opuserdata -n '___Version___' -v '' extrudevolume3

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x -2.7304499999999998 -y -7.3412300000000004 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 0.17199999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
nbop __netbox1 add polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node blast8 (Sop/blast)
opadd -e -n blast blast8
oplocate -x 5.0813199999999998 -y 0.89648399999999995 blast8
opspareds "" blast8
opparm -V 20.5.370 blast8 group ( '@prim_type=floor' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast8 -*
chautoscope blast8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast8
nbop __netbox2 add blast8
opexprlanguage -s hscript blast8
opuserdata -n '___Version___' -v '20.5.370' blast8

# Node blast10 (Sop/blast)
opadd -e -n blast blast10
oplocate -x -3.6146699999999998 -y 1.7655000000000001 blast10
opspareds "" blast10
opparm -V 20.5.370 blast10 group ( leftside ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast10 -*
chautoscope blast10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast10
nbop __netbox3 add blast10
opexprlanguage -s hscript blast10
opuserdata -n '___Version___' -v '20.5.370' blast10

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x -3.39777 -y -4.4504299999999999 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox1 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node join2 (Sop/join)
opadd -e -n join join2
oplocate -x -2.6090900000000001 -y -0.03986 join2
opspareds "" join2
opparm -V 20.5.370 join2 group ( "" ) blend ( on ) tolerance ( 1 ) bias ( 0.5 ) knotmult ( off ) proximity ( on ) dir ( ujoin ) joinop ( all ) inc ( 2 ) loop ( off ) prim ( off ) onlyconnected ( off )
chlock join2 -*
chautoscope join2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off join2
nbop __netbox3 add join2
opexprlanguage -s hscript join2
opuserdata -n '___Version___' -v '20.5.370' join2

# Node fuse4 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse4
oplocate -x 5.0813199999999998 -y -0.039855799999999997 fuse4
opspareds "" fuse4
opparm fuse4  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse4 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse4 -*
chautoscope fuse4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse4
nbop __netbox2 add fuse4
opexprlanguage -s hscript fuse4
opuserdata -n '___Version___' -v '20.5.370' fuse4

# Node switchif3 (Sop/switchif)
opadd -e -n switchif switchif3
oplocate -x -2.6090900000000001 -y 0.61973100000000003 switchif3
opspareds "" switchif3
opparm switchif3  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif3 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../StairSkeleton/Rotation")==0' switchif3/expr1
chblockend
opparm -V 20.5.370 switchif3 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif3 -*
chautoscope switchif3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif3
nbop __netbox3 add switchif3
opexprlanguage -s hscript switchif3
opuserdata -n '___Version___' -v '20.5.370' switchif3

# Node blast11 (Sop/blast)
opadd -e -n blast blast11
oplocate -x -1.5924100000000001 -y 1.7655000000000001 blast11
opspareds "" blast11
opparm -V 20.5.370 blast11 group ( rightside ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast11 -*
chautoscope blast11 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast11
nbop __netbox3 add blast11
opexprlanguage -s hscript blast11
opuserdata -n '___Version___' -v '20.5.370' blast11

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -2.6090900000000001 -y 2.8677800000000002 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( '@prim_type=floor' ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast2
nbop __netbox3 add blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x 5.0813199999999998 -y -1.01166 extrudevolume1
opspareds "" extrudevolume1
opparm extrudevolume1 depth ( -0.1 ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume1
nbop __netbox2 add extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.44355899999999998 -y -24.682500000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x -16.021699999999999 -y -11.276 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node dissolve3 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve3
oplocate -x -16.021699999999999 -y -12.1625 dissolve3
opspareds "" dissolve3
opparm -V 20.5.370 dissolve3 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve3 -*
chautoscope dissolve3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve3
opexprlanguage -s hscript dissolve3
opuserdata -n '___Version___' -v '20.5.370' dissolve3

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x -2.7304499999999998 -y -3.3026599999999999 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( '@prim_type=rightside' ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
nbop __netbox1 add blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node uvunwrap1 (Sop/uvunwrap)
opadd -e -n uvunwrap uvunwrap1
oplocate -x -0.44355899999999998 -y -21.9239 uvunwrap1
opspareds "" uvunwrap1
opparm -V 20.5.370 uvunwrap1 uvattrib ( uv ) group ( "" ) planegroup ( "" ) nplanes ( planes6 ) layout ( square ) scale ( none ) spacing ( 0 ) rOrd ( xyz ) r ( 0 0 0 )
chlock uvunwrap1 -*
chautoscope uvunwrap1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off uvunwrap1
opexprlanguage -s hscript uvunwrap1
opuserdata -n '___Version___' -v '20.5.370' uvunwrap1

# Node uvtexture1 (Sop/texture)
opadd -e -n texture uvtexture1
oplocate -x 2.0733600000000001 -y -21.9239 uvtexture1
opspareds "" uvtexture1
opparm -V 20.5.370 uvtexture1 uvattrib ( uv ) group ( "" ) type ( face ) axis ( y ) campath ( "" ) coord ( vertex ) s ( 1 1 1 ) offset ( 0 0 0 ) angle ( 0 ) fixseams ( off )
chlock uvtexture1 -*
chautoscope uvtexture1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off uvtexture1
opexprlanguage -s hscript uvtexture1
opuserdata -n '___Version___' -v '20.5.370' uvtexture1

# Node switchif4 (Sop/switchif)
opadd -e -n switchif switchif4
oplocate -x -2.7304499999999998 -y -5.2816299999999998 switchif4
opspareds "" switchif4
opparm switchif4  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif4 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../StairSkeleton/Rotation")==0' switchif4/expr1
chblockend
opparm -V 20.5.370 switchif4 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif4 -*
chautoscope switchif4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif4
nbop __netbox1 add switchif4
opexprlanguage -s hscript switchif4
opuserdata -n '___Version___' -v '20.5.370' switchif4

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x -2.6090900000000001 -y -0.84250499999999995 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
nbop __netbox3 add facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node normal2 (Sop/normal)
opadd -e -n normal normal2
oplocate -x 5.0813199999999998 -y -2.1267399999999999 normal2
opspareds "" normal2
opparm -V 20.5.370 normal2 group ( "" ) grouptype ( guess ) overridenormal ( off ) normalattrib ( N ) construct ( 0 ) docompute ( on ) type ( typevertex ) cuspangle ( 15 ) method ( 1 ) origifzero ( on ) modify ( 0 ) normalize ( off ) reverse ( off )
chlock normal2 -*
chautoscope normal2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off normal2
nbop __netbox2 add normal2
opexprlanguage -s hscript normal2
opuserdata -n '___Version___' -v '20.5.370' normal2

# Node normal3 (Sop/normal)
opadd -e -n normal normal3
oplocate -x -16.021699999999999 -y -13.144 normal3
opspareds "" normal3
opparm -V 20.5.370 normal3 group ( "" ) grouptype ( guess ) overridenormal ( off ) normalattrib ( N ) construct ( 0 ) docompute ( on ) type ( typevertex ) cuspangle ( 60 ) method ( 1 ) origifzero ( on ) modify ( 0 ) normalize ( off ) reverse ( off )
chlock normal3 -*
chautoscope normal3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off normal3
opexprlanguage -s hscript normal3
opuserdata -n '___Version___' -v '20.5.370' normal3

# Node Fence (Sop/subnet)
opadd -e -n subnet Fence
oplocate -x 1.6634100000000001 -y -2.44015 Fence
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "PrimaryWidth"         label   "PrimaryWidth"         type    float         default { "0.05" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryWidth"         label   "SecondaryWidth"         type    float         default { "0.025" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BottomHeight"         label   "BottomHeight"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "PrimaryInterval"         label   "PrimaryInterval"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryInterval"         label   "SecondaryInterval"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Alignment"         label   "Alignment"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Center"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' Fence
chblockbegin
chadd -t 0 0 Fence Height
chkey -t 0 -v 1.3100000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandraiHeight")' Fence/Height
chadd -t 0 0 Fence Alignment
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Rotation")+1' Fence/Alignment
chblockend
opparm -V 20.5.370 Fence label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) PrimaryWidth ( 0.05 ) SecondaryWidth ( 0.025 ) BottomHeight ( 0.37 ) Height ( Height ) PrimaryInterval ( 1.83 ) SecondaryInterval ( 0.15 ) Alignment ( Alignment )
chlock Fence -*
chautoscope Fence -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Fence
nbop __netbox4 add Fence
opexprlanguage -s hscript Fence
opuserdata -n '___Version___' -v '20.5.370' Fence
opcf Fence

# Network Box __netbox1
nbadd __netbox1
nblocate -x -5.2759 -y -2.0244 __netbox1
nbsize -w 2.8 -h 2.73656 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x -0.240562 -y -2.0219 __netbox2
nbsize -w 2.8 -h 2.73406 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 3.20979 -y -1.76177 __netbox3
nbsize -w 4.52035 -h 2.47393 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x 7.99326 -y 0.01216 __netbox4
nbsize -w 2.55 -h 0.7 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x 10.8472 -y -0.98784 __netbox5
nbsize -w 2.55 -h 1.7 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x -4.8758999999999997 -y -1.8244 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints2
nbop __netbox1 add copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node resample_secondary_support (Sop/subnet)
opadd -e -n subnet resample_secondary_support
oplocate -x -2.0027599999999999 -y 3.3191099999999998 resample_secondary_support
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "dist"         label   "dist"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' resample_secondary_support
opparm -V 20.5.370 resample_secondary_support label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) dist ( 0.15 )
chlock resample_secondary_support -*
chautoscope resample_secondary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_secondary_support
opexprlanguage -s hscript resample_secondary_support
opuserdata -n '___Version___' -v '20.5.370' resample_secondary_support
opcf resample_secondary_support

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 2.3500999999999999 -y 4.2448199999999998 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( old_points ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node grouptransfer2 (Sop/grouptransfer)
opadd -e -n grouptransfer grouptransfer2
oplocate -x -1.11759e-08 -y 2.7953100000000002 grouptransfer2
opspareds "" grouptransfer2
opparm -V 20.5.370 grouptransfer2 primitives ( on ) primgroups ( "" ) primnameprefix ( "" ) points ( on ) pointgroups ( "" ) pointnameprefix ( "" ) edges ( on ) edgegroups ( "" ) edgenameprefix ( "" ) groupnameconflict ( skipgroup ) threshold ( on ) thresholddist ( 0.001 ) keepifempty ( on )
chlock grouptransfer2 -*
chautoscope grouptransfer2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouptransfer2
opexprlanguage -s hscript grouptransfer2
opuserdata -n '___Version___' -v '20.5.370' grouptransfer2

# Node resample7 (Sop/resample)
opadd -e -n resample resample7
oplocate -x -1.11759e-08 -y 4.2448199999999998 resample7
opspareds "" resample7
chblockbegin
chadd -t 0 0 resample7 length
chkey -t 0 -v 0.56000000000000005 -m 0 -a 0 -A 0 -T a  -F 'ch("../../SecondaryInterval")' resample7/length
chblockend
opparm -V 20.5.370 resample7 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample7 -*
chautoscope resample7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample7
opexprlanguage -s hscript resample7
opuserdata -n '___Version___' -v '20.5.370' resample7

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y 1.08311 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e group2 grouptransfer2 resample7 output0 
opcf ..

# Node tube2 (Sop/tube)
opadd -e -n tube tube2
oplocate -x -4.8758999999999997 -y 0.21215999999999999 tube2
opspareds "" tube2
chblockbegin
chadd -t 0 0 tube2 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad1
chadd -t 0 0 tube2 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad2
chadd -t 0 0 tube2 height
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' tube2/height
chblockend
opparm -V 20.5.370 tube2 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube2 -*
chautoscope tube2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube2
nbop __netbox1 add tube2
opexprlanguage -s hscript tube2
opuserdata -n '___Version___' -v '20.5.370' tube2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.58267800000000003 -y -11.317 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -4.8758999999999997 -y -0.69579999999999997 matchsize1
opspareds "" matchsize1
chblockbegin
chadd -t 0 0 matchsize1 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0)# center\n    #{\n    #    offset = w;\n    #}\n    if( ch("../Alignment")==1 )# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize1/offset_x
chblockend
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node copytopoints3 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints3
oplocate -x 0.159438 -y -1.8219099999999999 copytopoints3
opspareds "" copytopoints3
opparm copytopoints3  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints3 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( !old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints3 -*
chautoscope copytopoints3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints3
nbop __netbox2 add copytopoints3
opexprlanguage -s hscript copytopoints3
opuserdata -n '___Version___' -v '20.5.370' copytopoints3

# Node tube3 (Sop/tube)
opadd -e -n tube tube3
oplocate -x 0.159438 -y 0.21215999999999999 tube3
opspareds "" tube3
chblockbegin
chadd -t 0 0 tube3 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad1
chadd -t 0 0 tube3 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad2
chadd -t 0 0 tube3 height
chkey -t 0 -v 1.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height") - ch("../BottomHeight")' tube3/height
chblockend
opparm -V 20.5.370 tube3 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube3 -*
chautoscope tube3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube3
nbop __netbox2 add tube3
opexprlanguage -s hscript tube3
opuserdata -n '___Version___' -v '20.5.370' tube3

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 0.159438 -y -0.75371999999999995 matchsize2
opspareds "" matchsize2
chblockbegin
chadd -t 0 0 matchsize2 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0 )# center\n    #{\n    #    offset = 0.0;\n    #}    \n    if( ch("../Alignment")==1)# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize2/offset_x
chadd -t 0 0 matchsize2 offset_y
chkey -t 0 -v 0.26800000000000002 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' matchsize2/offset_y
chblockend
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( offset_y ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 0.440695 -y -9.4688599999999994 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node resample_primary_support (Sop/resample)
opadd -e -n resample resample_primary_support
oplocate -x -2.0027599999999999 -y 4.5164 resample_primary_support
opspareds "" resample_primary_support
chblockbegin
chadd -t 0 0 resample_primary_support length
chkey -t 0 -v 1.0600000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryInterval")' resample_primary_support/length
chblockend
opparm -V 20.5.370 resample_primary_support group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample_primary_support -*
chautoscope resample_primary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_primary_support
opexprlanguage -s hscript resample_primary_support
opuserdata -n '___Version___' -v '20.5.370' resample_primary_support

# Node orientalongcurve1 (Sop/orientalongcurve)
opadd -e -n orientalongcurve orientalongcurve1
oplocate -x -2.0027599999999999 -y 2.08996 orientalongcurve1
opspareds "" orientalongcurve1
opparm -V 20.5.370 orientalongcurve1 group ( "" ) frame_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( off ) sepparm ( ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( target_up ) endupvectorattrib ( target_up_end ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) adjustupcurvature ( off ) curvaturescale ( 1 ) enablecurvaturescaleattrib ( noscaling ) curvaturescaleattrib ( speed ) enablecurvatureattrib ( off ) curvatureattrib ( curvature ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( off ) roll ( 0 ) rollper ( fulldistance ) fulltwists ( 0 ) incroll ( 0 ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) yawper ( fulldistance ) incyaw ( 0 ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) pitchper ( fulldistance ) incpitch ( 0 ) pitchattrib ( pitch ) scales_folder ( 0 ) normalize ( on ) scale ( 1 ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) output_folder ( 1 ) class ( point ) outputxaxis ( off ) xaxisname ( out ) outputyaxis ( off ) yaxisname ( up ) outputzaxis ( on ) zaxisname ( N ) sepparmattrib ( ) outputtranslation ( off ) translationname ( P ) outputquaternion ( off ) quaternionname ( orient ) outputtransform3 ( off ) transform3name ( transform ) outputtransform4 ( off ) transform4name ( transform )
chlock orientalongcurve1 -*
chautoscope orientalongcurve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off orientalongcurve1
opexprlanguage -s hscript orientalongcurve1
opuserdata -n '___Version___' -v '20.5.370' orientalongcurve1

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 8.0357599999999998 -y -7.3196399999999997 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' transform3/ty
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.1888100000000001 -y -7.3196399999999997 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 8.0357599999999998 -y -8.2929600000000008 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( guess ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 0.012 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 2 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 7.9932600000000003 -y 4.5164 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 3.35981 -y 0.21215999999999999 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
nbop __netbox3 add polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 5.3122100000000003 -y 0.21215999999999999 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../PrimaryWidth")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
nbop __netbox3 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x 7.9932600000000003 -y 3.3191099999999998 extrudevolume2
opspareds "" extrudevolume2
opparm extrudevolume2 depth ( 0.02 ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 4.3643099999999997 -y -1.53417 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox3 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x 5.3122100000000003 -y -0.57210899999999998 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox3 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 8.0357599999999998 -y -3.5131700000000001 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 8.0357599999999998 -y -4.3767399999999999 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node dissolve2 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve2
oplocate -x 8.0357599999999998 -y -5.3166399999999996 dissolve2
opspareds "" dissolve2
opparm -V 20.5.370 dissolve2 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( off ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve2 -*
chautoscope dissolve2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve2
opexprlanguage -s hscript dissolve2
opuserdata -n '___Version___' -v '20.5.370' dissolve2

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x 8.0357599999999998 -y -6.2164900000000003 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node avoid_support_tilting (Sop/attribwrangle)
opadd -e -n attribwrangle avoid_support_tilting
oplocate -x -2.00576 -y 1.05006 avoid_support_tilting
opspareds "" avoid_support_tilting
opparm avoid_support_tilting  bindings ( 0 ) groupbindings ( 0 )
opparm avoid_support_tilting folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock avoid_support_tilting -*
chautoscope avoid_support_tilting -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off avoid_support_tilting
opexprlanguage -s hscript avoid_support_tilting
opuserdata -n '___Version___' -v '' avoid_support_tilting

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 8.1432599999999997 -y 0.21215999999999999 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
nbop __netbox4 add polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x 10.997199999999999 -y 0.21215999999999999 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-ch("../PrimaryWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
nbop __netbox5 add polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node reverse3 (Sop/reverse)
opadd -e -n reverse reverse3
oplocate -x 10.997199999999999 -y -0.78783999999999998 reverse3
opspareds "" reverse3
opparm -V 20.5.370 reverse3 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse3 -*
chautoscope reverse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse3
nbop __netbox5 add reverse3
opexprlanguage -s hscript reverse3
opuserdata -n '___Version___' -v '20.5.370' reverse3

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 8.0357599999999998 -y -2.5245899999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 7.9932600000000003 -y 2.08996 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1
oporder -e copytopoints2 resample_secondary_support tube2 output0 matchsize1 copytopoints3 tube3 matchsize2 merge1 resample_primary_support orientalongcurve1 transform3 transform4 polybevel1 facet1 polyextrude3 polyextrude4 extrudevolume2 merge3 reverse2 fuse2 group2 dissolve2 facet2 avoid_support_tilting polyextrude5 polyextrude6 reverse3 switch1 blast1 
opcf ..

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -0.48490899999999998 -y -8.7337900000000008 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../OutsideWall")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -14.6534 -y -7.5333100000000002 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../CentralWall")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node reverse1 (Sop/reverse)
opadd -e -n reverse reverse1
oplocate -x -2.7304499999999998 -y -6.3412300000000004 reverse1
opspareds "" reverse1
opparm -V 20.5.370 reverse1 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse1 -*
chautoscope reverse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse1
nbop __netbox1 add reverse1
opexprlanguage -s hscript reverse1
opuserdata -n '___Version___' -v '20.5.370' reverse1

# Node join3 (Sop/join)
opadd -e -n join join3
oplocate -x -10.0848 -y 1.6375999999999999 join3
opspareds "" join3
opparm -V 20.5.370 join3 group ( "" ) blend ( on ) tolerance ( 1 ) bias ( 0.5 ) knotmult ( off ) proximity ( on ) dir ( ujoin ) joinop ( all ) inc ( 2 ) loop ( off ) prim ( off ) onlyconnected ( off )
chlock join3 -*
chautoscope join3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off join3
opexprlanguage -s hscript join3
opuserdata -n '___Version___' -v '20.5.370' join3

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x -10.0848 -y 0.834955 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node switchif6 (Sop/switchif)
opadd -e -n switchif switchif6
oplocate -x -9.8740900000000007 -y 3.6773799999999999 switchif6
opspareds "" switchif6
opparm switchif6  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif6 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../StairSkeleton/Rotation")==1' switchif6/expr1
chblockend
opparm -V 20.5.370 switchif6 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif6 -*
chautoscope switchif6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif6
opexprlanguage -s hscript switchif6
opuserdata -n '___Version___' -v '20.5.370' switchif6

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x -10.5823 -y 5.1347199999999997 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( leftside_exit ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x -8.1108700000000002 -y 5.2351799999999997 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( rightside_exit ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node extrudevolume8 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume8
oplocate -x -9.4661600000000004 -y -0.63269699999999995 extrudevolume8
opspareds "" extrudevolume8
chblockbegin
chadd -t 0 0 extrudevolume8 depth
chkey -t 0 -v 1.6000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandraiHeight")' extrudevolume8/depth
chblockend
opparm extrudevolume8 depth ( depth ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume8 -*
chautoscope extrudevolume8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume8
opexprlanguage -s hscript extrudevolume8
opuserdata -n '___Version___' -v '' extrudevolume8

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x -9.4661600000000004 -y -6.3412300000000004 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.17199999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node reverse3 (Sop/reverse)
opadd -e -n reverse reverse3
oplocate -x -10.1335 -y -2.6429800000000001 reverse3
opspareds "" reverse3
opparm -V 20.5.370 reverse3 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse3 -*
chautoscope reverse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse3
opexprlanguage -s hscript reverse3
opuserdata -n '___Version___' -v '20.5.370' reverse3

# Node blast12 (Sop/blast)
opadd -e -n blast blast12
oplocate -x -9.4661600000000004 -y -1.4952099999999999 blast12
opspareds "" blast12
opparm -V 20.5.370 blast12 group ( '@prim_type=rightside' ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast12 -*
chautoscope blast12 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast12
opexprlanguage -s hscript blast12
opuserdata -n '___Version___' -v '20.5.370' blast12

# Node switchif7 (Sop/switchif)
opadd -e -n switchif switchif7
oplocate -x -9.4661600000000004 -y -3.47418 switchif7
opspareds "" switchif7
opparm switchif7  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif7 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../StairSkeleton/Rotation")==0' switchif7/expr1
chblockend
opparm -V 20.5.370 switchif7 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif7 -*
chautoscope switchif7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif7
opexprlanguage -s hscript switchif7
opuserdata -n '___Version___' -v '20.5.370' switchif7

# Node reverse4 (Sop/reverse)
opadd -e -n reverse reverse4
oplocate -x -9.4661600000000004 -y -4.5337800000000001 reverse4
opspareds "" reverse4
opparm -V 20.5.370 reverse4 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse4 -*
chautoscope reverse4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on reverse4
opexprlanguage -s hscript reverse4
opuserdata -n '___Version___' -v '20.5.370' reverse4

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x -8.7123899999999992 -y -9.3394399999999997 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../OutsideWall")' switch2/input
chblockend
opparm -V 20.5.370 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node Fence1 (Sop/subnet)
opadd -e -n subnet Fence1
oplocate -x -7.2111400000000003 -y -5.3420899999999998 Fence1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "PrimaryWidth"         label   "PrimaryWidth"         type    float         default { "0.05" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryWidth"         label   "SecondaryWidth"         type    float         default { "0.025" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BottomHeight"         label   "BottomHeight"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "PrimaryInterval"         label   "PrimaryInterval"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryInterval"         label   "SecondaryInterval"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Alignment"         label   "Alignment"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Center"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' Fence1
chblockbegin
chadd -t 0 0 Fence1 Height
chkey -t 0 -v 1.3100000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandraiHeight")' Fence1/Height
chadd -t 0 0 Fence1 Alignment
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '2-ch("../Rotation")' Fence1/Alignment
chblockend
opparm -V 20.5.370 Fence1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) PrimaryWidth ( 0.05 ) SecondaryWidth ( 0.025 ) BottomHeight ( 0.37 ) Height ( Height ) PrimaryInterval ( 1.83 ) SecondaryInterval ( 0.15 ) Alignment ( Alignment )
chlock Fence1 -*
chautoscope Fence1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Fence1
nbop __netbox5 add Fence1
opexprlanguage -s hscript Fence1
opuserdata -n '___Version___' -v '20.5.370' Fence1
opcf Fence1

# Network Box __netbox1
nbadd __netbox1
nblocate -x -5.2759 -y -2.0244 __netbox1
nbsize -w 2.8 -h 2.73656 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x -0.240562 -y -2.0219 __netbox2
nbsize -w 2.8 -h 2.73406 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 3.20979 -y -1.76177 __netbox3
nbsize -w 4.52035 -h 2.47393 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x 7.99326 -y 0.01216 __netbox4
nbsize -w 2.55 -h 0.7 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x 10.8472 -y -0.98784 __netbox5
nbsize -w 2.55 -h 1.7 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x -4.8758999999999997 -y -1.8244 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints2
nbop __netbox1 add copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node resample_secondary_support (Sop/subnet)
opadd -e -n subnet resample_secondary_support
oplocate -x -2.0027599999999999 -y 3.3191099999999998 resample_secondary_support
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "dist"         label   "dist"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' resample_secondary_support
opparm -V 20.5.370 resample_secondary_support label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) dist ( 0.15 )
chlock resample_secondary_support -*
chautoscope resample_secondary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_secondary_support
opexprlanguage -s hscript resample_secondary_support
opuserdata -n '___Version___' -v '20.5.370' resample_secondary_support
opcf resample_secondary_support

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 2.3500999999999999 -y 4.2448199999999998 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( old_points ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node grouptransfer2 (Sop/grouptransfer)
opadd -e -n grouptransfer grouptransfer2
oplocate -x -1.11759e-08 -y 2.7953100000000002 grouptransfer2
opspareds "" grouptransfer2
opparm -V 20.5.370 grouptransfer2 primitives ( on ) primgroups ( "" ) primnameprefix ( "" ) points ( on ) pointgroups ( "" ) pointnameprefix ( "" ) edges ( on ) edgegroups ( "" ) edgenameprefix ( "" ) groupnameconflict ( skipgroup ) threshold ( on ) thresholddist ( 0.001 ) keepifempty ( on )
chlock grouptransfer2 -*
chautoscope grouptransfer2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouptransfer2
opexprlanguage -s hscript grouptransfer2
opuserdata -n '___Version___' -v '20.5.370' grouptransfer2

# Node resample7 (Sop/resample)
opadd -e -n resample resample7
oplocate -x -1.11759e-08 -y 4.2448199999999998 resample7
opspareds "" resample7
chblockbegin
chadd -t 0 0 resample7 length
chkey -t 0 -v 0.56000000000000005 -m 0 -a 0 -A 0 -T a  -F 'ch("../../SecondaryInterval")' resample7/length
chblockend
opparm -V 20.5.370 resample7 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample7 -*
chautoscope resample7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample7
opexprlanguage -s hscript resample7
opuserdata -n '___Version___' -v '20.5.370' resample7

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y 1.08311 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e group2 grouptransfer2 resample7 output0 
opcf ..

# Node tube2 (Sop/tube)
opadd -e -n tube tube2
oplocate -x -4.8758999999999997 -y 0.21215999999999999 tube2
opspareds "" tube2
chblockbegin
chadd -t 0 0 tube2 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad1
chadd -t 0 0 tube2 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad2
chadd -t 0 0 tube2 height
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' tube2/height
chblockend
opparm -V 20.5.370 tube2 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube2 -*
chautoscope tube2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube2
nbop __netbox1 add tube2
opexprlanguage -s hscript tube2
opuserdata -n '___Version___' -v '20.5.370' tube2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.58267800000000003 -y -11.317 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -4.8758999999999997 -y -0.69579999999999997 matchsize1
opspareds "" matchsize1
chblockbegin
chadd -t 0 0 matchsize1 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0)# center\n    #{\n    #    offset = w;\n    #}\n    if( ch("../Alignment")==1 )# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize1/offset_x
chblockend
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node copytopoints3 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints3
oplocate -x 0.159438 -y -1.8219099999999999 copytopoints3
opspareds "" copytopoints3
opparm copytopoints3  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints3 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( !old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints3 -*
chautoscope copytopoints3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints3
nbop __netbox2 add copytopoints3
opexprlanguage -s hscript copytopoints3
opuserdata -n '___Version___' -v '20.5.370' copytopoints3

# Node tube3 (Sop/tube)
opadd -e -n tube tube3
oplocate -x 0.159438 -y 0.21215999999999999 tube3
opspareds "" tube3
chblockbegin
chadd -t 0 0 tube3 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad1
chadd -t 0 0 tube3 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad2
chadd -t 0 0 tube3 height
chkey -t 0 -v 1.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height") - ch("../BottomHeight")' tube3/height
chblockend
opparm -V 20.5.370 tube3 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube3 -*
chautoscope tube3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube3
nbop __netbox2 add tube3
opexprlanguage -s hscript tube3
opuserdata -n '___Version___' -v '20.5.370' tube3

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 0.159438 -y -0.75371999999999995 matchsize2
opspareds "" matchsize2
chblockbegin
chadd -t 0 0 matchsize2 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0 )# center\n    #{\n    #    offset = 0.0;\n    #}    \n    if( ch("../Alignment")==1)# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize2/offset_x
chadd -t 0 0 matchsize2 offset_y
chkey -t 0 -v 0.26800000000000002 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' matchsize2/offset_y
chblockend
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( offset_y ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 0.440695 -y -9.4688599999999994 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node resample_primary_support (Sop/resample)
opadd -e -n resample resample_primary_support
oplocate -x -2.0027599999999999 -y 4.5164 resample_primary_support
opspareds "" resample_primary_support
chblockbegin
chadd -t 0 0 resample_primary_support length
chkey -t 0 -v 1.0600000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryInterval")' resample_primary_support/length
chblockend
opparm -V 20.5.370 resample_primary_support group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample_primary_support -*
chautoscope resample_primary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_primary_support
opexprlanguage -s hscript resample_primary_support
opuserdata -n '___Version___' -v '20.5.370' resample_primary_support

# Node orientalongcurve1 (Sop/orientalongcurve)
opadd -e -n orientalongcurve orientalongcurve1
oplocate -x -2.0027599999999999 -y 2.08996 orientalongcurve1
opspareds "" orientalongcurve1
opparm -V 20.5.370 orientalongcurve1 group ( "" ) frame_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( off ) sepparm ( ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( target_up ) endupvectorattrib ( target_up_end ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) adjustupcurvature ( off ) curvaturescale ( 1 ) enablecurvaturescaleattrib ( noscaling ) curvaturescaleattrib ( speed ) enablecurvatureattrib ( off ) curvatureattrib ( curvature ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( off ) roll ( 0 ) rollper ( fulldistance ) fulltwists ( 0 ) incroll ( 0 ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) yawper ( fulldistance ) incyaw ( 0 ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) pitchper ( fulldistance ) incpitch ( 0 ) pitchattrib ( pitch ) scales_folder ( 0 ) normalize ( on ) scale ( 1 ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) output_folder ( 1 ) class ( point ) outputxaxis ( off ) xaxisname ( out ) outputyaxis ( off ) yaxisname ( up ) outputzaxis ( on ) zaxisname ( N ) sepparmattrib ( ) outputtranslation ( off ) translationname ( P ) outputquaternion ( off ) quaternionname ( orient ) outputtransform3 ( off ) transform3name ( transform ) outputtransform4 ( off ) transform4name ( transform )
chlock orientalongcurve1 -*
chautoscope orientalongcurve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off orientalongcurve1
opexprlanguage -s hscript orientalongcurve1
opuserdata -n '___Version___' -v '20.5.370' orientalongcurve1

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 8.0357599999999998 -y -7.3196399999999997 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' transform3/ty
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.1888100000000001 -y -7.3196399999999997 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 8.0357599999999998 -y -8.2929600000000008 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( guess ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 0.012 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 2 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 7.9932600000000003 -y 4.5164 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 3.35981 -y 0.21215999999999999 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
nbop __netbox3 add polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 5.3122100000000003 -y 0.21215999999999999 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../PrimaryWidth")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
nbop __netbox3 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x 7.9932600000000003 -y 3.3191099999999998 extrudevolume2
opspareds "" extrudevolume2
opparm extrudevolume2 depth ( 0.02 ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 4.3643099999999997 -y -1.53417 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox3 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x 5.3122100000000003 -y -0.57210899999999998 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox3 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 8.0357599999999998 -y -3.5131700000000001 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 8.0357599999999998 -y -4.3767399999999999 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node dissolve2 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve2
oplocate -x 8.0357599999999998 -y -5.3166399999999996 dissolve2
opspareds "" dissolve2
opparm -V 20.5.370 dissolve2 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( off ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve2 -*
chautoscope dissolve2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve2
opexprlanguage -s hscript dissolve2
opuserdata -n '___Version___' -v '20.5.370' dissolve2

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x 8.0357599999999998 -y -6.2164900000000003 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node avoid_support_tilting (Sop/attribwrangle)
opadd -e -n attribwrangle avoid_support_tilting
oplocate -x -2.00576 -y 1.05006 avoid_support_tilting
opspareds "" avoid_support_tilting
opparm avoid_support_tilting  bindings ( 0 ) groupbindings ( 0 )
opparm avoid_support_tilting folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock avoid_support_tilting -*
chautoscope avoid_support_tilting -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off avoid_support_tilting
opexprlanguage -s hscript avoid_support_tilting
opuserdata -n '___Version___' -v '' avoid_support_tilting

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 8.1432599999999997 -y 0.21215999999999999 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
nbop __netbox4 add polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x 10.997199999999999 -y 0.21215999999999999 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-ch("../PrimaryWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
nbop __netbox5 add polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node reverse3 (Sop/reverse)
opadd -e -n reverse reverse3
oplocate -x 10.997199999999999 -y -0.78783999999999998 reverse3
opspareds "" reverse3
opparm -V 20.5.370 reverse3 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse3 -*
chautoscope reverse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse3
nbop __netbox5 add reverse3
opexprlanguage -s hscript reverse3
opuserdata -n '___Version___' -v '20.5.370' reverse3

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 8.0357599999999998 -y -2.5245899999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 7.9932600000000003 -y 2.08996 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1
oporder -e copytopoints2 resample_secondary_support tube2 output0 matchsize1 copytopoints3 tube3 matchsize2 merge1 resample_primary_support orientalongcurve1 transform3 transform4 polybevel1 facet1 polyextrude3 polyextrude4 extrudevolume2 merge3 reverse2 fuse2 group2 dissolve2 facet2 avoid_support_tilting polyextrude5 polyextrude6 reverse3 switch1 blast1 
opcf ..

# Node blast13 (Sop/blast)
opadd -e -n blast blast13
oplocate -x 9.4184400000000004 -y 2.0931899999999999 blast13
opspareds "" blast13
opparm -V 20.5.370 blast13 group ( 'handle_start handle_end joint_end joint_start' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast13 -*
chautoscope blast13 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast13
opexprlanguage -s hscript blast13
opuserdata -n '___Version___' -v '20.5.370' blast13

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 3.9361199999999998 -y -23.280799999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1
oporder -e null1 merge8 fuse3 group1 dissolve1 extract_silhouette2 extrudevolume6 boolean2 matchsize5 extrudevolume7 box2 boolean3 matchsize6 matchsize7 StairSkeleton grid1 matchsize4 extrudevolume3 polyextrude5 blast8 blast10 reverse2 join2 fuse4 switchif3 blast11 blast2 extrudevolume1 output0 group3 dissolve3 blast1 uvunwrap1 uvtexture1 switchif4 facet1 normal2 normal3 Fence switch1 switchif1 reverse1 join3 facet2 switchif6 blast3 blast4 extrudevolume8 polyextrude6 reverse3 blast12 switchif7 reverse4 switch2 Fence1 blast13 merge1 
opcf ..

# Node clip1 (Sop/clip::2.0)
opadd -e -n clip::2.0 clip1
oplocate -x -26.3048 -y -2.7307100000000002 clip1
opspareds "" clip1
opparm -V 20.5.370 clip1 group ( "" ) attrib ( P ) clipop ( above ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 1 0 0 ) dist ( 0.01 ) snaptol ( 1e-5 ) dofill ( off ) dosplit ( off ) outgroups ( 0 ) replace ( on ) useclipedges ( off ) clipedges ( clippededges ) useclipprims ( off ) clipprims ( clipped ) useaboveprims ( off ) aboveprims ( above ) usebelowprims ( off ) belowprims ( below ) usefillpolygons ( off ) fillpolygons ( filled )
chlock clip1 -*
chautoscope clip1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip1
opexprlanguage -s hscript clip1
opuserdata -n '___Version___' -v '20.5.370' clip1
oporder -e Stairs clip1 
opcf ..

# Node test_fence (Object/geo)
opadd -e -n geo test_fence
oplocate -x -5.0291600000000001 -y 2.4663300000000001 test_fence
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' test_fence
opset -S off test_fence
opparm -V 20.5.370 test_fence stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( off ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock test_fence -*
chautoscope test_fence -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off test_fence
opexprlanguage -s hscript test_fence
opuserdata -n '___Version___' -v '20.5.370' test_fence
opcf test_fence

# Node resample6 (Sop/resample)
opadd -e -n resample resample6
oplocate -x 5.5348300000000004 -y 2.4795099999999999 resample6
opspareds "" resample6
opparm -V 20.5.370 resample6 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.6 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample6 -*
chautoscope resample6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample6
opexprlanguage -s hscript resample6
opuserdata -n '___Version___' -v '20.5.370' resample6

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 5.5348300000000004 -y 3.66351 add1
opspareds "" add1
opparm add1  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -0.4305844306945801 0 1.134185552597046 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 5 0 5 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 3.2544360160827637 0 2.0929585695266724 ) weight2 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node Fence (Sop/subnet)
opadd -e -n subnet Fence
oplocate -x 5.5348300000000004 -y 1.27498 Fence
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "PrimaryWidth"         label   "PrimaryWidth"         type    float         default { "0.05" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryWidth"         label   "SecondaryWidth"         type    float         default { "0.025" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BottomHeight"         label   "BottomHeight"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "PrimaryInterval"         label   "PrimaryInterval"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SecondaryInterval"         label   "SecondaryInterval"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Alignment"         label   "Alignment"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Center"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' Fence
opparm -V 20.5.370 Fence label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) PrimaryWidth ( 0.05 ) SecondaryWidth ( 0.025 ) BottomHeight ( 0.37 ) Height ( 1.31 ) PrimaryInterval ( 1.83 ) SecondaryInterval ( 0.15 ) Alignment ( 0 )
chlock Fence -*
chautoscope Fence -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Fence
opexprlanguage -s hscript Fence
opuserdata -n '___Version___' -v '20.5.370' Fence
opcf Fence

# Network Box __netbox1
nbadd __netbox1
nblocate -x -5.2759 -y -2.0244 __netbox1
nbsize -w 2.8 -h 2.73656 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x -0.240562 -y -2.0219 __netbox2
nbsize -w 2.8 -h 2.73406 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 3.20979 -y -1.76177 __netbox3
nbsize -w 4.52035 -h 2.47393 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x 7.99326 -y 0.01216 __netbox4
nbsize -w 2.55 -h 0.7 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x 10.8472 -y -0.98784 __netbox5
nbsize -w 2.55 -h 1.7 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x -4.8758999999999997 -y -1.8244 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints2
nbop __netbox1 add copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node resample_secondary_support (Sop/subnet)
opadd -e -n subnet resample_secondary_support
oplocate -x -2.0027599999999999 -y 3.3191099999999998 resample_secondary_support
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "dist"         label   "dist"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' resample_secondary_support
chblockbegin
chadd -t 0 0 resample_secondary_support dist
chkey -t 0 -v 0.14999999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../SecondaryInterval")' resample_secondary_support/dist
chblockend
opparm -V 20.5.370 resample_secondary_support label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) dist ( dist )
chlock resample_secondary_support -*
chautoscope resample_secondary_support -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_secondary_support
opexprlanguage -s hscript resample_secondary_support
opuserdata -n '___Version___' -v '20.5.370' resample_secondary_support
opcf resample_secondary_support

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 2.3500999999999999 -y 4.2448199999999998 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( old_points ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node grouptransfer2 (Sop/grouptransfer)
opadd -e -n grouptransfer grouptransfer2
oplocate -x -1.11759e-08 -y 2.7953100000000002 grouptransfer2
opspareds "" grouptransfer2
opparm -V 20.5.370 grouptransfer2 primitives ( on ) primgroups ( "" ) primnameprefix ( "" ) points ( on ) pointgroups ( "" ) pointnameprefix ( "" ) edges ( on ) edgegroups ( "" ) edgenameprefix ( "" ) groupnameconflict ( skipgroup ) threshold ( on ) thresholddist ( 0.001 ) keepifempty ( on )
chlock grouptransfer2 -*
chautoscope grouptransfer2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouptransfer2
opexprlanguage -s hscript grouptransfer2
opuserdata -n '___Version___' -v '20.5.370' grouptransfer2

# Node resample7 (Sop/resample)
opadd -e -n resample resample7
oplocate -x -1.11759e-08 -y 4.2448199999999998 resample7
opspareds "" resample7
chblockbegin
chadd -t 0 0 resample7 length
chkey -t 0 -v 0.56000000000000005 -m 0 -a 0 -A 0 -T a  -F 'ch("../dist")' resample7/length
chblockend
opparm -V 20.5.370 resample7 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample7 -*
chautoscope resample7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample7
opexprlanguage -s hscript resample7
opuserdata -n '___Version___' -v '20.5.370' resample7

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y 1.08311 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e group2 grouptransfer2 resample7 output0 
opcf ..

# Node tube2 (Sop/tube)
opadd -e -n tube tube2
oplocate -x -4.8758999999999997 -y 0.21215999999999999 tube2
opspareds "" tube2
chblockbegin
chadd -t 0 0 tube2 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad1
chadd -t 0 0 tube2 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad2
chadd -t 0 0 tube2 height
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' tube2/height
chblockend
opparm -V 20.5.370 tube2 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube2 -*
chautoscope tube2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube2
nbop __netbox1 add tube2
opexprlanguage -s hscript tube2
opuserdata -n '___Version___' -v '20.5.370' tube2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.58267800000000003 -y -11.317 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -4.8758999999999997 -y -0.69579999999999997 matchsize1
opspareds "" matchsize1
chblockbegin
chadd -t 0 0 matchsize1 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0)# center\n    #{\n    #    offset = w;\n    #}\n    if( ch("../Alignment")==1 )# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize1/offset_x
chblockend
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node copytopoints3 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints3
oplocate -x 0.159438 -y -1.8219099999999999 copytopoints3
opspareds "" copytopoints3
opparm copytopoints3  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints3 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( !old_points ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints3 -*
chautoscope copytopoints3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints3
nbop __netbox2 add copytopoints3
opexprlanguage -s hscript copytopoints3
opuserdata -n '___Version___' -v '20.5.370' copytopoints3

# Node tube3 (Sop/tube)
opadd -e -n tube tube3
oplocate -x 0.159438 -y 0.21215999999999999 tube3
opspareds "" tube3
chblockbegin
chadd -t 0 0 tube3 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad1
chadd -t 0 0 tube3 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../SecondaryWidth")' tube3/rad2
chadd -t 0 0 tube3 height
chkey -t 0 -v 1.25 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height") - ch("../BottomHeight")' tube3/height
chblockend
opparm -V 20.5.370 tube3 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube3 -*
chautoscope tube3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube3
nbop __netbox2 add tube3
opexprlanguage -s hscript tube3
opuserdata -n '___Version___' -v '20.5.370' tube3

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 0.159438 -y -0.75371999999999995 matchsize2
opspareds "" matchsize2
chblockbegin
chadd -t 0 0 matchsize2 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0 )# center\n    #{\n    #    offset = 0.0;\n    #}    \n    if( ch("../Alignment")==1)# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize2/offset_x
chadd -t 0 0 matchsize2 offset_y
chkey -t 0 -v 0.26800000000000002 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' matchsize2/offset_y
chblockend
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( offset_y ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 0.440695 -y -9.4688599999999994 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node resample_primary_support (Sop/resample)
opadd -e -n resample resample_primary_support
oplocate -x -2.0027599999999999 -y 4.5164 resample_primary_support
opspareds "" resample_primary_support
chblockbegin
chadd -t 0 0 resample_primary_support length
chkey -t 0 -v 1.0600000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryInterval")' resample_primary_support/length
chblockend
opparm -V 20.5.370 resample_primary_support group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample_primary_support -*
chautoscope resample_primary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_primary_support
opexprlanguage -s hscript resample_primary_support
opuserdata -n '___Version___' -v '20.5.370' resample_primary_support

# Node orientalongcurve1 (Sop/orientalongcurve)
opadd -e -n orientalongcurve orientalongcurve1
oplocate -x -2.0027599999999999 -y 2.08996 orientalongcurve1
opspareds "" orientalongcurve1
opparm -V 20.5.370 orientalongcurve1 group ( "" ) frame_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( off ) sepparm ( ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( target_up ) endupvectorattrib ( target_up_end ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) adjustupcurvature ( off ) curvaturescale ( 1 ) enablecurvaturescaleattrib ( noscaling ) curvaturescaleattrib ( speed ) enablecurvatureattrib ( off ) curvatureattrib ( curvature ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( off ) roll ( 0 ) rollper ( fulldistance ) fulltwists ( 0 ) incroll ( 0 ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) yawper ( fulldistance ) incyaw ( 0 ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) pitchper ( fulldistance ) incpitch ( 0 ) pitchattrib ( pitch ) scales_folder ( 0 ) normalize ( on ) scale ( 1 ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) output_folder ( 1 ) class ( point ) outputxaxis ( off ) xaxisname ( out ) outputyaxis ( off ) yaxisname ( up ) outputzaxis ( on ) zaxisname ( N ) sepparmattrib ( ) outputtranslation ( off ) translationname ( P ) outputquaternion ( off ) quaternionname ( orient ) outputtransform3 ( off ) transform3name ( transform ) outputtransform4 ( off ) transform4name ( transform )
chlock orientalongcurve1 -*
chautoscope orientalongcurve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off orientalongcurve1
opexprlanguage -s hscript orientalongcurve1
opuserdata -n '___Version___' -v '20.5.370' orientalongcurve1

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 8.0357599999999998 -y -7.3196399999999997 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' transform3/ty
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.1888100000000001 -y -7.3196399999999997 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 8.0357599999999998 -y -8.2929600000000008 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( guess ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 0.012 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 2 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 7.9932600000000003 -y 4.5164 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 3.35981 -y 0.21215999999999999 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
nbop __netbox3 add polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 5.3122100000000003 -y 0.21215999999999999 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../PrimaryWidth")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
nbop __netbox3 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x 7.9932600000000003 -y 3.3191099999999998 extrudevolume2
opspareds "" extrudevolume2
opparm extrudevolume2 depth ( 0.02 ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 4.3643099999999997 -y -1.53417 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox3 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x 5.3122100000000003 -y -0.57210899999999998 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox3 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 8.0357599999999998 -y -3.5131700000000001 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 8.0357599999999998 -y -4.3767399999999999 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node dissolve2 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve2
oplocate -x 8.0357599999999998 -y -5.3166399999999996 dissolve2
opspareds "" dissolve2
opparm -V 20.5.370 dissolve2 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( off ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve2 -*
chautoscope dissolve2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve2
opexprlanguage -s hscript dissolve2
opuserdata -n '___Version___' -v '20.5.370' dissolve2

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x 8.0357599999999998 -y -6.2164900000000003 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node avoid_support_tilting (Sop/attribwrangle)
opadd -e -n attribwrangle avoid_support_tilting
oplocate -x -2.00576 -y 1.05006 avoid_support_tilting
opspareds "" avoid_support_tilting
opparm avoid_support_tilting  bindings ( 0 ) groupbindings ( 0 )
opparm avoid_support_tilting folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock avoid_support_tilting -*
chautoscope avoid_support_tilting -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off avoid_support_tilting
opexprlanguage -s hscript avoid_support_tilting
opuserdata -n '___Version___' -v '' avoid_support_tilting

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 8.1432599999999997 -y 0.21215999999999999 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
nbop __netbox4 add polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x 10.997199999999999 -y 0.21215999999999999 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-ch("../PrimaryWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
nbop __netbox5 add polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node reverse3 (Sop/reverse)
opadd -e -n reverse reverse3
oplocate -x 10.997199999999999 -y -0.78783999999999998 reverse3
opspareds "" reverse3
opparm -V 20.5.370 reverse3 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse3 -*
chautoscope reverse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse3
nbop __netbox5 add reverse3
opexprlanguage -s hscript reverse3
opuserdata -n '___Version___' -v '20.5.370' reverse3

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 8.0357599999999998 -y -2.5245899999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 7.9932600000000003 -y 2.08996 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1
oporder -e copytopoints2 resample_secondary_support tube2 output0 matchsize1 copytopoints3 tube3 matchsize2 merge1 resample_primary_support orientalongcurve1 transform3 transform4 polybevel1 facet1 polyextrude3 polyextrude4 extrudevolume2 merge3 reverse2 fuse2 group2 dissolve2 facet2 avoid_support_tilting polyextrude5 polyextrude6 reverse3 switch1 blast1 
opcf ..

# Node Fence_var1 (Sop/subnet)
opadd -e -n subnet Fence_var1
oplocate -x 9.8161476470588234 -y 1.7466097058823529 Fence_var1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "PrimaryWidth"         label   "PrimaryWidth"         type    float         default { "0.05" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BottomHeight"         label   "BottomHeight"         type    float         default { "0.15" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "PrimaryInterval"         label   "PrimaryInterval"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Alignment"         label   "Alignment"         type    ordinal         default { "0" }         menu usetokenvalue {             "0" "Center"             "1" "Left"             "2" "Right"         }         parmtag { "script_callback_language" "python" }     } ' Fence_var1
opparm -V 20.5.370 Fence_var1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) PrimaryWidth ( 0.05 ) BottomHeight ( 0.37 ) Height ( 1.31 ) PrimaryInterval ( 1.5 ) Alignment ( 0 )
chlock Fence_var1 -*
chautoscope Fence_var1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Fence_var1
opexprlanguage -s hscript Fence_var1
opuserdata -n '___Version___' -v '20.5.370' Fence_var1
opcf Fence_var1

# Network Box __netbox1
nbadd __netbox1
nblocate -x -16.33 -y -0.966089 __netbox1
nbsize -w 4.02409 -h 3.23223 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x -3.88549 -y -0.272109 __netbox2
nbsize -w 3.0253 -h 2.53825 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 3.20979 -y -1.76177 __netbox3
nbsize -w 4.52035 -h 2.47393 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x 7.99326 -y 0.01216 __netbox4
nbsize -w 2.55 -h 0.7 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x 10.8472 -y -0.98784 __netbox5
nbsize -w 2.55 -h 1.7 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Network Box __netbox6
nbadd __netbox6
nblocate -x -8.19366 -y -3.9868 __netbox6
nbsize -w 4.52035 -h 2.47393 __netbox6
nbset  -m off __netbox6
nbcolor -c 0.52 0.52 0.52 __netbox6

# Network Box __netbox7
nbadd __netbox7
nblocate -x -3.41019 -y -2.21287 __netbox7
nbsize -w 2.55 -h 0.7 __netbox7
nbset  -m off __netbox7
nbcolor -c 0.52 0.52 0.52 __netbox7

# Network Box __netbox8
nbadd __netbox8
nblocate -x -0.55627 -y -3.21287 __netbox8
nbsize -w 2.55 -h 1.7 __netbox8
nbset  -m off __netbox8
nbcolor -c 0.52 0.52 0.52 __netbox8

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x -15.458985172722969 -y -0.76608927583462494 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( points ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints2
nbop __netbox1 add copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node tube2 (Sop/tube)
opadd -e -n tube tube2
oplocate -x -16.179957805053931 -y 1.6784307122444457 tube2
opspareds "" tube2
chblockbegin
chadd -t 0 0 tube2 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad1
chadd -t 0 0 tube2 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' tube2/rad2
chadd -t 0 0 tube2 height
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' tube2/height
chblockend
opparm -V 20.5.370 tube2 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 45 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 4 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube2 -*
chautoscope tube2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube2
nbop __netbox1 add tube2
opexprlanguage -s hscript tube2
opuserdata -n '___Version___' -v '20.5.370' tube2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.35956265887616323 -y -15.8487455777795 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -16.179957805053931 -y 0.77047071224444574 matchsize1
opspareds "" matchsize1
chblockbegin
chadd -t 0 0 matchsize1 offset_x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '{\n    w = 0.5 * ch("../PrimaryWidth");\n    offset = 0.0;\n    #if( ch("../Alignment")==0)# center\n    #{\n    #    offset = w;\n    #}\n    if( ch("../Alignment")==1 )# left\n    {\n        offset = w;\n    }\n    else if( ch("../Alignment")==2 )# right\n    {\n        offset = -w;\n    }\n    return offset;\n}' matchsize1/offset_x
chblockend
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( offset_x ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox1 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 0.21757965887616318 -y -14.000605577779499 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node resample_primary_support (Sop/resample)
opadd -e -n resample resample_primary_support
oplocate -x -7.0379896424987081 -y 4.6565570797251388 resample_primary_support
opspareds "" resample_primary_support
chblockbegin
chadd -t 0 0 resample_primary_support length
chkey -t 0 -v 1.0600000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryInterval")' resample_primary_support/length
chblockend
opparm -V 20.5.370 resample_primary_support group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample_primary_support -*
chautoscope resample_primary_support -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_primary_support
opexprlanguage -s hscript resample_primary_support
opuserdata -n '___Version___' -v '20.5.370' resample_primary_support

# Node orientalongcurve1 (Sop/orientalongcurve)
opadd -e -n orientalongcurve orientalongcurve1
oplocate -x -14.455867937831403 -y 1.732514826602094 orientalongcurve1
opspareds "" orientalongcurve1
opparm -V 20.5.370 orientalongcurve1 group ( "" ) frame_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( off ) sepparm ( ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( target_up ) endupvectorattrib ( target_up_end ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) adjustupcurvature ( off ) curvaturescale ( 1 ) enablecurvaturescaleattrib ( noscaling ) curvaturescaleattrib ( speed ) enablecurvatureattrib ( off ) curvatureattrib ( curvature ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( off ) roll ( 0 ) rollper ( fulldistance ) fulltwists ( 0 ) incroll ( 0 ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) yawper ( fulldistance ) incyaw ( 0 ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) pitchper ( fulldistance ) incpitch ( 0 ) pitchattrib ( pitch ) scales_folder ( 0 ) normalize ( on ) scale ( 1 ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) output_folder ( 1 ) class ( point ) outputxaxis ( off ) xaxisname ( out ) outputyaxis ( off ) yaxisname ( up ) outputzaxis ( on ) zaxisname ( N ) sepparmattrib ( ) outputtranslation ( off ) translationname ( P ) outputquaternion ( off ) quaternionname ( orient ) outputtransform3 ( off ) transform3name ( transform ) outputtransform4 ( off ) transform4name ( transform )
chlock orientalongcurve1 -*
chautoscope orientalongcurve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off orientalongcurve1
nbop __netbox1 add orientalongcurve1
opexprlanguage -s hscript orientalongcurve1
opuserdata -n '___Version___' -v '20.5.370' orientalongcurve1

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 8.0357599999999998 -y -7.3196399999999997 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' transform3/ty
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.1888100000000001 -y -7.3196399999999997 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 8.0357599999999998 -y -8.2929600000000008 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( guess ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 0.012 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 2 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 7.9932600000000003 -y 4.5164 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 3.35981 -y 0.21215999999999999 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../PrimaryWidth")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
nbop __netbox3 add polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 5.3122100000000003 -y 0.21215999999999999 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../PrimaryWidth")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
nbop __netbox3 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x 7.9932600000000003 -y 3.3191099999999998 extrudevolume2
opspareds "" extrudevolume2
opparm extrudevolume2 depth ( 0.02 ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 4.3643099999999997 -y -1.53417 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox3 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x 5.3122100000000003 -y -0.57210899999999998 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox3 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 8.0357599999999998 -y -3.5131700000000001 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 8.0357599999999998 -y -4.3767399999999999 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node dissolve2 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve2
oplocate -x 8.0357599999999998 -y -5.3166399999999996 dissolve2
opspareds "" dissolve2
opparm -V 20.5.370 dissolve2 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( off ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve2 -*
chautoscope dissolve2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve2
opexprlanguage -s hscript dissolve2
opuserdata -n '___Version___' -v '20.5.370' dissolve2

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x 8.0357599999999998 -y -6.2164900000000003 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node avoid_support_tilting (Sop/attribwrangle)
opadd -e -n attribwrangle avoid_support_tilting
oplocate -x -14.458867937831403 -y 0.69261482660209395 avoid_support_tilting
opspareds "" avoid_support_tilting
opparm avoid_support_tilting  bindings ( 0 ) groupbindings ( 0 )
opparm avoid_support_tilting folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock avoid_support_tilting -*
chautoscope avoid_support_tilting -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off avoid_support_tilting
nbop __netbox1 add avoid_support_tilting
opexprlanguage -s hscript avoid_support_tilting
opuserdata -n '___Version___' -v '' avoid_support_tilting

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 8.1432599999999997 -y 0.21215999999999999 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../PrimaryWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
nbop __netbox4 add polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x 10.997199999999999 -y 0.21215999999999999 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-ch("../PrimaryWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
nbop __netbox5 add polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node reverse3 (Sop/reverse)
opadd -e -n reverse reverse3
oplocate -x 10.997199999999999 -y -0.78783999999999998 reverse3
opspareds "" reverse3
opparm -V 20.5.370 reverse3 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse3 -*
chautoscope reverse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse3
nbop __netbox5 add reverse3
opexprlanguage -s hscript reverse3
opuserdata -n '___Version___' -v '20.5.370' reverse3

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 8.0357599999999998 -y -2.5245899999999999 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 7.9932600000000003 -y 2.08996 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x -3.28433007867815 -y 0.87789102980232203 extrudevolume1
opspareds "" extrudevolume1
chblockbegin
chadd -t 0 0 extrudevolume1 depth
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")-ch("../BottomHeight")' extrudevolume1/depth
chblockend
opparm extrudevolume1 depth ( depth ) basenormal ( 0 1 0 ) flat ( off ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume1
nbop __netbox2 add extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node transform5 (Sop/xform)
opadd -e -n xform transform5
oplocate -x -3.28433007867815 -y 1.7661394210999455 transform5
opspareds "" transform5
chblockbegin
chadd -t 0 0 transform5 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BottomHeight")' transform5/ty
chblockend
opparm -V 20.5.370 transform5 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform5 -*
chautoscope transform5 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform5
nbop __netbox2 add transform5
opexprlanguage -s hscript transform5
opuserdata -n '___Version___' -v '20.5.370' transform5

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -3.28433007867815 -y -0.12210898211860655 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast2
nbop __netbox2 add blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x -3.3676896600284332 -y -5.0416139399835807 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' switch3/input
chblockend
opparm -V 20.5.370 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch3
opexprlanguage -s hscript switch3
opuserdata -n '___Version___' -v '20.5.370' switch3

# Node polyextrude7 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude7
oplocate -x -8.0436396545150046 -y -2.0128700238895409 polyextrude7
opspareds "" polyextrude7
opparm polyextrude7  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude7 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.05*ch("../PrimaryWidth")' polyextrude7/dist
chblockend
opparm -V 20.5.370 polyextrude7 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude7 -*
chautoscope polyextrude7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude7
nbop __netbox6 add polyextrude7
opexprlanguage -s hscript polyextrude7
opuserdata -n '___Version___' -v '20.5.370' polyextrude7

# Node polyextrude8 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude8
oplocate -x -6.0912396545150038 -y -2.0128700238895409 polyextrude8
opspareds "" polyextrude8
opparm polyextrude8  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude8 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.05*ch("../PrimaryWidth")' polyextrude8/dist
chblockend
opparm -V 20.5.370 polyextrude8 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude8 -*
chautoscope polyextrude8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude8
nbop __netbox6 add polyextrude8
opexprlanguage -s hscript polyextrude8
opuserdata -n '___Version___' -v '20.5.370' polyextrude8

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -7.0391396545150045 -y -3.7592000238895409 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
nbop __netbox6 add merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node reverse4 (Sop/reverse)
opadd -e -n reverse reverse4
oplocate -x -6.0912396545150038 -y -2.7971390238895411 reverse4
opspareds "" reverse4
opparm -V 20.5.370 reverse4 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse4 -*
chautoscope reverse4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse4
nbop __netbox6 add reverse4
opexprlanguage -s hscript reverse4
opuserdata -n '___Version___' -v '20.5.370' reverse4

# Node polyextrude9 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude9
oplocate -x -3.2601896545150035 -y -2.0128700238895409 polyextrude9
opspareds "" polyextrude9
opparm polyextrude9  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude9 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '0.1*ch("../PrimaryWidth")' polyextrude9/dist
chblockend
opparm -V 20.5.370 polyextrude9 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude9 -*
chautoscope polyextrude9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude9
nbop __netbox7 add polyextrude9
opexprlanguage -s hscript polyextrude9
opuserdata -n '___Version___' -v '20.5.370' polyextrude9

# Node polyextrude10 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude10
oplocate -x -0.40624965451500383 -y -2.0128700238895409 polyextrude10
opspareds "" polyextrude10
opparm polyextrude10  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude10 dist
chkey -t 0 -v 0.075999999999999998 -m 0 -a 0 -A 0 -T a  -F '-0.1*ch("../PrimaryWidth")' polyextrude10/dist
chblockend
opparm -V 20.5.370 polyextrude10 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude10 -*
chautoscope polyextrude10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude10
nbop __netbox8 add polyextrude10
opexprlanguage -s hscript polyextrude10
opuserdata -n '___Version___' -v '20.5.370' polyextrude10

# Node reverse5 (Sop/reverse)
opadd -e -n reverse reverse5
oplocate -x -0.40624965451500383 -y -3.0128700238895409 reverse5
opspareds "" reverse5
opparm -V 20.5.370 reverse5 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse5 -*
chautoscope reverse5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse5
nbop __netbox8 add reverse5
opexprlanguage -s hscript reverse5
opuserdata -n '___Version___' -v '20.5.370' reverse5

# Node fuse3 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse3
oplocate -x -3.3676896507152074 -y -6.2164900000000003 fuse3
opspareds "" fuse3
opparm fuse3  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse3 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse3 -*
chautoscope fuse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse3
opexprlanguage -s hscript fuse3
opuserdata -n '___Version___' -v '20.5.370' fuse3

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x -3.3676896507152074 -y -7.0800600000000005 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node dissolve3 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve3
oplocate -x -3.3676896507152074 -y -8.0199599999999993 dissolve3
opspareds "" dissolve3
opparm -V 20.5.370 dissolve3 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( off ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve3 -*
chautoscope dissolve3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve3
opexprlanguage -s hscript dissolve3
opuserdata -n '___Version___' -v '20.5.370' dissolve3

# Node facet3 (Sop/facet)
opadd -e -n facet facet3
oplocate -x -3.3676896507152074 -y -8.91981 facet3
opspareds "" facet3
opparm -V 20.5.370 facet3 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet3 -*
chautoscope facet3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet3
opexprlanguage -s hscript facet3
opuserdata -n '___Version___' -v '20.5.370' facet3
oporder -e copytopoints2 tube2 output0 matchsize1 merge1 resample_primary_support orientalongcurve1 transform3 transform4 polybevel1 facet1 polyextrude3 polyextrude4 extrudevolume2 merge3 reverse2 fuse2 group2 dissolve2 facet2 avoid_support_tilting polyextrude5 polyextrude6 reverse3 switch1 blast1 extrudevolume1 transform5 blast2 switch3 polyextrude7 polyextrude8 merge4 reverse4 polyextrude9 polyextrude10 reverse5 fuse3 group3 dissolve3 facet3 
opcf ..
oporder -e resample6 add1 Fence Fence_var1 
opcf ..

# Node test_outside_corridor (Object/geo)
opadd -e -n geo test_outside_corridor
oplocate -x -3.79569 -y -0.36668200000000001 test_outside_corridor
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' test_outside_corridor
opset -S on test_outside_corridor
opparm -V 20.5.370 test_outside_corridor stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock test_outside_corridor -*
chautoscope test_outside_corridor -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off test_outside_corridor
opexprlanguage -s hscript test_outside_corridor
opuserdata -n '___Version___' -v '20.5.370' test_outside_corridor
opcf test_outside_corridor

# Node OutisideCorridor (Sop/subnet)
opadd -e -n subnet OutisideCorridor
oplocate -x -4.9533699999999996 -y 2.0024500000000001 OutisideCorridor
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     groupcollapsible {         name    "folder0"         label   "Isle"          parm {             name    "Alignment"             label   "Alignment"             type    ordinal             default { "0" }             menu usetokenvalue {                 "0" "Center"                 "1" "Left"                 "2" "Right"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "W"             label   "W"             type    float             default { "1.6" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      groupcollapsible {         name    "folder1"         label   "Handrails"          parm {             name    "Placement"             label   "Placement"             type    ordinal             default { "0" }             menu usetokenvalue {                 "0" "Both"                 "1" "Left"                 "2" "Right"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "HandrailH"             label   "HandrailH"             type    float             default { "1.5" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "HandrailW"             label   "HandrailW"             type    float             default { "0.1" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }         parm {             name    "CapStart"             label   "CapStart"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "CapEnd"             label   "CapEnd"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }     }  ' OutisideCorridor
opparm -V 20.5.370 OutisideCorridor label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) folder0 ( 1 ) Alignment ( 1 ) W ( 1.6 ) folder1 ( 1 ) Placement ( 1 ) HandrailH ( 1.5 ) HandrailW ( 0.1 ) CapStart ( off ) CapEnd ( off )
chlock OutisideCorridor -*
chautoscope OutisideCorridor -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off OutisideCorridor
opexprlanguage -s hscript OutisideCorridor
opuserdata -n '___Version___' -v '20.5.370' OutisideCorridor
opcf OutisideCorridor

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -2.45573 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x -2.0489100000000001e-08 -y 2.8888400000000001 switch2
opspareds "" switch2
chblockbegin
chadd -t 0 0 switch2 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Placement")' switch2/input
chblockend
opparm -V 20.5.370 switch2 input ( input )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x -1.11759e-08 -y 1.8060799999999999 extrudevolume1
opspareds "" extrudevolume1
chblockbegin
chadd -t 0 0 extrudevolume1 depth
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailH")' extrudevolume1/depth
chblockend
opparm extrudevolume1 depth ( depth ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -1.11759e-08 -y 0.80646799999999996 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude1 dist
chkey -t 0 -v 0.109 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailW")' polyextrude1/dist
chblockend
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x -1.11759e-08 -y -0.24194199999999999 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x -1.11759e-08 -y -1.0574699999999999 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Node Aisle2 (Sop/Aisle)
opadd -e -n Aisle Aisle2
oplocate -x -1.11759e-08 -y 4.00047 Aisle2
opspareds "" Aisle2
chblockbegin
chadd -t 0 0 Aisle2 Alignment
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")' Aisle2/Alignment
chadd -t 0 0 Aisle2 W
chkey -t 0 -v 1.6000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../W")' Aisle2/W
chadd -t 0 0 Aisle2 Placement
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Placement")' Aisle2/Placement
chadd -t 0 0 Aisle2 CapStart
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CapStart")' Aisle2/CapStart
chadd -t 0 0 Aisle2 CapEnd
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CapEnd")' Aisle2/CapEnd
chblockend
opparm Aisle2 folder0 ( 1 ) Alignment ( Alignment ) W ( W ) folder1 ( 1 ) Placement ( Placement ) CapStart ( CapStart ) CapEnd ( CapEnd )
chlock Aisle2 -*
chautoscope Aisle2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Aisle2
opexprlanguage -s hscript Aisle2
opuserdata -n '___Version___' -v '' Aisle2

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x 2.1572800000000001 -y 3.4100700000000002 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 3 )
opparm -V 20.5.370 object_merge1 numobj ( 3 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../Aisle2/ ) group1 ( "" ) expand1 ( off ) enable2 ( on ) objpath2 ( ../box1/ ) group2 ( "" ) expand2 ( off ) enable3 ( on ) objpath3 ( "" ) group3 ( "" ) expand3 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '20.5.370' object_merge1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 2.1585299999999998 -y 2.49492 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 1 ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x 2.83094 -y 4.5921399999999997 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1
oporder -e output0 switch2 extrudevolume1 polyextrude1 group1 dissolve1 Aisle2 object_merge1 blast1 box1 
opcf ..

# Node resample6 (Sop/resample)
opadd -e -n resample resample6
oplocate -x -4.9533699999999996 -y 3.2157499999999999 resample6
opspareds "" resample6
opparm -V 20.5.370 resample6 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.6 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample6 -*
chautoscope resample6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample6
opexprlanguage -s hscript resample6
opuserdata -n '___Version___' -v '20.5.370' resample6

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x -4.9533699999999996 -y 4.39975 add1
opspareds "" add1
opparm add1  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 1 1 1 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 5 0 5 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 0 0 5 ) weight2 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1
oporder -e OutisideCorridor resample6 add1 
opcf ..
oporder -e test_stairs test_fence test_outside_corridor 
opcf ..

# Node out (/out)
opcf out

# Node mantra_ipr (Driver/ifd)
opadd -e -n ifd mantra_ipr
oplocate -x 0 -y 0 mantra_ipr
opspareds '    parm {         name    "execute"         baseparm         label   "Render to Disk"         joinnext         export  none     }     parm {         name    "renderpreview"         baseparm         label   "Render to MPlay"         joinnext         export  none     }     parm {         name    "executebackground"         baseparm         label   "Render to Disk in Background"         joinnext         export  none     }     parm {         name    "renderdialog"         baseparm         label   "Controls..."         nolabel         export  none     }     parm {         name    "trange"         baseparm         label   "Valid Frame Range"         export  none     }     parm {         name    "f"         baseparm         label   "Start/End/Inc"         export  none     }     parm {         name    "take"         baseparm         label   "Render With Take"         export  none     }     parm {         name    "camera"         baseparm         label   "Camera"         export  none     }     parm {         name    "override_camerares"         baseparm         label   "Override Camera Resolution"         export  none     }     parm {         name    "res_fraction"         baseparm         label   "Resolution Scale"         export  none     }     parm {         name    "res_override"         baseparm         label   "Resolution"         joinnext         export  none     }     parm {         name    "res_overrideMenu"         baseparm         label   "Choose Resolution"         nolabel         export  none     }     parm {         name    "aspect_override"         baseparm         label   "Pixel Aspect Ratio"         export  none     }     group {         name    "images6"         label   "Images"         grouptag { "sidefx::switcher" "images" }          parm {             name    "soho_program"             baseparm             label   "soho Program"             invisible             export  none         }         parm {             name    "soho_shopstyle"             baseparm             label   "soho SHOP Style"             invisible             export  none         }         parm {             name    "soho_ipr_support"             baseparm             label   "IPR Supported"             invisible             export  none         }         parm {             name    "soho_previewsupport"             baseparm             label   "Preview Supported"             invisible             export  none         }         parm {             name    "vm_picture"             baseparm             label   "Output Picture"             export  none         }         parm {             name    "vm_device"             baseparm             label   "Output Device"             export  none         }         parm {             name    "soho_mkpath"             baseparm             label   "Create Intermediate Directories"             export  none         }         parm {             name    "soho_skip_frame"             baseparm             label   "Skip Rendered Frames"             export  none         }         group {             name    "output6"             label   "Output"             grouptag { "sidefx::switcher" "output" }              parm {                 name    "vm_pfilter"                 label   "Pixel Filter"                 type    string                 default { "gaussian -w 2" }                 menureplace {                     "box -w 1"                      "Unit Box Filter"                     "gaussian -w 2"                 "Gaussian 2x2"                     "gaussian -w 3"                 "Gaussian 3x3 (softer)"                     "gaussian -w 2 -r 1"            "Gaussian 2x2 with noisy sample refiltering"                     "combine -t 20.0"               "Ray Histogram Fusion"                     "bartlett -w 2"                 "Bartlett (triangle)"                     "catrom -w 3"                   "Catmull-Rom"                     "hanning -w 2"                  "Hanning"                     "blackman -w 2"                 "Blackman"                     "sinc -w 3"                     "Sinc (sharpening)"                     "edgedetect"                    "Edge Detection Filter"                     "minmax min"                    "Closest Sample Filter"                     "minmax max"                    "Farthest Sample Filter"                     "minmax median"                 "Median Sample Filter"                     "minmax edge"                   "Disable Edge Antialiasing"                     "minmax ocover"                 "Object With Most Pixel Coverage (average)"                     "minmax idcover"                "Object With Most Coverage (no filtering)"                     "minmax omin"                   "Object With Most Coverage (minimum z-value)"                     "minmax omax"                   "Object With Most Coverage (maximum z-value)"                     "minmax omedian"                "Object With Most Coverage (median z-value)"                     "denoise optix -a basecolor"    "NVIDIA OptiX Denoiser"                     "denoise intel -a basecolor"    "Intel OIDN Denoiser"                 }                 parmtag { "mantra_class" "plane" }                 parmtag { "mantra_name" "pfilter" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_sfilter"                 label   "Sample Filter"                 type    string                 default { "alpha" }                 menu {                     "alpha"     "Opacity Filtering"                     "closest"   "Closest Surface"                 }                 parmtag { "mantra_class" "plane" }                 parmtag { "mantra_name" "sfilter" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_quantize"                 label   "Quantization"                 type    string                 default { "half" }                 menu {                     "8"     "8 bit integer"                     "16"    "16 bit integer"                     "half"  "16 bit float"                     "float" "32 bit float"                 }                 parmtag { "mantra_class" "plane" }                 parmtag { "mantra_name" "quantize" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_gamma"                 label   "Gamma"                 type    float                 default { "1" }                 range   { 0.001 3 }                 parmtag { "mantra_class" "plane" }                 parmtag { "mantra_name" "gamma" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_subpixel"                 label   "Sub-Pixel Output"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "subpixel" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_tile_render"                 label   "Tiled Render"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_tile_count_x"                 label   "Horizontal Tiles"                 type    integer                 default { "4" }                 hidewhen "{ vm_tile_render == 0 }"                 range   { 1! 8 }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_tile_count_y"                 label   "Vertical Tiles"                 type    integer                 default { "4" }                 hidewhen "{ vm_tile_render == 0 }"                 range   { 1! 8 }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_tile_index"                 label   "Tile Index"                 type    integer                 default { "0" }                 hidewhen "{ vm_tile_render == 0 }"                 range   { 0 63 }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_writecheckpoint"                 label   "Output Checkpoint Files"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "writecheckpoint" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "vm_readcheckpoint"                 label   "Resume from Checkpoint Files"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "readcheckpoint" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "render_viewcamera"                 label   "Create Image From Viewing Camera"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "render_any_shadowmap"                 label   "Auto-Generate Shadow Maps"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "render_any_envmap"                 label   "Auto-Generate Environment Maps"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "render_any_photonmap"                 label   "Auto-Generate Photon Maps"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Output" }             }             parm {                 name    "render_any_pointcloud"                 label   "Auto-Generate Light Point Clouds"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Output" }             }         }          group {             name    "output6_1"             label   "Extra Image Planes"              parm {                 name    "vm_exportcomponents"                 label   "Export Components"                 type    string                 default { "diffuse reflect coat refract volume sss" }                 menureplace {                     "diffuse reflect sss"                       "Basic Components"                     "diffuse reflect coat refract volume sss"   "Common Components"                 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "exportcomponents" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_P"                 label   "Shading Position (P)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_Pz"                 label   "Shading Depth (Pz)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_N"                 label   "Shading Normal (N)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_all_comp"                 label   "Combined Lighting (per-component)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_direct_comp"                 label   "Direct Lighting (per-component)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_indirect_comp"                 label   "Indirect Lighting (per-component)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_all_emission"                 label   "Combined Emission"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_direct_noshadow"                 label   "Direct Unshadowed"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_direct_samples"                 label   "Direct Ray Samples"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_indirect_samples"                 label   "Indirect Ray Samples"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_sss"                 label   "SSS Single/Multi"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_basecolor"                 label   "Surface Unlit Base Color (basecolor)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_diffcolor"                 label   "Surface Unlit Diffuse Color (diffcolor)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_speccolor"                 label   "Surface Unlit Specular Color (speccolor)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_emitcolor"                 label   "Surface Emission Color (emitcolor)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_ssscolor"                 label   "Surface SSS Color (ssscolor)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_metallic"                 label   "Surface Metallic (metallic)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_quickplane_specrough"                 label   "Surface Specular Roughness (specrough)"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             parm {                 name    "vm_showextraplaneparms"                 label   "Show extra image plane parameters"                 type    toggle                 invisible                 default { "0" }                 parmtag { "spare_category" "Extra Image Planes" }             }             multiparm {                 name    "vm_numaux"                 label    "Extra Image Planes"                 parmtag { "spare_category" "Extra Image Planes" }                  parm {                     name    "vm_disable_plane#"                     label   "Disable Plane #"                     type    toggle                     joinnext                     default { "0" }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_excludedcm_plane#"                     label   "Exclude from DCM"                     type    toggle                     default { "0" }                     hidewhen "{ vm_deepresolver != camera }"                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_variable_plane#"                     label   "VEX Variable"                     type    string                     default { "" }                     disablewhen "{ vm_disable_plane# == 1 }"                     menureplace {                         [ "__import__(\'toolutils\').parseDialogScriptMenu(\'MantraPlanes\', forhscript=False)" ]                         language python                     }                     parmtag { "script_callback" "`pythonexprs(\\"__import__(\'toolutils\').updatePlaneType($script_multiparm_index, \'$script_value\')\\")`" }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_vextype_plane#"                     label   "VEX Type"                     type    string                     default { "vector" }                     disablewhen "{ vm_disable_plane# == 1 }"                     menu {                         "float"         "Float Type"                         "vector"        "Vector Type"                         "vector4"       "Vector4 Type"                         "unitvector"    "Unit Vector Type"                     }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_channel_plane#"                     label   "Channel Name"                     type    string                     default { "" }                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_usefile_plane#"                     label   "Different File"                     type    toggle                     nolabel                     joinnext                     default { "0" }                     hidewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" } { vm_picture == ip }"                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_filename_plane#"                     label   "Different File"                     type    image                     default { "" }                     disablewhen "{ vm_usefile_plane# == 0 }"                     hidewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" } { vm_picture == ip }"                     menureplace {                         [ "echo `pythonexprs(\\"__import__(\'toolutils\').parseDialogScriptMenu(\'FBrender\')\\")`" ]                     }                     parmtag { "filechooser_mode" "write" }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_quantize_plane#"                     label   "Quantize"                     type    string                     default { "half" }                     help    "image:quantize"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     menu {                         "8"     "8 bit integer"                         "16"    "16 bit integer"                         "half"  "16 bit float"                         "float" "32 bit float"                     }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_sfilter_plane#"                     label   "Sample Filter"                     type    string                     default { "alpha" }                     help    "image:sfilter"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     menu {                         "alpha"         "Opacity Filtering"                         "fullopacity"   "Full Opacity Filtering"                         "closest"       "Closest Surface"                     }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_pfilter_plane#"                     label   "Pixel Filter"                     type    string                     default { "" }                     help    "image:pfilter"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     menureplace {                         ""                              "Inherit from main plane"                         "box -w 1"                      "Unit Box Filter"                         "gaussian -w 2"                 "Gaussian 2x2"                         "gaussian -w 3"                 "Gaussian 3x3 (softer)"                         "gaussian -w 2 -r 1"            "Gaussian 2x2 with noisy sample refiltering"                         "combine -t 20.0"               "Ray Histogram Fusion"                         "bartlett -w 2"                 "Bartlett (triangle)"                         "catrom -w 3"                   "Catmull-Rom"                         "hanning -w 2"                  "Hanning"                         "blackman -w 2"                 "Blackman"                         "sinc -w 3"                     "Sinc (sharpening)"                         "edgedetect"                    "Edge Detection Filter"                         "minmax min"                    "Closest Sample Filter"                         "minmax max"                    "Farthest Sample Filter"                         "minmax median"                 "Median Sample Filter"                         "minmax edge"                   "Disable Edge Antialiasing"                         "minmax ocover"                 "Object With Most Pixel Coverage (average)"                         "minmax idcover"                "Object With Most Coverage (no filtering)"                         "minmax omin"                   "Object With Most Coverage (minimum z-value)"                         "minmax omax"                   "Object With Most Coverage (maximum z-value)"                         "minmax omedian"                "Object With Most Coverage (median z-value)"                         "denoise optix -a basecolor"    "NVIDIA OptiX Denoiser"                         "denoise intel -a basecolor"    "Intel OIDN Denoiser"                     }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_gamma_plane#"                     label   "Gamma"                     type    float                     default { "1" }                     help    "image:gamma"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     hidewhen "{ vm_showextraplaneparms == 0 }"                     range   { 0.001 3 }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_gain_plane#"                     label   "Gain"                     type    float                     default { "1" }                     help    "image:gain"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     hidewhen "{ vm_showextraplaneparms == 0 }"                     range   { 0.001 10 }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_dither_plane#"                     label   "Dither"                     type    float                     default { "0.5" }                     help    "image:dither"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     hidewhen "{ vm_showextraplaneparms == 0 }"                     range   { 0 1 }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_whitepoint_plane#"                     label   "White Point"                     type    float                     default { "1" }                     help    "image:whitepoint"                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     hidewhen "{ vm_showextraplaneparms == 0 }"                     range   { 0 1 }                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_componentexport#"                     label   "Export variable for each component"                     type    toggle                     default { "0" }                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# =~ ()|(lpe:).+ }"                     parmtag { "spare_category" "Extra Image Planes" }                 }                 parm {                     name    "vm_lightexport#"                     label   "Light Exports"                     type    integer                     default { "0" }                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# =~ ()|(lpe:).+ }"                     menu {                         "0" "No light exports"                         "1" "Export variable for each light"                         "2" "Merge all lights into single channel"                     }                     range   { 0 10 }                     parmtag { "spare_category" "" }                 }                 parm {                     name    "vm_lightexport_scope#"                     label   "Light Mask"                     type    oplist                     default { "*" }                     disablewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" }"                     hidewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" } { vm_lightexport# == 0 }"                     parmtag { "opexpand" "1" }                     parmtag { "opfilter" "!!OBJ/LIGHT!!" }                     parmtag { "oprelative" "/" }                 }                 parm {                     name    "vm_lightexport_select#"                     label   "Light Selection"                     type    string                     default { "*" }                     hidewhen "{ vm_disable_plane# == 1 } { vm_variable_plane# == \\"\\" } { vm_lightexport# == 0 }"                 }             }          }          group {             name    "output6_2"             label   "Deep Output"              parm {                 name    "vm_deepresolver"                 label   "Deep Resolver"                 type    string                 default { "null" }                 menu {                     "null"      "No Deep Resolver"                     "shadow"    "Deep Shadow Map"                     "camera"    "Deep Camera Map"                 }                 parmtag { "spare_category" "Deep Output" }             }             parm {                 name    "vm_dcmfilename"                 label   "DCM Filename"                 type    image                 default { "$HIP/dcm.rat" }                 disablewhen "{ vm_deepresolver != camera }"                 parmtag { "filechooser_mode" "read_and_write" }                 parmtag { "mantra_class" "dcm" }                 parmtag { "mantra_name" "filename" }                 parmtag { "spare_category" "Deep Output" }             }             parm {                 name    "vm_matchdeeppixelfilter"                 label   "Force DCM Pixel Fiter on Image Planes"                 type    toggle                 default { "1" }                 disablewhen "{ vm_deepresolver != camera }"                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "matchdeeppixelfilter" }                 parmtag { "spare_category" "Deep Output" }             }             parm {                 name    "vm_dcmcompositing"                 label   "DCM Pre-Composite Samples"                 type    toggle                 default { "0" }                 disablewhen "{ vm_deepresolver != camera }"                 parmtag { "mantra_class" "dcm" }                 parmtag { "mantra_name" "compositing" }                 parmtag { "spare_category" "Deep Output" }             }             parm {                 name    "vm_dcmdepthplanes"                 label   "DCM Special Planes"                 type    string                 default { "zfront,zback" }                 disablewhen "{ vm_deepresolver != camera }"                 menureplace {                     "zfront,zback"                      "Z-Front And Z-Back"                     "zfront"                            "Z-Front"                     "zfront,zback,deepcover,deepflags"  "Z-Front/Back, Coverage and Flags"                 }                 parmtag { "mantra_class" "dcm" }                 parmtag { "mantra_name" "depth_planes" }                 parmtag { "spare_category" "Deep Output" }             }             parm {                 name    "vm_dsmfilename"                 label   "DSM Filename"                 type    image                 default { "$HIP/dsm.rat" }                 disablewhen "{ vm_deepresolver != shadow }"                 parmtag { "filechooser_mode" "read_and_write" }                 parmtag { "mantra_class" "dsm" }                 parmtag { "mantra_name" "filename" }                 parmtag { "spare_category" "Deep Output" }             }         }          group {             name    "output6_3"             label   "Cryptomatte"              multiparm {                 name    "vm_cryptolayers"                 label    "Cryptomatte Layers"                 default 0                 parmtag { "spare_category" "Cryptomatte" }                  parm {                     name    "vm_cryptolayerenable#"                     label   "vm_cryptolayerenable#"                     type    toggle                     nolabel                     joinnext                     default { "1" }                 }                 parm {                     name    "vm_cryptolayerprop#"                     label   "Property"                     type    string                     default { "materialname" }                     menureplace {                         "materialname"  "Material Name"                         "name"          "Object Name"                     }                 }                 parm {                     name    "vm_cryptolayername#"                     label   "Channel Name"                     type    string                     default { "CryptoMaterial" }                 }                 parm {                     name    "vm_cryptolayerrank#"                     label   "Overlap Limit"                     type    integer                     default { "6" }                     range   { 1 10 }                 }                 parm {                     name    "vm_cryptolayeroutputenable#"                     label   "vm_cryptolayeroutputenable#"                     type    toggle                     nolabel                     joinnext                     default { "0" }                 }                 parm {                     name    "vm_cryptolayeroutput#"                     label   "Different File"                     type    file                     default { "$HIP/CryptoMaterial.exr" }                     disablewhen "{ vm_cryptolayeroutputenable# != 1 }"                     parmtag { "filechooser_mode" "write" }                 }                 parm {                     name    "vm_cryptolayersidecarenable#"                     label   "vm_cryptolayersidecarenable#"                     type    toggle                     nolabel                     joinnext                     default { "0" }                 }                 parm {                     name    "vm_cryptolayersidecar#"                     label   "Manifest File"                     type    string                     default { "CryptoMaterial.json" }                     disablewhen "{ vm_cryptolayersidecarenable# != 1 }"                 }             }          }          group {             name    "output6_4"             label   "Meta Data"              parm {                 name    "vm_image_artist"                 label   "Artist"                 type    string                 default { "" }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "artist" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_comment"                 label   "Comment"                 type    string                 default { "" }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "comment" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_hostname"                 label   "Hostname"                 type    string                 default { "" }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "hostname" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_mplay_direction"                 label   "MPlay Tile Order"                 type    string                 default { "middle" }                 menu {                     "middle"    "Interactive (starting in middle)"                     "top"       "Top down"                     "bottom"    "Bottom up"                     "hilbert"   "Hilbert Curve"                 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "IPlay.direction" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_mplay_framemode"                 label   "MPlay Frame Mode"                 type    string                 default { "append" }                 menu {                     "append"    "Append Frames To Sequence"                     "match"     "Match Houdini Frame Numbers (overwrite frame)"                 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "IPlay.framemode" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_mplay_label"                 label   "MPlay Session Label"                 type    string                 default { "$HIPNAME" }                 menureplace {                     "`pythonexprs(\\"__import__(\'os\').getpid()\\")`"  "One per Houdini Process"                     "$HIPNAME"                                      "One per Houdini File Name (.hip)"                     "$OS"                                           "One per Output Driver Name (ROP)"                     ""                                              "One MPlay session only"                 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "IPlay.label" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_jpeg_quality"                 label   "JPEG Quality"                 type    integer                 default { "100" }                 range   { 20 100 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "JPEG.quality" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_tiff_compression"                 label   "TIFF Compression"                 type    string                 default { "LZW" }                 menu {                     "None"          "No compression"                     "LZW"           "LZW Compression"                     "AdobeDeflate"  "Adobe Deflate"                     "PackBits"      "PackBits"                     "JPEG"          "JPEG"                     "PixarLog"      "Pixar Log"                     "SGILog"        "LogLuv"                     "SGILog24"      "LogLuv (24 bit)"                 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "TIFF.compression" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_exr_compression"                 label   "EXR Compression"                 type    string                 default { "zips" }                 menu {                     "none"  "No compression"                     "dwab"  "DWA-B, Lossy and Fast (256-scanline block)"                     "dwaa"  "DWA-A, Lossy and Fast (32-scanline block),"                     "piz"   "PIZ Wavelet"                     "rle"   "Runlength Encoding"                     "zips"  "ZIP (Single scanline)"                     "zip"   "ZIP (Multi-scanline blocks)"                     "pxr24" "PXR24 (32 bit float compression, lossy)"                     "b44"   "B44 (4x4 block compression, lossy)"                     "b44a"  "B44A (4x4 block extra compression, lossy)"                 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "OpenEXR.compression" }                 parmtag { "spare_category" "Meta Data" }             }             parm {                 name    "vm_image_exr_dwa_level"                 label   "DWA Compression Level"                 type    float                 default { "85" }                 hidewhen "{ vm_image_exr_compression != dwab vm_image_exr_compression != dwaa }"                 range   { 1 200 }                 parmtag { "mantra_class" "imageoption" }                 parmtag { "mantra_name" "OpenEXR.dwa_compression" }                 parmtag { "spare_category" "Meta Data" }             }         }      }      group {         name    "images6_1"         label   "Rendering"          parm {             name    "vm_renderengine"             label   "Rendering Engine"             type    string             default { "raytrace" }             menu {                 "micropoly"     "Micropolygon Rendering"                 "raytrace"      "Ray Tracing"                 "pbrmicropoly"  "Micropolygon Physically Based Rendering"                 "pbrraytrace"   "Physically Based Rendering"                 "photon"        "Photon Map Generation"             }             parmtag { "mantra_class" "renderer" }             parmtag { "mantra_force_output" "1" }             parmtag { "mantra_name" "renderengine" }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "vm_dof"             label   "Enable Depth Of Field"             type    toggle             default { "0" }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "allowmotionblur"             label   "Allow Motion Blur"             type    toggle             default { "0" }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "xform_motionsamples"             label   "Xform Time Samples"             type    integer             default { "2" }             hidewhen "{ allowmotionblur == 0 }"             range   { 1 10 }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "geo_motionsamples"             label   "Geo Time Samples"             type    integer             default { "1" }             hidewhen "{ allowmotionblur == 0 }"             range   { 1 10 }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "shutteroffset"             label   "Shutter Offset"             type    float             default { "1" }             hidewhen "{ allowmotionblur == 0 }"             range   { -1 1 }             parmtag { "spare_category" "Rendering" }         }         parm {             name    "vm_traceblur"             label   "Raytrace Motion Blur"             type    toggle             default { "0" }             hidewhen "{ allowmotionblur == 0 } { vm_renderengine != micropoly vm_renderengine != pbrmicropoly }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "traceblur" }             parmtag { "spare_category" "Rendering" }         }         group {             name    "sampling7"             label   "Sampling"             grouptag { "sidefx::switcher" "sampling" }              parm {                 name    "vm_samples"                 label   "Pixel Samples"                 type    intvector2                 size    2                 default { "3" "3" }                 range   { 1 32 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "samples" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_dorayvariance"                 label   "Ray Variance Antialiasing"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "dorayvariance" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_colorspace"                 label   "Variance Color Space"                 type    string                 default { "gamma" }                 hidewhen "{ vm_dorayvariance == 0 }"                 menu {                     "linear"    "Linear"                     "gamma"     "Gamma 2.2"                 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "colorspace" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_maxnumberofindirectsamples"                 label   "Maximum Number of Indirect Samples"                 type    label                 nolabel                 default { "Maximum number of indirect samples: `floor(ch(vm_maxraysamples) * (ch(vm_globalquality) * (ch(vm_diffusequality) + ch(vm_sssquality) + ch(vm_reflectionquality) + ch(vm_refractionquality) ) + 1) )`" }                 hidewhen "{ vm_dorayvariance == 0 }"                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_minraysamples"                 label   "Min Ray Samples"                 type    integer                 default { "1" }                 range   { 1 64 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "minraysamples" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_maxraysamples"                 label   "Max Ray Samples"                 type    integer                 default { "9" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 1 64 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "maxraysamples" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_variance"                 label   "Noise Level"                 type    log                 default { "0.01" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 0.1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "variance" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_globalquality"                 label   "Global Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "globalquality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_diffusequality"                 label   "Diffuse Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "diffusequality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_sssquality"                 label   "SSS Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "sssquality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_reflectionquality"                 label   "Reflection Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "reflectionquality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_refractionquality"                 label   "Refraction Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "refractionquality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_volumequality"                 label   "Volume Quality"                 type    float                 default { "1" }                 hidewhen "{ vm_dorayvariance == 0 }"                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "volumequality" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_volumesteprate"                 label   "Volume Step Rate"                 type    log                 default { "0.25" }                 range   { 0.1 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "volumesteprate" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_volumeshadowsteprate"                 label   "Volume Shadow Step Rate"                 type    log                 default { "1" }                 range   { 0.1 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "volumeshadowsteprate" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_transparent"                 label   "Stochastic Transparency"                 type    toggle                 default { "1" }                 disablewhen "{ vm_renderengine == micropoly } { vm_renderengine == pbrmicropoly } { vm_renderengine == photon }"                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "transparent" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_transparentsamples"                 label   "Stochastic Samples"                 type    integer                 default { "4" }                 disablewhen "{ vm_transparent == 0 } { vm_renderengine == micropoly } { vm_renderengine == pbrmicropoly } { vm_renderengine == photon }"                 range   { 1 16 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "transparentsamples" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_samplelock"                 label   "Sample Lock"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "samplelock" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_randomseed"                 label   "Random Seed"                 type    integer                 default { "0" }                 range   { 0 10 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "randomseed" }                 parmtag { "spare_category" "Sampling" }             }             parm {                 name    "vm_imageblur"                 label   "Allow Image Motion Blur"                 type    toggle                 default { "1" }                 disablewhen "{ allowmotionblur == 0 }"                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "imageblur" }                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "sampling7_1"             label   "Limits"              parm {                 name    "vm_reflectlimit"                 label   "Reflect Limit"                 type    integer                 default { "10" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "reflectlimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_refractlimit"                 label   "Refract Limit"                 type    integer                 default { "10" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "refractlimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_diffuselimit"                 label   "Diffuse Limit"                 type    integer                 default { "0" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "diffuselimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_ssslimit"                 label   "SSS Limit"                 type    integer                 default { "0" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "ssslimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_volumelimit"                 label   "Volume Limit"                 type    integer                 default { "0" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "volumelimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_opacitylimit"                 label   "Opacity Limit"                 type    float                 default { "0.995" }                 range   { 0 1 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "opacitylimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_colorlimit"                 label   "Color Limit"                 type    float                 default { "10" }                 range   { 0 20 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "colorlimit" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_raylimiteval"                 label   "At Ray Limit"                 type    string                 default { "none" }                 menu {                     "none"      "Use Black Background"                     "direct"    "Use Direct Lighting as Background Color"                 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "raylimiteval" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_raylimitcomponents"                 label   "Ray Limit Components"                 type    string                 default { "all" }                 hidewhen "{ vm_raylimiteval != direct }"                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "raylimitcomponents" }                 parmtag { "spare_category" "Limits" }             }             parm {                 name    "vm_raylimitlightmask"                 label   "Ray Limit Light Mask"                 type    oplist                 default { "*" }                 hidewhen "{ vm_raylimiteval != direct }"                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "raylimitlightmask" }                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/" }                 parmtag { "spare_category" "Limits" }             }         }          group {             name    "sampling7_2"             label   "Shading"              parm {                 name    "vm_raybias"                 label   "Raytracing Bias"                 type    float                 default { "0.001" }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "raybias" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_biasnormal"                 label   "Bias Along Normal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "biasnormal" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_nesteddielectric"                 label   "Enable Absorption and Nested Dielectrics"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "nesteddielectric" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_pbrpathtype"                 label   "Allowable Paths"                 type    string                 default { "diffuse" }                 menu {                     "diffuse"   "Specular, Diffuse Paths"                     "all"       "All Paths"                 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "pbrpathtype" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_constrainmaxrough"                 label   "Constrain by Maximum Roughness"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "constrainmaxrough" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_refractcomponents"                 label   "Refract Components"                 type    string                 default { "refract" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "refractcomponents" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_diffusecomponents"                 label   "Diffuse Components"                 type    string                 default { "diffuse" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "diffusecomponents" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumecomponents"                 label   "Volume Components"                 type    string                 default { "volume" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "volumecomponents" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_ssscomponents"                 label   "SSS Components"                 type    string                 default { "sss" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "ssscomponents" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "sampling7_3"             label   "Render"              parm {                 name    "vm_bucketsize"                 label   "Tile Size"                 type    integer                 default { "16" }                 range   { 1 64 }                 parmtag { "mantra_class" "image" }                 parmtag { "mantra_name" "bucket" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_usemaxthreads"                 label   "Use Max Processors"                 type    integer                 default { "1" }                 menu {                     "0" "User Specified Thread Count"                     "1" "Use All Processors"                     "2" "Use All Processors Except One"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "usemaxthreads" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_threadcount"                 label   "Thread Count"                 type    integer                 default { "1" }                 disablewhen "{ vm_usemaxthreads > 0 }"                 range   { 1 16 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "threadcount" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_usecacheratio"                 label   "Cache Limit"                 type    integer                 default { "1" }                 menu {                     "0" "Fixed Size"                     "1" "Proportion of Physical Memory"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "usecacheratio" }                 parmtag { "mantra_type" "bool" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_cacheratio"                 label   "Cache Memory Ratio"                 type    float                 default { "0.25" }                 hidewhen "{ vm_usecacheratio != 1 }"                 range   { 0 1 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "cacheratio" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_cachesize"                 label   "Cache Size (MB)"                 type    intlog                 default { "1000" }                 hidewhen "{ vm_usecacheratio == 1 }"                 range   { 100 100000 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "cachesize" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_octreestyle"                 label   "Ray Tracing Accelerator"                 type    string                 default { "bboxtree" }                 menu {                     "kdtree"    "KD-Tree"                     "bboxtree"  "Bounding Volume Hierarchy"                 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "octreestyle" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_kdmemfactor"                 label   "KD-Tree Memory Factor"                 type    float                 default { "1" }                 hidewhen "{ vm_octreestyle != kdtree }"                 range   { 0.001 2 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "kdmemfactor" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_hidden"                 label   "Enable Hiding"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "hidden" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_otlfullpath"                 label   "Output OTLs with full paths"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "vm_embedvex"                 label   "Force VEX Shader Embedding"                 type    toggle                 default { "0" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "declare_stylesheets"                 label   "Declare Style Sheets"                 type    string                 default { "*" }                 menutoggle {                     [ "result = [\'*\', \'All\\\\t(*)\']" ]                     [ "styles = hou.styles.styles()" ]                     [ "for style in styles:" ]                     [ "    desc = hou.styles.description(style)" ]                     [ "    desc = desc if len(desc) > 0 else \'No description\'" ]                     [ "    result.append(style)" ]                     [ "    result.append(style + \'\\\\t (\' + desc + \')\')" ]                     [ "" ]                     [ "return result" ]                     language python                 }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "apply_stylesheets"                 label   "Apply Style Sheets"                 type    file                 default { "`pythonexprs(\\"\' \'.join(hou.styles.styles())\\")`" }                 menutoggle {                     [ "result = []" ]                     [ "styles = hou.styles.styles()" ]                     [ "for style in styles:" ]                     [ "    desc = hou.styles.description(style)" ]                     [ "    desc = desc if len(desc) > 0 else \'No description\'" ]                     [ "    result.append(style)" ]                     [ "    result.append(style + \'\\\\t (\' + desc + \')\')" ]                     [ "" ]                     [ "return result" ]                     language python                 }                 parmtag { "filechooser_pattern" "*.json" }                 parmtag { "spare_category" "Render" }             }             parm {                 name    "declare_all_shops"                 label   "Declare Materials"                 type    ordinal                 default { "off" }                 menu {                     "off"   "Save Only Referenced Materials and Shaders"                     "on"    "Save All Materials"                     "all"   "Save All Materials and Shaders"                 }                 parmtag { "spare_category" "Render" }             }         }          group {             name    "sampling7_4"             label   "Dicing"              parm {                 name    "vm_shadingfactor"                 label   "Shading Quality Multiplier"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "shadingfactor" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_motionfactor"                 label   "Motion Factor"                 type    float                 default { "0" }                 disablewhen "{ allowmotionblur == 0 vm_dof == 0 }"                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "motionfactor" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_measure"                 label   "Geometry Measuring"                 type    string                 default { "nonraster" }                 menu {                     "nonraster" "Non-Raster Measuring"                     "raster"    "Raster Space Measuring"                     "uniform"   "Uniform Measuring"                 }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_measurezimportance"                 label   "Z-Importance"                 type    float                 default { "1" }                 disablewhen "{ vm_measure != nonraster }"                 range   { 0 10 }                 parmtag { "mantra_class" "measure" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "zimportance" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_measureoffscreenquality"                 label   "Offscreen Quality"                 type    float                 default { "0.25" }                 disablewhen "{ vm_measure != nonraster }"                 range   { 0 1 }                 parmtag { "mantra_class" "measure" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "offscreenquality" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "sampling7_5"             label   "Statistics"              parm {                 name    "soho_spoolrenderoutput"                 label   "Render Output"                 type    ordinal                 default { "on" }                 help    "Controls whether to capture the render output and add to the node info"                 menu {                     "off"   "Don\'t capture render output"                     "on"    "Capture render output for graphical apps"                     "force" "Capture render output for all apps"                 }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_verbose"                 label   "Verbose Level"                 type    integer                 default { "0" }                 range   { 0 5 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "verbose" }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_vexprofile"                 label   "VEX Profiling"                 type    integer                 default { "0" }                 menu {                     "0" "No VEX Profiling"                     "1" "Execution profiling"                     "2" "Profiling and NAN detection"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "vexprofile" }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_alfprogress"                 label   "Alfred Style Progress"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "alfprogress" }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_tilecallback"                 label   "Python Tile Callback"                 type    file                 default { "" }                 parmtag { "filechooser_mode" "read" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "tilecallback" }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_logcolors"                 label   "Colorize Output"                 type    integer                 default { "0" }                 menu {                     "0" "Colored Shell"                     "1" "HTML Tags"                     "2" "No Coloring"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_force_output" "1" }                 parmtag { "mantra_name" "logcolors" }                 parmtag { "spare_category" "Statistics" }             }             parm {                 name    "vm_logtimestamps"                 label   "Log Timestamp"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "renderer" }                 parmtag { "mantra_name" "logtimestamps" }                 parmtag { "spare_category" "Statistics" }             }         }      }      group {         name    "images6_2"         label   "Objects"          parm {             name    "vobject"             baseparm             label   "Candidate Objects"             export  none         }         parm {             name    "forceobject"             baseparm             label   "Force Objects"             export  none         }         parm {             name    "matte_objects"             baseparm             label   "Forced Matte"             export  none         }         parm {             name    "phantom_objects"             baseparm             label   "Forced Phantom"             export  none         }         parm {             name    "excludeobject"             baseparm             label   "Exclude Objects"             export  none         }         parm {             name    "obj_light_sep"             baseparm             label   "Separator"             export  none         }         parm {             name    "sololight"             baseparm             label   "Solo Light"             export  none         }         parm {             name    "alights"             baseparm             label   "Candidate Lights"             export  none         }         parm {             name    "forcelights"             baseparm             label   "Force Lights"             export  none         }         parm {             name    "excludelights"             baseparm             label   "Exclude Lights"             export  none         }         parm {             name    "soho_autoheadlight"             baseparm             label   "Headlight Creation"             export  none         }         parm {             name    "light_fog_sep"             baseparm             label   "Separator"             export  none         }         parm {             name    "vfog"             baseparm             label   "Visible Fog"             export  none         }     }      group {         name    "images6_3"         label   "Scripts"          parm {             name    "tprerender"             baseparm             label   "tprerender"             nolabel             joinnext             export  none         }         parm {             name    "prerender"             baseparm             label   "Pre-Render Script"             joinnext             export  none         }         parm {             name    "lprerender"             baseparm             label   "lprerender"             nolabel             export  none         }         parm {             name    "tpreframe"             baseparm             label   "tpreframe"             nolabel             joinnext             export  none         }         parm {             name    "preframe"             baseparm             label   "Pre-Frame Script"             joinnext             export  none         }         parm {             name    "lpreframe"             baseparm             label   "lpreframe"             nolabel             export  none         }         parm {             name    "tpostframe"             baseparm             label   "tpostframe"             nolabel             joinnext             export  none         }         parm {             name    "postframe"             baseparm             label   "Post-Frame Script"             joinnext             export  none         }         parm {             name    "lpostframe"             baseparm             label   "lpostframe"             nolabel             export  none         }         parm {             name    "tpostrender"             baseparm             label   "tpostrender"             nolabel             joinnext             export  none         }         parm {             name    "postrender"             baseparm             label   "Post-Render Script"             joinnext             export  none         }         parm {             name    "lpostrender"             baseparm             label   "lpostrender"             nolabel             export  none         }     }      group {         name    "images6_4"         label   "Driver"          parm {             name    "soho_pipecmd"             baseparm             label   "Command"             export  none         }         parm {             name    "soho_outputmode"             baseparm             label   "Save IFD File To Disk"             nolabel             joinnext             export  none         }         parm {             name    "soho_diskfile"             baseparm             label   "Disk File"             export  none         }         parm {             name    "soho_compression"             baseparm             label   "File Compression"             export  none         }         parm {             name    "soho_foreground"             baseparm             label   "Wait for Render to Complete"             export  none         }         parm {             name    "soho_initsim"             baseparm             label   "Initialize Simulation OPs"             export  none         }         parm {             name    "soho_viewport_menu"             baseparm             label   "Show In Viewport Menu"             export  none         }         parm {             name    "vm_inlinestorage"             label   "Save Geometry Inline"             type    toggle             default { "0" }             parmtag { "spare_category" "Driver" }         }         parm {             name    "vm_tmpsharedstorage"             label   "Shared temp storage"             type    file             default { "$HIP/ifds/storage" }             disablewhen "{ vm_inlinestorage != 0 }"             parmtag { "filechooser_mode" "write" }             parmtag { "spare_category" "Driver" }         }         parm {             name    "vm_tmplocalstorage"             label   "Local temp storage"             type    file             default { "$HOUDINI_TEMP_DIR/ifds/storage" }             disablewhen "{ vm_inlinestorage != 0 }"             parmtag { "filechooser_mode" "write" }             parmtag { "spare_category" "Driver" }         }         parm {             name    "vm_binarygeometry"             label   "Save Binary Geometry"             type    toggle             default { "1" }             parmtag { "spare_category" "Driver" }         }     }  ' mantra_ipr
opparm mantra_ipr  vm_numaux ( 0 ) vm_cryptolayers ( 0 )
chblockbegin
chadd -t 0 0 mantra_ipr f1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$FSTART' mantra_ipr/f1
chadd -t 0 0 mantra_ipr f2
chkey -t 0 -v 240 -m 0 -a 0 -A 0 -T a  -F '$FEND' mantra_ipr/f2
chblockend
opparm -V 2 mantra_ipr execute ( 0 ) renderpreview ( 0 ) executebackground ( 0 ) renderdialog ( 0 ) trange ( off ) f ( f1 f2 1 ) take ( _current_ ) camera ( /obj/cam1 ) override_camerares ( off ) res_fraction ( 0.5 ) res_override ( 1280 720 ) res_overrideMenu ( '640 480 1' ) aspect_override ( 1 ) images ( 0 0 0 0 0 ) soho_program ( IFD.py ) soho_shopstyle ( VMantra ) soho_ipr_support ( on ) soho_previewsupport ( on ) vm_picture ( '$HIP/render/$HIPNAME.$OS.$F4.exr' ) vm_device ( "" ) soho_mkpath ( on ) soho_skip_frame ( no ) output ( 0 0 0 0 0 ) sampling ( 0 0 0 0 0 0 ) vobject ( * ) forceobject ( "" ) matte_objects ( "" ) phantom_objects ( "" ) excludeobject ( "" ) obj_light_sep ( ) sololight ( "" ) alights ( * ) forcelights ( "" ) excludelights ( "" ) soho_autoheadlight ( on ) light_fog_sep ( ) vfog ( * ) tprerender ( on ) prerender ( "" ) lprerender ( hscript ) tpreframe ( on ) preframe ( "" ) lpreframe ( hscript ) tpostframe ( on ) postframe ( "" ) lpostframe ( hscript ) tpostrender ( on ) postrender ( "" ) lpostrender ( hscript ) soho_pipecmd ( mantra ) soho_outputmode ( off ) soho_diskfile ( '$HIP/mantra.ifd' ) soho_compression ( ext ) soho_foreground ( off ) soho_initsim ( off ) soho_viewport_menu ( on ) images6 ( 0 0 0 0 0 ) output6 ( 0 0 0 0 0 ) vm_pfilter ( 'gaussian -w 2' ) vm_sfilter ( alpha ) vm_quantize ( half ) vm_gamma ( 1 ) vm_subpixel ( off ) vm_tile_render ( off ) vm_tile_count_x ( 4 ) vm_tile_count_y ( 4 ) vm_tile_index ( 0 ) vm_writecheckpoint ( on ) vm_readcheckpoint ( off ) render_viewcamera ( on ) render_any_shadowmap ( on ) render_any_envmap ( on ) render_any_photonmap ( on ) render_any_pointcloud ( on ) vm_exportcomponents ( 'diffuse reflect coat refract volume sss' ) vm_quickplane_P ( off ) vm_quickplane_Pz ( off ) vm_quickplane_N ( off ) vm_quickplane_all_comp ( off ) vm_quickplane_direct_comp ( off ) vm_quickplane_indirect_comp ( off ) vm_quickplane_all_emission ( off ) vm_quickplane_direct_noshadow ( off ) vm_quickplane_direct_samples ( off ) vm_quickplane_indirect_samples ( off ) vm_quickplane_sss ( off ) vm_quickplane_basecolor ( off ) vm_quickplane_diffcolor ( off ) vm_quickplane_speccolor ( off ) vm_quickplane_emitcolor ( off ) vm_quickplane_ssscolor ( off ) vm_quickplane_metallic ( off ) vm_quickplane_specrough ( off ) vm_showextraplaneparms ( off ) vm_numaux ( 0 ) vm_deepresolver ( null ) vm_dcmfilename ( '$HIP/dcm.rat' ) vm_matchdeeppixelfilter ( on ) vm_dcmcompositing ( off ) vm_dcmdepthplanes ( zfront,zback ) vm_dsmfilename ( '$HIP/dsm.rat' ) vm_cryptolayers ( 0 ) vm_image_artist ( "" ) vm_image_comment ( "" ) vm_image_hostname ( "" ) vm_image_mplay_direction ( middle ) vm_image_mplay_framemode ( append ) vm_image_mplay_label ( '$HIPNAME' ) vm_image_jpeg_quality ( 100 ) vm_image_tiff_compression ( LZW ) vm_image_exr_compression ( zips ) vm_image_exr_dwa_level ( 85 ) vm_renderengine ( raytrace ) vm_dof ( off ) allowmotionblur ( off ) xform_motionsamples ( 2 ) geo_motionsamples ( 1 ) shutteroffset ( 1 ) vm_traceblur ( off ) sampling7 ( 0 0 0 0 0 0 ) vm_samples ( 3 3 ) vm_dorayvariance ( on ) vm_colorspace ( gamma ) vm_maxnumberofindirectsamples ( 'Maximum number of indirect samples: `floor(ch(vm_maxraysamples) * (ch(vm_globalquality) * (ch(vm_diffusequality) + ch(vm_sssquality) + ch(vm_reflectionquality) + ch(vm_refractionquality) ) + 1) )`' ) vm_minraysamples ( 1 ) vm_maxraysamples ( 9 ) vm_variance ( 0.01 ) vm_globalquality ( 1 ) vm_diffusequality ( 1 ) vm_sssquality ( 1 ) vm_reflectionquality ( 1 ) vm_refractionquality ( 1 ) vm_volumequality ( 1 ) vm_volumesteprate ( 0.25 ) vm_volumeshadowsteprate ( 1 ) vm_transparent ( on ) vm_transparentsamples ( 4 ) vm_samplelock ( off ) vm_randomseed ( 0 ) vm_imageblur ( on ) vm_reflectlimit ( 10 ) vm_refractlimit ( 10 ) vm_diffuselimit ( 0 ) vm_ssslimit ( 0 ) vm_volumelimit ( 0 ) vm_opacitylimit ( 0.995 ) vm_colorlimit ( 10 ) vm_raylimiteval ( none ) vm_raylimitcomponents ( all ) vm_raylimitlightmask ( * ) vm_raybias ( 0.001 ) vm_biasnormal ( off ) vm_nesteddielectric ( off ) vm_pbrpathtype ( diffuse ) vm_constrainmaxrough ( off ) vm_refractcomponents ( refract ) vm_diffusecomponents ( diffuse ) vm_volumecomponents ( volume ) vm_ssscomponents ( sss ) vm_bucketsize ( 16 ) vm_usemaxthreads ( 2 ) vm_threadcount ( 1 ) vm_usecacheratio ( 1 ) vm_cacheratio ( 0.25 ) vm_cachesize ( 1000 ) vm_octreestyle ( bboxtree ) vm_kdmemfactor ( 1 ) vm_hidden ( on ) vm_otlfullpath ( off ) vm_embedvex ( off ) declare_stylesheets ( * ) apply_stylesheets ( '`pythonexprs("\' \'.join(hou.styles.styles())")`' ) declare_all_shops ( off ) vm_shadingfactor ( 1 ) vm_motionfactor ( 0 ) vm_measure ( nonraster ) vm_measurezimportance ( 1 ) vm_measureoffscreenquality ( 0.25 ) soho_spoolrenderoutput ( on ) vm_verbose ( 0 ) vm_vexprofile ( 0 ) vm_alfprogress ( off ) vm_tilecallback ( "" ) vm_logcolors ( 0 ) vm_logtimestamps ( on ) vm_inlinestorage ( off ) vm_tmpsharedstorage ( '$HIP/ifds/storage' ) vm_tmplocalstorage ( '$HOUDINI_TEMP_DIR/ifds/storage' ) vm_binarygeometry ( on )
chlock mantra_ipr -*
chautoscope mantra_ipr -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mantra_ipr
opexprlanguage -s hscript mantra_ipr
opuserdata -n '___Version___' -v '2' mantra_ipr

# Node mantra_ipr1 (Driver/ifd)
opadd -e -n ifd mantra_ipr1
oplocate -x 0 -y 0 mantra_ipr1
opspareds "" mantra_ipr1
chblockbegin
chadd -t 0 0 mantra_ipr1 f1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$FSTART' mantra_ipr1/f1
chadd -t 0 0 mantra_ipr1 f2
chkey -t 0 -v 240 -m 0 -a 0 -A 0 -T a  -F '$FEND' mantra_ipr1/f2
chblockend
opparm -V 2 mantra_ipr1 execute ( 0 ) renderpreview ( 0 ) executebackground ( 0 ) renderdialog ( 0 ) trange ( off ) f ( f1 f2 1 ) take ( _current_ ) camera ( /obj/cam1 ) override_camerares ( off ) res_fraction ( 0.5 ) res_override ( 1280 720 ) res_overrideMenu ( '640 480 1' ) aspect_override ( 1 ) images ( 0 0 0 0 0 ) soho_program ( IFD.py ) soho_shopstyle ( VMantra ) soho_ipr_support ( on ) soho_previewsupport ( on ) vm_picture ( '$HIP/render/$HIPNAME.$OS.$F4.exr' ) vm_device ( "" ) soho_mkpath ( on ) soho_skip_frame ( no ) output ( 0 0 0 0 0 ) sampling ( 0 0 0 0 0 0 ) vobject ( * ) forceobject ( "" ) matte_objects ( "" ) phantom_objects ( "" ) excludeobject ( "" ) obj_light_sep ( ) sololight ( "" ) alights ( * ) forcelights ( "" ) excludelights ( "" ) soho_autoheadlight ( on ) light_fog_sep ( ) vfog ( * ) tprerender ( on ) prerender ( "" ) lprerender ( hscript ) tpreframe ( on ) preframe ( "" ) lpreframe ( hscript ) tpostframe ( on ) postframe ( "" ) lpostframe ( hscript ) tpostrender ( on ) postrender ( "" ) lpostrender ( hscript ) soho_pipecmd ( mantra ) soho_outputmode ( off ) soho_diskfile ( '$HIP/mantra.ifd' ) soho_compression ( ext ) soho_foreground ( off ) soho_initsim ( off ) soho_viewport_menu ( on )
chlock mantra_ipr1 -*
chautoscope mantra_ipr1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mantra_ipr1
opexprlanguage -s hscript mantra_ipr1
opuserdata -n '___Version___' -v '2' mantra_ipr1
oporder -e mantra_ipr mantra_ipr1 
opcf ..

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
opcf img

# Node comp2 (CopNet/img)
opadd -e -n img comp2
oplocate -x 0 -y 0 comp2
opspareds "" comp2
opparm -V 20.5.370 comp2
chlock comp2 -*
chautoscope comp2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off comp2
opexprlanguage -s hscript comp2
opuserdata -n '___Version___' -v '20.5.370' comp2

# Node copnet2 (CopNet/copnet)
opadd -e -n copnet copnet2
oplocate -x 0 -y 0 copnet2
opspareds "" copnet2
opparm -V 20.5.370 copnet2 setres ( off ) res ( 1024 1024 ) resmenu ( none ) setpixelscale ( off ) pixelscale ( 2 ) setborder ( off ) border ( wrap ) setprecision ( off ) precision ( b32 ) setvistile ( off ) vistile ( 3 )
chlock copnet2 -*
chautoscope copnet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copnet2
opexprlanguage -s hscript copnet2
opuserdata -n '___Version___' -v '20.5.370' copnet2

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
oporder -e comp2 copnet2 comp1 copnet1 
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
opset -d off -r on -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler
opexprlanguage -s hscript localscheduler
opuserdata -n '___Version___' -v '1' localscheduler

# Node localscheduler1 (Top/localscheduler)
opadd -e -n localscheduler localscheduler1
oplocate -x 0 -y 0 localscheduler1
opspareds "" localscheduler1
opparm localscheduler1  local_envmulti ( 0 )
opparm -V 1 localscheduler1 folder0 ( 0 0 0 ) folder5 ( 0 ) maxprocsmenu ( 0 ) maxprocs ( 1 ) pdg_usemaxtasks ( off ) pdg_maxtasks ( 0 ) verbose ( off ) pdg_waitforfailures ( off ) folder4 ( 0 ) pdg_workingdir ( '$HIP' ) hythonbin ( 0 ) hythonbincustomuniversal ( "" ) pdg_workitemdatasource ( 0 ) pdg_compressworkitemdata ( on ) pdg_validateoutputs ( on ) pdg_checkexpectedoutputs ( on ) sepparm2 ( ) pdg_mapmode ( 0 ) pdg_usemapzone ( off ) pdg_mapzone ( '$PDG_PATHMAP_ZONE' ) folder1 ( 0 ) tempdirmenu ( 1 ) tempdirappendpid ( on ) tempdircustom ( '$HOUDINI_TEMP_DIR/$HIPNAME/pdgtemp' ) pdg_deletetempdir ( 0 ) socketcallbacks ( 1 ) pdg_rpcignoreerrors ( 0 ) pdg_rpcmaxerrors ( 5 ) pdg_rpctimeout ( 4 ) pdg_rpcretries ( 2 ) pdg_rpcbackoff ( 2 ) pdg_rpcbatch ( 1 ) pdg_rpcrelease ( on ) folder0_3 ( 0 ) local_single ( off ) local_is_CPU_number_set ( off ) local_CPUs_to_use ( 1 ) folder6 ( 0 ) local_useminfreemem ( 0 ) local_minfreemem ( 0 ) local_minfreemempct ( 0 ) folder2 ( 0 ) local_enabletimeout ( off ) local_maxtime ( 0 ) local_handletimeout ( 0 ) sepparm4 ( ) local_enablemaxmemory ( off ) local_maxmemory ( 0 ) local_handlememory ( 0 ) sepparm5 ( ) local_echandleby ( 0 ) local_echandleall ( on ) local_eccustomcode ( 1 ) sepparm ( ) local_maximumretries ( 3 ) local_addfailcountattr ( off ) local_failcountattr ( failurecount ) folder3 ( 0 ) local_usehoudinimaxthreads ( off ) local_houdinimaxthreads ( 0 ) local_requireswindow ( off ) local_skippackages ( on ) local_envunset ( "" ) local_env_file ( "" ) local_envmulti ( 0 )
chlock localscheduler1 -*
chautoscope localscheduler1 -*
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off localscheduler1
opexprlanguage -s hscript localscheduler1
opuserdata -n '___Version___' -v '1' localscheduler1
oporder -e localscheduler localscheduler1 
opcf ..

# Node topnet2 (TopNet/topnet)
opadd -e -n topnet topnet2
oplocate -x 0 -y 0 topnet2
opspareds "" topnet2
opparm -V 20.5.370 topnet2 cookcontrolssection ( 0 ) generatestatic ( 0 ) cookbutton ( 0 ) dirtybutton ( 0 ) cancelbutton ( 0 ) taskgraphsection ( 0 ) checkpointformat ( 1 ) taskgraphfile ( '$HIP/$HIPNAME.taskgraph.$F.py' ) savetaskgraph ( 0 ) loadtaskgraph ( 0 ) taskgraphautosave ( off ) taskgraphsaverate ( 10 ) checkpointfile ( '$HIP/$HIPNAME.checkpoint.json' ) loadcheckpoint ( 0 ) checkpointload ( 0 ) checkpointenabled ( off ) checkpointrate ( 10 ) sep2 ( ) savegraphattribs ( on ) schedulersection ( 0 ) topscheduler ( "" ) usedefaultlabel ( off ) defaultlabel ( '$OS.`@pdg_index`' ) sep1 ( ) regenerationtype ( 0 ) evaluationtime ( 0 ) customtime ( 0 ) savescenefile ( on )
chlock topnet2 -*
chautoscope topnet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c off -e on -b off topnet2
opexprlanguage -s hscript topnet2
opuserdata -n '___Version___' -v '20.5.370' topnet2
oporder -e topnet1 topnet2 
opcf ..
oporder -e obj out ch shop img vex mat stage tasks 

opcf /
opcf obj
opcf test_stairs
opcf Stairs
opwire -n StairSkeleton -0 null1
opwire -n normal2 -0 merge8
opwire -n normal3 -1 merge8
opwire -n switch1 -2 merge8
opwire -n switch2 -3 merge8
opwire -n merge8 -0 fuse3
opwire -n fuse3 -0 group1
opwire -n group1 -0 dissolve1
opwire -n blast1 -0 extract_silhouette2
opwire -n extract_silhouette2 -0 extrudevolume6
opwire -n matchsize4 -0 boolean2
opwire -n switchif1 -1 boolean2
opwire -n extrudevolume6 -0 matchsize5
opwire -n boolean2 -0 extrudevolume7
opwire -n matchsize6 -0 boolean3
opwire -n matchsize5 -1 boolean3
opwire -n box2 -0 matchsize6
opwire -n extrudevolume7 -0 matchsize7
opcf StairSkeleton
opwire -n matchsize1 -0 output0
opwire -n switchif1 -0 transform3
opwire -n copytopoints3 -0 foreach_end3
opwire -n add3 -0 foreach_begin3
opwire -n merge2 -0 copytopoints3
opwire -n foreach_begin3 -1 copytopoints3
opwire -n transform3 -0 merge2
opwire -n transform7 -1 merge2
opcf StairSkeleton_Entrance
opwire -n merge1 -0 output0
opwire -n SlopeSkeleton_Base -0 delete_handle
opwire -n delete_handle -0 merge1
opwire -n delete_handle1 -1 merge1
opwire -n TransformToEndJoint2 -2 merge1
opcf SlopeSkeleton_Base
opwire -n merge4 -0 output0
opwire -n delete_handle -0 merge4
opwire -n delete_handle2 -1 merge4
opwire -n delete_handle3 -2 merge4
opwire -n matchsize1 -0 delete_handle
opwire -n -o 1 Landing -0 switch1
opwire -n transform1 -1 switch1
opwire -n transform2 -2 switch1
opwire -n -o 1 ElbowLeft -0 transform1
opwire -n -o 1 ElbowRight -0 transform2
opwire -n switch1 -0 matchsize1
opwire -n -o 1 Landing1 -0 switch2
opwire -n transform3 -1 switch2
opwire -n transform4 -2 switch2
opwire -n -o 1 ElbowLeft1 -0 transform3
opwire -n -o 1 ElbowRight1 -0 transform4
opwire -n switch2 -0 matchsize2
opwire -n TransformToEndJoint -0 delete_handle2
opwire -n TransformToEndJoint1 -0 delete_handle3
opwire -n -o 1 Slope -0 TransformToEndJoint
opwire -n matchsize1 -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n matchsize2 -0 TransformToEndJoint1
opwire -n TransformToEndJoint -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf ..
opwire -n TransformToEndJoint -0 delete_handle1
opwire -n -o 1 Straight1 -0 TransformToEndJoint
opwire -n SlopeSkeleton_Base -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n -o 1 Straight2 -0 TransformToEndJoint2
opwire -n TransformToEndJoint -1 TransformToEndJoint2
opcf TransformToEndJoint2
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf ..
opcf StairSkeleton_Intermediate
opwire -n merge1 -0 output0
opwire -n SlopeSkeleton_Base -0 delete_handle
opwire -n delete_handle -0 merge1
opwire -n delete_handle1 -1 merge1
opwire -n delete_handle2 -2 merge1
opwire -n TransformToEndJoint -0 delete_handle1
opwire -n TransformToEndJoint1 -0 delete_handle2
opwire -n -o 1 Straight1 -0 TransformToEndJoint
opwire -n SlopeSkeleton_Base -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n -o 1 Straight2 -0 TransformToEndJoint1
opwire -n TransformToEndJoint -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf SlopeSkeleton_Base
opwire -n merge4 -0 output0
opwire -n delete_handle -0 merge4
opwire -n delete_handle2 -1 merge4
opwire -n delete_handle3 -2 merge4
opwire -n matchsize1 -0 delete_handle
opwire -n -o 1 Landing -0 switch1
opwire -n transform1 -1 switch1
opwire -n transform2 -2 switch1
opwire -n -o 1 ElbowLeft -0 transform1
opwire -n -o 1 ElbowRight -0 transform2
opwire -n switch1 -0 matchsize1
opwire -n -o 1 Landing1 -0 switch2
opwire -n transform3 -1 switch2
opwire -n transform4 -2 switch2
opwire -n -o 1 ElbowLeft1 -0 transform3
opwire -n -o 1 ElbowRight1 -0 transform4
opwire -n switch2 -0 matchsize2
opwire -n TransformToEndJoint -0 delete_handle2
opwire -n TransformToEndJoint1 -0 delete_handle3
opwire -n -o 1 Slope -0 TransformToEndJoint
opwire -n matchsize1 -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n matchsize2 -0 TransformToEndJoint1
opwire -n TransformToEndJoint -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf ..
opcf ..
opwire -n switchif5 -0 transform7
opwire -n foreach_end3 -0 blast7
opwire -n object_merge1 -0 switchif5
opwire -n object_merge8 -1 switchif5
opcf StairSkeleton_Exit
opwire -n create_side_exit_group -0 output0
opwire -n SlopeSkeleton_Base -0 delete_handle
opwire -n delete_handle -0 merge1
opwire -n delete_handle2 -1 merge1
opwire -n delete_handle3 -2 merge1
opwire -n TransformToEndJoint -0 delete_handle2
opwire -n TransformToEndJoint1 -0 delete_handle3
opwire -n -o 1 Straight1 -0 TransformToEndJoint
opwire -n SlopeSkeleton_Base -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n -o 1 Straight2 -0 TransformToEndJoint1
opwire -n TransformToEndJoint -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf SlopeSkeleton_Base
opwire -n merge4 -0 output0
opwire -n delete_handle -0 merge4
opwire -n delete_handle2 -1 merge4
opwire -n delete_handle3 -2 merge4
opwire -n matchsize1 -0 delete_handle
opwire -n -o 1 Landing -0 switch1
opwire -n transform1 -1 switch1
opwire -n transform2 -2 switch1
opwire -n -o 1 ElbowLeft -0 transform1
opwire -n -o 1 ElbowRight -0 transform2
opwire -n switch1 -0 matchsize1
opwire -n -o 1 Landing1 -0 switch2
opwire -n transform3 -1 switch2
opwire -n transform4 -2 switch2
opwire -n -o 1 ElbowLeft1 -0 transform3
opwire -n -o 1 ElbowRight1 -0 transform4
opwire -n switch2 -0 matchsize2
opwire -n TransformToEndJoint -0 delete_handle2
opwire -n TransformToEndJoint1 -0 delete_handle3
opwire -n -o 1 Slope -0 TransformToEndJoint
opwire -n matchsize1 -1 TransformToEndJoint
opcf TransformToEndJoint
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n matchsize2 -0 TransformToEndJoint1
opwire -n TransformToEndJoint -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opcf ..
opwire -n SlopeSkeleton_Base -0 switchif1
opwire -n merge1 -1 switchif1
opwire -n switchif1 -0 create_side_exit_group
opwire -n create_side_exit_group -0 blast1
opcf ..
opwire -n object_merge7 -0 switchif1
opwire -n object_merge1 -1 switchif1
opwire -n merge3 -0 foreach_end1
opwire -n object_merge2 -0 foreach_begin1
opwire -n object_merge9 -0 TransformToEndJoint1
opwire -n foreach_begin1 -1 TransformToEndJoint1
opcf TransformToEndJoint1
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n delete_handle3 -0 merge3
opwire -n delete_handle4 -1 merge3
opwire -n foreach_begin1 -0 delete_handle3
opwire -n TransformToEndJoint1 -0 delete_handle4
opwire -n object_merge10 -0 TransformToEndJoint2
opwire -n foreach_end1 -1 TransformToEndJoint2
opcf TransformToEndJoint2
opwire -n -i 0 -0 attribwrangle6
opwire -n blast3 -1 attribwrangle6
opwire -n blast4 -2 attribwrangle6
opwire -n -i 0 -0 blast4
opwire -n attribwrangle6 -0 output0
opwire -n -i 1 -0 blast3
opcf ..
opwire -n TransformToEndJoint2 -0 delete_handle5
opwire -n delete_handle6 -0 merge4
opwire -n delete_handle5 -1 merge4
opwire -n merge4 -0 matchsize1
opwire -n foreach_end1 -0 delete_handle6
opcf ..
opwire -n grid1 -0 matchsize4
opwire -n facet1 -0 extrudevolume3
opwire -n reverse1 -0 polyextrude5
opwire -n null1 -0 blast8
opwire -n blast2 -0 blast10
opwire -n blast1 -0 reverse2
opwire -n switchif3 -0 join2
opwire -n blast8 -0 fuse4
opwire -n blast10 -0 switchif3
opwire -n blast11 -1 switchif3
opwire -n blast2 -0 blast11
opwire -n null1 -0 blast2
opwire -n fuse4 -0 extrudevolume1
opwire -n merge1 -0 output0
opwire -n matchsize7 -0 group3
opwire -n group3 -0 dissolve3
opwire -n extrudevolume3 -0 blast1
opwire -n dissolve1 -0 uvunwrap1
opwire -n dissolve1 -0 uvtexture1
opwire -n reverse2 -0 switchif4
opwire -n blast1 -1 switchif4
opwire -n join2 -0 facet1
opwire -n extrudevolume1 -0 normal2
opwire -n dissolve3 -0 normal3
opwire -n facet1 -0 Fence
opcf Fence
opwire -n matchsize1 -0 copytopoints2
opwire -n avoid_support_tilting -1 copytopoints2
opwire -n resample_primary_support -0 resample_secondary_support
opcf resample_secondary_support
opwire -n -i 0 -0 group2
opwire -n resample7 -0 grouptransfer2
opwire -n group2 -1 grouptransfer2
opwire -n -i 0 -0 resample7
opwire -n grouptransfer2 -0 output0
opcf ..
opwire -n merge1 -0 output0
opwire -n tube2 -0 matchsize1
opwire -n matchsize2 -0 copytopoints3
opwire -n avoid_support_tilting -1 copytopoints3
opwire -n tube3 -0 matchsize2
opwire -n copytopoints2 -0 merge1
opwire -n copytopoints3 -1 merge1
opwire -n transform4 -2 merge1
opwire -n polybevel1 -3 merge1
opwire -n -i 0 -0 resample_primary_support
opwire -n resample_secondary_support -0 orientalongcurve1
opwire -n facet2 -0 transform3
opwire -n facet2 -0 transform4
opwire -n transform3 -0 polybevel1
opwire -n -i 0 -0 facet1
opwire -n blast1 -0 polyextrude3
opwire -n blast1 -0 polyextrude4
opwire -n facet1 -0 extrudevolume2
opwire -n polyextrude3 -0 merge3
opwire -n reverse2 -1 merge3
opwire -n polyextrude4 -0 reverse2
opwire -n switch1 -0 fuse2
opwire -n fuse2 -0 group2
opwire -n group2 -0 dissolve2
opwire -n dissolve2 -0 facet2
opwire -n orientalongcurve1 -0 avoid_support_tilting
opwire -n blast1 -0 polyextrude5
opwire -n blast1 -0 polyextrude6
opwire -n polyextrude6 -0 reverse3
opwire -n merge3 -0 switch1
opwire -n polyextrude5 -1 switch1
opwire -n reverse3 -2 switch1
opwire -n extrudevolume2 -0 blast1
opcf ..
opwire -n polyextrude5 -0 switch1
opwire -n Fence -1 switch1
opwire -n boolean3 -0 switchif1
opwire -n matchsize5 -1 switchif1
opwire -n switchif4 -0 reverse1
opwire -n switchif6 -0 join3
opwire -n join3 -0 facet2
opwire -n blast3 -0 switchif6
opwire -n blast4 -1 switchif6
opwire -n blast2 -0 blast3
opwire -n blast2 -0 blast4
opwire -n facet2 -0 extrudevolume8
opwire -n reverse4 -0 polyextrude6
opwire -n blast12 -0 reverse3
opwire -n extrudevolume8 -0 blast12
opwire -n reverse3 -0 switchif7
opwire -n blast12 -1 switchif7
opwire -n switchif7 -0 reverse4
opwire -n polyextrude6 -0 switch2
opwire -n Fence1 -1 switch2
opwire -n facet2 -0 Fence1
opcf Fence1
opwire -n matchsize1 -0 copytopoints2
opwire -n avoid_support_tilting -1 copytopoints2
opwire -n resample_primary_support -0 resample_secondary_support
opcf resample_secondary_support
opwire -n -i 0 -0 group2
opwire -n resample7 -0 grouptransfer2
opwire -n group2 -1 grouptransfer2
opwire -n -i 0 -0 resample7
opwire -n grouptransfer2 -0 output0
opcf ..
opwire -n merge1 -0 output0
opwire -n tube2 -0 matchsize1
opwire -n matchsize2 -0 copytopoints3
opwire -n avoid_support_tilting -1 copytopoints3
opwire -n tube3 -0 matchsize2
opwire -n copytopoints2 -0 merge1
opwire -n copytopoints3 -1 merge1
opwire -n transform4 -2 merge1
opwire -n polybevel1 -3 merge1
opwire -n -i 0 -0 resample_primary_support
opwire -n resample_secondary_support -0 orientalongcurve1
opwire -n facet2 -0 transform3
opwire -n facet2 -0 transform4
opwire -n transform3 -0 polybevel1
opwire -n -i 0 -0 facet1
opwire -n blast1 -0 polyextrude3
opwire -n blast1 -0 polyextrude4
opwire -n facet1 -0 extrudevolume2
opwire -n polyextrude3 -0 merge3
opwire -n reverse2 -1 merge3
opwire -n polyextrude4 -0 reverse2
opwire -n switch1 -0 fuse2
opwire -n fuse2 -0 group2
opwire -n group2 -0 dissolve2
opwire -n dissolve2 -0 facet2
opwire -n orientalongcurve1 -0 avoid_support_tilting
opwire -n blast1 -0 polyextrude5
opwire -n blast1 -0 polyextrude6
opwire -n polyextrude6 -0 reverse3
opwire -n merge3 -0 switch1
opwire -n polyextrude5 -1 switch1
opwire -n reverse3 -2 switch1
opwire -n extrudevolume2 -0 blast1
opcf ..
opwire -n null1 -0 blast13
opwire -n uvunwrap1 -0 merge1
opwire -n blast13 -1 merge1
opcf ..
opwire -n Stairs -0 clip1
opcf ..
opcf test_fence
opwire -n add1 -0 resample6
opwire -n resample6 -0 Fence
opcf Fence
opwire -n matchsize1 -0 copytopoints2
opwire -n avoid_support_tilting -1 copytopoints2
opwire -n resample_primary_support -0 resample_secondary_support
opcf resample_secondary_support
opwire -n -i 0 -0 group2
opwire -n resample7 -0 grouptransfer2
opwire -n group2 -1 grouptransfer2
opwire -n -i 0 -0 resample7
opwire -n grouptransfer2 -0 output0
opcf ..
opwire -n merge1 -0 output0
opwire -n tube2 -0 matchsize1
opwire -n matchsize2 -0 copytopoints3
opwire -n avoid_support_tilting -1 copytopoints3
opwire -n tube3 -0 matchsize2
opwire -n copytopoints2 -0 merge1
opwire -n copytopoints3 -1 merge1
opwire -n transform4 -2 merge1
opwire -n polybevel1 -3 merge1
opwire -n -i 0 -0 resample_primary_support
opwire -n resample_secondary_support -0 orientalongcurve1
opwire -n facet2 -0 transform3
opwire -n facet2 -0 transform4
opwire -n transform3 -0 polybevel1
opwire -n -i 0 -0 facet1
opwire -n blast1 -0 polyextrude3
opwire -n blast1 -0 polyextrude4
opwire -n facet1 -0 extrudevolume2
opwire -n polyextrude3 -0 merge3
opwire -n reverse2 -1 merge3
opwire -n polyextrude4 -0 reverse2
opwire -n switch1 -0 fuse2
opwire -n fuse2 -0 group2
opwire -n group2 -0 dissolve2
opwire -n dissolve2 -0 facet2
opwire -n orientalongcurve1 -0 avoid_support_tilting
opwire -n blast1 -0 polyextrude5
opwire -n blast1 -0 polyextrude6
opwire -n polyextrude6 -0 reverse3
opwire -n merge3 -0 switch1
opwire -n polyextrude5 -1 switch1
opwire -n reverse3 -2 switch1
opwire -n extrudevolume2 -0 blast1
opcf ..
opwire -n add1 -0 Fence_var1
opcf Fence_var1
opwire -n matchsize1 -0 copytopoints2
opwire -n avoid_support_tilting -1 copytopoints2
opwire -n merge1 -0 output0
opwire -n tube2 -0 matchsize1
opwire -n copytopoints2 -0 merge1
opwire -n facet3 -1 merge1
opwire -n transform4 -2 merge1
opwire -n polybevel1 -3 merge1
opwire -n -i 0 -0 resample_primary_support
opwire -n resample_primary_support -0 orientalongcurve1
opwire -n facet2 -0 transform3
opwire -n facet2 -0 transform4
opwire -n transform3 -0 polybevel1
opwire -n -i 0 -0 facet1
opwire -n blast1 -0 polyextrude3
opwire -n blast1 -0 polyextrude4
opwire -n facet1 -0 extrudevolume2
opwire -n polyextrude3 -0 merge3
opwire -n reverse2 -1 merge3
opwire -n polyextrude4 -0 reverse2
opwire -n switch1 -0 fuse2
opwire -n fuse2 -0 group2
opwire -n group2 -0 dissolve2
opwire -n dissolve2 -0 facet2
opwire -n orientalongcurve1 -0 avoid_support_tilting
opwire -n blast1 -0 polyextrude5
opwire -n blast1 -0 polyextrude6
opwire -n polyextrude6 -0 reverse3
opwire -n merge3 -0 switch1
opwire -n polyextrude5 -1 switch1
opwire -n reverse3 -2 switch1
opwire -n extrudevolume2 -0 blast1
opwire -n transform5 -0 extrudevolume1
opwire -n resample_primary_support -0 transform5
opwire -n extrudevolume1 -0 blast2
opwire -n merge4 -0 switch3
opwire -n polyextrude9 -1 switch3
opwire -n reverse5 -2 switch3
opwire -n blast2 -0 polyextrude7
opwire -n blast2 -0 polyextrude8
opwire -n polyextrude7 -0 merge4
opwire -n reverse4 -1 merge4
opwire -n polyextrude8 -0 reverse4
opwire -n blast2 -0 polyextrude9
opwire -n blast2 -0 polyextrude10
opwire -n polyextrude10 -0 reverse5
opwire -n switch3 -0 fuse3
opwire -n fuse3 -0 group3
opwire -n group3 -0 dissolve3
opwire -n dissolve3 -0 facet3
opcf ..
opcf ..
opcf test_outside_corridor
opwire -n resample6 -0 OutisideCorridor
opcf OutisideCorridor
opwire -n dissolve1 -0 output0
opwire -n Aisle2 -0 switch2
opwire -n -o 1 Aisle2 -1 switch2
opwire -n -o 2 Aisle2 -2 switch2
opwire -n switch2 -0 extrudevolume1
opwire -n extrudevolume1 -0 polyextrude1
opwire -n polyextrude1 -0 group1
opwire -n group1 -0 dissolve1
opwire -n -i 0 -0 Aisle2
opwire -n object_merge1 -0 blast1
opcf ..
opwire -n add1 -0 resample6
opcf ..
opcf ..
opcf out
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
