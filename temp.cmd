# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node geo1 (Object/geo)
opadd -e -n geo geo1
oplocate -x -1.9234599999999999 -y 0.350715 geo1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' geo1
opset -S on geo1
opparm -V 20.5.370 geo1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock geo1 -*
chautoscope geo1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off geo1
opexprlanguage -s hscript geo1
opuserdata -n '___Version___' -v '20.5.370' geo1
opcf geo1

# Node v_torus_beam (Sop/subnet)
opadd -e -n subnet v_torus_beam
oplocate -x -2.6673800000000001 -y 0.60822600000000004 v_torus_beam
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "0.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Depth"         label   "Depth"         type    float         default { "0.5" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "NumSplits"         label   "NumSplits"         type    integer         default { "3" }         range   { 1! 10 }         parmtag { "script_callback_language" "python" }     } ' v_torus_beam
opparm -V 20.5.370 v_torus_beam label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( 5 ) Height ( 0.42 ) Depth ( 0.35 ) NumSplits ( 6 )
chlock v_torus_beam -*
chautoscope v_torus_beam -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off v_torus_beam
opexprlanguage -s hscript v_torus_beam
opuserdata -n '___Version___' -v '20.5.370' v_torus_beam
opcf v_torus_beam

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -12.6632 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node beam_joint_top (Sop/attribwrangle)
opadd -e -n attribwrangle beam_joint_top
oplocate -x -7.5795000000000003 -y 4.4299200000000001 beam_joint_top
opspareds "" beam_joint_top
opparm beam_joint_top  bindings ( 0 ) groupbindings ( 0 )
opparm beam_joint_top folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int num_splits = chi("../NumSplits");\nfloat w = chf("../Width");\nfloat h = chf("../Height");\n\nfloat bin = w/num_splits;\n\nfor(int i=0; i<=num_splits; ++i)\n{\n    int pt = addpoint(0, set(i*bin, h, 0));\n    setpointgroup(0, "end_point", pt, i==0||i==num_splits);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock beam_joint_top -*
chautoscope beam_joint_top -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off beam_joint_top
opexprlanguage -s hscript beam_joint_top
opuserdata -n '___Version___' -v '' beam_joint_top

# Node BottomBeamJoints (Sop/null)
opadd -e -n null BottomBeamJoints
oplocate -x -2.3251599999999999 -y 1.7972699999999999 BottomBeamJoints
opspareds "" BottomBeamJoints
opparm -V 20.5.370 BottomBeamJoints copyinput ( on ) cacheinput ( off )
chlock BottomBeamJoints -*
chautoscope BottomBeamJoints -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 BottomBeamJoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off BottomBeamJoints
opexprlanguage -s hscript BottomBeamJoints
opuserdata -n '___Version___' -v '20.5.370' BottomBeamJoints

# Node TopBeamJoints (Sop/null)
opadd -e -n null TopBeamJoints
oplocate -x -7.5765000000000002 -y 3.1513900000000001 TopBeamJoints
opspareds "" TopBeamJoints
opparm -V 20.5.370 TopBeamJoints copyinput ( on ) cacheinput ( off )
chlock TopBeamJoints -*
chautoscope TopBeamJoints -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 TopBeamJoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off TopBeamJoints
opexprlanguage -s hscript TopBeamJoints
opuserdata -n '___Version___' -v '20.5.370' TopBeamJoints

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x 2.1240100000000002 -y 4.4586399999999999 grid1
opspareds "" grid1
opparm -V 20.5.370 grid1 type ( poly ) surftype ( quads ) orient ( xy ) size ( 0.05 0.05 ) t ( 0 0 0 ) r ( 0 180 0 ) rows ( 11 ) cols ( 11 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '20.5.370' grid1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 2.1240100000000002 -y 2.4586399999999999 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( '0-10 20 30 40 50 60 70 80 90' ) grouptype ( prims ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x 2.10521 -y 1.41676 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x 2.10521 -y 0.29418100000000003 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Node CrossSection_L (Sop/null)
opadd -e -n null CrossSection_L
oplocate -x 2.10521 -y -1.0726 CrossSection_L
opspareds "" CrossSection_L
opparm -V 20.5.370 CrossSection_L copyinput ( on ) cacheinput ( off )
chlock CrossSection_L -*
chautoscope CrossSection_L -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 CrossSection_L
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off CrossSection_L
opexprlanguage -s hscript CrossSection_L
opuserdata -n '___Version___' -v '20.5.370' CrossSection_L

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 5.3781299999999996 -y 4.6478000000000002 add1
opspareds "" add1
opparm add1  points ( 6 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 6 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 -0.01 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( -0.05 -0.02 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( -0.07 -0.02 0 ) weight2 ( 1 ) usept3 ( on ) pt3 ( -0.07 0.02 0 ) weight3 ( 1 ) usept4 ( on ) pt4 ( -0.05 0.02 0 ) weight4 ( 1 ) usept5 ( on ) pt5 ( 0 0.01 0 ) weight5 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x 5.3781299999999996 -y 2.6478000000000002 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.005 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -8.9515499999999992 -y -0.17252100000000001 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node object_merge2 (Sop/object_merge)
opadd -e -n object_merge object_merge2
oplocate -x -4.8503999999999996 -y 2.7332900000000002 object_merge2
opspareds "" object_merge2
opparm object_merge2  numobj ( 1 )
opparm -V 20.5.370 object_merge2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge2 -*
chautoscope object_merge2 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge2
opexprlanguage -s hscript object_merge2
opuserdata -n '___Version___' -v '20.5.370' object_merge2

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -7.5765000000000002 -y 1.9197900000000001 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( end_point ) add ( group ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x -4.8491499999999998 -y 1.9197900000000001 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 90 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x -5.5629999999999997 -y -1.2896700000000001 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 -1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node beam_joint_bottom (Sop/attribwrangle)
opadd -e -n attribwrangle beam_joint_bottom
oplocate -x -2.32816 -y 3.0758000000000001 beam_joint_bottom
opspareds "" beam_joint_bottom
opparm beam_joint_bottom  bindings ( 0 ) groupbindings ( 0 )
opparm beam_joint_bottom folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int num_splits = chi("../NumSplits");\nfloat w = chf("../Width");\nfloat h = chf("../Height");\n\nfloat bin = w/num_splits;\n\nfor(int i=0; i<=num_splits; ++i)\n{\n    int pt = addpoint(0, set(i*bin, i==0?-h:0, 0));\n    setpointgroup(0, "end_point", pt, i==1||i==num_splits);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock beam_joint_bottom -*
chautoscope beam_joint_bottom -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off beam_joint_bottom
opexprlanguage -s hscript beam_joint_bottom
opuserdata -n '___Version___' -v '' beam_joint_bottom

# Node sweep2 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep2
oplocate -x -14.955 -y -3.5493800000000002 sweep2
opspareds "" sweep2
opparm sweep2  scaleramp ( 2 )
opparm -V 20.5.370 sweep2 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep2 -*
chautoscope sweep2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep2
opexprlanguage -s hscript sweep2
opuserdata -n '___Version___' -v '20.5.370' sweep2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -5.5641499999999997 -y -2.85263 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -8.9515499999999992 -y -1.0746 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' transform1/tz
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node ABCD (Sop/null)
opadd -e -n null ABCD
oplocate -x 5.3781299999999996 -y 1.4117599999999999 ABCD
opspareds "" ABCD
opparm -V 20.5.370 ABCD copyinput ( on ) cacheinput ( off )
chlock ABCD -*
chautoscope ABCD -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 ABCD
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off ABCD
opexprlanguage -s hscript ABCD
opuserdata -n '___Version___' -v '20.5.370' ABCD

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x -13.4564 -y -3.3171900000000001 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 20.5.370 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../ABCD/ ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '20.5.370' object_merge1

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x -12.299099999999999 -y -5.32029 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '20.5.370' copytopoints1

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -11.670299999999999 -y -3.31874 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( 1 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -14.3887 -y -7.2186700000000004 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.3781299999999996 -y 3.6478000000000002 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 2.42 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -13.139699999999999 -y -4.32029 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( max ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 5.3078200000000004 -y -4.4292699999999998 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Margin"                 label   "Margin"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float margin = chf("Margin");\nfloat half_depth = 0.5*chf("../Depth");\n\nfor( int i=0; i<npoints(1); ++i )\n{\n    int j=i+1;\n    if( j>=npoints(2) ) break;\n    vector p0 = point(1, "P", i) + set(0, 0, half_depth);\n    vector p1 = point(2, "P", j);\n\n    vector dir = normalize(p1-p0);\n    dir.z = 0;\n    \n    float margin_diagonal = margin / dot(dir, {0,-1,0});\n    \n    int pt0 = addpoint(0, p0);\n    int pt1 = addpoint(0, p0+dir*margin_diagonal);\n    int pt2 = addpoint(0, p1-dir*margin_diagonal);\n    int pt3 = addpoint(0, p1);\n    \n    int prim = addprim(0, "polyline");    \n    addvertex(0, prim, pt0);\n    addvertex(0, prim, pt1);\n    addvertex(0, prim, pt2);\n    addvertex(0, prim, pt3);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Margin ( 0.05 )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node object_merge3 (Sop/object_merge)
opadd -e -n object_merge object_merge3
oplocate -x 5.3095699999999999 -y -2.1128399999999998 object_merge3
opspareds "" object_merge3
opparm object_merge3  numobj ( 1 )
opparm -V 20.5.370 object_merge3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../TopBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge3 -*
chautoscope object_merge3 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge3
opexprlanguage -s hscript object_merge3
opuserdata -n '___Version___' -v '20.5.370' object_merge3

# Node object_merge4 (Sop/object_merge)
opadd -e -n object_merge object_merge4
oplocate -x 7.8549800000000003 -y -2.1128399999999998 object_merge4
opspareds "" object_merge4
opparm object_merge4  numobj ( 1 )
opparm -V 20.5.370 object_merge4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge4 -*
chautoscope object_merge4 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge4
opexprlanguage -s hscript object_merge4
opuserdata -n '___Version___' -v '20.5.370' object_merge4

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x -0.0011500200000000001 -y -10.266299999999999 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x -6.6869100000000001 -y 0.828762 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node object_merge5 (Sop/object_merge)
opadd -e -n object_merge object_merge5
oplocate -x -17.515599999999999 -y -0.440251 object_merge5
opspareds "" object_merge5
opparm object_merge5  numobj ( 1 )
opparm -V 20.5.370 object_merge5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge5 -*
chautoscope object_merge5 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge5
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge5
opexprlanguage -s hscript object_merge5
opuserdata -n '___Version___' -v '20.5.370' object_merge5

# Node object_merge6 (Sop/object_merge)
opadd -e -n object_merge object_merge6
oplocate -x -14.3888 -y 0.068283999999999997 object_merge6
opspareds "" object_merge6
opparm object_merge6  numobj ( 1 )
opparm -V 20.5.370 object_merge6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge6 -*
chautoscope object_merge6 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge6
opexprlanguage -s hscript object_merge6
opuserdata -n '___Version___' -v '20.5.370' object_merge6

# Node transform6 (Sop/xform)
opadd -e -n xform transform6
oplocate -x -14.387499999999999 -y -0.87296300000000004 transform6
opspareds "" transform6
opparm -V 20.5.370 transform6 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 90 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform6 -*
chautoscope transform6 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on transform6
opexprlanguage -s hscript transform6
opuserdata -n '___Version___' -v '20.5.370' transform6

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x -14.387499999999999 -y -1.8965799999999999 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node add4 (Sop/add)
opadd -e -n add add4
oplocate -x -17.514299999999999 -y -1.55592 add4
opspareds "" add4
opparm add4  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add4 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( end_point ) add ( group ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add4 -*
chautoscope add4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add4
opexprlanguage -s hscript add4
opuserdata -n '___Version___' -v '20.5.370' add4

# Node object_merge7 (Sop/object_merge)
opadd -e -n object_merge object_merge7
oplocate -x -11.6715 -y -2.2971499999999998 object_merge7
opspareds "" object_merge7
opparm object_merge7  numobj ( 1 )
opparm -V 20.5.370 object_merge7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge7 -*
chautoscope object_merge7 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge7
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge7
opexprlanguage -s hscript object_merge7
opuserdata -n '___Version___' -v '20.5.370' object_merge7

# Node sweep3 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep3
oplocate -x 8.4367199999999993 -y -5.59267 sweep3
opspareds "" sweep3
opparm sweep3  scaleramp ( 2 )
opparm -V 20.5.370 sweep3 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep3 -*
chautoscope sweep3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sweep3
opexprlanguage -s hscript sweep3
opuserdata -n '___Version___' -v '20.5.370' sweep3

# Node object_merge8 (Sop/object_merge)
opadd -e -n object_merge object_merge8
oplocate -x 11.0054 -y -3.11911 object_merge8
opspareds "" object_merge8
opparm object_merge8  numobj ( 1 )
opparm -V 20.5.370 object_merge8 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge8 -*
chautoscope object_merge8 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge8
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on object_merge8
opexprlanguage -s hscript object_merge8
opuserdata -n '___Version___' -v '20.5.370' object_merge8

# Node transform7 (Sop/xform)
opadd -e -n xform transform7
oplocate -x 11.0067 -y -3.9152100000000001 transform7
opspareds "" transform7
opparm -V 20.5.370 transform7 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.03 0 0 ) r ( 0 0 96 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform7 -*
chautoscope transform7 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on transform7
opexprlanguage -s hscript transform7
opuserdata -n '___Version___' -v '20.5.370' transform7

# Node mirror4 (Sop/mirror)
opadd -e -n mirror mirror4
oplocate -x 3.9539 -y -9.0703700000000005 mirror4
opspareds "" mirror4
opparm -V 20.5.370 mirror4 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror4 -*
chautoscope mirror4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror4
opexprlanguage -s hscript mirror4
opuserdata -n '___Version___' -v '20.5.370' mirror4

# Node DiagonalBeams (Sop/null)
opadd -e -n null DiagonalBeams
oplocate -x 8.2774300000000007 -y -9.9087399999999999 DiagonalBeams
opspareds "" DiagonalBeams
opparm -V 20.5.370 DiagonalBeams copyinput ( on ) cacheinput ( off )
chlock DiagonalBeams -*
chautoscope DiagonalBeams -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 DiagonalBeams
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off DiagonalBeams
opexprlanguage -s hscript DiagonalBeams
opuserdata -n '___Version___' -v '20.5.370' DiagonalBeams

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x 0.34222999999999998 -y -4.9684200000000001 attribwrangle2
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Margin"                 label   "Margin"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float margin = chf("Margin");\nfloat half_depth = 0.5*chf("../Depth");\n\nfor( int i=1; i<npoints(1); ++i )\n{\n    int j=i;\n    if( j>=npoints(2) ) break;\n    vector p0 = point(1, "P", i) + set(0, 0, half_depth);\n    vector p1 = point(2, "P", j);\n\n    vector dir = normalize(p1-p0);\n    dir.z = 0;\n    \n    int pt0 = addpoint(0, p0);\n    int pt1 = addpoint(0, p0+dir*margin);\n    int pt2 = addpoint(0, p1-dir*margin);\n    int pt3 = addpoint(0, p1);\n    \n    int prim = addprim(0, "polyline");\n    addvertex(0, prim, pt0);\n    addvertex(0, prim, pt1);\n    addvertex(0, prim, pt2);\n    addvertex(0, prim, pt3);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Margin ( 0.05 )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node object_merge9 (Sop/object_merge)
opadd -e -n object_merge object_merge9
oplocate -x -2.6588500000000002 -y -3.49641 object_merge9
opspareds "" object_merge9
opparm object_merge9  numobj ( 1 )
opparm -V 20.5.370 object_merge9 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../TopBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge9 -*
chautoscope object_merge9 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge9
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge9
opexprlanguage -s hscript object_merge9
opuserdata -n '___Version___' -v '20.5.370' object_merge9

# Node object_merge10 (Sop/object_merge)
opadd -e -n object_merge object_merge10
oplocate -x 0.028008100000000001 -y -3.49641 object_merge10
opspareds "" object_merge10
opparm object_merge10  numobj ( 1 )
opparm -V 20.5.370 object_merge10 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge10 -*
chautoscope object_merge10 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge10
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge10
opexprlanguage -s hscript object_merge10
opuserdata -n '___Version___' -v '20.5.370' object_merge10

# Node object_merge11 (Sop/object_merge)
opadd -e -n object_merge object_merge11
oplocate -x 2.5639099999999999 -y -3.94577 object_merge11
opspareds "" object_merge11
opparm object_merge11  numobj ( 1 )
opparm -V 20.5.370 object_merge11 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge11 -*
chautoscope object_merge11 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge11
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge11
opexprlanguage -s hscript object_merge11
opuserdata -n '___Version___' -v '20.5.370' object_merge11

# Node transform8 (Sop/xform)
opadd -e -n xform transform8
oplocate -x 2.5651600000000001 -y -4.7418699999999996 transform8
opspareds "" transform8
opparm -V 20.5.370 transform8 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.03 0 ) r ( 0 0 90 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform8 -*
chautoscope transform8 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on transform8
opexprlanguage -s hscript transform8
opuserdata -n '___Version___' -v '20.5.370' transform8

# Node sweep4 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep4
oplocate -x 0.84057300000000001 -y -6.2290799999999997 sweep4
opspareds "" sweep4
opparm sweep4  scaleramp ( 2 )
opparm -V 20.5.370 sweep4 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( y ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep4 -*
chautoscope sweep4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep4
opexprlanguage -s hscript sweep4
opuserdata -n '___Version___' -v '20.5.370' sweep4

# Node VerticalBeams (Sop/null)
opadd -e -n null VerticalBeams
oplocate -x 0.84057300000000001 -y -7.3446499999999997 VerticalBeams
opspareds "" VerticalBeams
opparm -V 20.5.370 VerticalBeams copyinput ( on ) cacheinput ( off )
chlock VerticalBeams -*
chautoscope VerticalBeams -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 VerticalBeams
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off VerticalBeams
opexprlanguage -s hscript VerticalBeams
opuserdata -n '___Version___' -v '20.5.370' VerticalBeams

# Node object_merge12 (Sop/object_merge)
opadd -e -n object_merge object_merge12
oplocate -x 3.9526500000000002 -y -7.6767000000000003 object_merge12
opspareds "" object_merge12
opparm object_merge12  numobj ( 2 )
opparm -V 20.5.370 object_merge12 numobj ( 2 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../DiagonalBeams ) group1 ( "" ) expand1 ( off ) enable2 ( on ) objpath2 ( ../VerticalBeams/ ) group2 ( "" ) expand2 ( off )
chlock object_merge12 -*
chautoscope object_merge12 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge12
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge12
opexprlanguage -s hscript object_merge12
opuserdata -n '___Version___' -v '20.5.370' object_merge12

# Node attribwrangle3 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle3
oplocate -x 14.225 -y -5.3004899999999999 attribwrangle3
opspareds "" attribwrangle3
opparm attribwrangle3  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float half_depth = 0.5*chf("../Depth");\n\n\nvector p0 = point(1, "P", 0) + set(0, 0, half_depth);\nvector p1 = point(1, "P", 1);\n\nint pt0 = addpoint(0, p0);\nint pt1 = addpoint(0, p1);\n\n\nint prim = addprim(0, "polyline");\naddvertex(0, prim, pt0);\naddvertex(0, prim, pt1);\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle3 -*
chautoscope attribwrangle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle3
opexprlanguage -s hscript attribwrangle3
opuserdata -n '___Version___' -v '' attribwrangle3

# Node object_merge13 (Sop/object_merge)
opadd -e -n object_merge object_merge13
oplocate -x 14.226699999999999 -y -3.6454499999999999 object_merge13
opspareds "" object_merge13
opparm object_merge13  numobj ( 1 )
opparm -V 20.5.370 object_merge13 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge13 -*
chautoscope object_merge13 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge13
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge13
opexprlanguage -s hscript object_merge13
opuserdata -n '___Version___' -v '20.5.370' object_merge13

# Node AAAAA (Sop/null)
opadd -e -n null AAAAA
oplocate -x 14.1462 -y -6.44109 AAAAA
opspareds "" AAAAA
opparm -V 20.5.370 AAAAA copyinput ( on ) cacheinput ( off )
chlock AAAAA -*
chautoscope AAAAA -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 AAAAA
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off AAAAA
opexprlanguage -s hscript AAAAA
opuserdata -n '___Version___' -v '20.5.370' AAAAA

# Node sweep5 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep5
oplocate -x 13.992900000000001 -y -7.9984700000000002 sweep5
opspareds "" sweep5
opparm sweep5  scaleramp ( 2 )
opparm -V 20.5.370 sweep5 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep5 -*
chautoscope sweep5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep5
opexprlanguage -s hscript sweep5
opuserdata -n '___Version___' -v '20.5.370' sweep5

# Node DiagonalBeams2 (Sop/null)
opadd -e -n null DiagonalBeams2
oplocate -x 12.5877 -y -11.8255 DiagonalBeams2
opspareds "" DiagonalBeams2
opparm -V 20.5.370 DiagonalBeams2 copyinput ( on ) cacheinput ( off )
chlock DiagonalBeams2 -*
chautoscope DiagonalBeams2 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 DiagonalBeams2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off DiagonalBeams2
opexprlanguage -s hscript DiagonalBeams2
opuserdata -n '___Version___' -v '20.5.370' DiagonalBeams2

# Node object_merge14 (Sop/object_merge)
opadd -e -n object_merge object_merge14
oplocate -x 18.2073 -y -8.7341700000000007 object_merge14
opspareds "" object_merge14
opparm object_merge14  numobj ( 1 )
opparm -V 20.5.370 object_merge14 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge14 -*
chautoscope object_merge14 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge14
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge14
opexprlanguage -s hscript object_merge14
opuserdata -n '___Version___' -v '20.5.370' object_merge14

# Node transform9 (Sop/xform)
opadd -e -n xform transform9
oplocate -x 18.208600000000001 -y -9.5302699999999998 transform9
opspareds "" transform9
opparm -V 20.5.370 transform9 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.02 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform9 -*
chautoscope transform9 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform9
opexprlanguage -s hscript transform9
opuserdata -n '___Version___' -v '20.5.370' transform9

# Node mirror5 (Sop/mirror)
opadd -e -n mirror mirror5
oplocate -x 13.992900000000001 -y -9.1672600000000006 mirror5
opspareds "" mirror5
opparm -V 20.5.370 mirror5 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror5 -*
chautoscope mirror5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror5
opexprlanguage -s hscript mirror5
opuserdata -n '___Version___' -v '20.5.370' mirror5

# Node transform10 (Sop/xform)
opadd -e -n xform transform10
oplocate -x 7.85623 -y -3.12066 transform10
opspareds "" transform10
opparm -V 20.5.370 transform10 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( -0.05 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform10 -*
chautoscope transform10 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform10
opexprlanguage -s hscript transform10
opuserdata -n '___Version___' -v '20.5.370' transform10

# Node add5 (Sop/add)
opadd -e -n add add5
oplocate -x 12.036300000000001 -y 5.5683199999999999 add5
opspareds "" add5
opparm add5  points ( 4 ) prims ( 1 )
chblockbegin
chadd -t 0 0 add5 pt2z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' add5/pt2z
chadd -t 0 0 add5 pt3z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' add5/pt3z
chblockend
opparm -V 20.5.370 add5 stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 1 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0.8 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 0 0.2 pt2z ) weight2 ( 1 ) usept3 ( on ) pt3 ( 0 0 pt3z ) weight3 ( 1 )
chlock add5 -*
chautoscope add5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add5
opexprlanguage -s hscript add5
opuserdata -n '___Version___' -v '20.5.370' add5

# Node sweep6 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep6
oplocate -x 12.545199999999999 -y 3.2199300000000002 sweep6
opspareds "" sweep6
opparm sweep6  scaleramp ( 2 )
opparm -V 20.5.370 sweep6 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 0.05 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep6 -*
chautoscope sweep6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep6
opexprlanguage -s hscript sweep6
opuserdata -n '___Version___' -v '20.5.370' sweep6

# Node object_merge15 (Sop/object_merge)
opadd -e -n object_merge object_merge15
oplocate -x 14.700100000000001 -y 6.1504700000000003 object_merge15
opspareds "" object_merge15
opparm object_merge15  numobj ( 1 )
opparm -V 20.5.370 object_merge15 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge15 -*
chautoscope object_merge15 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge15
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge15
opexprlanguage -s hscript object_merge15
opuserdata -n '___Version___' -v '20.5.370' object_merge15

# Node transform11 (Sop/xform)
opadd -e -n xform transform11
oplocate -x 14.7014 -y 5.2199299999999997 transform11
opspareds "" transform11
opparm -V 20.5.370 transform11 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 180 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform11 -*
chautoscope transform11 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform11
opexprlanguage -s hscript transform11
opuserdata -n '___Version___' -v '20.5.370' transform11

# Node matchsize4 (Sop/matchsize)
opadd -e -n matchsize matchsize4
oplocate -x 14.7014 -y 4.2570899999999998 matchsize4
opspareds "" matchsize4
opparm matchsize4 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize4 -*
chautoscope matchsize4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize4
opexprlanguage -s hscript matchsize4
opuserdata -n '___Version___' -v '' matchsize4

# Node mirror6 (Sop/mirror)
opadd -e -n mirror mirror6
oplocate -x 12.545199999999999 -y 2.1542400000000002 mirror6
opspareds "" mirror6
opparm -V 20.5.370 mirror6 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 1 0 0 ) dist ( 0.5 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror6 -*
chautoscope mirror6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror6
opexprlanguage -s hscript mirror6
opuserdata -n '___Version___' -v '20.5.370' mirror6

# Node mirror7 (Sop/mirror)
opadd -e -n mirror mirror7
oplocate -x 12.545199999999999 -y 0.92797200000000002 mirror7
opspareds "" mirror7
opparm -V 20.5.370 mirror7 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror7 -*
chautoscope mirror7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror7
opexprlanguage -s hscript mirror7
opuserdata -n '___Version___' -v '20.5.370' mirror7

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x 7.8532299999999999 -y -4.4292699999999998 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float half_depth = 0.5*chf("../Depth");\n\nfor( int i=0; i<npoints(1); ++i )\n{\n    int j=i+1;\n    if( j>=npoints(2) ) break;\n    vector p0 = point(1, "P", i) + set(0, 0, half_depth);\n    vector p1 = point(2, "P", j);\n\n    int pt0 = addpoint(0, p0);\n    int pt1 = addpoint(0, p1);\n    int prim = addprim(0, "polyline");\n    \n    addvertex(0, prim, pt0);\n    addvertex(0, prim, pt1);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node transform12 (Sop/xform)
opadd -e -n xform transform12
oplocate -x 5.3108199999999997 -y -3.12066 transform12
opspareds "" transform12
opparm -V 20.5.370 transform12 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0.05 -0.025 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform12 -*
chautoscope transform12 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform12
opexprlanguage -s hscript transform12
opuserdata -n '___Version___' -v '20.5.370' transform12

# Node sweep7 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep7
oplocate -x 8.2774300000000007 -y -8.7230799999999995 sweep7
opspareds "" sweep7
opparm sweep7  scaleramp ( 2 )
opparm -V 20.5.370 sweep7 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( y ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep7 -*
chautoscope sweep7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep7
opexprlanguage -s hscript sweep7
opuserdata -n '___Version___' -v '20.5.370' sweep7

# Node object_merge16 (Sop/object_merge)
opadd -e -n object_merge object_merge16
oplocate -x 10.702400000000001 -y -6.2023700000000002 object_merge16
opspareds "" object_merge16
opparm object_merge16  numobj ( 1 )
opparm -V 20.5.370 object_merge16 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge16 -*
chautoscope object_merge16 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge16
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge16
opexprlanguage -s hscript object_merge16
opuserdata -n '___Version___' -v '20.5.370' object_merge16

# Node transform13 (Sop/xform)
opadd -e -n xform transform13
oplocate -x 10.7037 -y -6.9984700000000002 transform13
opspareds "" transform13
opparm -V 20.5.370 transform13 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 90 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform13 -*
chautoscope transform13 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform13
opexprlanguage -s hscript transform13
opuserdata -n '___Version___' -v '20.5.370' transform13

# Node matchsize5 (Sop/matchsize)
opadd -e -n matchsize matchsize5
oplocate -x 10.7037 -y -7.9984700000000002 matchsize5
opspareds "" matchsize5
opparm matchsize5 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize5 -*
chautoscope matchsize5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize5
opexprlanguage -s hscript matchsize5
opuserdata -n '___Version___' -v '' matchsize5

# Node attribwrangle5 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle5
oplocate -x -2.0691999999999999 -y -4.9684200000000001 attribwrangle5
opspareds "" attribwrangle5
opparm attribwrangle5  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle5 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float half_depth = 0.5*chf("../Depth");\n\nfor( int i=1; i<npoints(1); ++i )\n{\n    int j=i;\n    if( j>=npoints(2) ) break;\n    vector p0 = point(1, "P", i) + set(0, 0, half_depth);\n    vector p1 = point(2, "P", j);\n\n    int pt0 = addpoint(0, p0);\n    int pt1 = addpoint(0, p1);\n    int prim = addprim(0, "polyline");\n    \n    addvertex(0, prim, pt0);\n    addvertex(0, prim, pt1);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle5 -*
chautoscope attribwrangle5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle5
opexprlanguage -s hscript attribwrangle5
opuserdata -n '___Version___' -v '' attribwrangle5

# Node matchsize6 (Sop/matchsize)
opadd -e -n matchsize matchsize6
oplocate -x 2.5651600000000001 -y -5.41493 matchsize6
opspareds "" matchsize6
opparm matchsize6 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize6 -*
chautoscope matchsize6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize6
opexprlanguage -s hscript matchsize6
opuserdata -n '___Version___' -v '' matchsize6

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("kidensen")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(16.2673, 2.9478))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(2.5, 1.08429))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'
oporder -e output0 beam_joint_top BottomBeamJoints TopBeamJoints grid1 blast1 group1 dissolve1 CrossSection_L add1 polyextrude1 sweep1 object_merge2 add2 transform3 mirror1 beam_joint_bottom sweep2 merge1 transform1 ABCD object_merge1 copytopoints1 blast2 merge2 transform4 matchsize1 attribwrangle1 object_merge3 object_merge4 merge3 matchsize3 object_merge5 object_merge6 transform6 matchsize2 add4 object_merge7 sweep3 object_merge8 transform7 mirror4 DiagonalBeams attribwrangle2 object_merge9 object_merge10 object_merge11 transform8 sweep4 VerticalBeams object_merge12 attribwrangle3 object_merge13 AAAAA sweep5 DiagonalBeams2 object_merge14 transform9 mirror5 transform10 add5 sweep6 object_merge15 transform11 matchsize4 mirror6 mirror7 attribwrangle4 transform12 sweep7 object_merge16 transform13 matchsize5 attribwrangle5 matchsize6 
opcf ..

# Node pole (Sop/subnet)
opadd -e -n subnet pole
oplocate -x -5.4144399999999999 -y -0.074126899999999996 pole
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "0.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' pole
opparm -V 20.5.370 pole label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( 0.3 ) Height ( 7.5 )
chlock pole -*
chautoscope pole -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pole
opexprlanguage -s hscript pole
opuserdata -n '___Version___' -v '20.5.370' pole
opcf pole

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y 0.954793 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node tube1 (Sop/tube)
opadd -e -n tube tube1
oplocate -x 2.3815499999999998 -y 3.6060099999999999 tube1
opspareds "" tube1
chblockbegin
chadd -t 0 0 tube1 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Height")' tube1/ty
chadd -t 0 0 tube1 rad1
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Width")' tube1/rad1
chadd -t 0 0 tube1 rad2
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Width")' tube1/rad2
chadd -t 0 0 tube1 height
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Height")' tube1/height
chblockend
opparm -V 20.5.370 tube1 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 ty 0 ) r ( 0 0 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( height ) rows ( 2 ) cols ( 12 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube1 -*
chautoscope tube1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube1
opexprlanguage -s hscript tube1
opuserdata -n '___Version___' -v '20.5.370' tube1
oporder -e output0 tube1 
opcf ..

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -3.0967899999999999 -y -1.0035400000000001 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 5.5 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -4.3673799999999998 -y -2.2858900000000002 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node insulator (Sop/subnet)
opadd -e -n subnet insulator
oplocate -x 1.0923799999999999 -y -0.074126899999999996 insulator
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "phi"         label   "phi"         type    float         default { "0.18" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "h"         label   "h"         type    float         default { "0.2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' insulator
opparm -V 20.5.370 insulator label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) phi ( 0.18 ) h ( 0.2 )
chlock insulator -*
chautoscope insulator -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off insulator
opexprlanguage -s hscript insulator
opuserdata -n '___Version___' -v '20.5.370' insulator
opcf insulator

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -7.2453000000000003 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node revolve1 (Sop/revolve::2.0)
opadd -e -n revolve::2.0 revolve1
oplocate -x 6.9397399999999996 -y 0.62438700000000003 revolve1
opspareds "" revolve1
chblockbegin
chadd -t 0 0 revolve1 divs
chkey -t 0 -v 22 -m 0 -a 0 -A 0 -T a  -F 'ch("../Parm/Divs")' revolve1/divs
chblockend
opparm revolve1 group ( "" ) sepparm3 ( ) origin ( 0 0 0 ) dir ( 0 1 0 ) divs ( divs ) sepparm ( ) type ( closed ) angle ( 0 360 ) sepparm2 ( ) surftype ( quads ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( on ) reversecrosssections ( off ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) cap ( on ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) uv_folder ( 1 ) computeuvs ( on ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) wrapu ( on ) wrapv ( on ) flipu ( on ) uvscale ( 1 1 )
chlock revolve1 -*
chautoscope revolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off revolve1
opexprlanguage -s hscript revolve1
opuserdata -n '___Version___' -v '' revolve1

# Node line1 (Sop/line)
opadd -e -n line line1
oplocate -x 6.9397399999999996 -y 5.4061700000000004 line1
opspareds "" line1
opparm -V 20.5.370 line1 type ( poly ) origin ( 0 0 0 ) dir ( 1 0 0 ) dist ( 0.5 ) points ( 2 ) order ( 4 )
chlock line1 -*
chautoscope line1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line1
opexprlanguage -s hscript line1
opuserdata -n '___Version___' -v '20.5.370' line1

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x 6.9397399999999996 -y 4.4636100000000001 resample1
opspareds "" resample1
opparm -V 20.5.370 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.005 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.370' resample1

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x 6.9367400000000004 -y 3.6055899999999999 attribwrangle6
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "ramp_y"                 label   "Ramp Y"                 type    ramp_flt                 default { "2" }                 range   { 1! 10 }             }             parm {                 name    "scalar"                 label   "Scalar"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 ) ramp_y ( 5 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector bbox = relpointbbox(0, v@P);\nfloat pramp = chramp("ramp_y", bbox.x);\n@P.y += pramp * chf("scalar");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) ramp_y ( 5 ) ramp_y1pos ( 0 ) ramp_y1value ( 1 ) ramp_y1interp ( bspline ) scalar ( 0.15 ) ramp_y2pos ( 0.3924914598464966 ) ramp_y2value ( 0.96875 ) ramp_y2interp ( bspline ) ramp_y3pos ( 0.7303754091262817 ) ramp_y3value ( 0.7760416865348816 ) ramp_y3interp ( bspline ) ramp_y4pos ( 0.9778156876564026 ) ramp_y4value ( 0.3489583432674408 ) ramp_y4interp ( bspline ) ramp_y5pos ( 1 ) ramp_y5value ( 0 ) ramp_y5interp ( bspline )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 6.9413400000000003 -y -6.2840999999999996 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( count ) method ( feedback ) iterations ( 3 ) startvalue ( 1 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 6.9413400000000003 -y -0.62222299999999997 foreach_begin1
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
oplocate -x 9.57864 -y -0.62222299999999997 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.370 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '20.5.370' foreach_count1

# Node tube3 (Sop/tube)
opadd -e -n tube tube3
oplocate -x 8.2980400000000003 -y -1.8476399999999999 tube3
opspareds '    parm {         name    "type"         baseparm         label   "Primitive Type"         export  all     }     parm {         name    "surftype"         baseparm         label   "Connectivity"         export  none     }     parm {         name    "orient"         baseparm         label   "Orientation"         export  all     }     parm {         name    "cap"         baseparm         label   "End Caps"         export  all     }     parm {         name    "consolidatepts"         baseparm         label   "Consolidate Corner Points"         export  none     }     parm {         name    "vertexnormals"         baseparm         label   "Add Vertex Normals"         export  none     }     parm {         name    "t"         baseparm         label   "Center"         export  none     }     parm {         name    "r"         baseparm         label   "Rotate"         export  none     }     parm {         name    "rad"         baseparm         label   "Radius"         export  all     }     parm {         name    "radscale"         baseparm         label   "Radius Scale"         export  all     }     parm {         name    "height"         baseparm         label   "Height"         export  all     }     parm {         name    "rows"         baseparm         label   "Rows"         export  all     }     parm {         name    "cols"         baseparm         label   "Columns"         export  all     }     parm {         name    "orderu"         baseparm         label   "U Order"         export  none     }     parm {         name    "orderv"         baseparm         label   "V Order"         export  none     }     parm {         name    "imperfect"         baseparm         label   "Imperfect"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' tube3
chblockbegin
chadd -t 0 0 tube3 rad1
chkey -t 0 -v 0.29999999999999999 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Parm/Freq")*detail(-1,"value",0)' tube3/rad1
chadd -t 0 0 tube3 rad2
chkey -t 0 -v 0.29999999999999999 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Parm/Freq")*detail(-1,"value",0)' tube3/rad2
chadd -t 0 0 tube3 cols
chkey -t 0 -v 6 -m 0 -a 0 -A 0 -T a  -F 'ch("../Parm/Divs")' tube3/cols
chblockend
opparm -V 20.5.370 tube3 type ( poly ) surftype ( quads ) orient ( y ) cap ( off ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 0 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( 0.1 ) rows ( 2 ) cols ( cols ) orderu ( 4 ) orderv ( 2 ) imperfect ( on ) spare_input0 ( ../foreach_count1 )
chlock tube3 -*
chautoscope tube3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube3
opexprlanguage -s hscript tube3
opuserdata -n '___Version___' -v '20.5.370' tube3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 8.2980400000000003 -y -3.4838800000000001 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0.088999999999999996 -m 0 -a 0 -A 0 -T a  -F 'ch("../Parm/Width")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node boolean3 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean3
oplocate -x 6.9397399999999996 -y -5.3013899999999996 boolean3
opspareds "" boolean3
opparm -V 20.5.370 boolean3 inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( subtract ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean3 -*
chautoscope boolean3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean3
opexprlanguage -s hscript boolean3
opuserdata -n '___Version___' -v '20.5.370' boolean3

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 6.9397399999999996 -y -7.2453000000000003 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( edges ) ignoregroup ( 1 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( on ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 30 ) offsettingsection ( 0 ) offset ( 0.017 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 1 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 2 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node Parm (Sop/null)
opadd -e -n null Parm
oplocate -x 9.9552399999999999 -y 3.3135400000000002 Parm
opspareds '    parm {         name    "copyinput"         baseparm         label   "Copy Input (Note: Input will be still cooked if disabled)"         export  none     }     parm {         name    "cacheinput"         baseparm         label   "Cache Input"         export  none     }     parm {         name    "Freq"         label   "Freq"         type    float         default { "0.05" }         range   { 0! 1! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Divs"         label   "Divs"         type    integer         default { "0" }         range   { 4! 50 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "0.05" }         range   { 0! 0.1! }         parmtag { "script_callback_language" "python" }     } ' Parm
opparm -V 20.5.370 Parm copyinput ( on ) cacheinput ( off ) Freq ( 0.297 ) Divs ( 12 ) Width ( 0.1 )
chlock Parm -* +Freq +Divs +Width
chautoscope Parm -*
opcolor -c 1 0 0 Parm
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Parm
opexprlanguage -s hscript Parm
opuserdata -n '___Version___' -v '20.5.370' Parm

# Node reverse1 (Sop/reverse)
opadd -e -n reverse reverse1
oplocate -x 8.2980400000000003 -y -2.5771199999999999 reverse1
opspareds "" reverse1
opparm -V 20.5.370 reverse1 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse1 -*
chautoscope reverse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse1
opexprlanguage -s hscript reverse1
opuserdata -n '___Version___' -v '20.5.370' reverse1

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x 9.5770400000000002 -y -4.2538200000000002 switchif1
opspareds '    parm {         name    "mergecondition"         baseparm         label   "Use Second Input If"         export  none     }     parm {         name    "testinput"         baseparm         label   "Test Input"         export  none     }     multiparm {         name    "tests"         label    "Number of Tests"         baseparm         default 1          parm {             name    "enable#"             baseparm             label   "enable#"             nolabel             joinnext             export  none         }         parm {             name    "type#"             baseparm             label   "Test Type"             export  none         }         parm {             name    "expr#"             baseparm             label   "Enable"             export  none         }         parm {             name    "attribtype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "attribowner#"             baseparm             label   "Class"             export  none         }         parm {             name    "attributes#"             baseparm             label   "Attributes"             export  none         }         parm {             name    "attribvaltype#"             baseparm             label   "Of Type"             export  none         }         parm {             name    "attribfloatcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribstringcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "attribval#"             baseparm             label   "Value"             export  none         }         parm {             name    "attribsval#"             baseparm             label   "Value"             export  none         }         parm {             name    "counttype#"             baseparm             label   "Enable When"             export  none         }         parm {             name    "countgroup#"             baseparm             label   "In Group"             export  none         }         parm {             name    "countcomp#"             baseparm             label   "Is"             export  none         }         parm {             name    "countval#"             baseparm             label   "Value"             export  none         }         parm {             name    "hasinputtype#"             baseparm             label   "Enable When"             export  none         }     }      parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(-1,"iteration",0)==0' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired ) spare_input0 ( ../foreach_count1 )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node tube4 (Sop/tube)
opadd -e -n tube tube4
oplocate -x 10.852 -y -3.4838800000000001 tube4
opspareds '    parm {         name    "type"         baseparm         label   "Primitive Type"         export  all     }     parm {         name    "surftype"         baseparm         label   "Connectivity"         export  none     }     parm {         name    "orient"         baseparm         label   "Orientation"         export  all     }     parm {         name    "cap"         baseparm         label   "End Caps"         export  all     }     parm {         name    "consolidatepts"         baseparm         label   "Consolidate Corner Points"         export  none     }     parm {         name    "vertexnormals"         baseparm         label   "Add Vertex Normals"         export  none     }     parm {         name    "t"         baseparm         label   "Center"         export  none     }     parm {         name    "r"         baseparm         label   "Rotate"         export  none     }     parm {         name    "rad"         baseparm         label   "Radius"         export  all     }     parm {         name    "radscale"         baseparm         label   "Radius Scale"         export  all     }     parm {         name    "height"         baseparm         label   "Height"         export  all     }     parm {         name    "rows"         baseparm         label   "Rows"         export  all     }     parm {         name    "cols"         baseparm         label   "Columns"         export  all     }     parm {         name    "orderu"         baseparm         label   "U Order"         export  none     }     parm {         name    "orderv"         baseparm         label   "V Order"         export  none     }     parm {         name    "imperfect"         baseparm         label   "Imperfect"         export  none     }     parm {         name    "spare_input0"         label   "Spare Input 0"         type    oppath         default { "" }         help    "Refer to this in expressions as -1, such as: npoints(-1)"         parmtag { "cook_dependent" "1" }         parmtag { "opfilter" "!!SOP!!" }         parmtag { "oprelative" "." }     } ' tube4
chblockbegin
chadd -t 0 0 tube4 rad1
chkey -t 0 -v 0.29999999999999999 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Parm/Freq")*detail(-1,"value",0)' tube4/rad1
chadd -t 0 0 tube4 rad2
chkey -t 0 -v 0.29999999999999999 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Parm/Freq")*detail(-1,"value",0)' tube4/rad2
chadd -t 0 0 tube4 cols
chkey -t 0 -v 20 -m 0 -a 0 -A 0 -T a  -F 'ch("../Parm/Divs")' tube4/cols
chblockend
opparm -V 20.5.370 tube4 type ( poly ) surftype ( quads ) orient ( y ) cap ( on ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 0 0 ) rad ( rad1 rad2 ) radscale ( 1 ) height ( 0.05 ) rows ( 2 ) cols ( cols ) orderu ( 4 ) orderv ( 2 ) imperfect ( on ) spare_input0 ( ../foreach_count1 )
chlock tube4 -*
chautoscope tube4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube4
opexprlanguage -s hscript tube4
opuserdata -n '___Version___' -v '20.5.370' tube4

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 6.9397399999999996 -y 1.56769 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0 ) accurate ( on ) inline ( on ) inlinedist ( 0.0003 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node resample2 (Sop/resample)
opadd -e -n resample resample2
oplocate -x 6.9397399999999996 -y 2.5676899999999998 resample2
opspareds "" resample2
opparm -V 20.5.370 resample2 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.005 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( subd ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample2 -*
chautoscope resample2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample2
opexprlanguage -s hscript resample2
opuserdata -n '___Version___' -v '20.5.370' resample2

# Node attribwrangle7 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle7
oplocate -x 16.457000000000001 -y 0.62338700000000002 attribwrangle7
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "ramp_y"                 label   "Ramp Y"                 type    ramp_flt                 default { "2" }                 range   { 1! 10 }             }             parm {                 name    "scalar"                 label   "Scalar"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle7
opparm attribwrangle7  bindings ( 0 ) groupbindings ( 0 ) ramp_y ( 7 )
opparm attribwrangle7 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector bbox = relpointbbox(0, v@P);\nfloat pramp = chramp("ramp_y", bbox.y);\n@P.x += pramp * chf("scalar");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) ramp_y ( 7 ) ramp_y1pos ( 0 ) ramp_y1value ( 0.875 ) ramp_y1interp ( linear ) scalar ( 0.263 ) ramp_y2pos ( 0.11604095250368118 ) ramp_y2value ( 1 ) ramp_y2interp ( bspline ) ramp_y3pos ( 0.13651877641677856 ) ramp_y3value ( 0.9322916865348816 ) ramp_y3interp ( linear ) ramp_y4pos ( 0.6774743795394897 ) ramp_y4value ( 0.5 ) ramp_y4interp ( bspline ) ramp_y5pos ( 0.9197952151298523 ) ramp_y5value ( 0.390625 ) ramp_y5interp ( bspline ) ramp_y6pos ( 0.9999989867210388 ) ramp_y6value ( 0.171875 ) ramp_y6interp ( bspline ) ramp_y7pos ( 1 ) ramp_y7value ( 0 ) ramp_y7interp ( bspline )
chlock attribwrangle7 -*
chautoscope attribwrangle7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle7
opexprlanguage -s hscript attribwrangle7
opuserdata -n '___Version___' -v '' attribwrangle7

# Node line2 (Sop/line)
opadd -e -n line line2
oplocate -x 16.460000000000001 -y 2.6474700000000002 line2
opspareds "" line2
chblockbegin
chadd -t 0 0 line2 originy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("dist")' line2/originy
chblockend
opparm -V 20.5.370 line2 type ( poly ) origin ( 0 originy 0 ) dir ( 0 -1 0 ) dist ( 0.6 ) points ( 2 ) order ( 4 )
chlock line2 -*
chautoscope line2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line2
opexprlanguage -s hscript line2
opuserdata -n '___Version___' -v '20.5.370' line2

# Node resample3 (Sop/resample)
opadd -e -n resample resample3
oplocate -x 16.460000000000001 -y 1.7049099999999999 resample3
opspareds "" resample3
opparm -V 20.5.370 resample3 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.005 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample3 -*
chautoscope resample3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample3
opexprlanguage -s hscript resample3
opuserdata -n '___Version___' -v '20.5.370' resample3

# Node resample4 (Sop/resample)
opadd -e -n resample resample4
oplocate -x 16.572500000000002 -y -0.510243 resample4
opspareds "" resample4
opparm -V 20.5.370 resample4 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.005 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( subd ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample4 -*
chautoscope resample4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample4
opexprlanguage -s hscript resample4
opuserdata -n '___Version___' -v '20.5.370' resample4

# Node revolve2 (Sop/revolve::2.0)
opadd -e -n revolve::2.0 revolve2
oplocate -x 16.572500000000002 -y -2.5456699999999999 revolve2
opspareds "" revolve2
chblockbegin
chadd -t 0 0 revolve2 divs
chkey -t 0 -v 22 -m 0 -a 0 -A 0 -T a  -F 'ch("../Parm/Divs")' revolve2/divs
chblockend
opparm revolve2 group ( "" ) sepparm3 ( ) origin ( 0 0 0 ) dir ( 0 1 0 ) divs ( divs ) sepparm ( ) type ( closed ) angle ( 0 360 ) sepparm2 ( ) surftype ( quads ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( on ) reversecrosssections ( off ) stretcharoundturns ( off ) maxstretcharoundturns ( 10 ) cap ( off ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) uv_folder ( 1 ) computeuvs ( on ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) wrapu ( on ) wrapv ( on ) flipu ( on ) uvscale ( 1 1 )
chlock revolve2 -*
chautoscope revolve2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off revolve2
opexprlanguage -s hscript revolve2
opuserdata -n '___Version___' -v '' revolve2

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x 16.572500000000002 -y -1.6023700000000001 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0 ) accurate ( on ) inline ( on ) inlinedist ( 0.0003 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node transform14 (Sop/xform)
opadd -e -n xform transform14
oplocate -x 16.572500000000002 -y -3.4838800000000001 transform14
opspareds "" transform14
opparm -V 20.5.370 transform14 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0.13 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform14 -*
chautoscope transform14 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform14
opexprlanguage -s hscript transform14
opuserdata -n '___Version___' -v '20.5.370' transform14

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x 11.666600000000001 -y -8.3366000000000007 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node copytopoints2 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints2
oplocate -x 16.529299999999999 -y -10.092599999999999 copytopoints2
opspareds "" copytopoints2
opparm copytopoints2  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints2 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints2 -*
chautoscope copytopoints2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on copytopoints2
opexprlanguage -s hscript copytopoints2
opuserdata -n '___Version___' -v '20.5.370' copytopoints2

# Node add6 (Sop/add)
opadd -e -n add add6
oplocate -x 17.081600000000002 -y -8.5407700000000002 add6
opspareds "" add6
opparm add6  points ( 2 ) prims ( 1 )
opparm -V 20.5.370 add6 stdswitcher ( 0 0 0 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0.5952503681182861 0 ) weight1 ( 1 )
chlock add6 -*
chautoscope add6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on add6
opexprlanguage -s hscript add6
opuserdata -n '___Version___' -v '20.5.370' add6

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -1.11759e-08 -y -5.6383700000000001 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 sx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../phi")' transform1/sx
chadd -t 0 0 transform1 sy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../h")' transform1/sy
chadd -t 0 0 transform1 sz
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../phi")' transform1/sz
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( sx sy sz ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Sticky Note __stickynote2
python -c 'hou.pwd().createStickyNote("__stickynote2")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setText("gaishi\n\nhttps://youtu.be/_Y1ktrzmRQc")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setPosition(hou.Vector2(12.2383, -0.360243))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setSize(hou.Vector2(3.6917, 1.56427))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setMinimized(False)'
oporder -e output0 revolve1 line1 resample1 attribwrangle6 foreach_end1 foreach_begin1 foreach_count1 tube3 polyextrude4 boolean3 polybevel1 Parm reverse1 switchif1 tube4 facet1 resample2 attribwrangle7 line2 resample3 resample4 revolve2 facet2 transform14 merge4 copytopoints2 add6 transform1 
opcf ..

# Node caged_torus_beam (Sop/subnet)
opadd -e -n subnet caged_torus_beam
oplocate -x 0.00306822 -y -3.2175500000000001 caged_torus_beam
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Width"         label   "Width"         type    float         default { "5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Height"         label   "Height"         type    float         default { "0.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Depth"         label   "Depth"         type    float         default { "0.5" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "NumSplits"         label   "NumSplits"         type    integer         default { "3" }         range   { 1! 10 }         parmtag { "script_callback_language" "python" }     } ' caged_torus_beam
opparm -V 20.5.370 caged_torus_beam label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Width ( 5 ) Height ( 0.42 ) Depth ( 0.35 ) NumSplits ( 8 )
chlock caged_torus_beam -*
chautoscope caged_torus_beam -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off caged_torus_beam
opexprlanguage -s hscript caged_torus_beam
opuserdata -n '___Version___' -v '20.5.370' caged_torus_beam
opcf caged_torus_beam

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -12.872 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node beam_joint_top (Sop/attribwrangle)
opadd -e -n attribwrangle beam_joint_top
oplocate -x -7.5795000000000003 -y 4.4299200000000001 beam_joint_top
opspareds "" beam_joint_top
opparm beam_joint_top  bindings ( 0 ) groupbindings ( 0 )
opparm beam_joint_top folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int num_splits = chi("../NumSplits");\nfloat w = chf("../Width");\nfloat h = chf("../Height");\n\nfloat bin = w/num_splits;\nfloat start = 1.5*bin;\nint pt = addpoint(0, set(0, h, 0));\nsetpointgroup(0, "end_point", pt, 1);\n\nfor(int i=0; i<=num_splits-1; ++i)\n{\n    pt = addpoint(0, set(i*bin+start, h, 0));\n    setpointgroup(0, "end_point", pt, i==num_splits-1);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock beam_joint_top -*
chautoscope beam_joint_top -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off beam_joint_top
opexprlanguage -s hscript beam_joint_top
opuserdata -n '___Version___' -v '' beam_joint_top

# Node BottomBeamJoints (Sop/null)
opadd -e -n null BottomBeamJoints
oplocate -x -2.3251599999999999 -y 1.7972699999999999 BottomBeamJoints
opspareds "" BottomBeamJoints
opparm -V 20.5.370 BottomBeamJoints copyinput ( on ) cacheinput ( off )
chlock BottomBeamJoints -*
chautoscope BottomBeamJoints -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 BottomBeamJoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off BottomBeamJoints
opexprlanguage -s hscript BottomBeamJoints
opuserdata -n '___Version___' -v '20.5.370' BottomBeamJoints

# Node TopBeamJoints (Sop/null)
opadd -e -n null TopBeamJoints
oplocate -x -7.5765000000000002 -y 3.1513900000000001 TopBeamJoints
opspareds "" TopBeamJoints
opparm -V 20.5.370 TopBeamJoints copyinput ( on ) cacheinput ( off )
chlock TopBeamJoints -*
chautoscope TopBeamJoints -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 TopBeamJoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off TopBeamJoints
opexprlanguage -s hscript TopBeamJoints
opuserdata -n '___Version___' -v '20.5.370' TopBeamJoints

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x 2.1240100000000002 -y 4.4586399999999999 grid1
opspareds "" grid1
opparm -V 20.5.370 grid1 type ( poly ) surftype ( quads ) orient ( xy ) size ( 0.05 0.05 ) t ( 0 0 0 ) r ( 0 180 0 ) rows ( 11 ) cols ( 11 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '20.5.370' grid1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 2.1240100000000002 -y 2.4586399999999999 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( '0-10 20 30 40 50 60 70 80 90' ) grouptype ( prims ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x 2.10521 -y 1.41676 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x 2.10521 -y 0.29418100000000003 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Node CrossSection_L (Sop/null)
opadd -e -n null CrossSection_L
oplocate -x 2.10521 -y -1.0726 CrossSection_L
opspareds "" CrossSection_L
opparm -V 20.5.370 CrossSection_L copyinput ( on ) cacheinput ( off )
chlock CrossSection_L -*
chautoscope CrossSection_L -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 CrossSection_L
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off CrossSection_L
opexprlanguage -s hscript CrossSection_L
opuserdata -n '___Version___' -v '20.5.370' CrossSection_L

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 5.3781299999999996 -y 4.6478000000000002 add1
opspareds "" add1
opparm add1  points ( 6 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 6 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 -0.01 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( -0.05 -0.02 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( -0.07 -0.02 0 ) weight2 ( 1 ) usept3 ( on ) pt3 ( -0.07 0.02 0 ) weight3 ( 1 ) usept4 ( on ) pt4 ( -0.05 0.02 0 ) weight4 ( 1 ) usept5 ( on ) pt5 ( 0 0.01 0 ) weight5 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x 5.3781299999999996 -y 2.6478000000000002 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.005 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -7.4892399999999997 -y 0.386596 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node object_merge2 (Sop/object_merge)
opadd -e -n object_merge object_merge2
oplocate -x -4.9278199999999996 -y 3.3835899999999999 object_merge2
opspareds "" object_merge2
opparm object_merge2  numobj ( 1 )
opparm -V 20.5.370 object_merge2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge2 -*
chautoscope object_merge2 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge2
opexprlanguage -s hscript object_merge2
opuserdata -n '___Version___' -v '20.5.370' object_merge2

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -7.5765000000000002 -y 1.9197900000000001 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( end_point ) add ( group ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x -4.9265699999999999 -y 2.57009 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 180 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x -7.4892399999999997 -y -1.4599899999999999 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 -1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node beam_joint_bottom (Sop/attribwrangle)
opadd -e -n attribwrangle beam_joint_bottom
oplocate -x -2.32816 -y 3.0758000000000001 beam_joint_bottom
opspareds "" beam_joint_bottom
opparm beam_joint_bottom  bindings ( 0 ) groupbindings ( 0 )
opparm beam_joint_bottom folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int num_splits = chi("../NumSplits");\nfloat w = chf("../Width");\nfloat h = chf("../Height");\n\nfloat bin = w/num_splits;\n\naddpoint(0, set(0, -h, 0));\naddpoint(0, set(bin, -0.5*h, 0));\n\nfor(int i=2; i<=num_splits; ++i)\n{\n    int pt = addpoint(0, set(i*bin, 0, 0));\n    setpointgroup(0, "end_point", pt, i==1||i==num_splits);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock beam_joint_bottom -*
chautoscope beam_joint_bottom -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off beam_joint_bottom
opexprlanguage -s hscript beam_joint_bottom
opuserdata -n '___Version___' -v '' beam_joint_bottom

# Node sweep2 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep2
oplocate -x -14.955 -y -3.5493800000000002 sweep2
opspareds "" sweep2
opparm sweep2  scaleramp ( 2 )
opparm -V 20.5.370 sweep2 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep2 -*
chautoscope sweep2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep2
opexprlanguage -s hscript sweep2
opuserdata -n '___Version___' -v '20.5.370' sweep2

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -5.5641499999999997 -y -2.85263 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -7.4892399999999997 -y -0.51548300000000002 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' transform1/tz
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node ABCD (Sop/null)
opadd -e -n null ABCD
oplocate -x 5.3781299999999996 -y 1.4117599999999999 ABCD
opspareds "" ABCD
opparm -V 20.5.370 ABCD copyinput ( on ) cacheinput ( off )
chlock ABCD -*
chautoscope ABCD -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 ABCD
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off ABCD
opexprlanguage -s hscript ABCD
opuserdata -n '___Version___' -v '20.5.370' ABCD

# Node object_merge1 (Sop/object_merge)
opadd -e -n object_merge object_merge1
oplocate -x -12.6358 -y -2.3727100000000001 object_merge1
opspareds "" object_merge1
opparm object_merge1  numobj ( 1 )
opparm -V 20.5.370 object_merge1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../ABCD/ ) group1 ( "" ) expand1 ( off )
chlock object_merge1 -*
chautoscope object_merge1 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on object_merge1
opexprlanguage -s hscript object_merge1
opuserdata -n '___Version___' -v '20.5.370' object_merge1

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x -11.4785 -y -4.3758100000000004 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '20.5.370' copytopoints1

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -10.8497 -y -2.37426 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( 1 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 5.3781299999999996 -y 3.6478000000000002 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 2.42 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -12.319100000000001 -y -3.37581 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( max ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node object_merge3 (Sop/object_merge)
opadd -e -n object_merge object_merge3
oplocate -x 6.8331200000000001 -y -3.00467 object_merge3
opspareds "" object_merge3
opparm object_merge3  numobj ( 1 )
opparm -V 20.5.370 object_merge3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../TopBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge3 -*
chautoscope object_merge3 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge3
opexprlanguage -s hscript object_merge3
opuserdata -n '___Version___' -v '20.5.370' object_merge3

# Node object_merge4 (Sop/object_merge)
opadd -e -n object_merge object_merge4
oplocate -x 8.9697700000000005 -y -3.00467 object_merge4
opspareds "" object_merge4
opparm object_merge4  numobj ( 1 )
opparm -V 20.5.370 object_merge4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge4 -*
chautoscope object_merge4 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge4
opexprlanguage -s hscript object_merge4
opuserdata -n '___Version___' -v '20.5.370' object_merge4

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x -0.0011500200000000001 -y -10.475099999999999 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x -4.9265699999999999 -y 1.6833499999999999 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node object_merge5 (Sop/object_merge)
opadd -e -n object_merge object_merge5
oplocate -x -17.515599999999999 -y -0.440251 object_merge5
opspareds "" object_merge5
opparm object_merge5  numobj ( 1 )
opparm -V 20.5.370 object_merge5 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge5 -*
chautoscope object_merge5 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge5
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge5
opexprlanguage -s hscript object_merge5
opuserdata -n '___Version___' -v '20.5.370' object_merge5

# Node object_merge6 (Sop/object_merge)
opadd -e -n object_merge object_merge6
oplocate -x -14.3888 -y 0.068283999999999997 object_merge6
opspareds "" object_merge6
opparm object_merge6  numobj ( 1 )
opparm -V 20.5.370 object_merge6 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge6 -*
chautoscope object_merge6 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge6
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge6
opexprlanguage -s hscript object_merge6
opuserdata -n '___Version___' -v '20.5.370' object_merge6

# Node transform6 (Sop/xform)
opadd -e -n xform transform6
oplocate -x -14.387499999999999 -y -0.87296300000000004 transform6
opspareds "" transform6
opparm -V 20.5.370 transform6 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 180 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform6 -*
chautoscope transform6 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform6
opexprlanguage -s hscript transform6
opuserdata -n '___Version___' -v '20.5.370' transform6

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x -14.387499999999999 -y -1.8965799999999999 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node add4 (Sop/add)
opadd -e -n add add4
oplocate -x -17.514299999999999 -y -1.55592 add4
opspareds "" add4
opparm add4  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add4 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 1 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add4 -*
chautoscope add4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add4
opexprlanguage -s hscript add4
opuserdata -n '___Version___' -v '20.5.370' add4

# Node object_merge7 (Sop/object_merge)
opadd -e -n object_merge object_merge7
oplocate -x -10.850899999999999 -y -1.35267 object_merge7
opspareds "" object_merge7
opparm object_merge7  numobj ( 1 )
opparm -V 20.5.370 object_merge7 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../BottomBeamJoints/ ) group1 ( "" ) expand1 ( off )
chlock object_merge7 -*
chautoscope object_merge7 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge7
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b on object_merge7
opexprlanguage -s hscript object_merge7
opuserdata -n '___Version___' -v '20.5.370' object_merge7

# Node mirror4 (Sop/mirror)
opadd -e -n mirror mirror4
oplocate -x 1.3509599999999999 -y -8.38537 mirror4
opspareds "" mirror4
opparm -V 20.5.370 mirror4 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror4 -*
chautoscope mirror4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror4
opexprlanguage -s hscript mirror4
opuserdata -n '___Version___' -v '20.5.370' mirror4

# Node DiagonalBeams (Sop/null)
opadd -e -n null DiagonalBeams
oplocate -x 8.12453 -y -7.9459 DiagonalBeams
opspareds "" DiagonalBeams
opparm -V 20.5.370 DiagonalBeams copyinput ( on ) cacheinput ( off )
chlock DiagonalBeams -*
chautoscope DiagonalBeams -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 DiagonalBeams
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off DiagonalBeams
opexprlanguage -s hscript DiagonalBeams
opuserdata -n '___Version___' -v '20.5.370' DiagonalBeams

# Node object_merge12 (Sop/object_merge)
opadd -e -n object_merge object_merge12
oplocate -x 1.34971 -y -6.3794899999999997 object_merge12
opspareds "" object_merge12
opparm object_merge12  numobj ( 1 )
opparm -V 20.5.370 object_merge12 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../DiagonalBeams ) group1 ( "" ) expand1 ( off )
chlock object_merge12 -*
chautoscope object_merge12 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge12
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge12
opexprlanguage -s hscript object_merge12
opuserdata -n '___Version___' -v '20.5.370' object_merge12

# Node sweep7 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep7
oplocate -x 8.12453 -y -5.8432000000000004 sweep7
opspareds "" sweep7
opparm sweep7  scaleramp ( 2 )
opparm -V 20.5.370 sweep7 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 8 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( y ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep7 -*
chautoscope sweep7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep7
opexprlanguage -s hscript sweep7
opuserdata -n '___Version___' -v '20.5.370' sweep7

# Node object_merge16 (Sop/object_merge)
opadd -e -n object_merge object_merge16
oplocate -x 11.218400000000001 -y -3.00467 object_merge16
opspareds "" object_merge16
opparm object_merge16  numobj ( 1 )
opparm -V 20.5.370 object_merge16 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( ../CrossSection_L ) group1 ( "" ) expand1 ( off )
chlock object_merge16 -*
chautoscope object_merge16 -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 object_merge16
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off object_merge16
opexprlanguage -s hscript object_merge16
opuserdata -n '___Version___' -v '20.5.370' object_merge16

# Node transform13 (Sop/xform)
opadd -e -n xform transform13
oplocate -x 11.2197 -y -3.80077 transform13
opspareds "" transform13
opparm -V 20.5.370 transform13 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 180 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform13 -*
chautoscope transform13 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform13
opexprlanguage -s hscript transform13
opuserdata -n '___Version___' -v '20.5.370' transform13

# Node matchsize5 (Sop/matchsize)
opadd -e -n matchsize matchsize5
oplocate -x 11.2197 -y -4.80077 matchsize5
opspareds "" matchsize5
opparm matchsize5 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize5 -*
chautoscope matchsize5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize5
opexprlanguage -s hscript matchsize5
opuserdata -n '___Version___' -v '' matchsize5

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x 8.1215299999999999 -y -4.5779100000000001 attribwrangle4
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "Margin"                 label   "Margin"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float margin = chf("Margin");\nfloat half_depth = 0.5*chf("../Depth");\n\nint num_points = 0;\nfor( int i=0; i<npoints(1); ++i )\n{\n    int j=i+1;\n    if( j>=npoints(2) ) break;\n    vector p0 = point(1, "P", i);\n    vector p1 = point(2, "P", j);\n\n    addpoint(0, p0);\n    addpoint(0, p0+{0.01,0,0});\n    addpoint(0, p1);\n    addpoint(0, p1+{0.01,0,0});\n    \n    num_points+=4;\n}\n\nint prim = addprim(0, "polyline");\nfor( int i=0; i<num_points; ++i )\n    addvertex(0, prim, i);\n    ' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) Margin ( 0.05 )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node mirror6 (Sop/mirror)
opadd -e -n mirror mirror6
oplocate -x -14.955 -y -5.5493800000000002 mirror6
opspareds "" mirror6
opparm -V 20.5.370 mirror6 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 -1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( on ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror6 -*
chautoscope mirror6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror6
opexprlanguage -s hscript mirror6
opuserdata -n '___Version___' -v '20.5.370' mirror6

# Node transform10 (Sop/xform)
opadd -e -n xform transform10
oplocate -x -14.955 -y -4.5493800000000002 transform10
opspareds "" transform10
chblockbegin
chadd -t 0 0 transform10 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' transform10/tz
chblockend
opparm -V 20.5.370 transform10 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform10 -*
chautoscope transform10 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform10
opexprlanguage -s hscript transform10
opuserdata -n '___Version___' -v '20.5.370' transform10

# Node transform14 (Sop/xform)
opadd -e -n xform transform14
oplocate -x 1.3509599999999999 -y -7.38537 transform14
opspareds "" transform14
chblockbegin
chadd -t 0 0 transform14 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../Depth")' transform14/tz
chblockend
opparm -V 20.5.370 transform14 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform14 -*
chautoscope transform14 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform14
opexprlanguage -s hscript transform14
opuserdata -n '___Version___' -v '20.5.370' transform14

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x 9.7839700000000001 -y -6.2225400000000004 polyexpand2d1
opspareds "" polyexpand2d1
opparm -V 20.5.370 polyexpand2d1 group ( "" ) planepossrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( 0.1 ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d1 -*
chautoscope polyexpand2d1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d1
opexprlanguage -s hscript polyexpand2d1
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d1

# Node boolean1 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean1
oplocate -x 5.6594800000000003 -y -6.8432000000000004 boolean1
opspareds "" boolean1
opparm -V 20.5.370 boolean1 inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( union ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean1 -*
chautoscope boolean1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean1
opexprlanguage -s hscript boolean1
opuserdata -n '___Version___' -v '20.5.370' boolean1

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x 5.4929699999999997 -y -7.8432000000000004 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( group2 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node dissolve2 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve2
oplocate -x 5.4929699999999997 -y -8.8675800000000002 dissolve2
opspareds "" dissolve2
opparm -V 20.5.370 dissolve2 group ( group2 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve2 -*
chautoscope dissolve2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve2
opexprlanguage -s hscript dissolve2
opuserdata -n '___Version___' -v '20.5.370' dissolve2
oporder -e output0 beam_joint_top BottomBeamJoints TopBeamJoints grid1 blast1 group1 dissolve1 CrossSection_L add1 polyextrude1 sweep1 object_merge2 add2 transform3 mirror1 beam_joint_bottom sweep2 merge1 transform1 ABCD object_merge1 copytopoints1 blast2 transform4 matchsize1 object_merge3 object_merge4 merge3 matchsize3 object_merge5 object_merge6 transform6 matchsize2 add4 object_merge7 mirror4 DiagonalBeams object_merge12 sweep7 object_merge16 transform13 matchsize5 attribwrangle4 mirror6 transform10 transform14 polyexpand2d1 boolean1 group2 dissolve2 
opcf ..
oporder -e v_torus_beam pole transform1 merge1 insulator caged_torus_beam 
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
opcf geo1
opcf v_torus_beam
opwire -n merge3 -0 output0
opwire -n beam_joint_bottom -0 BottomBeamJoints
opwire -n beam_joint_top -0 TopBeamJoints
opwire -n grid1 -0 blast1
opwire -n blast1 -0 group1
opwire -n group1 -0 dissolve1
opwire -n dissolve1 -0 CrossSection_L
opwire -n transform4 -0 polyextrude1
opwire -n add2 -0 sweep1
opwire -n matchsize3 -1 sweep1
opwire -n TopBeamJoints -0 add2
opwire -n object_merge2 -0 transform3
opwire -n transform1 -0 mirror1
opwire -n add4 -0 sweep2
opwire -n matchsize2 -1 sweep2
opwire -n mirror1 -0 merge1
opwire -n merge2 -1 merge1
opwire -n sweep1 -0 transform1
opwire -n polyextrude1 -0 ABCD
opwire -n matchsize1 -0 copytopoints1
opwire -n blast2 -1 copytopoints1
opwire -n object_merge7 -0 blast2
opwire -n sweep2 -0 merge2
opwire -n copytopoints1 -1 merge2
opwire -n add1 -0 transform4
opwire -n object_merge1 -0 matchsize1
opwire -n transform12 -1 attribwrangle1
opwire -n transform10 -2 attribwrangle1
opwire -n merge1 -0 merge3
opwire -n mirror4 -1 merge3
opwire -n DiagonalBeams2 -2 merge3
opwire -n transform3 -0 matchsize3
opwire -n object_merge6 -0 transform6
opwire -n transform6 -0 matchsize2
opwire -n object_merge5 -0 add4
opwire -n attribwrangle4 -0 sweep3
opwire -n transform7 -1 sweep3
opwire -n object_merge8 -0 transform7
opwire -n object_merge12 -0 mirror4
opwire -n sweep7 -0 DiagonalBeams
opwire -n object_merge9 -1 attribwrangle2
opwire -n object_merge10 -2 attribwrangle2
opwire -n object_merge11 -0 transform8
opwire -n attribwrangle2 -0 sweep4
opwire -n matchsize6 -1 sweep4
opwire -n sweep4 -0 VerticalBeams
opwire -n object_merge13 -1 attribwrangle3
opwire -n attribwrangle3 -0 AAAAA
opwire -n AAAAA -0 sweep5
opwire -n transform9 -1 sweep5
opwire -n mirror5 -0 DiagonalBeams2
opwire -n object_merge14 -0 transform9
opwire -n sweep5 -0 mirror5
opwire -n object_merge4 -0 transform10
opwire -n add5 -0 sweep6
opwire -n matchsize4 -1 sweep6
opwire -n object_merge15 -0 transform11
opwire -n transform11 -0 matchsize4
opwire -n sweep6 -0 mirror6
opwire -n mirror6 -0 mirror7
opwire -n transform12 -1 attribwrangle4
opwire -n transform10 -2 attribwrangle4
opwire -n object_merge3 -0 transform12
opwire -n attribwrangle1 -0 sweep7
opwire -n matchsize5 -1 sweep7
opwire -n object_merge16 -0 transform13
opwire -n transform13 -0 matchsize5
opwire -n object_merge9 -1 attribwrangle5
opwire -n object_merge10 -2 attribwrangle5
opwire -n transform8 -0 matchsize6
opcf ..
opcf pole
opwire -n tube1 -0 output0
opcf ..
opwire -n v_torus_beam -0 transform1
opwire -n pole -0 merge1
opwire -n transform1 -1 merge1
opcf insulator
opwire -n transform1 -0 output0
opwire -n facet1 -0 revolve1
opwire -n line1 -0 resample1
opwire -n resample1 -0 attribwrangle6
opwire -n boolean3 -0 foreach_end1
opwire -n revolve1 -0 foreach_begin1
opwire -n reverse1 -0 polyextrude4
opwire -n foreach_begin1 -0 boolean3
opwire -n switchif1 -1 boolean3
opwire -n foreach_end1 -0 polybevel1
opwire -n tube3 -0 reverse1
opwire -n polyextrude4 -0 switchif1
opwire -n tube4 -1 switchif1
opwire -n resample2 -0 facet1
opwire -n attribwrangle6 -0 resample2
opwire -n resample3 -0 attribwrangle7
opwire -n line2 -0 resample3
opwire -n attribwrangle7 -0 resample4
opwire -n facet2 -0 revolve2
opwire -n resample4 -0 facet2
opwire -n revolve2 -0 transform14
opwire -n polybevel1 -0 merge4
opwire -n transform14 -1 merge4
opwire -n merge4 -0 copytopoints2
opwire -n add6 -1 copytopoints2
opwire -n merge4 -0 transform1
opcf ..
opcf caged_torus_beam
opwire -n merge3 -0 output0
opwire -n beam_joint_bottom -0 BottomBeamJoints
opwire -n beam_joint_top -0 TopBeamJoints
opwire -n grid1 -0 blast1
opwire -n blast1 -0 group1
opwire -n group1 -0 dissolve1
opwire -n dissolve1 -0 CrossSection_L
opwire -n transform4 -0 polyextrude1
opwire -n add2 -0 sweep1
opwire -n matchsize3 -1 sweep1
opwire -n TopBeamJoints -0 add2
opwire -n object_merge2 -0 transform3
opwire -n transform1 -0 mirror1
opwire -n add4 -0 sweep2
opwire -n matchsize2 -1 sweep2
opwire -n mirror1 -0 merge1
opwire -n mirror6 -1 merge1
opwire -n sweep1 -0 transform1
opwire -n polyextrude1 -0 ABCD
opwire -n matchsize1 -0 copytopoints1
opwire -n blast2 -1 copytopoints1
opwire -n object_merge7 -0 blast2
opwire -n add1 -0 transform4
opwire -n object_merge1 -0 matchsize1
opwire -n merge1 -0 merge3
opwire -n mirror4 -1 merge3
opwire -n transform3 -0 matchsize3
opwire -n object_merge6 -0 transform6
opwire -n transform6 -0 matchsize2
opwire -n object_merge5 -0 add4
opwire -n transform14 -0 mirror4
opwire -n dissolve2 -0 DiagonalBeams
opwire -n attribwrangle4 -0 sweep7
opwire -n matchsize5 -1 sweep7
opwire -n object_merge16 -0 transform13
opwire -n transform13 -0 matchsize5
opwire -n object_merge3 -1 attribwrangle4
opwire -n object_merge4 -2 attribwrangle4
opwire -n transform10 -0 mirror6
opwire -n sweep2 -0 transform10
opwire -n object_merge12 -0 transform14
opwire -n attribwrangle4 -0 polyexpand2d1
opwire -n sweep7 -0 boolean1
opwire -n boolean1 -0 group2
opwire -n group2 -0 dissolve2
opcf ..
opcf ..
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
