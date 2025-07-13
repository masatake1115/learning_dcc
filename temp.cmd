# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node Modules (Object/geo)
opadd -e -n geo Modules
oplocate -x -4.5833399999999997 -y 1.46434 Modules
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' Modules
opset -S off Modules
opparm -V 20.5.370 Modules stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( off ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock Modules -*
chautoscope Modules -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off Modules
opexprlanguage -s hscript Modules
opuserdata -n '___Version___' -v '20.5.370' Modules
opcf Modules

# Node ApartmentCorridor_4m (Sop/subnet)
opadd -e -n subnet ApartmentCorridor_4m
oplocate -x -15.7456 -y -0.093870700000000001 ApartmentCorridor_4m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "WindowGrate"         label   "WindowGrate"         type    integer         default { "0" }         range   { 0! 1! }         parmtag { "script_callback_language" "python" }     } ' ApartmentCorridor_4m
opparm -V 20.5.370 ApartmentCorridor_4m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Mirror ( off ) WindowGrate ( 0 )
chlock ApartmentCorridor_4m -*
chautoscope ApartmentCorridor_4m -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentCorridor_4m
opexprlanguage -s hscript ApartmentCorridor_4m
opuserdata -n '___Version___' -v '20.5.370' ApartmentCorridor_4m
opcf ApartmentCorridor_4m

