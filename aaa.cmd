# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node Components (Object/geo)
opadd -e -n geo Components
oplocate -x -3.53505 -y 2.7604500000000001 Components
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' Components
opset -S off Components
opparm -V 20.5.370 Components stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( off ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock Components -*
chautoscope Components -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off Components
opexprlanguage -s hscript Components
opuserdata -n '___Version___' -v '20.5.370' Components
opcf Components

# Node Bend (Sop/subnet)
opadd -e -n subnet Bend
oplocate -x -17.751999999999999 -y 1.8598399999999999 Bend
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Direction"         label   "Direction"         type    ordinal         default { "0" }         menu {             "0" "Left"             "1" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Angle"         label   "Angle"         type    float         default { "45" }         range   { 0! 180! }         parmtag { "script_callback_language" "python" }     } ' Bend
opparm -V 20.5.370 Bend label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Direction ( 0 ) Width ( 1 ) Angle ( 27.3 )
chlock Bend -*
chautoscope Bend -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Bend
opexprlanguage -s hscript Bend
opuserdata -n '___Version___' -v '20.5.370' Bend
opcf Bend

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.68635699999999999 -y -8.8811800000000005 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -0.68750699999999998 -y -4.2219199999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x 2.1237900000000001 -y 1.24516 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( start ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node group4 (Sop/groupcreate)
opadd -e -n groupcreate group4
oplocate -x 2.1237900000000001 -y 0.42385600000000001 group4
opspareds "" group4
opparm -V 20.5.370 group4 groupname ( end ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 1 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group4 -*
chautoscope group4 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
opexprlanguage -s hscript group4
opuserdata -n '___Version___' -v '20.5.370' group4

# Node arc_points_l (Sop/subnet)
opadd -e -n subnet arc_points_l
oplocate -x -1.9911799999999999 -y 3.71068 arc_points_l
opspareds "" arc_points_l
opparm -V 20.5.370 arc_points_l label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock arc_points_l -*
chautoscope arc_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off arc_points_l
opexprlanguage -s hscript arc_points_l
opuserdata -n '___Version___' -v '20.5.370' arc_points_l
opcf arc_points_l

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x 0 -y 6.1117999999999997 circle1
opspareds "" circle1
chblockbegin
chadd -t 0 0 circle1 radx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../Width")' circle1/radx
chadd -t 0 0 circle1 rady
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../Width")' circle1/rady
chadd -t 0 0 circle1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../../Width")' circle1/tz
chadd -t 0 0 circle1 beginangle
chkey -t 0 -v -62 -m 0 -a 0 -A 0 -T a  -F '90-ch("../../Angle")' circle1/beginangle
chblockend
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( radx rady ) t ( 0 0 tz ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( 12 ) arc ( openarc ) angle ( beginangle 90 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x 0 -y 4.4569900000000002 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 0 0 0 ) keep ( on ) points ( 0 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node sort1 (Sop/sort)
opadd -e -n sort sort1
oplocate -x 0 -y 5.2934799999999997 sort1
opspareds "" sort1
opparm -V 20.5.370 sort1 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort1 -*
chautoscope sort1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort1
opexprlanguage -s hscript sort1
opuserdata -n '___Version___' -v '20.5.370' sort1

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x -1.71889 -y 6.1117999999999997 add3
opspareds "" add3
opparm add3  points ( 1 ) prims ( 1 )
chblockbegin
chadd -t 0 0 add3 pt0z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../../Width")' add3/pt0z
chblockend
opparm -V 20.5.370 add3 stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 pt0z ) weight0 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.57532000000000005 -y 3.5269499999999998 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.57532000000000005 -y 2.6327500000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e circle1 add2 sort1 add3 merge2 output0 
opcf ..

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x -0.93432499999999996 -y 2.9613900000000002 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -1.8452 -y 0.13988400000000001 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Direction")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x 3.0427200000000001 -y 2.9177900000000001 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif2 (Sop/switchif)
opadd -e -n switchif switchif2
oplocate -x 2.1237900000000001 -y 2.0826699999999998 switchif2
opspareds "" switchif2
opparm switchif2  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif2 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Direction")' switchif2/expr1
chblockend
opparm -V 20.5.370 switchif2 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif2 -*
chautoscope switchif2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif2
opexprlanguage -s hscript switchif2
opuserdata -n '___Version___' -v '20.5.370' switchif2

# Node group5 (Sop/groupcreate)
opadd -e -n groupcreate group5
oplocate -x -3.1078700000000001 -y 1.96139 group5
opspareds "" group5
opparm -V 20.5.370 group5 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group5 -*
chautoscope group5 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group5
opexprlanguage -s hscript group5
opuserdata -n '___Version___' -v '20.5.370' group5

# Node group6 (Sop/groupcreate)
opadd -e -n groupcreate group6
oplocate -x -3.1078700000000001 -y 1.14008 group6
opspareds "" group6
opparm -V 20.5.370 group6 groupname ( rightside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( !0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group6 -*
chautoscope group6 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group6
opexprlanguage -s hscript group6
opuserdata -n '___Version___' -v '20.5.370' group6

# Node group7 (Sop/groupcreate)
opadd -e -n groupcreate group7
oplocate -x -0.80144300000000002 -y 1.96139 group7
opspareds "" group7
opparm -V 20.5.370 group7 groupname ( rightside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group7 -*
chautoscope group7 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group7
opexprlanguage -s hscript group7
opuserdata -n '___Version___' -v '20.5.370' group7

# Node group8 (Sop/groupcreate)
opadd -e -n groupcreate group8
oplocate -x -0.80144300000000002 -y 1.14008 group8
opspareds "" group8
opparm -V 20.5.370 group8 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( !0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group8 -*
chautoscope group8 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group8
opexprlanguage -s hscript group8
opuserdata -n '___Version___' -v '20.5.370' group8

# Node connect_points_l (Sop/subnet)
opadd -e -n subnet connect_points_l
oplocate -x 1.851 -y 3.71068 connect_points_l
opspareds "" connect_points_l
opparm -V 20.5.370 connect_points_l label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock connect_points_l -*
chautoscope connect_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connect_points_l
opexprlanguage -s hscript connect_points_l
opuserdata -n '___Version___' -v '20.5.370' connect_points_l
opcf connect_points_l

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x -1.11759e-08 -y 5.8921299999999999 circle1
opspareds "" circle1
chblockbegin
chadd -t 0 0 circle1 radx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../../Width")' circle1/radx
chadd -t 0 0 circle1 rady
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../../Width")' circle1/rady
chadd -t 0 0 circle1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../../Width")' circle1/tz
chadd -t 0 0 circle1 beginangle
chkey -t 0 -v -62 -m 0 -a 0 -A 0 -T a  -F '90-ch("../../Angle")' circle1/beginangle
chblockend
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( radx rady ) t ( 0 0 tz ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( 1 ) arc ( openarc ) angle ( beginangle 90 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -1.11759e-08 -y 4.2373200000000004 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 0 0 0 ) keep ( on ) points ( 0 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node sort1 (Sop/sort)
opadd -e -n sort sort1
oplocate -x -1.11759e-08 -y 5.0738099999999999 sort1
opspareds "" sort1
opparm -V 20.5.370 sort1 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort1 -*
chautoscope sort1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort1
opexprlanguage -s hscript sort1
opuserdata -n '___Version___' -v '20.5.370' sort1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.0011500099999999999 -y 3.2660900000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -5.5511199999999995e-17 -y 1.85016 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e circle1 add2 sort1 merge2 output0 
opcf ..

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 2.1237900000000001 -y -8.8811800000000005 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node leftside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle leftside_primitive
oplocate -x 3.6646700000000001 -y -2.7673299999999998 leftside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' leftside_primitive
opparm leftside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm leftside_primitive folder0 ( 0 0 ) group ( leftside ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n     \nsetprimattrib(0, "prim_type", prim, "leftside" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( leftside )
chlock leftside_primitive -*
chautoscope leftside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off leftside_primitive
opexprlanguage -s hscript leftside_primitive
opuserdata -n '___Version___' -v '' leftside_primitive

# Node rightside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle rightside_primitive
oplocate -x 3.6646700000000001 -y -3.7369300000000001 rightside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' rightside_primitive
opparm rightside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm rightside_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n        \nsetprimattrib(0, "prim_type", prim, "rightside" );\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock rightside_primitive -*
chautoscope rightside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rightside_primitive
opexprlanguage -s hscript rightside_primitive
opuserdata -n '___Version___' -v '' rightside_primitive

# Node floor_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle floor_primitive
oplocate -x 3.6646700000000001 -y -4.68811 floor_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' floor_primitive
opparm floor_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm floor_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "poly");\n\nif( ch("../Direction")==0 )\n    for( int i=npoints(0)-1; i>=0; --i )\n        addvertex(0, prim, i);\nelse\n    for( int i=0; i<npoints(0); ++i )\n        addvertex(0, prim, i);\n\nsetprimattrib(0, "prim_type", prim, "floor" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock floor_primitive -*
chautoscope floor_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off floor_primitive
opexprlanguage -s hscript floor_primitive
opuserdata -n '___Version___' -v '' floor_primitive

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 2.1226400000000001 -y -5.9366199999999996 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node add_endpoint_pos_dir (Sop/attribwrangle)
opadd -e -n attribwrangle add_endpoint_pos_dir
oplocate -x 2.12079 -y -0.79905899999999996 add_endpoint_pos_dir
opspareds "" add_endpoint_pos_dir
opparm add_endpoint_pos_dir  bindings ( 0 ) groupbindings ( 0 )
opparm add_endpoint_pos_dir folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(0,"P",1);\nvector bisect = point(1,"P", npoints(1)-1) - pos;\nvector dir = normalize(set(bisect.z, 0, -bisect.x));\n\nint handle = addpoint(0, pos + dir);\nsetpointgroup(0, "handle", handle, 1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock add_endpoint_pos_dir -*
chautoscope add_endpoint_pos_dir -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add_endpoint_pos_dir
opexprlanguage -s hscript add_endpoint_pos_dir
opuserdata -n '___Version___' -v '' add_endpoint_pos_dir
oporder -e output0 merge1 group3 group4 arc_points_l mirror1 switchif1 mirror2 switchif2 group5 group6 group7 group8 connect_points_l output1 leftside_primitive rightside_primitive floor_primitive merge2 add_endpoint_pos_dir 
opcf ..

# Node Elbow (Sop/subnet)
opadd -e -n subnet Elbow
oplocate -x -14.4024 -y 2.9468700000000001 Elbow
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Direction"         label   "Direction"         type    ordinal         default { "0" }         menu {             "0" "Left"             "1" "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu {             "0" "Rect"             "1" "Arc"         }         parmtag { "script_callback_language" "python" }     } ' Elbow
opparm -V 20.5.370 Elbow label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Direction ( 0 ) Width ( 1 ) CornerType ( 0 )
chlock Elbow -*
chautoscope Elbow -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Elbow
opexprlanguage -s hscript Elbow
opuserdata -n '___Version___' -v '20.5.370' Elbow
opcf Elbow

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.33644200000000002 -y -6.4081900000000003 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node connect_points_l (Sop/add)
opadd -e -n add connect_points_l
oplocate -x 2.3414899999999998 -y 3.5983200000000002 connect_points_l
opspareds "" connect_points_l
opparm connect_points_l  points ( 3 ) prims ( 1 )
chblockbegin
chadd -t 0 0 connect_points_l pt1x
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' connect_points_l/pt1x
chadd -t 0 0 connect_points_l pt1z
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' connect_points_l/pt1z
chadd -t 0 0 connect_points_l pt2x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' connect_points_l/pt2x
chadd -t 0 0 connect_points_l pt2z
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")-1' connect_points_l/pt2z
chblockend
opparm -V 20.5.370 connect_points_l stdswitcher ( 0 0 0 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( pt1x 0 pt1z ) weight1 ( 1 ) usept2 ( on ) pt2 ( pt2x 0 pt2z ) weight2 ( 1 )
chlock connect_points_l -*
chautoscope connect_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connect_points_l
opexprlanguage -s hscript connect_points_l
opuserdata -n '___Version___' -v '20.5.370' connect_points_l

# Node outline_points_l (Sop/add)
opadd -e -n add outline_points_l
oplocate -x -2.4549099999999999 -y 4.6785399999999999 outline_points_l
opspareds "" outline_points_l
opparm outline_points_l  points ( 4 ) prims ( 1 )
chblockbegin
chadd -t 0 0 outline_points_l pt0z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' outline_points_l/pt0z
chadd -t 0 0 outline_points_l pt1z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' outline_points_l/pt1z
chadd -t 0 0 outline_points_l pt2x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' outline_points_l/pt2x
chadd -t 0 0 outline_points_l pt2z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' outline_points_l/pt2z
chadd -t 0 0 outline_points_l pt3x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Width")' outline_points_l/pt3x
chadd -t 0 0 outline_points_l pt3z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' outline_points_l/pt3z
chblockend
opparm -V 20.5.370 outline_points_l stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 pt0z ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0 pt1z ) weight1 ( 1 ) usept2 ( on ) pt2 ( pt2x 0 pt2z ) weight2 ( 1 ) usept3 ( on ) pt3 ( pt3x 0 pt3z ) weight3 ( 1 )
chlock outline_points_l -*
chautoscope outline_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off outline_points_l
opexprlanguage -s hscript outline_points_l
opuserdata -n '___Version___' -v '20.5.370' outline_points_l

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 0.33529199999999998 -y -4.4050399999999996 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x 2.3414899999999998 -y 1.1328 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( start ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node group4 (Sop/groupcreate)
opadd -e -n groupcreate group4
oplocate -x 2.3414899999999998 -y 0.31149199999999999 group4
opspareds "" group4
opparm -V 20.5.370 group4 groupname ( end ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 1 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group4 -*
chautoscope group4 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
opexprlanguage -s hscript group4
opuserdata -n '___Version___' -v '20.5.370' group4

# Node switch3 (Sop/switch)
opadd -e -n switch switch3
oplocate -x -1.6274999999999999 -y 3.75074 switch3
opspareds "" switch3
chblockbegin
chadd -t 0 0 switch3 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../CornerType")' switch3/input
chblockend
opparm -V 20.5.370 switch3 input ( input )
chlock switch3 -*
chautoscope switch3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch3
opexprlanguage -s hscript switch3
opuserdata -n '___Version___' -v '20.5.370' switch3

# Node arc_points_l (Sop/subnet)
opadd -e -n subnet arc_points_l
oplocate -x -0.89031099999999996 -y 4.6785399999999999 arc_points_l
opspareds "" arc_points_l
opparm -V 20.5.370 arc_points_l label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock arc_points_l -*
chautoscope arc_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off arc_points_l
opexprlanguage -s hscript arc_points_l
opuserdata -n '___Version___' -v '20.5.370' arc_points_l
opcf arc_points_l

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x 0 -y 6.1117999999999997 circle1
opspareds "" circle1
chblockbegin
chadd -t 0 0 circle1 radx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../Width")' circle1/radx
chadd -t 0 0 circle1 rady
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../Width")' circle1/rady
chadd -t 0 0 circle1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../../Width")' circle1/tz
chblockend
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( radx rady ) t ( 0 0 tz ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( 12 ) arc ( openarc ) angle ( 0 90 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x 0 -y 4.4569900000000002 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 0 0 0 ) keep ( on ) points ( 0 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node sort1 (Sop/sort)
opadd -e -n sort sort1
oplocate -x 0 -y 5.2934799999999997 sort1
opspareds "" sort1
opparm -V 20.5.370 sort1 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort1 -*
chautoscope sort1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort1
opexprlanguage -s hscript sort1
opuserdata -n '___Version___' -v '20.5.370' sort1

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x -1.71889 -y 6.1117999999999997 add3
opspareds "" add3
opparm add3  points ( 1 ) prims ( 1 )
chblockbegin
chadd -t 0 0 add3 pt0z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../../Width")' add3/pt0z
chblockend
opparm -V 20.5.370 add3 stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 pt0z ) weight0 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.57532000000000005 -y 3.5269499999999998 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.57532000000000005 -y 2.6327500000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e circle1 add2 sort1 add3 merge2 output0 
opcf ..

# Node mirror1 (Sop/mirror)
opadd -e -n mirror mirror1
oplocate -x -0.71662400000000004 -y 2.84903 mirror1
opspareds "" mirror1
opparm -V 20.5.370 mirror1 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror1 -*
chautoscope mirror1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror1
opexprlanguage -s hscript mirror1
opuserdata -n '___Version___' -v '20.5.370' mirror1

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -1.6274999999999999 -y 0.027520200000000002 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Direction")' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node mirror2 (Sop/mirror)
opadd -e -n mirror mirror2
oplocate -x 3.2604199999999999 -y 2.8054299999999999 mirror2
opspareds "" mirror2
opparm -V 20.5.370 mirror2 group ( "" ) operation ( all ) dirtype ( direction ) t ( 0 0 0 ) r ( 0 0 0 ) origin ( 0 0 0 ) dir ( 0 0 1 ) dist ( 0 ) reversenml ( reverse ) keepOriginal ( off ) consolidatepts ( on ) consolidatetol ( 0.0001 ) consolidateunshared ( on ) createoutputgroup ( off ) outputgroup ( mirror )
chlock mirror2 -*
chautoscope mirror2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off mirror2
opexprlanguage -s hscript mirror2
opuserdata -n '___Version___' -v '20.5.370' mirror2

# Node switchif2 (Sop/switchif)
opadd -e -n switchif switchif2
oplocate -x 2.3414899999999998 -y 1.97031 switchif2
opspareds "" switchif2
opparm switchif2  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif2 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Direction")' switchif2/expr1
chblockend
opparm -V 20.5.370 switchif2 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif2 -*
chautoscope switchif2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif2
opexprlanguage -s hscript switchif2
opuserdata -n '___Version___' -v '20.5.370' switchif2

# Node group5 (Sop/groupcreate)
opadd -e -n groupcreate group5
oplocate -x -2.8901699999999999 -y 1.84903 group5
opspareds "" group5
opparm -V 20.5.370 group5 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group5 -*
chautoscope group5 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group5
opexprlanguage -s hscript group5
opuserdata -n '___Version___' -v '20.5.370' group5

# Node group6 (Sop/groupcreate)
opadd -e -n groupcreate group6
oplocate -x -2.8901699999999999 -y 1.02772 group6
opspareds "" group6
opparm -V 20.5.370 group6 groupname ( rightside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( !0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group6 -*
chautoscope group6 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group6
opexprlanguage -s hscript group6
opuserdata -n '___Version___' -v '20.5.370' group6

# Node group7 (Sop/groupcreate)
opadd -e -n groupcreate group7
oplocate -x -0.58374199999999998 -y 1.84903 group7
opspareds "" group7
opparm -V 20.5.370 group7 groupname ( rightside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group7 -*
chautoscope group7 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group7
opexprlanguage -s hscript group7
opuserdata -n '___Version___' -v '20.5.370' group7

# Node group8 (Sop/groupcreate)
opadd -e -n groupcreate group8
oplocate -x -0.58374199999999998 -y 1.02772 group8
opspareds "" group8
opparm -V 20.5.370 group8 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( !0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group8 -*
chautoscope group8 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group8
opexprlanguage -s hscript group8
opuserdata -n '___Version___' -v '20.5.370' group8

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 4.0782600000000002 -y -6.4081900000000003 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 4.0771100000000002 -y -4.9987199999999996 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node leftside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle leftside_primitive
oplocate -x 6.0097399999999999 -y -2.38768 leftside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' leftside_primitive
opparm leftside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm leftside_primitive folder0 ( 0 0 ) group ( leftside ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n        \nsetprimattrib(0, "prim_type", prim, "leftside" );' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( leftside )
chlock leftside_primitive -*
chautoscope leftside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off leftside_primitive
opexprlanguage -s hscript leftside_primitive
opuserdata -n '___Version___' -v '' leftside_primitive

# Node rightside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle rightside_primitive
oplocate -x 6.0097399999999999 -y -3.3572799999999998 rightside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' rightside_primitive
opparm rightside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm rightside_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n        \nsetprimattrib(0, "prim_type", prim, "rightside" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock rightside_primitive -*
chautoscope rightside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rightside_primitive
opexprlanguage -s hscript rightside_primitive
opuserdata -n '___Version___' -v '' rightside_primitive

# Node floor_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle floor_primitive
oplocate -x 6.0097399999999999 -y -4.3084600000000002 floor_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' floor_primitive
opparm floor_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm floor_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "poly");\n\nif( ch("../Direction")==0 )\n    for( int i=npoints(0)-1; i>=0; --i )\n        addvertex(0, prim, i);\nelse\n    for( int i=0; i<npoints(0); ++i )\n        addvertex(0, prim, i);\n\nsetprimattrib(0, "prim_type", prim, "floor" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock floor_primitive -*
chautoscope floor_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off floor_primitive
opexprlanguage -s hscript floor_primitive
opuserdata -n '___Version___' -v '' floor_primitive

# Node group9 (Sop/groupcreate)
opadd -e -n groupcreate group9
oplocate -x 2.3414899999999998 -y -0.51817400000000002 group9
opspareds "" group9
opparm -V 20.5.370 group9 groupname ( handle ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 2 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group9 -*
chautoscope group9 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group9
opexprlanguage -s hscript group9
opuserdata -n '___Version___' -v '20.5.370' group9
oporder -e output0 connect_points_l outline_points_l merge1 group3 group4 switch3 arc_points_l mirror1 switchif1 mirror2 switchif2 group5 group6 group7 group8 output1 merge3 leftside_primitive rightside_primitive floor_primitive group9 
opcf ..

# Node Straight (Sop/subnet)
opadd -e -n subnet Straight
oplocate -x -14.540800000000001 -y -0.66701200000000005 Straight
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Length"         label   "Length"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "0" }         range   { -10 10 }         parmtag { "script_callback_language" "python" }     } ' Straight
opparm -V 20.5.370 Straight label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Length ( 2 ) Width ( 1 ) Elevation ( 1.44 )
chlock Straight -*
chautoscope Straight -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight
opexprlanguage -s hscript Straight
opuserdata -n '___Version___' -v '20.5.370' Straight
opcf Straight

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -3.6171099999999998 -y -2.2366899999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node connect_points_l (Sop/add)
opadd -e -n add connect_points_l
oplocate -x 1.7506999999999999 -y 5.0384700000000002 connect_points_l
opspareds "" connect_points_l
opparm connect_points_l  points ( 2 ) prims ( 1 )
chblockbegin
chadd -t 0 0 connect_points_l pt1x
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Length")' connect_points_l/pt1x
chadd -t 0 0 connect_points_l pt1y
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' connect_points_l/pt1y
chblockend
opparm -V 20.5.370 connect_points_l stdswitcher ( 0 0 0 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( pt1x pt1y 0 ) weight1 ( 1 )
chlock connect_points_l -*
chautoscope connect_points_l -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connect_points_l
opexprlanguage -s hscript connect_points_l
opuserdata -n '___Version___' -v '20.5.370' connect_points_l

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x -1.4904900000000001 -y 4.1803100000000004 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( '0 1' ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x -1.4904900000000001 -y 3.2101299999999999 group2
opspareds "" group2
opparm -V 20.5.370 group2 groupname ( rightside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( '2 3' ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group2 -*
chautoscope group2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group2
opexprlanguage -s hscript group2
opuserdata -n '___Version___' -v '20.5.370' group2

# Node outline_points_l (Sop/add)
opadd -e -n add outline_points_l
oplocate -x -1.4904900000000001 -y 5.0384700000000002 outline_points_l
opspareds "" outline_points_l
opparm outline_points_l  points ( 4 ) prims ( 1 )
chblockbegin
chadd -t 0 0 outline_points_l pt0z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' outline_points_l/pt0z
chadd -t 0 0 outline_points_l pt1x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Length")' outline_points_l/pt1x
chadd -t 0 0 outline_points_l pt1y
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' outline_points_l/pt1y
chadd -t 0 0 outline_points_l pt1z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' outline_points_l/pt1z
chadd -t 0 0 outline_points_l pt2z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' outline_points_l/pt2z
chadd -t 0 0 outline_points_l pt3x
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Length")' outline_points_l/pt3x
chadd -t 0 0 outline_points_l pt3y
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../Elevation")' outline_points_l/pt3y
chadd -t 0 0 outline_points_l pt3z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' outline_points_l/pt3z
chblockend
opparm -V 20.5.370 outline_points_l stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 pt0z ) weight0 ( 1 ) usept1 ( on ) pt1 ( pt1x pt1y pt1z ) weight1 ( 1 ) usept2 ( on ) pt2 ( 0 0 pt2z ) weight2 ( 1 ) usept3 ( on ) pt3 ( pt3x pt3y pt3z ) weight3 ( 1 )
chlock outline_points_l -*
chautoscope outline_points_l -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off outline_points_l
opexprlanguage -s hscript outline_points_l
opuserdata -n '___Version___' -v '20.5.370' outline_points_l

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -3.6182599999999998 -y -0.35486200000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x 1.7506999999999999 -y 4.1803100000000004 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( start ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node group4 (Sop/groupcreate)
opadd -e -n groupcreate group4
oplocate -x 1.7506999999999999 -y 3.2101299999999999 group4
opspareds "" group4
opparm -V 20.5.370 group4 groupname ( end ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 1-3 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group4 -*
chautoscope group4 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
opexprlanguage -s hscript group4
opuserdata -n '___Version___' -v '20.5.370' group4

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x 1.7506999999999999 -y -3.42001 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 1 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node leftside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle leftside_primitive
oplocate -x 3.3492500000000001 -y 0.622556 leftside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' leftside_primitive
opparm leftside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm leftside_primitive folder0 ( 0 0 ) group ( leftside ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n        \nsetprimattrib(0, "prim_type", prim, "leftside" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( leftside )
chlock leftside_primitive -*
chautoscope leftside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off leftside_primitive
opexprlanguage -s hscript leftside_primitive
opuserdata -n '___Version___' -v '' leftside_primitive

# Node rightside_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle rightside_primitive
oplocate -x 3.3492500000000001 -y -0.34703899999999999 rightside_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' rightside_primitive
opparm rightside_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm rightside_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "polyline");\n\nfor( int i=0; i<npoints(0); ++i )\n    if( inpointgroup(0, chs("GroupName"), i)==1 )\n        addvertex(0, prim, i);\n        \nsetprimattrib(0, "prim_type", prim, "rightside" );' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock rightside_primitive -*
chautoscope rightside_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rightside_primitive
opexprlanguage -s hscript rightside_primitive
opuserdata -n '___Version___' -v '' rightside_primitive

# Node floor_primitive (Sop/attribwrangle)
opadd -e -n attribwrangle floor_primitive
oplocate -x 3.3492500000000001 -y -1.2982199999999999 floor_primitive
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "GroupName"                 label   "Groupname"                 type    string                 default { "" }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' floor_primitive
opparm floor_primitive  bindings ( 0 ) groupbindings ( 0 )
opparm floor_primitive folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int prim =  addprim(0, "poly");\n\naddvertex(0, prim, 0);\naddvertex(0, prim, 1);\naddvertex(0, prim, 3);\naddvertex(0, prim, 2);\n\nsetprimattrib(0, "prim_type", prim, "floor" );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) GroupName ( rightside )
chlock floor_primitive -*
chautoscope floor_primitive -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off floor_primitive
opexprlanguage -s hscript floor_primitive
opuserdata -n '___Version___' -v '' floor_primitive

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 1.7495499999999999 -y -2.3028300000000002 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node add_endpoint_pos_dir (Sop/attribwrangle)
opadd -e -n attribwrangle add_endpoint_pos_dir
oplocate -x 1.7477 -y 2.3395100000000002 add_endpoint_pos_dir
opspareds "" add_endpoint_pos_dir
opparm add_endpoint_pos_dir  bindings ( 0 ) groupbindings ( 0 )
opparm add_endpoint_pos_dir folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(0, "P", 1);\n//vector dir = pos - point(0, "P", 0);\n\n//dir.y=0.0;\nint handle = addpoint(0, pos + set(1,0,0));\n\nsetpointgroup(0, "handle", handle, 1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock add_endpoint_pos_dir -*
chautoscope add_endpoint_pos_dir -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add_endpoint_pos_dir
opexprlanguage -s hscript add_endpoint_pos_dir
opuserdata -n '___Version___' -v '' add_endpoint_pos_dir
oporder -e output0 connect_points_l group1 group2 outline_points_l merge1 group3 group4 output1 leftside_primitive rightside_primitive floor_primitive merge3 add_endpoint_pos_dir 
opcf ..

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 2.0966300000000002 -y 4.18241 add1
opspareds "" add1
opparm add1  points ( 7 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 7 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -16.087917163385647 0 -5.101238288487917 ) weight0 ( 1 ) usept1 ( on ) pt1 ( -4.925878058069987 0 -9.167637689753924 ) weight1 ( 1 ) usept2 ( on ) pt2 ( -0.5386547953736134 0 -7.458605202106966 ) weight2 ( 1 ) usept3 ( on ) pt3 ( -1.0043319223094338 0 -10.504736361759996 ) weight3 ( 1 ) usept4 ( on ) pt4 ( 5.4281306059110435 0 -5.865755642221389 ) weight4 ( 1 ) usept5 ( on ) pt5 ( 12.29367034905706 0 1.666749164673134 ) weight5 ( 1 ) usept6 ( on ) pt6 ( 2.9999188620454134 0 17.100312743393758 ) weight6 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node polybevel1 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel1
oplocate -x 2.1214300000000001 -y 3.18241 polybevel1
opspareds "" polybevel1
opparm polybevel1  profileramp ( 2 )
opparm -V 20.5.370 polybevel1 group ( "" ) grouptype ( points ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 1 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 3 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel1 -*
chautoscope polybevel1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polybevel1
opexprlanguage -s hscript polybevel1
opuserdata -n '___Version___' -v '20.5.370' polybevel1

# Node Aisle (Sop/subnet)
opadd -e -n subnet Aisle
oplocate -x -10.430199999999999 -y 3.3443399999999999 Aisle
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     groupcollapsible {         name    "folder0"         label   "Isle"          parm {             name    "Alignment"             label   "Alignment"             type    ordinal             default { "0" }             menu {                 "0" "Left"                 "1" "Right"                 "2" "Center"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "W"             label   "W"             type    float             default { "1.6" }             range   { 0 10 }             parmtag { "script_callback_language" "python" }         }     }      groupcollapsible {         name    "folder1"         label   "Handrails"          parm {             name    "Placement"             label   "Placement"             type    ordinal             default { "0" }             menu {                 "0" "Left"                 "1" "Right"                 "2" "Both"             }             parmtag { "script_callback_language" "python" }         }         parm {             name    "CapStart"             label   "CapStart"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }         parm {             name    "CapEnd"             label   "CapEnd"             type    toggle             default { "0" }             parmtag { "script_callback_language" "python" }         }     }  ' Aisle
opparm -V 20.5.370 Aisle label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) folder0 ( 1 ) Alignment ( 0 ) W ( 1.95 ) folder1 ( 1 ) Placement ( 0 ) CapStart ( off ) CapEnd ( on )
chlock Aisle -*
chautoscope Aisle -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Aisle
opexprlanguage -s hscript Aisle
opuserdata -n '___Version___' -v '20.5.370' Aisle
opcf Aisle

# Network Box __netbox14
nbadd __netbox14
nblocate -x -0.39286 -y -1.20178 __netbox14
nbsize -w 3.67964 -h 1.47276 __netbox14
nbset  -m off __netbox14
nbcolor -c 0.52 0.52 0.52 __netbox14

# Network Box __netbox15
nbadd __netbox15
nblocate -x -0.396604 -y -5.89122 __netbox15
nbsize -w 3.68339 -h 1.5974 __netbox15
nbset  -m off __netbox15
nbcolor -c 0.52 0.52 0.52 __netbox15

# Network Box __netbox16
nbadd __netbox16
nblocate -x -0.396604 -y -3.52362 __netbox16
nbsize -w 3.68339 -h 1.5234 __netbox16
nbset  -m off __netbox16
nbcolor -c 0.52 0.52 0.52 __netbox16

# Network Box __netbox1
nbadd __netbox1
nblocate -x -0.4 -y -12.4898 __netbox1
nbsize -w 4.58349 -h 3.67424 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x -1.0744800000000001 -y 3.6180300000000001 polyexpand2d1
opspareds "" polyexpand2d1
chblockbegin
chadd -t 0 0 polyexpand2d1 offset
chkey -t 0 -v 0.67000000000000004 -m 0 -a 0 -A 0 -T a  -F 'if( ch("../Alignment")==2, 0.5*ch("../W"), ch("../W") )' polyexpand2d1/offset
chblockend
opparm -V 20.5.370 polyexpand2d1 group ( "" ) planepossrc ( setplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( off ) outputoutside ( on ) keepinput ( off ) omitendcaps ( on ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d1 -*
chautoscope polyexpand2d1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d1
opexprlanguage -s hscript polyexpand2d1
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d1

# Node check_if_point_is_left_or_right_of_center (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_left_or_right_of_center
oplocate -x -0.00300001 -y 2.1086399999999998 check_if_point_is_left_or_right_of_center
opspareds "" check_if_point_is_left_or_right_of_center
opparm check_if_point_is_left_or_right_of_center  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_left_or_right_of_center folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\nfloat ext = chf("../W");// terminal edge extension length( W )\nint ps[] = primpoints(1, 0);\n\n//================= Get center line segment ===============//\nvector points[];\n// copy points from input1\nfor( int i=0; i<len(ps); ++i )\n{\n    vector p = point(1,"P",ps[i]);\n    append( points, p );\n}\n// extend terminal points (due to polyexpand2d extrusion behavior).\n//vector v = ext * normalize(points[0]-points[1]);\npoints[0] += ext * normalize(points[0]-points[1]);\n//vector v = ext * normalize(p1-p0);\npoints[-1] += ext * normalize(points[-1]-points[-2]);\n\n\n//======= Get closest centerline point ==========//\nint closest_point_id = -1;\nfloat dist = 999999999.9;\n\n\nint nears[] = nearpoints(0, @P, ch("../W")*1.001 );\n//printf("----%d\\n", nears);\nint diff = 9999999999999;\nforeach( int near; nears )\n{\n    int d = abs(@ptnum - near);\n    if( d < diff )\n    {\n        diff = d;\n        closest_point_id = near;\n    }\n}\n\n\n/*\nfor( int i=0; i<len(points); ++i )\n{\n    float d = distance2(@P, points[i]);\n    \n    if( d <= dist )\n    {\n        dist = d;\n        closest_point_id = ps[i];//i;\n    }   \n}\n*/\n//======= Get closest centerline segment ==========//\nint closest_segment_id = -1;\ndist = 999999999.9;\nfor( int i=0; i<len(ps)-1; ++i )\n{\n    float d = distance_pointsegment( @P, points[i], points[i+1] );\n    if( d <= dist )\n    {\n        dist = d;\n        closest_segment_id = i;\n    }\n}\n\n\n// Check if\nvector p0 = points[closest_segment_id];//point(1,"P",ps[closest_id]);\nvector p1 = points[closest_segment_id+1];//point(1,"P",ps[closest_id+1]);\nfloat lr = sign((p1.x - p0.x) * (@P.z - p0.z) - (p1.z - p0.z) * (@P.x - p0.x));\n\nf@lr = lr;\n//i@closest_id = closest_id;\ni@closest_point_id = closest_point_id;//nearpoint(1, @P);\n//printf("[%d]: closest_id = %d, %f\\n", @ptnum, closest_id, dist );\n\n@group_right = lr>0.0;\n@group_left = !@group_right;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_left_or_right_of_center -*
chautoscope check_if_point_is_left_or_right_of_center -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_if_point_is_left_or_right_of_center
opexprlanguage -s hscript check_if_point_is_left_or_right_of_center
opuserdata -n '___Version___' -v '' check_if_point_is_left_or_right_of_center

# Node clip_function_test (Sop/attribwrangle)
opadd -e -n attribwrangle clip_function_test
oplocate -x 9.8579399999999993 -y -18.767299999999999 clip_function_test
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "W"                 label   "W"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_function_test
opparm clip_function_test  bindings ( 0 ) groupbindings ( 0 )
opparm clip_function_test folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float w = chf("W");\n\nvector p0 = point(geoself(), "P", 0);\nvector p1 = point(geoself(), "P", 1);\nint result=-1;\nvector n = normalize(p1-p0);\nvector4 plane = set(-n.x, -n.y, -n.z, w );\n//printf( "%f\\n", plane );\nclip( result, p1, p0, plane );\nprintf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", 0, p0);\nsetpointattrib(geoself(), "P", 1, p1);\n\n// OK\n//vector bbmin = set(-0.5, 1.5, -0.5);\n//vector bbmax = set(0.5, 3.5, 0.5);\n//clip( result, p0, p1, bbmin, bbmax );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) W ( 1 )
chlock clip_function_test -*
chautoscope clip_function_test -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on clip_function_test
opexprlanguage -s hscript clip_function_test
opuserdata -n '___Version___' -v '' clip_function_test

# Node add5 (Sop/add)
opadd -e -n add add5
oplocate -x 9.5386399999999991 -y -17.501799999999999 add5
opspareds "" add5
opparm add5  points ( 2 ) prims ( 1 )
opparm -V 20.5.370 add5 stdswitcher ( 0 0 0 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 5 0 ) weight1 ( 1 )
chlock add5 -*
chautoscope add5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on add5
opexprlanguage -s hscript add5
opuserdata -n '___Version___' -v '20.5.370' add5

# Node sort10 (Sop/sort)
opadd -e -n sort sort10
oplocate -x -1.11759e-08 -y 5.1368400000000003 sort10
opspareds "" sort10
opparm -V 20.5.370 sort10 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort10 -*
chautoscope sort10 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort10
opexprlanguage -s hscript sort10
opuserdata -n '___Version___' -v '20.5.370' sort10

# Node output1 (Sop/output)
opadd -e -n output output1
oplocate -x -1.7397 -y -29.0062 output1
opspareds "" output1
opparm -V 20.5.370 output1 outputidx ( 0 )
chlock output1 -*
chautoscope output1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output1
opexprlanguage -s hscript output1
opuserdata -n '___Version___' -v '20.5.370' output1

# Node output2 (Sop/output)
opadd -e -n output output2
oplocate -x 1.6191 -y -29.0062 output2
opspareds "" output2
opparm -V 20.5.370 output2 outputidx ( 1 )
chlock output2 -*
chautoscope output2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output2
opexprlanguage -s hscript output2
opuserdata -n '___Version___' -v '20.5.370' output2

# Node switchif1 (Sop/switchif)
opadd -e -n switchif switchif1
oplocate -x -1.7397 -y -18.224900000000002 switchif1
opspareds "" switchif1
opparm switchif1  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif1 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")==1' switchif1/expr1
chblockend
opparm -V 20.5.370 switchif1 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif1 -*
chautoscope switchif1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif1
opexprlanguage -s hscript switchif1
opuserdata -n '___Version___' -v '20.5.370' switchif1

# Node switchif2 (Sop/switchif)
opadd -e -n switchif switchif2
oplocate -x 1.6191 -y -18.224900000000002 switchif2
opspareds "" switchif2
opparm switchif2  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif2 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Alignment")==0' switchif2/expr1
chblockend
opparm -V 20.5.370 switchif2 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif2 -*
chautoscope switchif2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif2
opexprlanguage -s hscript switchif2
opuserdata -n '___Version___' -v '20.5.370' switchif2

# Node add4 (Sop/add)
opadd -e -n add add4
oplocate -x 5.6876100000000003 -y -23.632200000000001 add4
opspareds "" add4
opparm add4  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add4 stdswitcher ( 1 1 1 ) keep ( on ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add4 -*
chautoscope add4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add4
opexprlanguage -s hscript add4
opuserdata -n '___Version___' -v '20.5.370' add4

# Node merge7 (Sop/merge)
opadd -e -n merge merge7
oplocate -x 5.6864600000000003 -y -21.5688 merge7
opspareds "" merge7
opparm -V 20.5.370 merge7
chlock merge7 -*
chautoscope merge7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge7
opexprlanguage -s hscript merge7
opuserdata -n '___Version___' -v '20.5.370' merge7

# Node reverse_point_order (Sop/sort)
opadd -e -n sort reverse_point_order
oplocate -x 5.6876100000000003 -y -20.137799999999999 reverse_point_order
opspareds "" reverse_point_order
opparm -V 20.5.370 reverse_point_order pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock reverse_point_order -*
chautoscope reverse_point_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse_point_order
opexprlanguage -s hscript reverse_point_order
opuserdata -n '___Version___' -v '20.5.370' reverse_point_order

# Node output3 (Sop/output)
opadd -e -n output output3
oplocate -x 5.6876100000000003 -y -27.941500000000001 output3
opspareds "" output3
opparm -V 20.5.370 output3 outputidx ( 3 )
chlock output3 -*
chautoscope output3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output3
opexprlanguage -s hscript output3
opuserdata -n '___Version___' -v '20.5.370' output3

# Node output4 (Sop/output)
opadd -e -n output output4
oplocate -x 3.62324 -y -37.930500000000002 output4
opspareds "" output4
opparm -V 20.5.370 output4 outputidx ( 2 )
chlock output4 -*
chautoscope output4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output4
opexprlanguage -s hscript output4
opuserdata -n '___Version___' -v '20.5.370' output4

# Node foreach_end2 (Sop/block_end)
opadd -e -n block_end foreach_end2
oplocate -x 0.00160001 -y -7.7677199999999997 foreach_end2
opspareds "" foreach_end2
opparm -V 20.5.370 foreach_end2 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( off ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin2 ) templatepath ( ../foreach_begin2 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 1 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end2 -*
chautoscope foreach_end2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end2
opexprlanguage -s hscript foreach_end2
opuserdata -n '___Version___' -v '20.5.370' foreach_end2

# Node foreach_begin2 (Sop/block_begin)
opadd -e -n block_begin foreach_begin2
oplocate -x 0.0016000000000000001 -y 1.05881 foreach_begin2
opspareds "" foreach_begin2
opparm -V 20.5.370 foreach_begin2 method ( piece ) blockpath ( ../foreach_end2 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin2 -*
chautoscope foreach_begin2 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin2
opexprlanguage -s hscript foreach_begin2
opuserdata -n '___Version___' -v '20.5.370' foreach_begin2

# Node rewire5 (Sop/rewire)
opadd -e -n rewire rewire5
oplocate -x -7.7094900000000004e-09 -y -1.0517799999999999 rewire5
opspareds "" rewire5
opparm -V 20.5.370 rewire5 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire5 -*
chautoscope rewire5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rewire5
nbop __netbox14 add rewire5
opexprlanguage -s hscript rewire5
opuserdata -n '___Version___' -v '20.5.370' rewire5

# Node attribwrangle12 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle12
oplocate -x -0.00300001 -y -0.21892200000000001 attribwrangle12
opspareds "" attribwrangle12
opparm attribwrangle12  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle12 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//int pt = vertexpoint(0, @vtxnum);\n//printf( "@numvtx: %d, pt: %d\\n", @vtxnum, pt );\n\nif( vertexpoint(0, @vtxnum) != @vtxnum )\n    i@rewire_to = (@numvtx-1)-@vtxnum;\nelse\n    i@rewire_to = @vtxnum;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle12 -*
chautoscope attribwrangle12 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle12
nbop __netbox14 add attribwrangle12
opexprlanguage -s hscript attribwrangle12
opuserdata -n '___Version___' -v '' attribwrangle12

# Node clip_end_segment4 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_end_segment4
oplocate -x -0.0030000000000000001 -y -5.7033199999999997 clip_end_segment4
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "W"                 label   "W"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_end_segment4
opparm clip_end_segment4  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 clip_end_segment4 W
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../W")' clip_end_segment4/W
chblockend
opparm clip_end_segment4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( -1 ) p1 ( -2 ) W ( W )
chlock clip_end_segment4 -* +p0 +p1
chautoscope clip_end_segment4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_end_segment4
nbop __netbox15 add clip_end_segment4
opexprlanguage -s hscript clip_end_segment4
opuserdata -n '___Version___' -v '' clip_end_segment4

# Node clip_start_segment4 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_start_segment4
oplocate -x -0.0030000000000000001 -y -4.7837199999999998 clip_start_segment4
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "W"                 label   "W"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_start_segment4
opparm clip_start_segment4  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 clip_start_segment4 W
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../W")' clip_start_segment4/W
chblockend
opparm clip_start_segment4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( 0 ) p1 ( 1 ) W ( W )
chlock clip_start_segment4 -* +p0 +p1
chautoscope clip_start_segment4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_start_segment4
nbop __netbox15 add clip_start_segment4
opexprlanguage -s hscript clip_start_segment4
opuserdata -n '___Version___' -v '' clip_start_segment4

# Node sort13 (Sop/sort)
opadd -e -n sort sort13
oplocate -x -4.2431099999999998e-09 -y -3.3736100000000002 sort13
opspareds "" sort13
chblockbegin
chadd -t 0 0 sort13 pointreverse
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"reversed_point_order",0)==1' sort13/pointreverse
chblockend
opparm -V 20.5.370 sort13 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( pointreverse ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort13 -*
chautoscope sort13 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort13
nbop __netbox16 add sort13
opexprlanguage -s hscript sort13
opuserdata -n '___Version___' -v '20.5.370' sort13

# Node check_if_point_is_ascending_order4 (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_ascending_order4
oplocate -x -0.00300001 -y -2.49011 check_if_point_is_ascending_order4
opspareds "" check_if_point_is_ascending_order4
opparm check_if_point_is_ascending_order4  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_ascending_order4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\n//int ps[] = primpoints(0, 0);\n//for(int i=0; i<len(ps); ++i)\n//    printf("ps[%d]: %d\\n", i, ps[i] );\n\n\n//printf("Is closest_id[0]==0 ? %d\\n", point(0, "closest_id", 0)==0 );\n\n//i@reversed_point_order = point(0, "closest_id", 0)!=0;\ni@reversed_point_order = point(0, "closest_point_id", 0)!=0;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_ascending_order4 -*
chautoscope check_if_point_is_ascending_order4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_if_point_is_ascending_order4
nbop __netbox16 add check_if_point_is_ascending_order4
opexprlanguage -s hscript check_if_point_is_ascending_order4
opuserdata -n '___Version___' -v '' check_if_point_is_ascending_order4

# Node fuse10 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse10
oplocate -x -1.17587e-09 -y -6.7412200000000002 fuse10
opspareds "" fuse10
opparm fuse10  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse10 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse10 -*
chautoscope fuse10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse10
opexprlanguage -s hscript fuse10
opuserdata -n '___Version___' -v '20.5.370' fuse10

# Node fuse11 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse11
oplocate -x 5.6876100000000003 -y -22.5776 fuse11
opspareds "" fuse11
opparm fuse11  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse11 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse11 -*
chautoscope fuse11 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse11
opexprlanguage -s hscript fuse11
opuserdata -n '___Version___' -v '20.5.370' fuse11

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 0.00160001 -y -12.250500000000001 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( off ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
nbop __netbox1 add foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 0.00160001 -y -9.3612300000000008 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
nbop __netbox1 add foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node Select_shortest_path_if_multiple_candidates_exist (Sop/attribwrangle)
opadd -e -n attribwrangle Select_shortest_path_if_multiple_candidates_exist
oplocate -x -0.0030000000000000001 -y -10.4185 Select_shortest_path_if_multiple_candidates_exist
opspareds "" Select_shortest_path_if_multiple_candidates_exist
opparm Select_shortest_path_if_multiple_candidates_exist  bindings ( 0 ) groupbindings ( 0 )
opparm Select_shortest_path_if_multiple_candidates_exist folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'if( nprimitives(0)==1 ) return;\n\nfloat path_length = 1.0e+9;\nint out_prim = -1;\n\nfor( int prim=0; prim<nprimitives(0); ++prim )\n{\n    if( primintrinsic ( 0, "closed", prim ) )\n    {\n        out_prim = prim;\n        break;\n    }\n}\n\nif( out_prim == -1)\n{\n    for( int prim=0; prim<nprimitives(0); ++prim )\n    {\n        int pts[] = primpoints(0, prim);\n        float leng = 0.0;\n        for( int i=0; i<len(pts)-1; ++i )\n        {\n            vector p0 = point(0, "P", pts[i]);\n            vector p1 = point(0, "P", pts[i+1]);\n            leng += distance( p0, p1 );\n        }\n        //printf( "%d\\n", leng );\n    \n        if( leng < path_length )\n        {\n            path_length = leng;\n            out_prim = prim;\n        }\n    }\n\n}\n\n//printf( "%d\\n", out_prim );\n\nfor( int prim=0; prim<nprimitives(0); ++prim )\n    if( prim!=out_prim )    removeprim(0, prim, 1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Select_shortest_path_if_multiple_candidates_exist -*
chautoscope Select_shortest_path_if_multiple_candidates_exist -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Select_shortest_path_if_multiple_candidates_exist
nbop __netbox1 add Select_shortest_path_if_multiple_candidates_exist
opexprlanguage -s hscript Select_shortest_path_if_multiple_candidates_exist
opuserdata -n '___Version___' -v '' Select_shortest_path_if_multiple_candidates_exist

# Node polypath4 (Sop/polypath)
opadd -e -n polypath polypath4
oplocate -x -1.17587e-09 -y -11.3467 polypath4
opspareds "" polypath4
opparm polypath4 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath4 -*
chautoscope polypath4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath4
nbop __netbox1 add polypath4
opexprlanguage -s hscript polypath4
opuserdata -n '___Version___' -v '' polypath4

# Node split4 (Sop/split)
opadd -e -n split split4
oplocate -x -1.17587e-09 -y -14.952500000000001 split4
opspareds "" split4
opparm split4 group ( left ) grouptype ( points ) negate ( off ) removegrp ( off )
chlock split4 -*
chautoscope split4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split4
opexprlanguage -s hscript split4
opuserdata -n '___Version___' -v '' split4

# Node leftside_outline_with_endcap1 (Sop/null)
opadd -e -n null leftside_outline_with_endcap1
oplocate -x -1.7397 -y -16.554500000000001 leftside_outline_with_endcap1
opspareds "" leftside_outline_with_endcap1
opparm -V 20.5.370 leftside_outline_with_endcap1 copyinput ( on ) cacheinput ( off )
chlock leftside_outline_with_endcap1 -*
chautoscope leftside_outline_with_endcap1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off leftside_outline_with_endcap1
opexprlanguage -s hscript leftside_outline_with_endcap1
opuserdata -n '___Version___' -v '20.5.370' leftside_outline_with_endcap1

# Node right_outline_with_endcap2 (Sop/null)
opadd -e -n null right_outline_with_endcap2
oplocate -x 1.6191 -y -16.554500000000001 right_outline_with_endcap2
opspareds "" right_outline_with_endcap2
opparm -V 20.5.370 right_outline_with_endcap2 copyinput ( on ) cacheinput ( off )
chlock right_outline_with_endcap2 -*
chautoscope right_outline_with_endcap2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off right_outline_with_endcap2
opexprlanguage -s hscript right_outline_with_endcap2
opuserdata -n '___Version___' -v '20.5.370' right_outline_with_endcap2

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x 5.6876100000000003 -y -25.632200000000001 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 20.5.370 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( 'left right' )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '20.5.370' groupdelete1

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x -0.0030000000000000001 -y -13.77 attribwrangle2
opspareds "" attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@P.y = 0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node color1 (Sop/color)
opadd -e -n color color1
oplocate -x -1.7397 -y -22.535699999999999 color1
opspareds "" color1
opparm color1  ramp ( 2 )
opparm color1 group ( "" ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 1 0 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color1 -*
chautoscope color1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on color1
opexprlanguage -s hscript color1
opuserdata -n '___Version___' -v '' color1
opuserdata -n '___toolcount___' -v '2' color1
opuserdata -n '___toolid___' -v 'sop_color' color1

# Node color2 (Sop/color)
opadd -e -n color color2
oplocate -x 1.6191 -y -22.535699999999999 color2
opspareds "" color2
opparm color2  ramp ( 2 )
opparm color2 group ( "" ) grouptype ( guess ) deleteallcolorattribs ( off ) enable ( on ) class ( 2 ) colortype ( 0 ) color ( 0 0 1 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color2 -*
chautoscope color2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on color2
opexprlanguage -s hscript color2
opuserdata -n '___Version___' -v '' color2
opuserdata -n '___toolcount___' -v '2' color2
opuserdata -n '___toolid___' -v 'sop_color' color2

# Node setup_leftendcap (Sop/attribwrangle)
opadd -e -n attribwrangle setup_leftendcap
oplocate -x -1.7426999999999999 -y -21.3874 setup_leftendcap
opspareds "" setup_leftendcap
opparm setup_leftendcap  bindings ( 0 ) groupbindings ( 0 )
opparm setup_leftendcap folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int placement = chi("../Placement");\n\nint pt1[] = primpoints(1, 0);\nint pt2[] = primpoints(2, 0);\n\n\nint prim = addprim(0, "polyline");\n\n// put first point from input 2\nif( ch("../CapStart") == 1 && placement!=1 )\n{\n    vector p = placement==2\n                ? 0.5 * vector( point(1, "P", pt1[0])+point(2, "P", pt2[0]) )\n                : point(2, "P", pt2[0]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\n// copy side points from input 1\nfor( int i=0; i<len(pt1); ++i )\n{\n    vector p = point(1, "P", pt1[i]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\n// put end point from input 3\nif( ch("../CapEnd") == 1 && placement!=1 )\n{\n    vector p = placement==2\n                ? 0.5 * vector( point(1, "P", pt1[-1])+point(2, "P", pt2[-1]) )\n                : point(2, "P", pt2[-1]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\nint val = inpointgroup(1, "left", 0);\nsetprimgroup(0, "left", prim, val );\n\nval = inpointgroup(1, "right", 0);\nsetprimgroup(0, "right", prim, val );\n\n//i@group_left = prim(1, "group_left", 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock setup_leftendcap -*
chautoscope setup_leftendcap -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off setup_leftendcap
opexprlanguage -s hscript setup_leftendcap
opuserdata -n '___Version___' -v '' setup_leftendcap

# Node setup_rightendcap (Sop/attribwrangle)
opadd -e -n attribwrangle setup_rightendcap
oplocate -x 1.6161000000000001 -y -21.3874 setup_rightendcap
opspareds "" setup_rightendcap
opparm setup_rightendcap  bindings ( 0 ) groupbindings ( 0 )
opparm setup_rightendcap folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int placement = chi("../Placement");\n\nint pt1[] = primpoints(1, 0);\nint pt2[] = primpoints(2, 0);\n\n\nint prim = addprim(0, "polyline");\n\n// put first point from input 2\nif( ch("../CapStart") == 1 && placement!=0 )\n{\n    vector p = placement==2\n                ? 0.5 * vector( point(1, "P", pt1[0])+point(2, "P", pt2[0]) )\n                : point(2, "P", pt2[0]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\n// copy side points from input 1\nfor( int i=0; i<len(pt1); ++i )\n{\n    vector p = point(1, "P", pt1[i]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\n// put end point from input 3\nif( ch("../CapEnd") == 1 && placement!=0 )\n{\n    vector p = placement==2\n                ? 0.5 * vector( point(1, "P", pt1[-1])+point(2, "P", pt2[-1]) )\n                : point(2, "P", pt2[-1]);\n    int idx = addpoint(0, p);\n    addvertex( 0, prim, idx );\n}\n\nint val = inpointgroup(1, "left", 0);\nsetprimgroup(0, "left", prim, val );\n\nval = inpointgroup(1, "right", 0);\nsetprimgroup(0, "right", prim, val );\n\n//i@group_left = prim(1, "group_left", 0);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock setup_rightendcap -*
chautoscope setup_rightendcap -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off setup_rightendcap
opexprlanguage -s hscript setup_rightendcap
opuserdata -n '___Version___' -v '' setup_rightendcap

# Node left_handaril (Sop/null)
opadd -e -n null left_handaril
oplocate -x -1.7397 -y -27.860700000000001 left_handaril
opspareds "" left_handaril
opparm -V 20.5.370 left_handaril copyinput ( on ) cacheinput ( off )
chlock left_handaril -*
chautoscope left_handaril -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off left_handaril
opexprlanguage -s hscript left_handaril
opuserdata -n '___Version___' -v '20.5.370' left_handaril

# Node right_handrail (Sop/null)
opadd -e -n null right_handrail
oplocate -x 1.6191 -y -27.860700000000001 right_handrail
opspareds "" right_handrail
opparm -V 20.5.370 right_handrail copyinput ( on ) cacheinput ( off )
chlock right_handrail -*
chautoscope right_handrail -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off right_handrail
opexprlanguage -s hscript right_handrail
opuserdata -n '___Version___' -v '20.5.370' right_handrail

# Node all_handrail1 (Sop/null)
opadd -e -n null all_handrail1
oplocate -x 3.62324 -y -36.698300000000003 all_handrail1
opspareds "" all_handrail1
opparm -V 20.5.370 all_handrail1 copyinput ( on ) cacheinput ( off )
chlock all_handrail1 -*
chautoscope all_handrail1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off all_handrail1
opexprlanguage -s hscript all_handrail1
opuserdata -n '___Version___' -v '20.5.370' all_handrail1

# Node reverse_vertex_order (Sop/subnet)
opadd -e -n subnet reverse_vertex_order
oplocate -x -1.7397 -y -23.535699999999999 reverse_vertex_order
opspareds "" reverse_vertex_order
opparm -V 20.5.370 reverse_vertex_order label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock reverse_vertex_order -*
chautoscope reverse_vertex_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse_vertex_order
opexprlanguage -s hscript reverse_vertex_order
opuserdata -n '___Version___' -v '20.5.370' reverse_vertex_order
opcf reverse_vertex_order

# Node rewire6 (Sop/rewire)
opadd -e -n rewire rewire6
oplocate -x 0.0030000000000000001 -y 5.2789999999999999 rewire6
opspareds "" rewire6
opparm -V 20.5.370 rewire6 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire6 -*
chautoscope rewire6 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rewire6
opexprlanguage -s hscript rewire6
opuserdata -n '___Version___' -v '20.5.370' rewire6

# Node attribwrangle13 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle13
oplocate -x 0 -y 6.1117999999999997 attribwrangle13
opspareds "" attribwrangle13
opparm attribwrangle13  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle13 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '\ni@rewire_to = (@numvtx-1)-@vtxnum;\n\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle13 -*
chautoscope attribwrangle13 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle13
opexprlanguage -s hscript attribwrangle13
opuserdata -n '___Version___' -v '' attribwrangle13

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.0030000000000000001 -y 4.3848000000000003 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e rewire6 attribwrangle13 output0 
opcf ..

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x 3.62209 -y -30.2805 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node join1 (Sop/join)
opadd -e -n join join1
oplocate -x 5.67455 -y -31.448799999999999 join1
opspareds "" join1
opparm -V 20.5.370 join1 group ( "" ) blend ( on ) tolerance ( 1 ) bias ( 0.5 ) knotmult ( off ) proximity ( on ) dir ( ujoin ) joinop ( all ) inc ( 2 ) loop ( off ) prim ( off ) onlyconnected ( off )
chlock join1 -*
chautoscope join1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off join1
opexprlanguage -s hscript join1
opuserdata -n '___Version___' -v '20.5.370' join1

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x 5.67455 -y -32.448799999999999 fuse1
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
oplocate -x 5.67455 -y -33.448799999999999 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( points ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node groupdelete2 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete2
oplocate -x -1.7397 -y -25.693300000000001 groupdelete2
opspareds "" groupdelete2
opparm groupdelete2  deletions ( 1 )
opparm -V 20.5.370 groupdelete2 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( 'right left' )
chlock groupdelete2 -*
chautoscope groupdelete2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete2
opexprlanguage -s hscript groupdelete2
opuserdata -n '___Version___' -v '20.5.370' groupdelete2

# Node groupdelete3 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete3
oplocate -x 1.6191 -y -25.716999999999999 groupdelete3
opspareds "" groupdelete3
opparm groupdelete3  deletions ( 1 )
opparm -V 20.5.370 groupdelete3 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( 'left right' )
chlock groupdelete3 -*
chautoscope groupdelete3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete3
opexprlanguage -s hscript groupdelete3
opuserdata -n '___Version___' -v '20.5.370' groupdelete3

# Node attribcreate1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate1
oplocate -x -1.7397 -y -26.7121 attribcreate1
opspareds "" attribcreate1
opparm attribcreate1  numattr ( 1 )
opparm -V 20.5.370 attribcreate1 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( skeleton_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( rail_left ) numattr_spacerparm1 ( )
chlock attribcreate1 -*
chautoscope attribcreate1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate1
opexprlanguage -s hscript attribcreate1
opuserdata -n '___Version___' -v '20.5.370' attribcreate1

# Node attribcreate2 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate2
oplocate -x 1.61565 -y -26.7121 attribcreate2
opspareds "" attribcreate2
opparm attribcreate2  numattr ( 1 )
opparm -V 20.5.370 attribcreate2 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( skeleton_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( rail_right ) numattr_spacerparm1 ( )
chlock attribcreate2 -*
chautoscope attribcreate2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate2
opexprlanguage -s hscript attribcreate2
opuserdata -n '___Version___' -v '20.5.370' attribcreate2

# Node attribcreate3 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate3
oplocate -x 3.6197900000000001 -y -35.366700000000002 attribcreate3
opspareds "" attribcreate3
opparm attribcreate3  numattr ( 1 )
opparm -V 20.5.370 attribcreate3 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( skeleton_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( rail_both ) numattr_spacerparm1 ( )
chlock attribcreate3 -*
chautoscope attribcreate3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate3
opexprlanguage -s hscript attribcreate3
opuserdata -n '___Version___' -v '20.5.370' attribcreate3

# Node attribcreate4 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate4
oplocate -x 5.6841600000000003 -y -26.726400000000002 attribcreate4
opspareds "" attribcreate4
opparm attribcreate4  numattr ( 1 )
opparm -V 20.5.370 attribcreate4 group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( skeleton_type ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( index ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( footprint ) numattr_spacerparm1 ( )
chlock attribcreate4 -*
chautoscope attribcreate4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribcreate4
opexprlanguage -s hscript attribcreate4
opuserdata -n '___Version___' -v '20.5.370' attribcreate4

# Node attribdelete1 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete1
oplocate -x 5.6876100000000003 -y -24.632200000000001 attribdelete1
opspareds "" attribdelete1
opparm attribdelete1 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( 'closest_point_id lr' ) dovtxdel ( on ) vtxdel ( rewire_to ) doprimdel ( on ) primdel ( "" ) dodtldel ( on ) dtldel ( reversed_point_order ) updatevar ( on )
chlock attribdelete1 -*
chautoscope attribdelete1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete1
opexprlanguage -s hscript attribdelete1
opuserdata -n '___Version___' -v '' attribdelete1

# Node attribdelete2 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete2
oplocate -x -1.74315 -y -24.674600000000002 attribdelete2
opspareds "" attribdelete2
opparm attribdelete2 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( "" ) dovtxdel ( on ) vtxdel ( rewire_to ) doprimdel ( on ) primdel ( "" ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete2 -*
chautoscope attribdelete2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete2
opexprlanguage -s hscript attribdelete2
opuserdata -n '___Version___' -v '' attribdelete2

# Node attribdelete3 (Sop/attribdelete)
opadd -e -n attribdelete attribdelete3
oplocate -x 1.61565 -y -24.674600000000002 attribdelete3
opspareds "" attribdelete3
opparm attribdelete3 usereference ( off ) negate ( off ) doptdel ( on ) ptdel ( "" ) dovtxdel ( on ) vtxdel ( "" ) doprimdel ( on ) primdel ( "" ) dodtldel ( on ) dtldel ( "" ) updatevar ( on )
chlock attribdelete3 -*
chautoscope attribdelete3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribdelete3
opexprlanguage -s hscript attribdelete3
opuserdata -n '___Version___' -v '' attribdelete3

# Node switchif3 (Sop/switchif)
opadd -e -n switchif switchif3
oplocate -x 3.62324 -y -34.211500000000001 switchif3
opspareds "" switchif3
opparm switchif3  tests ( 1 )
chblockbegin
chadd -t 0 0 switchif3 expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../CapStart")=0 && ch(../CapEnd)=0' switchif3/expr1
chblockend
opparm -V 20.5.370 switchif3 mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( point ) attributes1 ( "" ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock switchif3 -*
chautoscope switchif3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif3
opexprlanguage -s hscript switchif3
opuserdata -n '___Version___' -v '20.5.370' switchif3

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 6.06236 -y 3.4525600000000001 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int pts[] = primpoints(1, 0);\n\nvector pos = point(1,"P", pts[-1] );\nvector dir = pos - point(1,"P", pts[-2] );\n\ndir.y = 0.0;\n\nint ps = addpoint(0, pos);\nint dr = addpoint(0, normalize(dir));\n\nsetpointgroup(0, "pos", ps, 1);\nsetpointgroup(0, "dir", dr, 1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 6.1193999999999997 -y 2.3306800000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 4 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e polyexpand2d1 check_if_point_is_left_or_right_of_center clip_function_test add5 sort10 output1 output2 switchif1 switchif2 add4 merge7 reverse_point_order output3 output4 foreach_end2 foreach_begin2 rewire5 attribwrangle12 clip_end_segment4 clip_start_segment4 sort13 check_if_point_is_ascending_order4 fuse10 fuse11 foreach_end1 foreach_begin1 Select_shortest_path_if_multiple_candidates_exist polypath4 split4 leftside_outline_with_endcap1 right_outline_with_endcap2 groupdelete1 attribwrangle2 color1 color2 setup_leftendcap setup_rightendcap left_handaril right_handrail all_handrail1 reverse_vertex_order merge1 join1 fuse1 facet1 groupdelete2 groupdelete3 attribcreate1 attribcreate2 attribcreate3 attribcreate4 attribdelete1 attribdelete2 attribdelete3 switchif3 attribwrangle1 output0 
opcf ..

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x 2.0966300000000002 -y 2.18241 resample1
opspareds "" resample1
opparm -V 20.5.370 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.1 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.370' resample1

# Node lattice1 (Sop/lattice)
opadd -e -n lattice lattice1
oplocate -x 2.5748799999999998 -y -2.0137 lattice1
opspareds "" lattice1
opparm -V 20.5.370 lattice1 group ( "" ) stdswitcher ( 0 0 ) divs ( 1 1 1 ) interptype ( bezier ) restgroup ( "" ) kernel ( wyvill ) radius ( 1 ) normthreshold ( 0 ) bspheres ( off )
chlock lattice1 -*
chautoscope lattice1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on lattice1
opexprlanguage -s hscript lattice1
opuserdata -n '___Version___' -v '20.5.370' lattice1

# Node bound1 (Sop/bound)
opadd -e -n bound bound1
oplocate -x 4.1787599999999996 -y -0.56149899999999997 bound1
opspareds "" bound1
opparm -V 20.5.370 bound1 group ( "" ) grouptype ( guess ) keepOriginal ( off ) createboundinggeo ( on ) createempty ( on ) separator ( ) boundtype ( off ) orientedbbox ( off ) refinementiterations ( 6 ) dodivs ( on ) divs ( 1 1 1 ) rebar ( off ) minsize ( 0 0 0 ) orient ( y ) accurate ( off ) minradius ( 0 ) orientedbrect ( off ) origin ( 0 0 0 ) dist ( 0 ) dir ( 0 1 0 ) minpad ( 0 0 0 ) maxpad ( 0 0 0 ) addboundsgroup ( off ) boundsgroup ( bounds ) addxformattrib ( off ) xformattrib ( xform ) addradiiattrib ( off ) radiiattrib ( radii )
chlock bound1 -*
chautoscope bound1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on bound1
opexprlanguage -s hscript bound1
opuserdata -n '___Version___' -v '20.5.370' bound1

# Node edit1 (Sop/edit)
opadd -e -n edit edit1
oplocate -x 5.77494 -y -1.5660400000000001 edit1
opspareds "" edit1
opparm -V 20.5.370 edit1 group ( p0-4 ) grouptype ( edges ) modeswitcher ( 0 0 ) switcher ( 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -5.988216161727905 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) parmgroup_pivotxform ( 0 ) p ( -1.4612903594970703 3.029026985168457 -11.518953323364258 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) parmgroup_lpivotxform ( 0 ) lp ( 0 0 0 ) lpr ( 0 0 0 ) parmgroup_lprexform ( 0 ) lprexform_xOrd ( srt ) lprexform_rOrd ( xyz ) lprexform_t ( 0 0 0 ) lprexform_r ( 0 0 0 ) lprexform_s ( 1 1 1 ) lprexform_shear ( 0 0 0 ) vlength ( on ) parmgroup_xformspace ( 0 ) xformspace ( global ) localframe ( component ) localspaceupvector ( 0 1 0 ) leadislandhint ( p0-4 ) slideonsurface ( off ) dist ( 0 ) leadnml ( on ) apply ( 0 ) softparmsgrouper ( 0 ) distmetric ( surface ) applyrolloff ( off ) distattr ( "" ) leadptattr ( "" ) rad ( 0 ) type ( cubic ) tandeg ( 0 0 ) kernel ( wyvill ) visualizefalloff ( state ) sculptswitcher ( 0 0 0 ) op ( smoothdeform ) axis ( normal ) vector ( 0 0 1 ) stencilaccum ( off ) stencilclear ( 0 ) resetnormal ( 0 ) flood ( 0 ) color ( off off ) fd ( 0.10000000149011612 ) bd ( -0.10000000149011612 ) shape ( circle ) bitmap ( butterfly1.pic ) bmpchan ( alpha ) sculptrad ( 0.10000000149011612 ) uvradius ( 0.10000000149011612 ) radiuspressure ( 1 ) usedepth ( off ) depth ( 0.1 0.1 ) brushangle ( 0 ) squash ( 1 ) opacity ( 1 ) opacitypresure ( 1 ) brushsplatter ( 0 ) papergrain ( 0 ) softedge ( 1 ) sculptkernel ( elendt ) uptype ( stroke ) upvector ( 0 1 0 ) projtype ( on ) useconnectivity ( on ) usenormals ( on ) realtime ( off ) dir ( 0 0 1 ) hitpos ( 0 0 0 ) hitprim ( 0 ) hituvw ( 0 0 0 ) hitpressure ( 1 ) hitpt ( 0 ) event ( nop ) useorient ( off ) doreflect ( off ) symaxis ( 1 0 0 ) symorig ( 0 0 0 ) symdist ( 0 ) symthreshold ( 1 ) symplanetol ( 9.999999747378752e-6 ) updatenmls ( on ) clearall ( 0 )
chlock edit1 -*
chautoscope edit1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on edit1
opexprlanguage -s hscript edit1
opuserdata -n '___Version___' -v '20.5.370' edit1

# Node polyframe1 (Sop/polyframe)
opadd -e -n polyframe polyframe1
oplocate -x -1.2989900000000001 -y -2.9737 polyframe1
opspareds "" polyframe1
opparm -V 20.5.370 polyframe1 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( off ) N ( N ) tangentuon ( on ) tangentu ( N ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe1 -*
chautoscope polyframe1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyframe1
opexprlanguage -s hscript polyframe1
opuserdata -n '___Version___' -v '20.5.370' polyframe1

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x -1.30199 -y -0.56149899999999997 circle1
opspareds "" circle1
chblockbegin
chadd -t 0 0 circle1 divs
chkey -t 0 -v 32 -m 0 -a 0 -A 0 -T a  -F 32*4 circle1/divs
chblockend
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( divs ) arc ( openarc ) angle ( 0 350 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x -1.30199 -y -1.7988500000000001 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "height"                 label   "Height"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float t = float(@ptnum)/float(@numpt - 1); // (0~@numpt)を(0~1)に正規化(@ptnumはintなのでfloatにキャストしてます)\n@P.y += chf("height") * t; \n\n//@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) height ( 0.334 )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -1.4386399999999999 -y -5.0514999999999999 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( attrib ) upvectoratstart ( off ) useendupvector ( off ) upvectorattrib ( N ) endupvectorattrib ( N ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x -1.4386399999999999 -y -4.0136000000000003 attribwrangle2
opspareds "" attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x -3.3041700000000001 -y -5.1658799999999996 polyexpand2d1
opspareds "" polyexpand2d1
opparm -V 20.5.370 polyexpand2d1 group ( "" ) planepossrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( 0.1 ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d1 -*
chautoscope polyexpand2d1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyexpand2d1
opexprlanguage -s hscript polyexpand2d1
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d1

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x -14.4024 -y -1.8374600000000001 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( '@prim_type=rightside @prim_type=floor @prim_type=leftside' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x -14.4024 -y 1.57731 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( '@prim_type=rightside @prim_type=floor @prim_type=leftside' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node blast5 (Sop/blast)
opadd -e -n blast blast5
oplocate -x -17.751999999999999 -y 0.73999199999999998 blast5
opspareds "" blast5
opparm -V 20.5.370 blast5 group ( '@prim_type=rightside @prim_type=floor @prim_type=leftside' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast5 -*
chautoscope blast5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast5
opexprlanguage -s hscript blast5
opuserdata -n '___Version___' -v '20.5.370' blast5

# Node boolean_curve1 (labs::Sop/boolean_curve::1.0)
opadd -e -n labs::boolean_curve::1.0 boolean_curve1
oplocate -x 8.3168399999999991 -y 1.9663600000000001 boolean_curve1
opspareds "" boolean_curve1
opparm -V 370 boolean_curve1 fd_outputgeometry ( 0 ) operation ( 2 ) useproxtol ( off ) proxtol ( 0.01 ) fd_groups ( 0 ) ainsideb ( on ) ainsidebgrp ( ainsideb ) aoutsideb ( on ) aoutsidebgrp ( aoutsideb )
chlock boolean_curve1 -*
chautoscope boolean_curve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean_curve1
opexprlanguage -s hscript boolean_curve1
opuserdata -n '___Version___' -v '370' boolean_curve1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 10.5055 -y 0.530555 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( aoutsideb ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x 10.244899999999999 -y 4.0623500000000003 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 9.6287299999999991 -y 3.0623499999999999 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 10.635339617729187 0 -0.11121177673339844 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node sort1 (Sop/sort)
opadd -e -n sort sort1
oplocate -x 10.304399999999999 -y -0.469445 sort1
opspareds "" sort1
opparm -V 20.5.370 sort1 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort1 -*
chautoscope sort1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort1
opexprlanguage -s hscript sort1
opuserdata -n '___Version___' -v '20.5.370' sort1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 11.2018 -y -4.6573099999999998 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( off ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 1 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 11.2018 -y -2.57091 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -10.430199999999999 -y 4.3884999999999996 add2
opspareds "" add2
opparm add2  points ( 4 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -9.309728970987432 0 -2.96600192453716 ) weight0 ( 1 ) usept1 ( on ) pt1 ( -14.851995297716652 0 1.8327447832697548 ) weight1 ( 1 ) usept2 ( on ) pt2 ( -0.5817985159241603 0 3.029683595029634 ) weight2 ( 1 ) usept3 ( on ) pt3 ( -10.54609776039264 0 9.587972918449656 ) weight3 ( 1 )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node leftrail (Sop/null)
opadd -e -n null leftrail
oplocate -x -12.169499999999999 -y 2.0268999999999999 leftrail
opspareds "" leftrail
opparm -V 20.5.370 leftrail copyinput ( on ) cacheinput ( off )
chlock leftrail -*
chautoscope leftrail -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off leftrail
opexprlanguage -s hscript leftrail
opuserdata -n '___Version___' -v '20.5.370' leftrail

# Node rightrail (Sop/null)
opadd -e -n null rightrail
oplocate -x -10.7812 -y 2.0268999999999999 rightrail
opspareds "" rightrail
opparm -V 20.5.370 rightrail copyinput ( on ) cacheinput ( off )
chlock rightrail -*
chautoscope rightrail -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rightrail
opexprlanguage -s hscript rightrail
opuserdata -n '___Version___' -v '20.5.370' rightrail

# Node floor (Sop/null)
opadd -e -n null floor
oplocate -x -7.90442 -y 2.0268999999999999 floor
opspareds "" floor
opparm -V 20.5.370 floor copyinput ( on ) cacheinput ( off )
chlock floor -*
chautoscope floor -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off floor
opexprlanguage -s hscript floor
opuserdata -n '___Version___' -v '20.5.370' floor

# Node bothrail (Sop/null)
opadd -e -n null bothrail
oplocate -x -9.4428599999999996 -y 2.0268999999999999 bothrail
opspareds "" bothrail
opparm -V 20.5.370 bothrail copyinput ( on ) cacheinput ( off )
chlock bothrail -*
chautoscope bothrail -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bothrail
opexprlanguage -s hscript bothrail
opuserdata -n '___Version___' -v '20.5.370' bothrail

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x -11.0098 -y -1.5815999999999999 extrudevolume1
opspareds "" extrudevolume1
opparm extrudevolume1 depth ( 1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -11.0098 -y -2.58121 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.221 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x -11.0098 -y -3.6296200000000001 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x -11.0098 -y -4.4451499999999999 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("https://www.google.com/maps/@35.9010533,139.632468,3a,42y,220.37h,95.82t/data=!3m7!1e1!3m5!1siPpQM_yLEL14yMRl1asi9A!2e0!6shttps:%2F%2Fstreetviewpixels-pa.googleapis.com%2Fv1%2Fthumbnail%3Fcb_client%3Dmaps_sv.tactile%26w%3D900%26h%3D600%26pitch%3D-5.82331549635434%26panoid%3DiPpQM_yLEL14yMRl1asi9A%26yaw%3D220.36782734664033!7i16384!8i8192?entry=ttu&g_ep=EgoyMDI1MDIyNS4wIKXMDSoASAFQAw%3D%3D\n\napartmenthouse example location")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(-1.10252, 8.13803))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(9.50743, 2.5))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'

# Sticky Note __stickynote2
python -c 'hou.pwd().createStickyNote("__stickynote2")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setText("https://support.borndigital.co.jp/hc/ja/articles/7115779739033-%E3%83%9D%E3%82%A4%E3%83%B3%E3%83%88%E3%81%A7%E3%82%AB%E3%83%BC%E3%83%96%E3%82%92%E3%82%AB%E3%83%83%E3%83%88%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95\n\npolycut")'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote2").setPosition(hou.Vector2(0.097545, 4.36235))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setSize(hou.Vector2(10.1474, 2.5))'
python -c 'hou.pwd().findStickyNote("__stickynote2").setMinimized(False)'
oporder -e Bend Elbow Straight add1 polybevel1 Aisle resample1 lattice1 bound1 edit1 polyframe1 circle1 attribwrangle1 sweep1 attribwrangle2 polyexpand2d1 blast3 blast4 blast5 boolean_curve1 blast1 box1 transform1 sort1 foreach_end1 foreach_begin1 add2 leftrail rightrail floor bothrail extrudevolume1 polyextrude1 group1 dissolve1 
opcf ..

# Node testgeometry_templatebody1 (Object/geo)
opadd -e -n geo testgeometry_templatebody1
oplocate -x -2.4468100000000002 -y 3.5428000000000002 testgeometry_templatebody1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' testgeometry_templatebody1
opset -S on testgeometry_templatebody1
opparm -V 20.5.370 testgeometry_templatebody1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( -0.7690445184707642 0 -7.860046148300171 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
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
oporder -e Components testgeometry_templatebody1 
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
opcf Components
opcf Bend
opwire -n merge1 -0 output0
opwire -n switchif1 -0 merge1
opwire -n add_endpoint_pos_dir -1 merge1
opwire -n switchif2 -0 group3
opwire -n group3 -0 group4
opcf arc_points_l
opwire -n sort1 -0 add2
opwire -n circle1 -0 sort1
opwire -n add3 -0 merge2
opwire -n add2 -1 merge2
opwire -n merge2 -0 output0
opcf ..
opwire -n arc_points_l -0 mirror1
opwire -n group6 -0 switchif1
opwire -n group8 -1 switchif1
opwire -n connect_points_l -0 mirror2
opwire -n connect_points_l -0 switchif2
opwire -n mirror2 -1 switchif2
opwire -n arc_points_l -0 group5
opwire -n group5 -0 group6
opwire -n mirror1 -0 group7
opwire -n group7 -0 group8
opcf connect_points_l
opwire -n sort1 -0 add2
opwire -n circle1 -0 sort1
opwire -n add2 -0 merge2
opwire -n merge2 -0 output0
opcf ..
opwire -n merge2 -0 output1
opwire -n switchif1 -0 leftside_primitive
opwire -n leftside_primitive -0 rightside_primitive
opwire -n rightside_primitive -0 floor_primitive
opwire -n add_endpoint_pos_dir -0 merge2
opwire -n floor_primitive -1 merge2
opwire -n group4 -0 add_endpoint_pos_dir
opwire -n switchif1 -1 add_endpoint_pos_dir
opcf ..
opcf Elbow
opwire -n merge1 -0 output0
opwire -n switchif1 -0 merge1
opwire -n group9 -1 merge1
opwire -n switchif2 -0 group3
opwire -n group3 -0 group4
opwire -n outline_points_l -0 switch3
opwire -n arc_points_l -1 switch3
opcf arc_points_l
opwire -n sort1 -0 add2
opwire -n circle1 -0 sort1
opwire -n add3 -0 merge2
opwire -n add2 -1 merge2
opwire -n merge2 -0 output0
opcf ..
opwire -n switch3 -0 mirror1
opwire -n group6 -0 switchif1
opwire -n group8 -1 switchif1
opwire -n connect_points_l -0 mirror2
opwire -n connect_points_l -0 switchif2
opwire -n mirror2 -1 switchif2
opwire -n switch3 -0 group5
opwire -n group5 -0 group6
opwire -n mirror1 -0 group7
opwire -n group7 -0 group8
opwire -n merge3 -0 output1
opwire -n group9 -0 merge3
opwire -n floor_primitive -1 merge3
opwire -n switchif1 -0 leftside_primitive
opwire -n leftside_primitive -0 rightside_primitive
opwire -n rightside_primitive -0 floor_primitive
opwire -n group4 -0 group9
opcf ..
opcf Straight
opwire -n merge1 -0 output0
opwire -n outline_points_l -0 group1
opwire -n group1 -0 group2
opwire -n group2 -0 merge1
opwire -n add_endpoint_pos_dir -1 merge1
opwire -n connect_points_l -0 group3
opwire -n group3 -0 group4
opwire -n merge3 -0 output1
opwire -n group2 -0 leftside_primitive
opwire -n leftside_primitive -0 rightside_primitive
opwire -n rightside_primitive -0 floor_primitive
opwire -n add_endpoint_pos_dir -0 merge3
opwire -n floor_primitive -1 merge3
opwire -n group4 -0 add_endpoint_pos_dir
opcf ..
opwire -n add1 -0 polybevel1
opwire -n add2 -0 Aisle
opcf Aisle
opwire -n sort10 -0 polyexpand2d1
opwire -n polyexpand2d1 -0 check_if_point_is_left_or_right_of_center
opwire -n sort10 -1 check_if_point_is_left_or_right_of_center
opwire -n add5 -0 clip_function_test
opwire -n -i 0 -0 sort10
opwire -n left_handaril -0 output1
opwire -n right_handrail -0 output2
opwire -n leftside_outline_with_endcap1 -0 switchif1
opwire -n sort10 -1 switchif1
opwire -n right_outline_with_endcap2 -0 switchif2
opwire -n sort10 -1 switchif2
opwire -n fuse11 -0 add4
opwire -n switchif1 -0 merge7
opwire -n reverse_point_order -1 merge7
opwire -n switchif2 -0 reverse_point_order
opwire -n attribcreate4 -0 output3
opwire -n all_handrail1 -0 output4
opwire -n fuse10 -0 foreach_end2
opwire -n check_if_point_is_left_or_right_of_center -0 foreach_begin2
opwire -n attribwrangle12 -0 rewire5
opwire -n foreach_begin2 -0 attribwrangle12
opwire -n clip_start_segment4 -0 clip_end_segment4
opwire -n sort13 -0 clip_start_segment4
opwire -n check_if_point_is_ascending_order4 -0 sort13
opwire -n rewire5 -0 check_if_point_is_ascending_order4
opwire -n clip_end_segment4 -0 fuse10
opwire -n merge7 -0 fuse11
opwire -n polypath4 -0 foreach_end1
opwire -n foreach_end2 -0 foreach_begin1
opwire -n foreach_begin1 -0 Select_shortest_path_if_multiple_candidates_exist
opwire -n Select_shortest_path_if_multiple_candidates_exist -0 polypath4
opwire -n attribwrangle2 -0 split4
opwire -n split4 -0 leftside_outline_with_endcap1
opwire -n -o 1 split4 -0 right_outline_with_endcap2
opwire -n attribdelete1 -0 groupdelete1
opwire -n foreach_end1 -0 attribwrangle2
opwire -n setup_leftendcap -0 color1
opwire -n setup_rightendcap -0 color2
opwire -n switchif1 -1 setup_leftendcap
opwire -n switchif2 -2 setup_leftendcap
opwire -n switchif2 -1 setup_rightendcap
opwire -n switchif1 -2 setup_rightendcap
opwire -n attribcreate1 -0 left_handaril
opwire -n attribcreate2 -0 right_handrail
opwire -n attribcreate3 -0 all_handrail1
opwire -n color1 -0 reverse_vertex_order
opcf reverse_vertex_order
opwire -n attribwrangle13 -0 rewire6
opwire -n -i 0 -0 attribwrangle13
opwire -n rewire6 -0 output0
opcf ..
opwire -n left_handaril -0 merge1
opwire -n right_handrail -1 merge1
opwire -n merge1 -0 join1
opwire -n join1 -0 fuse1
opwire -n fuse1 -0 facet1
opwire -n attribdelete2 -0 groupdelete2
opwire -n attribdelete3 -0 groupdelete3
opwire -n groupdelete2 -0 attribcreate1
opwire -n groupdelete3 -0 attribcreate2
opwire -n switchif3 -0 attribcreate3
opwire -n groupdelete1 -0 attribcreate4
opwire -n add4 -0 attribdelete1
opwire -n reverse_vertex_order -0 attribdelete2
opwire -n color2 -0 attribdelete3
opwire -n merge1 -0 switchif3
opwire -n facet1 -1 switchif3
opwire -n sort10 -1 attribwrangle1
opwire -n attribwrangle1 -0 output0
opcf ..
opwire -n polybevel1 -0 resample1
opwire -n resample1 -0 lattice1
opwire -n bound1 -1 lattice1
opwire -n edit1 -2 lattice1
opwire -n resample1 -0 bound1
opwire -n bound1 -0 edit1
opwire -n attribwrangle1 -0 polyframe1
opwire -n circle1 -0 attribwrangle1
opwire -n attribwrangle2 -0 sweep1
opwire -n polyframe1 -0 attribwrangle2
opwire -n attribwrangle2 -0 polyexpand2d1
opwire -n -o 1 Straight -0 blast3
opwire -n -o 1 Elbow -0 blast4
opwire -n -o 1 Bend -0 blast5
opwire -n add1 -0 boolean_curve1
opwire -n transform1 -1 boolean_curve1
opwire -n boolean_curve1 -0 blast1
opwire -n box1 -0 transform1
opwire -n blast1 -0 sort1
opwire -n foreach_begin1 -0 foreach_end1
opwire -n sort1 -0 foreach_begin1
opwire -n Aisle -0 leftrail
opwire -n -o 1 Aisle -0 rightrail
opwire -n -o 3 Aisle -0 floor
opwire -n -o 2 Aisle -0 bothrail
opwire -n bothrail -0 extrudevolume1
opwire -n extrudevolume1 -0 polyextrude1
opwire -n polyextrude1 -0 group1
opwire -n group1 -0 dissolve1
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