# Node FrontDoor1 (Sop/FrontDoor)
opadd -e -n FrontDoor FrontDoor1
oplocate -x 0 -y 6.1117999999999997 FrontDoor1
opspareds "" FrontDoor1
opparm FrontDoor1 Width ( 1 ) Height ( 2 ) Depth ( 0.05 ) FrameWidth ( 0.03 )
chlock FrontDoor1 -*
chautoscope FrontDoor1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off FrontDoor1
opexprlanguage -s hscript FrontDoor1
opuserdata -n '___Version___' -v '' FrontDoor1

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x -1.9475100000000001 -y 1.3898600000000001 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 2 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 2 ) useinput1 ( on ) name1 ( split1 ) treatasfolder1 ( default ) useinput2 ( on ) name2 ( transform1 ) treatasfolder2 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node WindowFrame1 (Sop/WindowFrame)
opadd -e -n WindowFrame WindowFrame1
oplocate -x -5.6098499999999998 -y 6.1117999999999997 WindowFrame1
opspareds "" WindowFrame1
opparm WindowFrame1 Width ( 1.7 ) Height ( 1.2 ) Depth ( 0.05 ) SideFrameWidth ( 0.03 ) TopFrameWidth ( 0.05 ) BottomFrameWidth ( 0.05 )
chlock WindowFrame1 -*
chautoscope WindowFrame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowFrame1
opexprlanguage -s hscript WindowFrame1
opuserdata -n '___Version___' -v '' WindowFrame1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 0 -y 4.8207500000000003 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.05 0 2.7 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -4.0135500000000004 -y 3.3898600000000001 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.01 0.8 1.1 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node WindowGrate1 (Sop/WindowGrate)
opadd -e -n WindowGrate WindowGrate1
oplocate -x -3.3576899999999998 -y 6.2856300000000003 WindowGrate1
opspareds "" WindowGrate1
opparm WindowGrate1 folder0 ( 1 ) Width ( 1.7 ) Height ( 1.2 ) folder1 ( 1 ) BeamWidthH ( 0.03 ) BeamDepthH ( 0.01 ) FrontOffset ( 0.1 ) VerticalMargin ( 0.2 ) VerticalBeam ( 1 ) Interval ( 0.15 ) BeamWidthV ( 0.03 ) BeamDepthV ( 0.03 ) BeamDepthOffsetV ( 0 ) OffsetV ( 0 )
chlock WindowGrate1 -*
chautoscope WindowGrate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowGrate1
opexprlanguage -s hscript WindowGrate1
opuserdata -n '___Version___' -v '' WindowGrate1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -4.0147500000000003 -y 4.3857200000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -5.6098499999999998 -y 5.2581300000000004 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -4.0147000000000004 -y -1.3543099999999999 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x -4.0135500000000004 -y 2.5948699999999998 split1
opspareds "" split1
opparm split1 group ( '@component_type=grate' ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -4.0135500000000004 -y -6.4970400000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x 3.2786400000000002 -y 2.22444 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 0.03 0.15 0.1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 3.2786400000000002 -y 1.2390000000000001 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.007 1.26 2.5 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x 3.2786400000000002 -y 0.176784 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 20.5.370 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( intercom ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '20.5.370' attribcreate1

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x -3.3583699999999999 -y -2.4220999999999999 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -4.0135500000000004 -y -3.7013500000000001 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node WindowGrate_Lattice1 (Sop/WindowGrate_Lattice)
opadd -e -n WindowGrate_Lattice WindowGrate_Lattice1
oplocate -x -1.7109399999999999 -y 6.2856300000000003 WindowGrate_Lattice1
opspareds "" WindowGrate_Lattice1
opparm WindowGrate_Lattice1 Width ( 1.7 ) Height ( 1.2 ) Rotation ( 45 ) Scale ( 1 ) LatticeDetail ( 10 ) BeamWidth ( 0.01 ) BeamDepth ( 0.01 ) LatticeInterval ( 0.1 ) FrontOffset ( 0.05 ) BeamWidthH ( 0.03 ) BeamDepthH ( 0.01 ) VerticalMargin ( 0.2 )
chlock WindowGrate_Lattice1 -*
chautoscope WindowGrate_Lattice1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowGrate_Lattice1
opexprlanguage -s hscript WindowGrate_Lattice1
opuserdata -n '___Version___' -v '' WindowGrate_Lattice1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -2.40544 -y 5.25793 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../WindowGrate")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node ProceduralWall2 (Sop/ProceduralWall)
opadd -e -n ProceduralWall ProceduralWall2
oplocate -x -1.9475100000000001 -y 0.32067499999999999 ProceduralWall2
opspareds "" ProceduralWall2
opparm ProceduralWall2 Width ( 4 ) Height ( 2.8 ) Depth ( 0.15 )
chlock ProceduralWall2 -*
chautoscope ProceduralWall2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall2
opexprlanguage -s hscript ProceduralWall2
opuserdata -n '___Version___' -v '' ProceduralWall2

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x -4.0135500000000004 -y -5.03409 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2
oporder -e FrontDoor1 mergepacked1 WindowFrame1 transform1 transform2 WindowGrate1 merge1 matchsize1 merge2 split1 output0 box1 transform3 attribcreate1 mirror2 switchif1 WindowGrate_Lattice1 switch1 ProceduralWall2 matchsize2 
opcf ..

# Node ApartmentCorridor_2m (Sop/subnet)
opadd -e -n subnet ApartmentCorridor_2m
oplocate -x -18.3888 -y 1.0928500000000001 ApartmentCorridor_2m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     } ' ApartmentCorridor_2m
opparm -V 20.5.370 ApartmentCorridor_2m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Mirror ( off )
chlock ApartmentCorridor_2m -*
chautoscope ApartmentCorridor_2m -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentCorridor_2m
opexprlanguage -s hscript ApartmentCorridor_2m
opuserdata -n '___Version___' -v '20.5.370' ApartmentCorridor_2m
opcf ApartmentCorridor_2m

# Node FrontDoor1 (Sop/FrontDoor)
opadd -e -n FrontDoor FrontDoor1
oplocate -x -1.11759e-08 -y 5.8788499999999999 FrontDoor1
opspareds "" FrontDoor1
opparm FrontDoor1 Width ( 1 ) Height ( 2 ) Depth ( 0.05 ) FrameWidth ( 0.03 )
chlock FrontDoor1 -*
chautoscope FrontDoor1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off FrontDoor1
opexprlanguage -s hscript FrontDoor1
opuserdata -n '___Version___' -v '' FrontDoor1

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x 0 -y 3.3606500000000001 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 1 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 1 ) useinput1 ( on ) name1 ( transform1 ) treatasfolder1 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 0 -y 4.8207500000000003 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.05 0 0.75 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0011999999999999999 -y 0.63542500000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x 0.65518399999999999 -y -0.59392800000000001 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 9.3132299999999993e-09 -y -5.0230300000000003 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x 3.1257299999999999 -y 4.8207500000000003 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 0.03 0.15 0.1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x 3.1257299999999999 -y 3.8353100000000002 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.007930256426334381 1.2610890716314316 0.4702513962984085 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x 3.1257299999999999 -y 2.7730899999999998 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 20.5.370 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( intercom ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '20.5.370' attribcreate1

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x 0 -y -1.8731800000000001 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node ProceduralWall1 (Sop/ProceduralWall)
opadd -e -n ProceduralWall ProceduralWall1
oplocate -x 0 -y 2.2084100000000002 ProceduralWall1
opspareds "" ProceduralWall1
opparm ProceduralWall1 Width ( 2 ) Height ( 2.8 ) Depth ( 0.15 )
chlock ProceduralWall1 -*
chautoscope ProceduralWall1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall1
opexprlanguage -s hscript ProceduralWall1
opuserdata -n '___Version___' -v '' ProceduralWall1

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 9.3132299999999993e-09 -y -3.36239 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2
oporder -e FrontDoor1 mergepacked1 transform1 merge2 mirror1 output0 box1 transform2 attribcreate1 switchif1 ProceduralWall1 matchsize2 
opcf ..

# Node ApartmentCorridor_5m (Sop/subnet)
opadd -e -n subnet ApartmentCorridor_5m
oplocate -x -13.8772 -y 0.78814899999999999 ApartmentCorridor_5m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Wall_Width"         label   "Wall_Width"         type    float         default { "5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Wall_Height"         label   "Wall_Height"         type    float         default { "2.8" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "WindowGrate"         label   "WindowGrate"         type    integer         default { "0" }         range   { 0! 1! }         parmtag { "script_callback_language" "python" }     } ' ApartmentCorridor_5m
opparm -V 20.5.370 ApartmentCorridor_5m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Wall_Width ( 5 ) Wall_Height ( 2.8 ) Mirror ( off ) WindowGrate ( 0 )
chlock ApartmentCorridor_5m -*
chautoscope ApartmentCorridor_5m -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentCorridor_5m
opexprlanguage -s hscript ApartmentCorridor_5m
opuserdata -n '___Version___' -v '20.5.370' ApartmentCorridor_5m
opcf ApartmentCorridor_5m

# Node FrontDoor1 (Sop/FrontDoor)
opadd -e -n FrontDoor FrontDoor1
oplocate -x 1.74132 -y 5.35886 FrontDoor1
opspareds "" FrontDoor1
opparm FrontDoor1 Width ( 1 ) Height ( 2 ) Depth ( 0.05 ) FrameWidth ( 0.03 )
chlock FrontDoor1 -*
chautoscope FrontDoor1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off FrontDoor1
opexprlanguage -s hscript FrontDoor1
opuserdata -n '___Version___' -v '' FrontDoor1

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x -1.11759e-08 -y -0.156556 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 2 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 2 ) useinput1 ( on ) name1 ( split1 ) treatasfolder1 ( default ) useinput2 ( on ) name2 ( transform1 ) treatasfolder2 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node WindowFrame1 (Sop/WindowFrame)
opadd -e -n WindowFrame WindowFrame1
oplocate -x -6.6208900000000002 -y 5.35886 WindowFrame1
opspareds "" WindowFrame1
opparm WindowFrame1 Width ( 1.7 ) Height ( 1.2 ) Depth ( 0.05 ) SideFrameWidth ( 0.03 ) TopFrameWidth ( 0.05 ) BottomFrameWidth ( 0.05 )
chlock WindowFrame1 -*
chautoscope WindowFrame1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowFrame1
opexprlanguage -s hscript WindowFrame1
opuserdata -n '___Version___' -v '' WindowFrame1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 1.74132 -y 4.0678099999999997 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tz
chkey -t 0 -v 2.6000000000000001 -m 0 -a 0 -A 0 -T a  -F '0.52*ch("../Wall_Width")' transform1/tz
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.05 0 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -3.1041400000000001 -y 2.0275400000000001 transform2
opspareds "" transform2
chblockbegin
chadd -t 0 0 transform2 tz
chkey -t 0 -v 1.2 -m 0 -a 0 -A 0 -T a  -F '0.24*ch("../Wall_Width")' transform2/tz
chblockend
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.05 0.8 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node WindowGrate1 (Sop/WindowGrate)
opadd -e -n WindowGrate WindowGrate1
oplocate -x -3.9837600000000002 -y 5.35886 WindowGrate1
opspareds "" WindowGrate1
opparm WindowGrate1 folder0 ( 1 ) Width ( 1.7 ) Height ( 1.2 ) folder1 ( 1 ) BeamWidthH ( 0.03 ) BeamDepthH ( 0.01 ) FrontOffset ( 0.1 ) VerticalMargin ( 0.2 ) VerticalBeam ( 1 ) Interval ( 0.15 ) BeamWidthV ( 0.03 ) BeamDepthV ( 0.03 ) BeamDepthOffsetV ( 0 ) OffsetV ( 0 )
chlock WindowGrate1 -*
chautoscope WindowGrate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowGrate1
opexprlanguage -s hscript WindowGrate1
opuserdata -n '___Version___' -v '' WindowGrate1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -3.10534 -y 3.0234000000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -6.6208900000000002 -y 4.5051899999999998 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0011500200000000001 -y -3.1907800000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x -3.1041400000000001 -y 1.23255 split1
opspareds "" split1
opparm split1 group ( '@component_type=grate' ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -9.3547899999999995 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node intercom (Sop/box)
opadd -e -n box intercom
oplocate -x 3.8744700000000001 -y 0.95554799999999995 intercom
opspareds "" intercom
opparm -V 20.5.370 intercom type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 0.03 0.15 0.1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock intercom -*
chautoscope intercom -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off intercom
opexprlanguage -s hscript intercom
opuserdata -n '___Version___' -v '20.5.370' intercom

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 3.8744700000000001 -y -0.0298923 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 tz
chkey -t 0 -v 2.3999999999999999 -m 0 -a 0 -A 0 -T a  -F '0.48*ch("../Wall_Width")' transform3/tz
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.007 1.25 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x 3.8744700000000001 -y -1.0921099999999999 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 20.5.370 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( intercom ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '20.5.370' attribcreate1

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x 0.65517999999999998 -y -4.58589 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -2.0489100000000001e-08 -y -5.8651400000000002 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node hot_water_supply (Sop/box)
opadd -e -n box hot_water_supply
oplocate -x 7.39933 -y 1.87016 hot_water_supply
opspareds "" hot_water_supply
opparm -V 20.5.370 hot_water_supply type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 0.03 2 0.75 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock hot_water_supply -*
chautoscope hot_water_supply -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off hot_water_supply
opexprlanguage -s hscript hot_water_supply
opuserdata -n '___Version___' -v '20.5.370' hot_water_supply

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 7.39933 -y -0.20723800000000001 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 tz
chkey -t 0 -v 4.3499999999999996 -m 0 -a 0 -A 0 -T a  -F '0.87*ch("../Wall_Width")' transform4/tz
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0.05 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node attribcreate2 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate2
oplocate -x 7.39588 -y -1.0921099999999999 attribcreate2
opspareds "" attribcreate2
opparm attribcreate2  numattr ( 1 )
opparm -V 20.5.370 attribcreate2 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( hotwatersupply ) numattr_spacerparm1 ( )
chlock attribcreate2 -*
chautoscope attribcreate2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate2
opexprlanguage -s hscript attribcreate2
opuserdata -n '___Version___' -v '20.5.370' attribcreate2

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 7.39933 -y 0.73399800000000004 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node WindowGrate_Lattice1 (Sop/WindowGrate_Lattice)
opadd -e -n WindowGrate_Lattice WindowGrate_Lattice1
oplocate -x -1.2866899999999999 -y 5.35886 WindowGrate_Lattice1
opspareds "" WindowGrate_Lattice1
opparm WindowGrate_Lattice1 Width ( 1.7 ) Height ( 1.2 ) Rotation ( 45 ) Scale ( 1 ) LatticeDetail ( 10 ) BeamWidth ( 0.01 ) BeamDepth ( 0.01 ) LatticeInterval ( 0.1 ) FrontOffset ( 0.05 ) BeamWidthH ( 0.03 ) BeamDepthH ( 0.01 ) VerticalMargin ( 0.2 )
chlock WindowGrate_Lattice1 -*
chautoscope WindowGrate_Lattice1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off WindowGrate_Lattice1
opexprlanguage -s hscript WindowGrate_Lattice1
opuserdata -n '___Version___' -v '' WindowGrate_Lattice1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -2.6912500000000001 -y 4.0691699999999997 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../WindowGrate")' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x -1.11759e-08 -y -7.4805299999999999 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node ProceduralWall2 (Sop/ProceduralWall)
opadd -e -n ProceduralWall ProceduralWall2
oplocate -x -1.11759e-08 -y -1.0921099999999999 ProceduralWall2
opspareds "" ProceduralWall2
chblockbegin
chadd -t 0 0 ProceduralWall2 Width
chkey -t 0 -v 5 -m 0 -a 0 -A 0 -T a  -F 'ch("../Wall_Width")' ProceduralWall2/Width
chadd -t 0 0 ProceduralWall2 Height
chkey -t 0 -v 2.7999999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../Wall_Height")' ProceduralWall2/Height
chblockend
opparm ProceduralWall2 Width ( Width ) Height ( Height ) Depth ( 0.15 )
chlock ProceduralWall2 -*
chautoscope ProceduralWall2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall2
opexprlanguage -s hscript ProceduralWall2
opuserdata -n '___Version___' -v '' ProceduralWall2
oporder -e FrontDoor1 mergepacked1 WindowFrame1 transform1 transform2 WindowGrate1 merge1 matchsize1 merge2 split1 output0 intercom transform3 attribcreate1 mirror2 switchif1 hot_water_supply transform4 attribcreate2 matchsize2 WindowGrate_Lattice1 switch1 matchsize3 ProceduralWall2 
opcf ..

# Node ApartmentFront_2m (Sop/subnet)
opadd -e -n subnet ApartmentFront_2m
oplocate -x -19.0215 -y -1.6558900000000001 ApartmentFront_2m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Depth"         label   "Depth"         type    float         default { "0.1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' ApartmentFront_2m
opparm -V 20.5.370 ApartmentFront_2m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Mirror ( off ) Depth ( 0.1 )
chlock ApartmentFront_2m -*
chautoscope ApartmentFront_2m -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentFront_2m
opexprlanguage -s hscript ApartmentFront_2m
opuserdata -n '___Version___' -v '20.5.370' ApartmentFront_2m
opcf ApartmentFront_2m

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x 0 -y 3.3606500000000001 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 1 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 1 ) useinput1 ( on ) name1 ( transform1 ) treatasfolder1 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 0 -y 4.8207500000000003 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tx
chkey -t 0 -v -0.050000000000000003 -m 0 -a 0 -A 0 -T a  -F '-ch("../Depth")' transform1/tx
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( tx 0.15 -0.9 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node ProceduralWall1 (Sop/ProceduralWall)
opadd -e -n -u ProceduralWall ProceduralWall1
oplocate -x 0 -y 2.2914699999999999 ProceduralWall1
opspareds "" ProceduralWall1
opparm ProceduralWall1 Width ( 2 ) Height ( 2.8 ) Depth ( 0.15 )
chlock ProceduralWall1 -*
chautoscope ProceduralWall1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall1
opexprlanguage -s hscript ProceduralWall1
opuserdata -n '___Version___' -v '' ProceduralWall1
opcf ProceduralWall1

# Network Box __netbox1
nbadd __netbox1
nblocate -x -5.03225 -y -8.27952 __netbox1
nbsize -w 3.96095 -h 2.59181 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 12.285 -y 1.12051 __netbox2
nbsize -w 2.8 -h 3.78988 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 3.1 -y -11.5765 __netbox3
nbsize -w 6.35682 -h 16.3619 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x 2.33514 -y -16.451 __netbox4
nbsize -w 2.8 -h 3.95639 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Node subtract_module_space_from_wall (Sop/boolean::2.0)
opadd -e -n boolean::2.0 subtract_module_space_from_wall
oplocate -x 7.2520199999999999 -y -14.8125 subtract_module_space_from_wall
opspareds "" subtract_module_space_from_wall
opparm -V 20.5.370 subtract_module_space_from_wall inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( subtract ) subtractchoices ( bminusa ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( on ) abseamedges ( abseams )
chlock subtract_module_space_from_wall -*
chautoscope subtract_module_space_from_wall -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off subtract_module_space_from_wall
opexprlanguage -s hscript subtract_module_space_from_wall
opuserdata -n '___Version___' -v '20.5.370' subtract_module_space_from_wall

# Node normal3 (Sop/normal)
opadd -e -n normal normal3
oplocate -x 3.5086400000000002 -y -26.474299999999999 normal3
opspareds "" normal3
opparm -V 20.5.370 normal3 group ( "" ) grouptype ( guess ) overridenormal ( off ) normalattrib ( N ) construct ( 0 ) docompute ( on ) type ( typevertex ) cuspangle ( 15 ) method ( 1 ) origifzero ( on ) modify ( 0 ) normalize ( off ) reverse ( off )
chlock normal3 -*
chautoscope normal3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on normal3
opexprlanguage -s hscript normal3
opuserdata -n '___Version___' -v '20.5.370' normal3

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x 3.5 -y -22.410699999999999 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 3.5 -y -23.410699999999999 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node clean1 (Sop/clean)
opadd -e -n clean clean1
oplocate -x 3.5 -y -21.393999999999998 clean1
opspareds "" clean1
opparm clean1 fusepts ( off ) fusedist ( 0.001 ) deldegengeo ( on ) degentol ( 0.001 ) removeunusedgrp ( on ) orientpoly ( off ) reversewinding ( off ) fixoverlap ( off ) deleteoverlap ( on ) delunusedpts ( on ) dodelattribs ( off ) delattribs ( * ) dodelgroups ( off ) delgroups ( * ) delnans ( on ) make_manifold ( off ) delete_small ( on ) prim_count ( 3 )
chlock clean1 -*
chautoscope clean1 -* +delete_small
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean1
opexprlanguage -s hscript clean1
opuserdata -n '___Version___' -v '' clean1

# Node clip_window_geometories (Sop/boolean::2.0)
opadd -e -n boolean::2.0 clip_window_geometories
oplocate -x -0.118301 -y -16.754999999999999 clip_window_geometories
opspareds "" clip_window_geometories
opparm -V 20.5.370 clip_window_geometories inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( intersect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock clip_window_geometories -*
chautoscope clip_window_geometories -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_window_geometories
opexprlanguage -s hscript clip_window_geometories
opuserdata -n '___Version___' -v '20.5.370' clip_window_geometories

# Node boolean2 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean2
oplocate -x 5.0888600000000004 -y -18.240500000000001 boolean2
opspareds "" boolean2
opparm -V 20.5.370 boolean2 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( union ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean2 -*
chautoscope boolean2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean2
opexprlanguage -s hscript boolean2
opuserdata -n '___Version___' -v '20.5.370' boolean2

# Node boolean3 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean3
oplocate -x 3.5 -y -20.226299999999998 boolean3
opspareds "" boolean3
opparm -V 20.5.370 boolean3 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( union ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean3 -*
chautoscope boolean3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean3
opexprlanguage -s hscript boolean3
opuserdata -n '___Version___' -v '20.5.370' boolean3

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x 3.5 -y -24.4451 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 20.5.370 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( 'extrudeFront sideskirt_geom ' )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '20.5.370' groupdelete1

# Node attribdelete1 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete1
oplocate -x 3.5 -y -25.4451 attribdelete1
opspareds "" attribdelete1
opparm attribdelete1 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( "" ) dovtxdel ( on ) vtxdel ( "" ) doprimdel ( on ) primdel ( name ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete1 -*
chautoscope attribdelete1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete1
opexprlanguage -s hscript attribdelete1
opuserdata -n '___Version___' -v '' attribdelete1

# Node uvtexture1 (Sop/texture)
opadd -e -n texture uvtexture1
oplocate -x 3.5086400000000002 -y -27.4451 uvtexture1
opspareds "" uvtexture1
opparm -V 20.5.370 uvtexture1 uvattrib ( uv ) group ( '@component_type=wall_wall' ) type ( face ) axis ( x ) campath ( "" ) coord ( vertex ) s ( 1 1 1 ) offset ( 0 0 0 ) angle ( 0 ) fixseams ( off )
chlock uvtexture1 -*
chautoscope uvtexture1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off uvtexture1
opexprlanguage -s hscript uvtexture1
opuserdata -n '___Version___' -v '20.5.370' uvtexture1

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x -0.118301 -y -17.754999999999999 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( '@component_type=' ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.5086400000000002 -y -29.381799999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 7.6025999999999998 -y -18.454599999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 7.1077399999999997 -y -19.922499999999999 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node boolean1 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean1
oplocate -x 7.1577799999999998 -y -21.1235 boolean1
opspareds "" boolean1
opparm -V 20.5.370 boolean1 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( intersect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean1 -*
chautoscope boolean1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean1
opexprlanguage -s hscript boolean1
opuserdata -n '___Version___' -v '20.5.370' boolean1

# Node wall_base (Sop/box)
opadd -e -n box wall_base
oplocate -x 12.685 -y 4.4104000000000001 wall_base
opspareds "" wall_base
chblockbegin
chadd -t 0 0 wall_base sizex
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../Depth")' wall_base/sizex
chadd -t 0 0 wall_base sizey
chkey -t 0 -v 2.5 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' wall_base/sizey
chadd -t 0 0 wall_base sizez
chkey -t 0 -v 2.5 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' wall_base/sizez
chblockend
opparm -V 20.5.370 wall_base type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( sizex sizey sizez ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock wall_base -*
chautoscope wall_base -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off wall_base
nbop __netbox2 add wall_base
opexprlanguage -s hscript wall_base
opuserdata -n '___Version___' -v '20.5.370' wall_base

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x 12.685 -y 1.5298400000000001 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox2 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 12.685 -y 2.4104000000000001 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 5 ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
nbop __netbox2 add blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 5.2224399999999997 -y -10.0542 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( on ) attrib ( name ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 1 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -* +attrib
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
nbop __netbox3 add foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 5.2224399999999997 -y 2.6924199999999998 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
nbop __netbox3 add foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node extract_silhouette2 (labs::Sop/extract_silhouette::1.0)
opadd -e -n labs::extract_silhouette::1.0 extract_silhouette2
oplocate -x 3.5 -y 0.42663099999999998 extract_silhouette2
opspareds "" extract_silhouette2
opparm -V 370 extract_silhouette2 iExtractMode ( 0 ) mTraceAxis ( 0 ) campath ( "" ) removeoutsidesilhouette ( off ) bResample ( off ) length ( 0.1 )
chlock extract_silhouette2 -*
chautoscope extract_silhouette2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extract_silhouette2
nbop __netbox3 add extract_silhouette2
opexprlanguage -s hscript extract_silhouette2
opuserdata -n '___Version___' -v '370' extract_silhouette2

# Node polyextrude_silhouette (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_silhouette
oplocate -x 5.2208399999999999 -y -2.5480800000000001 polyextrude_silhouette
opspareds "" polyextrude_silhouette
opparm polyextrude_silhouette  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude_silhouette group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 10 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_silhouette -*
chautoscope polyextrude_silhouette -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude_silhouette
nbop __netbox3 add polyextrude_silhouette
opexprlanguage -s hscript polyextrude_silhouette
opuserdata -n '___Version___' -v '20.5.370' polyextrude_silhouette

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x 5.2208399999999999 -y 4.2853700000000003 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( '@component_type=window_frame @component_type=shutter_rail @component_type=shutter_slats @component_type=window_glass @component_type=shutter_case' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast2
nbop __netbox3 add blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 5.2196899999999999 -y -8.8354400000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
nbop __netbox3 add merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x 5.2208399999999999 -y -11.3765 split1
opspareds "" split1
opparm split1 group ( sideskirt_geom ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split1
nbop __netbox3 add split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node center_align_along_x_direction (Sop/matchsize)
opadd -e -n matchsize center_align_along_x_direction
oplocate -x 5.2208399999999999 -y -3.4679000000000002 center_align_along_x_direction
opspareds "" center_align_along_x_direction
opparm center_align_along_x_direction group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( none ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock center_align_along_x_direction -*
chautoscope center_align_along_x_direction -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off center_align_along_x_direction
nbop __netbox3 add center_align_along_x_direction
opexprlanguage -s hscript center_align_along_x_direction
opuserdata -n '___Version___' -v '' center_align_along_x_direction

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x -3.85833 -y -6.3167499999999999 box1
opspareds "" box1
chblockbegin
chadd -t 0 0 box1 sizey
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../wall_base/sizey")' box1/sizey
chadd -t 0 0 box1 sizez
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../wall_base/sizez")' box1/sizez
chblockend
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 10 sizey sizez ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
nbop __netbox1 add box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node matchsize4 (Sop/matchsize)
opadd -e -n matchsize matchsize4
oplocate -x -3.85833 -y -7.8473499999999996 matchsize4
opspareds "" matchsize4
opparm matchsize4 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize4 -*
chautoscope matchsize4 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize4
nbop __netbox1 add matchsize4
opexprlanguage -s hscript matchsize4
opuserdata -n '___Version___' -v '' matchsize4

# Node dissolve_flat_edges2 (labs::Sop/dissolve_flat_edges::1.0)
opadd -e -n labs::dissolve_flat_edges::1.0 dissolve_flat_edges2
oplocate -x 2.7351399999999999 -y -13.8028 dissolve_flat_edges2
opspareds "" dissolve_flat_edges2
opparm -V 370 dissolve_flat_edges2 basegroup ( "" ) fd_flatedges ( 0 ) maxedgeangle ( 0 ) coltol ( 45 ) fd_inlinepoints ( 0 ) removeinline ( on ) inlinedist ( 0.001 ) useattribute ( off ) attrib ( uv )
chlock dissolve_flat_edges2 -*
chautoscope dissolve_flat_edges2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve_flat_edges2
nbop __netbox4 add dissolve_flat_edges2
opexprlanguage -s hscript dissolve_flat_edges2
opuserdata -n '___Version___' -v '370' dissolve_flat_edges2

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 2.7351399999999999 -y -14.596399999999999 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
nbop __netbox4 add fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x 3.5 -y -5.5209400000000004 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
nbop __netbox3 add reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node switchif2 (Sop/switchif)
opadd -e -n switchif switchif2
oplocate -x 4.02963 -y -6.45974 switchif2
opspareds "" switchif2
opparm switchif2  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif2 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../")>0' switchif2/expr1
chblockend
opparm -V 20.5.370 switchif2 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( attribval ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( detail ) attributes1 ( reverse ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 1 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif2 -*
chautoscope switchif2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif2
nbop __netbox3 add switchif2
opexprlanguage -s hscript switchif2
opuserdata -n '___Version___' -v '20.5.370' switchif2

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x 4.0266299999999999 -y -4.7369399999999997 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector bbmax = detail(geoself(),"bbmax");\nvector bbmin = detail(geoself(),"bbmin");\n\n\nif( detail(geoself(),"reverse") )\n    @P.x = max(min(bbmin.x, @P.x), bbmax.x);\nelse\n    @P.x = max(min(bbmax.x, @P.x), bbmin.x);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
nbop __netbox3 add attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node clip_sideskirt (Sop/boolean::2.0)
opadd -e -n boolean::2.0 clip_sideskirt
oplocate -x 2.7351399999999999 -y -12.9946 clip_sideskirt
opspareds "" clip_sideskirt
opparm -V 20.5.370 clip_sideskirt inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( intersect ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock clip_sideskirt -*
chautoscope clip_sideskirt -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_sideskirt
nbop __netbox4 add clip_sideskirt
opexprlanguage -s hscript clip_sideskirt
opuserdata -n '___Version___' -v '20.5.370' clip_sideskirt

# Node bbmin_and_bbmax (Sop/attribwrangle)
opadd -e -n attribwrangle bbmin_and_bbmax
oplocate -x 3.4969999999999999 -y 1.31433 bbmin_and_bbmax
opspareds "" bbmin_and_bbmax
opparm bbmin_and_bbmax  bindings ( 0 ) groupbindings ( 0 )
opparm bbmin_and_bbmax folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@bbmin = getbbox_min(0);// module bbmin\nv@bbmax = getbbox_max(1);// wall_base bbmax\n\ni@reverse = @bbmin.x > @bbmax.x;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock bbmin_and_bbmax -*
chautoscope bbmin_and_bbmax -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bbmin_and_bbmax
nbop __netbox3 add bbmin_and_bbmax
opexprlanguage -s hscript bbmin_and_bbmax
opuserdata -n '___Version___' -v '' bbmin_and_bbmax

# Node box2 (Sop/box)
opadd -e -n box box2
oplocate -x 7.0568200000000001 -y 1.3153300000000001 box2
opspareds "" box2
opparm -V 20.5.370 box2 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box2 -*
chautoscope box2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box2
nbop __netbox3 add box2
opexprlanguage -s hscript box2
opuserdata -n '___Version___' -v '20.5.370' box2

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 7.0568200000000001 -y -0.447959 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( 4 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
nbop __netbox3 add blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node bbmin_and_bbmax1 (Sop/attribwrangle)
opadd -e -n attribwrangle bbmin_and_bbmax1
oplocate -x 7.05382 -y 0.414101 bbmin_and_bbmax1
opspareds "" bbmin_and_bbmax1
opparm bbmin_and_bbmax1  bindings ( 0 ) groupbindings ( 0 )
opparm bbmin_and_bbmax1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@bbmin = getbbox_min(0);// module bbmin\nv@bbmax = getbbox_max(1);// wall_base bbmax\n\ni@reverse = @bbmin.x > @bbmax.x;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock bbmin_and_bbmax1 -*
chautoscope bbmin_and_bbmax1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bbmin_and_bbmax1
nbop __netbox3 add bbmin_and_bbmax1
opexprlanguage -s hscript bbmin_and_bbmax1
opuserdata -n '___Version___' -v '' bbmin_and_bbmax1

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 5.2208399999999999 -y -1.63337 switch1
opspareds "" switch1
opparm -V 20.5.370 switch1 input ( 1 )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
nbop __netbox3 add switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node dissolve_flat_edges1 (labs::Sop/dissolve_flat_edges::1.0)
opadd -e -n labs::dissolve_flat_edges::1.0 dissolve_flat_edges1
oplocate -x 3.5 -y -0.447959 dissolve_flat_edges1
opspareds "" dissolve_flat_edges1
opparm -V 370 dissolve_flat_edges1 basegroup ( "" ) fd_flatedges ( 0 ) maxedgeangle ( 0 ) coltol ( 45 ) fd_inlinepoints ( 0 ) removeinline ( on ) inlinedist ( 0.001 ) useattribute ( off ) attrib ( uv )
chlock dissolve_flat_edges1 -*
chautoscope dissolve_flat_edges1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve_flat_edges1
nbop __netbox3 add dissolve_flat_edges1
opexprlanguage -s hscript dissolve_flat_edges1
opuserdata -n '___Version___' -v '370' dissolve_flat_edges1

# Node attribcreate3 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate3
oplocate -x 12.685 -y 3.4104000000000001 attribcreate3
opspareds "" attribcreate3
opparm attribcreate3  numattr ( 1 )
opparm -V 20.5.370 attribcreate3 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( wall_wall ) numattr_spacerparm1 ( )
chlock attribcreate3 -*
chautoscope attribcreate3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate3
nbop __netbox2 add attribcreate3
opexprlanguage -s hscript attribcreate3
opuserdata -n '___Version___' -v '20.5.370' attribcreate3

# Node remove_unnecessary_primitive1 (Sop/attribwrangle)
opadd -e -n attribwrangle remove_unnecessary_primitive1
oplocate -x 2.7321399999999998 -y -15.424799999999999 remove_unnecessary_primitive1
opspareds "" remove_unnecessary_primitive1
opparm remove_unnecessary_primitive1  bindings ( 0 ) groupbindings ( 0 )
opparm remove_unnecessary_primitive1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector primN = prim_normal(0, @primnum, 0.5, 0.5);\n\nif( abs(dot(primN,set(1,0,0))) > 0.9999 )\n    removeprim( geoself(), @primnum, 1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_unnecessary_primitive1 -*
chautoscope remove_unnecessary_primitive1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_unnecessary_primitive1
nbop __netbox4 add remove_unnecessary_primitive1
opexprlanguage -s hscript remove_unnecessary_primitive1
opuserdata -n '___Version___' -v '' remove_unnecessary_primitive1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x 7.0568200000000001 -y -7.4526399999999997 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( subtraction_geom ) grouptype ( primitive ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
nbop __netbox3 add group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 4.02963 -y -7.4526399999999997 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( sideskirt_geom ) grouptype ( primitive ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
nbop __netbox3 add group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x 2.73169 -y -16.305 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 20.5.370 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( component_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( wall_wall ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
nbop __netbox4 add attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '20.5.370' attribcreate1
oporder -e subtract_module_space_from_wall normal3 fuse1 facet1 clean1 clip_window_geometories boolean2 boolean3 groupdelete1 attribdelete1 uvtexture1 blast4 output0 merge1 merge3 boolean1 wall_base matchsize1 blast1 foreach_end1 foreach_begin1 extract_silhouette2 polyextrude_silhouette blast2 merge2 split1 center_align_along_x_direction box1 matchsize4 dissolve_flat_edges2 fuse2 reverse2 switchif2 attribwrangle4 clip_sideskirt bbmin_and_bbmax box2 blast3 bbmin_and_bbmax1 switch1 dissolve_flat_edges1 attribcreate3 remove_unnecessary_primitive1 group1 group2 attribcreate1 
opcf ..

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0011999999999999999 -y 0.63542500000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x 0.65518399999999999 -y -0.59392800000000001 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 1.3877799999999999e-17 -y -3.4752299999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x 0 -y -1.8731800000000001 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node SlidingDoor_Double1 (Sop/SlidingDoor_Double)
opadd -e -n SlidingDoor_Double SlidingDoor_Double1
oplocate -x 0 -y 5.8252600000000001 SlidingDoor_Double1
opspareds "" SlidingDoor_Double1
opparm SlidingDoor_Double1 folder1 ( 0 ) InvertSlide ( off ) Open ( 0 ) folder0 ( 0 ) Width ( 0.9 ) Height ( 1.8 ) Depth ( 0.05 ) SideFrameWidth ( 0.04 ) TopFrameWidth ( 0.05 ) BottomFrameWidth ( 0.05 )
chlock SlidingDoor_Double1 -*
chautoscope SlidingDoor_Double1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlidingDoor_Double1
opexprlanguage -s hscript SlidingDoor_Double1
opuserdata -n '___Version___' -v '' SlidingDoor_Double1
oporder -e mergepacked1 transform1 ProceduralWall1 merge2 mirror1 output0 switchif1 SlidingDoor_Double1 
opcf ..

# Node ApartmentFront_4m (Sop/subnet)
opadd -e -n subnet ApartmentFront_4m
oplocate -x -15.7456 -y -2.1318800000000002 ApartmentFront_4m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "WindowGrate"         label   "WindowGrate"         type    integer         default { "0" }         range   { 0! 1! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Depth"         label   "Depth"         type    float         default { "0.1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' ApartmentFront_4m
opparm -V 20.5.370 ApartmentFront_4m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Mirror ( off ) WindowGrate ( 0 ) Depth ( 0.1 )
chlock ApartmentFront_4m -*
chautoscope ApartmentFront_4m -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentFront_4m
opexprlanguage -s hscript ApartmentFront_4m
opuserdata -n '___Version___' -v '20.5.370' ApartmentFront_4m
opcf ApartmentFront_4m

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x -4.9999200000000001e-05 -y 2.90374 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 1 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 1 ) useinput1 ( on ) name1 ( transform1 ) treatasfolder1 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0012000100000000001 -y 0.71051600000000004 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.0048599999999999997 -y -5.1636699999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x 0.65517999999999998 -y -0.532748 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -0.0048600099999999997 -y -1.59355 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node SlidingDoor_Triple1 (Sop/SlidingDoor_Triple)
opadd -e -n SlidingDoor_Triple SlidingDoor_Triple1
oplocate -x -4.9999200000000001e-05 -y 5.2652000000000001 SlidingDoor_Triple1
opspareds "" SlidingDoor_Triple1
opparm SlidingDoor_Triple1 Open ( 0 ) folder0 ( 1 ) Width ( 1.2 ) Height ( 2 ) Depth ( 0.05 ) SideFrameWidth ( 0.03 ) TopFrameWidth ( 0.05 ) BottomFrameWidth ( 0.05 )
chlock SlidingDoor_Triple1 -*
chautoscope SlidingDoor_Triple1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlidingDoor_Triple1
opexprlanguage -s hscript SlidingDoor_Triple1
opuserdata -n '___Version___' -v '' SlidingDoor_Triple1
opuserdata -n '___toolcount___' -v '8' SlidingDoor_Triple1
opuserdata -n '___toolid___' -v 'generic_delete' SlidingDoor_Triple1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -0.0048599999999999997 -y 4.2652000000000001 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch("../Depth")' transform1/tx
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( tx 0.15 0.2 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node ProceduralWall2 (Sop/ProceduralWall)
opadd -e -n ProceduralWall ProceduralWall2
oplocate -x -4.9999200000000001e-05 -y 1.8759300000000001 ProceduralWall2
opspareds "" ProceduralWall2
opparm ProceduralWall2 Width ( 4 ) Height ( 2.8 ) Depth ( 0.15 )
chlock ProceduralWall2 -*
chautoscope ProceduralWall2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall2
opexprlanguage -s hscript ProceduralWall2
opuserdata -n '___Version___' -v '' ProceduralWall2

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x -0.0048599999999999997 -y -2.9658899999999999 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2
oporder -e mergepacked1 merge2 output0 mirror2 switchif1 SlidingDoor_Triple1 transform1 ProceduralWall2 matchsize2 
opcf ..

# Node ApartmentFront_5m (Sop/subnet)
opadd -e -n subnet ApartmentFront_5m
oplocate -x -11.6981 -y -2.1318800000000002 ApartmentFront_5m
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Mirror"         label   "Mirror"         type    toggle         default { "0" }         parmtag { "script_callback_language" "python" }     }     parm {         name    "WindowGrate"         label   "WindowGrate"         type    integer         default { "0" }         range   { 0! 1! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Depth"         label   "Depth"         type    float         default { "0.1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' ApartmentFront_5m
opparm -V 20.5.370 ApartmentFront_5m label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Mirror ( off ) WindowGrate ( 0 ) Depth ( 0.1 )
chlock ApartmentFront_5m -*
chautoscope ApartmentFront_5m -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ApartmentFront_5m
opexprlanguage -s hscript ApartmentFront_5m
opuserdata -n '___Version___' -v '20.5.370' ApartmentFront_5m
opcf ApartmentFront_5m

# Node mergepacked1 (Sop/mergepacked)
opadd -e -n mergepacked mergepacked1
oplocate -x -1.11759e-08 -y 3.28498 mergepacked1
opspareds "" mergepacked1
opparm mergepacked1  names ( 1 )
opparm -V 20.5.370 mergepacked1 setprimname ( on ) primname ( name ) setprimindex ( off ) primindex ( index ) nameoverride ( off ) nameoverrideattrib ( name ) pivot ( origin ) pack ( off ) onlypackunpacked ( off ) ignoreempty ( off ) namingmethod ( name ) reloadnames ( 0 ) singlemode ( off ) singleindex ( 0 ) names ( 1 ) useinput1 ( on ) name1 ( SlidingDoor_Quad1 ) treatasfolder1 ( default )
chlock mergepacked1 -*
chautoscope mergepacked1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mergepacked1
opexprlanguage -s hscript mergepacked1
opuserdata -n '___Version___' -v '20.5.370' mergepacked1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0011500200000000001 -y 0.64310199999999995 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 4.9986099999999999e-05 -y -5.4172599999999997 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x 0.65522999999999998 -y -0.87133300000000002 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x 4.9976799999999999e-05 -y -2.1505800000000002 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Mirror")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x 4.9986099999999999e-05 -y -3.5430000000000001 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node ProceduralWall2 (Sop/ProceduralWall)
opadd -e -n ProceduralWall ProceduralWall2
oplocate -x -1.11759e-08 -y 2.0008400000000002 ProceduralWall2
opspareds "" ProceduralWall2
opparm ProceduralWall2 Width ( 5 ) Height ( 2.8 ) Depth ( 0.15 )
chlock ProceduralWall2 -*
chautoscope ProceduralWall2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off ProceduralWall2
opexprlanguage -s hscript ProceduralWall2
opuserdata -n '___Version___' -v '' ProceduralWall2

# Node SlidingDoor_Quad1 (Sop/SlidingDoor_Quad)
opadd -e -n SlidingDoor_Quad SlidingDoor_Quad1
oplocate -x -1.11759e-08 -y 5.5241800000000003 SlidingDoor_Quad1
opspareds "" SlidingDoor_Quad1
opparm SlidingDoor_Quad1 Open ( 0 ) folder0 ( 1 ) Width ( 1 ) Height ( 2 ) Depth ( 0.05 ) SideFrameWidth ( 0.03 ) TopFrameWidth ( 0.05 ) BottomFrameWidth ( 0.05 )
chlock SlidingDoor_Quad1 -*
chautoscope SlidingDoor_Quad1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off SlidingDoor_Quad1
opexprlanguage -s hscript SlidingDoor_Quad1
opuserdata -n '___Version___' -v '' SlidingDoor_Quad1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -1.11759e-08 -y 4.5337500000000004 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch("../Depth")' transform1/tx
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( tx 0.15 0.5 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1
oporder -e mergepacked1 merge2 output0 mirror2 switchif1 matchsize3 ProceduralWall2 SlidingDoor_Quad1 transform1 
opcf ..

# Node visualize_component_type (Sop/attribwrangle)
opadd -e -n attribwrangle visualize_component_type
oplocate -x -15.343400000000001 -y -5.36456 visualize_component_type
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "color_ramp"                 label   "Color Ramp"                 type    ramp_rgb                 default { "2" }                 range   { 1! 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' visualize_component_type
opparm visualize_component_type  bindings ( 0 ) groupbindings ( 0 ) color_ramp ( 4 )
opparm visualize_component_type folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int hash = random_shash( s@component_type );\nfloat r = rand(8439 + hash);\n\n@Cd = vector(chramp("color_ramp", r));' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) color_ramp ( 4 ) color_ramp1pos ( 0 ) color_ramp1c ( 0.42793625593185425 0.45760104060173035 1 ) color_ramp1interp ( linear ) color_ramp2pos ( 0.3447099030017853 ) color_ramp2c ( 0.2789009213447571 1 0.2634304165840149 ) color_ramp2interp ( linear ) color_ramp3pos ( 0.6945392489433289 ) color_ramp3c ( 1 0.3333333134651184 0.3333333134651184 ) color_ramp3interp ( linear ) color_ramp4pos ( 1 ) color_ramp4c ( 0.9925267100334167 0.4030604958534241 1 ) color_ramp4interp ( linear )
chlock visualize_component_type -*
chautoscope visualize_component_type -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off visualize_component_type
opexprlanguage -s hscript visualize_component_type
opuserdata -n '___Version___' -v '' visualize_component_type
oporder -e ApartmentCorridor_4m ApartmentCorridor_2m ApartmentCorridor_5m ApartmentFront_2m ApartmentFront_4m ApartmentFront_5m visualize_component_type 
opcf ..

# Node testgeometry_templatebody1 (Object/geo)
opadd -e -n geo testgeometry_templatebody1
oplocate -x -2.5362800000000001 -y 0.61139900000000003 testgeometry_templatebody1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' testgeometry_templatebody1
opset -S on testgeometry_templatebody1
opparm -V 20.5.370 testgeometry_templatebody1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock testgeometry_templatebody1 -*
chautoscope testgeometry_templatebody1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off testgeometry_templatebody1
opexprlanguage -s hscript testgeometry_templatebody1
opuserdata -n '___Version___' -v '20.5.370' testgeometry_templatebody1
opcf testgeometry_templatebody1

# Node testgeometry_templatebody1 (Sop/testgeometry_templatebody)
opadd -e -n testgeometry_templatebody testgeometry_templatebody1
oplocate -x 0 -y 0 testgeometry_templatebody1
opspareds "" testgeometry_templatebody1
opparm testgeometry_templatebody1 t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 )
chlock testgeometry_templatebody1 -*
chautoscope testgeometry_templatebody1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off testgeometry_templatebody1
opexprlanguage -s hscript testgeometry_templatebody1
opuserdata -n '___Version___' -v '' testgeometry_templatebody1
opcf ..
oporder -e Modules testgeometry_templatebody1 
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
opcf ..

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
opcf Modules
opcf ApartmentCorridor_4m
opwire -n -o 1 split1 -0 mergepacked1
opwire -n transform1 -1 mergepacked1
opwire -n FrontDoor1 -0 transform1
opwire -n merge1 -0 transform2
opwire -n matchsize1 -0 merge1
opwire -n switch1 -1 merge1
opwire -n WindowFrame1 -0 matchsize1
opwire -n split1 -0 merge2
opwire -n ProceduralWall2 -1 merge2
opwire -n attribcreate1 -2 merge2
opwire -n transform2 -0 split1
opwire -n matchsize2 -0 output0
opwire -n box1 -0 transform3
opwire -n transform3 -0 attribcreate1
opwire -n merge2 -0 mirror2
opwire -n merge2 -0 switchif1
opwire -n mirror2 -1 switchif1
opwire -n WindowGrate1 -0 switch1
opwire -n WindowGrate_Lattice1 -1 switch1
opwire -n mergepacked1 -0 ProceduralWall2
opwire -n switchif1 -0 matchsize2
opcf ..
opcf ApartmentCorridor_2m
opwire -n transform1 -0 mergepacked1
opwire -n FrontDoor1 -0 transform1
opwire -n ProceduralWall1 -0 merge2
opwire -n attribcreate1 -1 merge2
opwire -n merge2 -0 mirror1
opwire -n matchsize2 -0 output0
opwire -n box1 -0 transform2
opwire -n transform2 -0 attribcreate1
opwire -n merge2 -0 switchif1
opwire -n mirror1 -1 switchif1
opwire -n mergepacked1 -0 ProceduralWall1
opwire -n switchif1 -0 matchsize2
opcf ..
opcf ApartmentCorridor_5m
opwire -n -o 1 split1 -0 mergepacked1
opwire -n transform1 -1 mergepacked1
opwire -n FrontDoor1 -0 transform1
opwire -n merge1 -0 transform2
opwire -n matchsize1 -0 merge1
opwire -n switch1 -1 merge1
opwire -n WindowFrame1 -0 matchsize1
opwire -n split1 -0 merge2
opwire -n attribcreate1 -1 merge2
opwire -n attribcreate2 -2 merge2
opwire -n ProceduralWall2 -3 merge2
opwire -n transform2 -0 split1
opwire -n matchsize3 -0 output0
opwire -n intercom -0 transform3
opwire -n transform3 -0 attribcreate1
opwire -n merge2 -0 mirror2
opwire -n merge2 -0 switchif1
opwire -n mirror2 -1 switchif1
opwire -n matchsize2 -0 transform4
opwire -n transform4 -0 attribcreate2
opwire -n hot_water_supply -0 matchsize2
opwire -n WindowGrate1 -0 switch1
opwire -n WindowGrate_Lattice1 -1 switch1
opwire -n switchif1 -0 matchsize3
opwire -n mergepacked1 -0 ProceduralWall2
opcf ..
opcf ApartmentFront_2m
opwire -n transform1 -0 mergepacked1
opwire -n SlidingDoor_Double1 -0 transform1
opwire -n mergepacked1 -0 ProceduralWall1
opcf ProceduralWall1
opwire -n -o 1 split1 -0 subtract_module_space_from_wall
opwire -n matchsize1 -1 subtract_module_space_from_wall
opwire -n attribdelete1 -0 normal3
opwire -n clean1 -0 fuse1
opwire -n fuse1 -0 facet1
opwire -n boolean3 -0 clean1
opwire -n matchsize4 -0 clip_window_geometories
opwire -n -i 0 -1 clip_window_geometories
opwire -n attribcreate1 -0 boolean2
opwire -n subtract_module_space_from_wall -1 boolean2
opwire -n blast4 -0 boolean3
opwire -n boolean2 -1 boolean3
opwire -n facet1 -0 groupdelete1
opwire -n groupdelete1 -0 attribdelete1
opwire -n normal3 -0 uvtexture1
opwire -n clip_window_geometories -0 blast4
opwire -n uvtexture1 -0 output0
opwire -n attribcreate1 -0 merge1
opwire -n subtract_module_space_from_wall -1 merge1
opwire -n blast4 -0 merge3
opwire -n merge1 -1 merge3
opwire -n merge3 -0 boolean1
opwire -n blast1 -0 matchsize1
opwire -n attribcreate3 -0 blast1
opwire -n merge2 -0 foreach_end1
opwire -n blast2 -0 foreach_begin1
opwire -n bbmin_and_bbmax -0 extract_silhouette2
opwire -n switch1 -0 polyextrude_silhouette
opwire -n -i 0 -0 blast2
opwire -n group2 -0 merge2
opwire -n group1 -1 merge2
opwire -n foreach_end1 -0 split1
opwire -n polyextrude_silhouette -0 center_align_along_x_direction
opwire -n box1 -0 matchsize4
opwire -n clip_sideskirt -0 dissolve_flat_edges2
opwire -n dissolve_flat_edges2 -0 fuse2
opwire -n attribwrangle4 -0 reverse2
opwire -n reverse2 -0 switchif2
opwire -n attribwrangle4 -1 switchif2
opwire -n center_align_along_x_direction -0 attribwrangle4
opwire -n matchsize4 -0 clip_sideskirt
opwire -n split1 -1 clip_sideskirt
opwire -n foreach_begin1 -0 bbmin_and_bbmax
opwire -n matchsize1 -1 bbmin_and_bbmax
opwire -n foreach_begin1 -0 box2
opwire -n bbmin_and_bbmax1 -0 blast3
opwire -n box2 -0 bbmin_and_bbmax1
opwire -n matchsize1 -1 bbmin_and_bbmax1
opwire -n dissolve_flat_edges1 -0 switch1
opwire -n blast3 -1 switch1
opwire -n extract_silhouette2 -0 dissolve_flat_edges1
opwire -n wall_base -0 attribcreate3
opwire -n fuse2 -0 remove_unnecessary_primitive1
opwire -n center_align_along_x_direction -0 group1
opwire -n switchif2 -0 group2
opwire -n remove_unnecessary_primitive1 -0 attribcreate1
opcf ..
opwire -n ProceduralWall1 -0 merge2
opwire -n merge2 -0 mirror1
opwire -n switchif1 -0 output0
opwire -n merge2 -0 switchif1
opwire -n mirror1 -1 switchif1
opcf ..
opcf ApartmentFront_4m
opwire -n transform1 -0 mergepacked1
opwire -n ProceduralWall2 -0 merge2
opwire -n matchsize2 -0 output0
opwire -n merge2 -0 mirror2
opwire -n merge2 -0 switchif1
opwire -n mirror2 -1 switchif1
opwire -n SlidingDoor_Triple1 -0 transform1
opwire -n mergepacked1 -0 ProceduralWall2
opwire -n switchif1 -0 matchsize2
opcf ..
opcf ApartmentFront_5m
opwire -n transform1 -0 mergepacked1
opwire -n ProceduralWall2 -0 merge2
opwire -n matchsize3 -0 output0
opwire -n merge2 -0 mirror2
opwire -n merge2 -0 switchif1
opwire -n mirror2 -1 switchif1
opwire -n switchif1 -0 matchsize3
opwire -n mergepacked1 -0 ProceduralWall2
opwire -n SlidingDoor_Quad1 -0 transform1
opcf ..
opwire -n ApartmentFront_4m -0 visualize_component_type
opcf ..
opcf testgeometry_templatebody1
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
