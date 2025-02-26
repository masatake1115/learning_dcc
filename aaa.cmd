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
oplocate -x -17.5168 -y 1.7422200000000001 Bend
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Direction"         label   "Direction"         type    ordinal         default { "0" }         menu {             ""  "Left"             ""  "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Angle"         label   "Angle"         type    float         default { "45" }         range   { 0! 180! }         parmtag { "script_callback_language" "python" }     } ' Bend
opparm -V 20.5.370 Bend label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Direction ( "" ) Width ( 1 ) Angle ( 45 )
chlock Bend -*
chautoscope Bend -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Bend
opexprlanguage -s hscript Bend
opuserdata -n '___Version___' -v '20.5.370' Bend
opcf Bend

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -4.3227099999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -0.0011500200000000001 -y -2.1167899999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
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
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off arc_points_l
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
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connect_points_l
opexprlanguage -s hscript connect_points_l
opuserdata -n '___Version___' -v '20.5.370' connect_points_l
opcf connect_points_l

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x 0 -y 6.1117999999999997 circle1
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

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -0.57532000000000005 -y 3.5269499999999998 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -0.57532000000000005 -y 2.6327500000000001 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e circle1 add2 sort1 merge2 output0 
opcf ..
oporder -e output0 merge1 group3 group4 arc_points_l mirror1 switchif1 mirror2 switchif2 group5 group6 group7 group8 connect_points_l 
opcf ..

# Node Elbow (Sop/subnet)
opadd -e -n subnet Elbow
oplocate -x -14.4024 -y 2.9468700000000001 Elbow
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Direction"         label   "Direction"         type    ordinal         default { "0" }         menu {             ""  "Left"             ""  "Right"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu {             ""  "Rect"             ""  "Arc"         }         parmtag { "script_callback_language" "python" }     } ' Elbow
opparm -V 20.5.370 Elbow label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Direction ( "" ) Width ( 1 ) CornerType ( "" )
chlock Elbow -*
chautoscope Elbow -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Elbow
opexprlanguage -s hscript Elbow
opuserdata -n '___Version___' -v '20.5.370' Elbow
opcf Elbow

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0.19589999999999999 -y -3.9189799999999999 output0
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
opparm connect_points_l  points ( 2 ) prims ( 1 )
chblockbegin
chadd -t 0 0 connect_points_l pt1x
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Width")' connect_points_l/pt1x
chadd -t 0 0 connect_points_l pt1z
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '-0.5 * ch("../Width")' connect_points_l/pt1z
chblockend
opparm -V 20.5.370 connect_points_l stdswitcher ( 0 0 0 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( pt1x 0 pt1z ) weight1 ( 1 )
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
oplocate -x 0.21655099999999999 -y -2.2291500000000002 merge1
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
opset -d on -r on -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
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
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switchif2
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
oporder -e output0 connect_points_l outline_points_l merge1 group3 group4 switch3 arc_points_l mirror1 switchif1 mirror2 switchif2 group5 group6 group7 group8 
opcf ..

# Node Straight (Sop/subnet)
opadd -e -n subnet Straight
oplocate -x -14.7638 -y -0.18285000000000001 Straight
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Length"         label   "Length"         type    float         default { "2" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "0" }         range   { -10 10 }         parmtag { "script_callback_language" "python" }     } ' Straight
opparm -V 20.5.370 Straight label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Length ( 2 ) Width ( 1 ) Elevation ( 0 )
chlock Straight -*
chautoscope Straight -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight
opexprlanguage -s hscript Straight
opuserdata -n '___Version___' -v '20.5.370' Straight
opcf Straight

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y 0.090788800000000003 output0
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
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off connect_points_l
opexprlanguage -s hscript connect_points_l
opuserdata -n '___Version___' -v '20.5.370' connect_points_l

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x -1.4904900000000001 -y 3.9251100000000001 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( leftside ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( '0 1' ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node group2 (Sop/groupcreate)
opadd -e -n groupcreate group2
oplocate -x -1.4904900000000001 -y 3.1038000000000001 group2
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
oplocate -x -0.0011500200000000001 -y 1.1958800000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node group3 (Sop/groupcreate)
opadd -e -n groupcreate group3
oplocate -x 1.7506999999999999 -y 3.8033399999999999 group3
opspareds "" group3
opparm -V 20.5.370 group3 groupname ( start ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 0 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group3 -*
chautoscope group3 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group3
opexprlanguage -s hscript group3
opuserdata -n '___Version___' -v '20.5.370' group3

# Node group4 (Sop/groupcreate)
opadd -e -n groupcreate group4
oplocate -x 1.7506999999999999 -y 2.98203 group4
opspareds "" group4
opparm -V 20.5.370 group4 groupname ( end ) grouptype ( point ) mergeop ( replace ) folder0 ( 0 ) groupbase ( on ) basegroup ( 1-3 ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group4 -*
chautoscope group4 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group4
opexprlanguage -s hscript group4
opuserdata -n '___Version___' -v '20.5.370' group4
oporder -e output0 connect_points_l group1 group2 outline_points_l merge1 group3 group4 
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

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -17.5168 -y 0.82854799999999995 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( 'leftside rightside' ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node add9 (Sop/add)
opadd -e -n add add9
oplocate -x -14.7638 -y -1.9100200000000001 add9
opspareds "" add9
opparm add9  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add9 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( 'leftside rightside' ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add9 -*
chautoscope add9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add9
opexprlanguage -s hscript add9
opuserdata -n '___Version___' -v '20.5.370' add9

# Node sort4 (Sop/sort)
opadd -e -n sort sort4
oplocate -x -14.7638 -y -1.09982 sort4
opspareds "" sort4
opparm -V 20.5.370 sort4 pointsfolder ( 0 ) ptgroup ( rightside ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort4 -*
chautoscope sort4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort4
opexprlanguage -s hscript sort4
opuserdata -n '___Version___' -v '20.5.370' sort4

# Node add10 (Sop/add)
opadd -e -n add add10
oplocate -x -14.4024 -y 1.9939100000000001 add10
opspareds "" add10
opparm add10  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add10 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( 'leftside rightside' ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add10 -*
chautoscope add10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add10
opexprlanguage -s hscript add10
opuserdata -n '___Version___' -v '20.5.370' add10

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

# Node Isle (Sop/subnet)
opadd -e -n subnet Isle
oplocate -x 2.1214300000000001 -y 1.18241 Isle
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "W"         label   "W"         type    float         default { "1.6" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Alignment"         label   "Alignment"         type    ordinal         default { "0" }         menu {             ""  "Left"             ""  "Right"             ""  "Center"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "HandrailH"         label   "HandrailH"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "HandrailW"         label   "HandrailW"         type    float         default { "0.1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' Isle
opparm -V 20.5.370 Isle label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) W ( 1.95 ) Alignment ( "" ) HandrailH ( 1.2 ) HandrailW ( 0.12 )
chlock Isle -*
chautoscope Isle -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Isle
opexprlanguage -s hscript Isle
opuserdata -n '___Version___' -v '20.5.370' Isle
opcf Isle

# Network Box __netbox1
nbadd __netbox1
nblocate -x 0.965792 -y -4.20301 __netbox1
nbsize -w 3.67964 -h 1.47276 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x 0.962047 -y -6.82707 __netbox2
nbsize -w 3.68339 -h 1.5234 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox3
nbadd __netbox3
nblocate -x 0.962047 -y -9.56655 __netbox3
nbsize -w 3.68339 -h 1.5974 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox4
nbadd __netbox4
nblocate -x -4.10798 -y -4.20301 __netbox4
nbsize -w 3.67964 -h 1.47276 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox5
nbadd __netbox5
nblocate -x -4.10798 -y -6.82707 __netbox5
nbsize -w 3.68339 -h 1.5234 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Network Box __netbox6
nbadd __netbox6
nblocate -x -4.10798 -y -9.56655 __netbox6
nbsize -w 3.68339 -h 1.5974 __netbox6
nbset  -m off __netbox6
nbcolor -c 0.52 0.52 0.52 __netbox6

# Network Box __netbox7
nbadd __netbox7
nblocate -x -3.99004 -y -16.28 __netbox7
nbsize -w 13.1537 -h 3.84238 __netbox7
nbset  -m off __netbox7
nbcolor -c 0.52 0.52 0.52 __netbox7

# Network Box __netbox8
nbadd __netbox8
nblocate -x 22.1103 -y -11.7956 __netbox8
nbsize -w 3.67964 -h 1.47276 __netbox8
nbset  -m off __netbox8
nbcolor -c 0.52 0.52 0.52 __netbox8

# Network Box __netbox9
nbadd __netbox9
nblocate -x 22.1066 -y -14.4197 __netbox9
nbsize -w 3.68339 -h 1.5234 __netbox9
nbset  -m off __netbox9
nbcolor -c 0.52 0.52 0.52 __netbox9

# Network Box __netbox10
nbadd __netbox10
nblocate -x 22.1066 -y -17.1591 __netbox10
nbsize -w 3.68339 -h 1.5974 __netbox10
nbset  -m off __netbox10
nbcolor -c 0.52 0.52 0.52 __netbox10

# Network Box __netbox11
nbadd __netbox11
nblocate -x 17.0366 -y -11.7956 __netbox11
nbsize -w 3.67964 -h 1.47276 __netbox11
nbset  -m off __netbox11
nbcolor -c 0.52 0.52 0.52 __netbox11

# Network Box __netbox12
nbadd __netbox12
nblocate -x 17.0366 -y -14.4197 __netbox12
nbsize -w 3.68339 -h 1.5234 __netbox12
nbset  -m off __netbox12
nbcolor -c 0.52 0.52 0.52 __netbox12

# Network Box __netbox13
nbadd __netbox13
nblocate -x 17.0366 -y -17.1591 __netbox13
nbsize -w 3.68339 -h 1.5974 __netbox13
nbset  -m off __netbox13
nbcolor -c 0.52 0.52 0.52 __netbox13

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x -1.06965 -y 0.59691999793767891 polyexpand2d1
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
oplocate -x -0.092200000000000074 -y -1.061350002062321 check_if_point_is_left_or_right_of_center
opspareds "" check_if_point_is_left_or_right_of_center
opparm check_if_point_is_left_or_right_of_center  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_left_or_right_of_center folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\nfloat ext = chf("../W");// terminal edge extension length( W )\nint ps[] = primpoints(1, 0);\n\n//================= Get center line segment ===============//\nvector points[];\n// copy points from input1\nfor( int i=0; i<len(ps); ++i )\n{\n    vector p = point(1,"P",ps[i]);\n    append( points, p );\n}\n// extend terminal points (due to polyexpand2d extrusion behavior).\n//vector v = ext * normalize(points[0]-points[1]);\npoints[0] += ext * normalize(points[0]-points[1]);\n//vector v = ext * normalize(p1-p0);\npoints[-1] += ext * normalize(points[-1]-points[-2]);\n\n\n//======= Get closest centerline point ==========//\nint closest_point_id = -1;\nfloat dist = 999999999.9;\nfor( int i=0; i<len(points); ++i )\n{\n    float d = distance2(@P, points[i]);\n    \n    if( d <= dist )\n    {\n        dist = d;\n        closest_point_id = ps[i];//i;\n    }   \n}\n\n//======= Get closest centerline segment ==========//\nint closest_segment_id = -1;\ndist = 999999999.9;\nfor( int i=0; i<len(ps)-1; ++i )\n{\n    float d = distance_pointsegment( @P, points[i], points[i+1] );\n    if( d <= dist )\n    {\n        dist = d;\n        closest_segment_id = i;\n    }\n}\n\n\n// Check if\nvector p0 = points[closest_segment_id];//point(1,"P",ps[closest_id]);\nvector p1 = points[closest_segment_id+1];//point(1,"P",ps[closest_id+1]);\nfloat lr = sign((p1.x - p0.x) * (@P.z - p0.z) - (p1.z - p0.z) * (@P.x - p0.x));\n\nf@lr = lr;\n//i@closest_id = closest_id;\ni@closest_point_id = closest_point_id;//nearpoint(1, @P);\n//printf("[%d]: closest_id = %d, %f\\n", @ptnum, closest_id, dist );\n\n@group_right = lr>0.0;\n@group_left = !@group_right;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_left_or_right_of_center -*
chautoscope check_if_point_is_left_or_right_of_center -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_if_point_is_left_or_right_of_center
opexprlanguage -s hscript check_if_point_is_left_or_right_of_center
opuserdata -n '___Version___' -v '' check_if_point_is_left_or_right_of_center

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x -0.024800000000000065 -y 3.647099997937679 null1
opspareds "" null1
opparm -V 20.5.370 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null1
opexprlanguage -s hscript null1
opuserdata -n '___Version___' -v '20.5.370' null1

# Node clip_function_test (Sop/attribwrangle)
opadd -e -n attribwrangle clip_function_test
oplocate -x 13.656700000000001 -y -21.116099999999999 clip_function_test
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
oplocate -x 13.337400000000001 -y -19.8506 add5
opspareds "" add5
opparm add5  points ( 2 ) prims ( 1 )
opparm -V 20.5.370 add5 stdswitcher ( 0 0 0 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 5 0 ) weight1 ( 1 )
chlock add5 -*
chautoscope add5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on add5
opexprlanguage -s hscript add5
opuserdata -n '___Version___' -v '20.5.370' add5

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -0.85018900000000008 -y -24.973800002062319 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude1 dist
chkey -t 0 -v 0.084000000000000005 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailH")' polyextrude1/dist
chblockend
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( -3 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node polyexpand2d2 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d2
oplocate -x -0.85018900000000008 -y -24.041300002062322 polyexpand2d2
opspareds "" polyexpand2d2
chblockbegin
chadd -t 0 0 polyexpand2d2 offset
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../HandrailW")' polyexpand2d2/offset
chblockend
opparm -V 20.5.370 polyexpand2d2 group ( "" ) planepossrc ( setplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d2 -*
chautoscope polyexpand2d2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d2
opexprlanguage -s hscript polyexpand2d2
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d2

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -0.85018900000000008 -y -25.849200002062322 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.01 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node clean1 (Sop/clean)
opadd -e -n clean clean1
oplocate -x 2.2007599999999998 -y -27.79520000206232 clean1
opspareds "" clean1
opparm clean1 fusepts ( on ) fusedist ( 0.001 ) deldegengeo ( on ) degentol ( 0.001 ) removeunusedgrp ( on ) orientpoly ( off ) reversewinding ( off ) fixoverlap ( on ) deleteoverlap ( on ) delunusedpts ( on ) dodelattribs ( off ) delattribs ( * ) dodelgroups ( off ) delgroups ( * ) delnans ( on ) make_manifold ( off ) delete_small ( on ) prim_count ( 3 )
chlock clean1 -*
chautoscope clean1 -* +delete_small
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean1
opexprlanguage -s hscript clean1
opuserdata -n '___Version___' -v '' clean1

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x 2.1996099999999998 -y -26.702400002062319 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node polyextrude2 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude2
oplocate -x 6.0151500000000002 -y -23.165900002062319 polyextrude2
opspareds "" polyextrude2
opparm polyextrude2  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude2 dist
chkey -t 0 -v 0.79363381862640381 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailH")' polyextrude2/dist
chblockend
opparm -V 20.5.370 polyextrude2 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( -3 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude2 -*
chautoscope polyextrude2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude2
opexprlanguage -s hscript polyextrude2
opuserdata -n '___Version___' -v '20.5.370' polyextrude2

# Node polyexpand2d3 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d3
oplocate -x 6.0151500000000002 -y -22.233400002062321 polyexpand2d3
opspareds "" polyexpand2d3
chblockbegin
chadd -t 0 0 polyexpand2d3 offset
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../HandrailW")' polyexpand2d3/offset
chblockend
opparm -V 20.5.370 polyexpand2d3 group ( "" ) planepossrc ( setplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d3 -*
chautoscope polyexpand2d3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d3
opexprlanguage -s hscript polyexpand2d3
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d3

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 6.0151500000000002 -y -24.041300002062322 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.01 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 9.7875499999999995 -y -23.03270000206232 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 0.629 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailH")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( -3 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node polyexpand2d4 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d4
oplocate -x 9.7875499999999995 -y -22.100200002062319 polyexpand2d4
opspareds "" polyexpand2d4
chblockbegin
chadd -t 0 0 polyexpand2d4 offset
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../HandrailW")' polyexpand2d4/offset
chblockend
opparm -V 20.5.370 polyexpand2d4 group ( "" ) planepossrc ( setplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d4 -*
chautoscope polyexpand2d4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d4
opexprlanguage -s hscript polyexpand2d4
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d4

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 9.7875499999999995 -y -23.908100002062319 transform4
opspareds "" transform4
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.01 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node merge5 (Sop/merge)
opadd -e -n merge merge5
oplocate -x 8.4294499999999992 -y -25.846000002062322 merge5
opspareds "" merge5
opparm -V 20.5.370 merge5
chlock merge5 -*
chautoscope merge5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge5
opexprlanguage -s hscript merge5
opuserdata -n '___Version___' -v '20.5.370' merge5

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 7.9538500000000001 -y -24.041300002062322 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) ptnormalsrc ( attribute ) ptnormalattrib ( N ) dist ( 0.034 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 2.0868199999999999 -y -24.592600002062319 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.034 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x -8.1780899999999992 -y -23.460500002062322 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 0.79363381862640381 -m 0 -a 0 -A 0 -T a  -F 'ch("../HandrailH")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( -3 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node polyexpand2d5 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d5
oplocate -x -8.1780899999999992 -y -22.528000002062321 polyexpand2d5
opspareds "" polyexpand2d5
chblockbegin
chadd -t 0 0 polyexpand2d5 offset
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../HandrailW")' polyexpand2d5/offset
chblockend
opparm -V 20.5.370 polyexpand2d5 group ( "" ) planepossrc ( setplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d5 -*
chautoscope polyexpand2d5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d5
opexprlanguage -s hscript polyexpand2d5
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d5

# Node transform5 (Sop/xform)
opadd -e -n xform transform5
oplocate -x -8.1780899999999992 -y -24.335900002062321 transform5
opspareds "" transform5
opparm -V 20.5.370 transform5 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -0.01 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform5 -*
chautoscope transform5 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform5
opexprlanguage -s hscript transform5
opuserdata -n '___Version___' -v '20.5.370' transform5

# Node clean2 (Sop/clean)
opadd -e -n clean clean2
oplocate -x -5.1271399999999998 -y -26.746800002062319 clean2
opspareds "" clean2
opparm clean2 fusepts ( on ) fusedist ( 0.001 ) deldegengeo ( on ) degentol ( 0.001 ) removeunusedgrp ( on ) orientpoly ( off ) reversewinding ( off ) fixoverlap ( on ) deleteoverlap ( on ) delunusedpts ( on ) dodelattribs ( off ) delattribs ( * ) dodelgroups ( off ) delgroups ( * ) delnans ( on ) make_manifold ( off ) delete_small ( on ) prim_count ( 3 )
chlock clean2 -*
chautoscope clean2 -* +delete_small
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean2
opexprlanguage -s hscript clean2
opuserdata -n '___Version___' -v '' clean2

# Node merge6 (Sop/merge)
opadd -e -n merge merge6
oplocate -x -5.1282899999999998 -y -25.189100002062322 merge6
opspareds "" merge6
opparm -V 20.5.370 merge6
chlock merge6 -*
chautoscope merge6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge6
opexprlanguage -s hscript merge6
opuserdata -n '___Version___' -v '20.5.370' merge6

# Node polyextrude7 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude7
oplocate -x -5.2410800000000002 -y -23.079300002062322 polyextrude7
opspareds "" polyextrude7
opparm polyextrude7  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude7 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.034 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude7 -*
chautoscope polyextrude7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude7
opexprlanguage -s hscript polyextrude7
opuserdata -n '___Version___' -v '20.5.370' polyextrude7

# Node clean3 (Sop/clean)
opadd -e -n clean clean3
oplocate -x 8.5323499999999992 -y -27.951400002062321 clean3
opspareds "" clean3
opparm clean3 fusepts ( on ) fusedist ( 0.001 ) deldegengeo ( on ) degentol ( 0.001 ) removeunusedgrp ( on ) orientpoly ( off ) reversewinding ( off ) fixoverlap ( on ) deleteoverlap ( on ) delunusedpts ( on ) dodelattribs ( off ) delattribs ( * ) dodelgroups ( off ) delgroups ( * ) delnans ( on ) make_manifold ( off ) delete_small ( on ) prim_count ( 3 )
chlock clean3 -*
chautoscope clean3 -* +delete_small
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean3
opexprlanguage -s hscript clean3
opuserdata -n '___Version___' -v '' clean3

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x 20.973400000000002 -y 0.064993599999999999 add3
opspareds "" add3
opparm add3  points ( 4 ) prims ( 1 )
opparm -V 20.5.370 add3 stdswitcher ( 0 0 0 ) keep ( off ) points ( 4 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 10.650483006260728 0.6781109571456909 5.348127216742299 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 11.066027475639132 3.5786960124969482 2.4299791412245133 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 11.006015689172596 2 -2.3352185309853093 ) weight2 ( 1 ) usept3 ( on ) pt3 ( 10.952116667113549 0.7476645708084106 -5.588689490299409 ) weight3 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node attribwrangle9 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle9
oplocate -x 29.565200000000001 -y -21.230399999999999 attribwrangle9
opspareds "" attribwrangle9
opparm attribwrangle9  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle9 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector p = point(0,"P", @ptnum);\n\n\nint numpoints = npoints(1);\nint i = nearpoint(1, p);\nfloat h = point(1,"height",i);\n\n@P.y = h;\n\n\nif( @ptnum==0 )\n{\n    int ps[] = primpoints(1, 0);\n\n    vector p0 = point(1,"P",ps[0]);\n    vector p1 = point(1,"P",ps[1]);\n    float leng = length(p0-p1);\n    \n    float h0 = point(1,"height",0);\n    float h1 = point(1,"height",1);\n    float dh = (h0-h1) / leng;\n    \n    float ext = chf("../W") * 0.5;\n    \n    float newh = dh*ext;\n    \n    printf("!!!!%f, %f, %f\\n", dh, dh*ext, h0 );\n    @P.y = h0 + dh*ext;// + newh;\n}\nelse if( @ptnum==@numpt-1 )\n{\n//    printf("!!!!");\n\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle9 -*
chautoscope attribwrangle9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle9
opexprlanguage -s hscript attribwrangle9
opuserdata -n '___Version___' -v '' attribwrangle9

# Node check_if_point_is_left_or_right_of_center1 (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_left_or_right_of_center1
oplocate -x 21.107299999999999 -y -6.96699 check_if_point_is_left_or_right_of_center1
opspareds "" check_if_point_is_left_or_right_of_center1
opparm check_if_point_is_left_or_right_of_center1  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_left_or_right_of_center1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\nfloat ext = chf("../W");// terminal edge extension length( W )\nint ps[] = primpoints(1, 0);\nint closest_id = -1;\nfloat dist = 999999999.9;\n\n/*\nvector points[];\nfor( int i=0; i<len(ps); ++i )\n{\n    vector p = point(1,"P",ps[i]);\n    append( points, p );\n}\n\n// TODO: check loop\n*/\n\nfor( int i=0; i<len(ps)-1; ++i )\n{\n    vector p0 = point(1,"P",ps[i]);\n    vector p1 = point(1,"P",ps[i+1]);\n    \n    if(i==0)\n    {\n        vector v = ext * normalize(p0-p1);\n        p0 += v;\n    }\n    else if(i==len(ps)-2)\n    {\n        vector v = ext * normalize(p1-p0);\n        p1 += v;\n    }\n    \n    \n    float d = distance_pointsegment( @P, p0, p1 );\n    \n    if( d <= dist )\n    {\n        dist = d;\n        closest_id = i;\n    }\n}\n\n//printf("[%d]: closest_id = %d, %f\\n", @ptnum, closest_id, dist );\n\n// Check if \nvector p0 = point(1,"P",ps[closest_id]);\nvector p1 = point(1,"P",ps[closest_id+1]);\nfloat lr = sign((p1.x - p0.x) * (@P.z - p0.z) - (p1.z - p0.z) * (@P.x - p0.x));\n\nf@lr = lr;\ni@closest_id = closest_id;\n\n@group_right = lr<0.0;\n@group_left = !@group_right;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_left_or_right_of_center1 -*
chautoscope check_if_point_is_left_or_right_of_center1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on check_if_point_is_left_or_right_of_center1
opexprlanguage -s hscript check_if_point_is_left_or_right_of_center1
opuserdata -n '___Version___' -v '' check_if_point_is_left_or_right_of_center1

# Node blast8 (Sop/blast)
opadd -e -n blast blast8
oplocate -x 27.492599999999999 -y -10.310700000000001 blast8
opspareds "" blast8
opparm -V 20.5.370 blast8 group ( right ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast8 -*
chautoscope blast8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast8
opexprlanguage -s hscript blast8
opuserdata -n '___Version___' -v '20.5.370' blast8

# Node polyexpand2d7 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d7
oplocate -x 18.327400000000001 -y -5.9632100000000001 polyexpand2d7
opspareds "" polyexpand2d7
chblockbegin
chadd -t 0 0 polyexpand2d7 offset
chkey -t 0 -v 0.67000000000000004 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../W")' polyexpand2d7/offset
chblockend
opparm -V 20.5.370 polyexpand2d7 group ( "" ) planepossrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( offset ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( off ) outputoutside ( on ) keepinput ( off ) omitendcaps ( on ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d7 -*
chautoscope polyexpand2d7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyexpand2d7
opexprlanguage -s hscript polyexpand2d7
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d7

# Node attribwrangle10 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle10
oplocate -x 22.271699999999999 -y -3.1098400000000002 attribwrangle10
opspareds "" attribwrangle10
opparm attribwrangle10  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle10 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@height = @P.y;\n@P.y*=0.0;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle10 -*
chautoscope attribwrangle10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle10
opexprlanguage -s hscript attribwrangle10
opuserdata -n '___Version___' -v '' attribwrangle10

# Node sort10 (Sop/sort)
opadd -e -n sort sort10
oplocate -x -6.6498321572543508e-17 -y 4.7497999979376786 sort10
opspareds "" sort10
opparm -V 20.5.370 sort10 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( vtxord ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort10 -*
chautoscope sort10 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort10
opexprlanguage -s hscript sort10
opuserdata -n '___Version___' -v '20.5.370' sort10

# Node rewire1 (Sop/rewire)
opadd -e -n rewire rewire1
oplocate -x 1.3586499999999999 -y -4.4150100020623206 rewire1
opspareds "" rewire1
opparm -V 20.5.370 rewire1 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire1 -*
chautoscope rewire1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rewire1
nbop __netbox1 add rewire1
opexprlanguage -s hscript rewire1
opuserdata -n '___Version___' -v '20.5.370' rewire1

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x 1.35565 -y -3.5821500020623209 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@rewire_to = (@numvtx-1)-@vtxnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
nbop __netbox1 add attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node clip_end_segment (Sop/attribwrangle)
opadd -e -n attribwrangle clip_end_segment
oplocate -x 1.35565 -y -9.7406500020623206 clip_end_segment
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_end_segment
opparm clip_end_segment  bindings ( 0 ) groupbindings ( 0 )
opparm clip_end_segment folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("../W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( -1 ) p1 ( -2 )
chlock clip_end_segment -* +p0 +p1
chautoscope clip_end_segment -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_end_segment
nbop __netbox3 add clip_end_segment
opexprlanguage -s hscript clip_end_segment
opuserdata -n '___Version___' -v '' clip_end_segment

# Node clip_start_segment (Sop/attribwrangle)
opadd -e -n attribwrangle clip_start_segment
oplocate -x 1.35565 -y -8.8210500020623215 clip_start_segment
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_start_segment
opparm clip_start_segment  bindings ( 0 ) groupbindings ( 0 )
opparm clip_start_segment folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("../W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( 0 ) p1 ( 1 )
chlock clip_start_segment -* +p0 +p1
chautoscope clip_start_segment -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_start_segment
nbop __netbox3 add clip_start_segment
opexprlanguage -s hscript clip_start_segment
opuserdata -n '___Version___' -v '' clip_start_segment

# Node sort6 (Sop/sort)
opadd -e -n sort sort6
oplocate -x 1.3586499999999999 -y -7.0390700020623207 sort6
opspareds "" sort6
chblockbegin
chadd -t 0 0 sort6 pointreverse
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"reversed_point_order",0)==1' sort6/pointreverse
chblockend
opparm -V 20.5.370 sort6 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( pointreverse ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort6 -*
chautoscope sort6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort6
nbop __netbox2 add sort6
opexprlanguage -s hscript sort6
opuserdata -n '___Version___' -v '20.5.370' sort6

# Node check_if_point_is_ascending_order (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_ascending_order
oplocate -x 1.35565 -y -6.155570002062321 check_if_point_is_ascending_order
opspareds "" check_if_point_is_ascending_order
opparm check_if_point_is_ascending_order  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_ascending_order folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\n//int ps[] = primpoints(0, 0);\n//for(int i=0; i<len(ps); ++i)\n//    printf("ps[%d]: %d\\n", i, ps[i] );\n\n\n//printf("Is closest_id[0]==0 ? %d\\n", point(0, "closest_id", 0)==0 );\n\n//i@reversed_point_order = point(0, "closest_id", 0)!=0;\ni@reversed_point_order = point(0, "closest_point_id", 0)!=0;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_ascending_order -*
chautoscope check_if_point_is_ascending_order -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_if_point_is_ascending_order
nbop __netbox2 add check_if_point_is_ascending_order
opexprlanguage -s hscript check_if_point_is_ascending_order
opuserdata -n '___Version___' -v '' check_if_point_is_ascending_order

# Node rewire2 (Sop/rewire)
opadd -e -n rewire rewire2
oplocate -x -3.7151299999999998 -y -4.4150100020623206 rewire2
opspareds "" rewire2
opparm -V 20.5.370 rewire2 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire2 -*
chautoscope rewire2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off rewire2
nbop __netbox4 add rewire2
opexprlanguage -s hscript rewire2
opuserdata -n '___Version___' -v '20.5.370' rewire2

# Node attribwrangle5 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle5
oplocate -x -3.7181299999999999 -y -3.5821500020623209 attribwrangle5
opspareds "" attribwrangle5
opparm attribwrangle5  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle5 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@rewire_to = (@numvtx-1)-@vtxnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle5 -*
chautoscope attribwrangle5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle5
nbop __netbox4 add attribwrangle5
opexprlanguage -s hscript attribwrangle5
opuserdata -n '___Version___' -v '' attribwrangle5

# Node clip_end_segment1 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_end_segment1
oplocate -x -3.7143899999999999 -y -9.7406500020623206 clip_end_segment1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_end_segment1
opparm clip_end_segment1  bindings ( 0 ) groupbindings ( 0 )
opparm clip_end_segment1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("../W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( -1 ) p1 ( -2 )
chlock clip_end_segment1 -* +p0 +p1
chautoscope clip_end_segment1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_end_segment1
nbop __netbox6 add clip_end_segment1
opexprlanguage -s hscript clip_end_segment1
opuserdata -n '___Version___' -v '' clip_end_segment1

# Node clip_start_segment1 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_start_segment1
oplocate -x -3.7143899999999999 -y -8.8210500020623215 clip_start_segment1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_start_segment1
opparm clip_start_segment1  bindings ( 0 ) groupbindings ( 0 )
opparm clip_start_segment1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat w = ch("../W");\nfloat ext = w * (chi("../Alignment")==2 ? 0.5 : 1.0);\n/*\nint al = chi("../Alignment");\nif(al==2) width_cos *= 0.5;\nelse width_cos *= 1.0;\n*/\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - ext * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( 0 ) p1 ( 1 )
chlock clip_start_segment1 -* +p0 +p1
chautoscope clip_start_segment1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clip_start_segment1
nbop __netbox6 add clip_start_segment1
opexprlanguage -s hscript clip_start_segment1
opuserdata -n '___Version___' -v '' clip_start_segment1

# Node sort7 (Sop/sort)
opadd -e -n sort sort7
oplocate -x -3.7113900000000002 -y -7.0390700020623207 sort7
opspareds "" sort7
chblockbegin
chadd -t 0 0 sort7 pointreverse
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"reversed_point_order",0)==1' sort7/pointreverse
chblockend
opparm -V 20.5.370 sort7 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( pointreverse ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort7 -*
chautoscope sort7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort7
nbop __netbox5 add sort7
opexprlanguage -s hscript sort7
opuserdata -n '___Version___' -v '20.5.370' sort7

# Node check_if_point_is_ascending_order1 (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_ascending_order1
oplocate -x -3.7143899999999999 -y -6.155570002062321 check_if_point_is_ascending_order1
opspareds "" check_if_point_is_ascending_order1
opparm check_if_point_is_ascending_order1  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_ascending_order1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\n//int ps[] = primpoints(0, 0);\n//for(int i=0; i<len(ps); ++i)\n//    printf("ps[%d]: %d\\n", i, ps[i] );\n\n\n//printf("Is closest_id[0]==0 ? %d\\n", point(0, "closest_id", 0)==0 );\n\n//i@reversed_point_order = point(0, "closest_id", 0)!=0;\ni@reversed_point_order = point(0, "closest_point_id", 0)!=0;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_ascending_order1 -*
chautoscope check_if_point_is_ascending_order1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_if_point_is_ascending_order1
nbop __netbox5 add check_if_point_is_ascending_order1
opexprlanguage -s hscript check_if_point_is_ascending_order1
opuserdata -n '___Version___' -v '' check_if_point_is_ascending_order1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -2.7120700000000002 -y -14.826300002062322 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
nbop __netbox7 add merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node add6 (Sop/add)
opadd -e -n add add6
oplocate -x -2.7109200000000002 -y -16.702700002062318 add6
opspareds "" add6
opparm add6  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add6 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add6 -*
chautoscope add6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add6
nbop __netbox7 add add6
opexprlanguage -s hscript add6
opuserdata -n '___Version___' -v '20.5.370' add6

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -2.7109200000000002 -y -15.853900002062321 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox7 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 2.3025899999999999 -y -14.823000002062322 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
nbop __netbox7 add merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node add7 (Sop/add)
opadd -e -n add add7
oplocate -x 2.3037399999999999 -y -16.699400002062319 add7
opspareds "" add7
opparm add7  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add7 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add7 -*
chautoscope add7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add7
nbop __netbox7 add add7
opexprlanguage -s hscript add7
opuserdata -n '___Version___' -v '20.5.370' add7

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x 2.3037399999999999 -y -15.850600002062322 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
nbop __netbox7 add fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node merge3 (Sop/merge)
opadd -e -n merge merge3
oplocate -x 7.3157899999999998 -y -14.856400002062323 merge3
opspareds "" merge3
opparm -V 20.5.370 merge3
chlock merge3 -*
chautoscope merge3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge3
nbop __netbox7 add merge3
opexprlanguage -s hscript merge3
opuserdata -n '___Version___' -v '20.5.370' merge3

# Node add8 (Sop/add)
opadd -e -n add add8
oplocate -x 7.3169399999999998 -y -16.660500002062321 add8
opspareds "" add8
opparm add8  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add8 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add8 -*
chautoscope add8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add8
nbop __netbox7 add add8
opexprlanguage -s hscript add8
opuserdata -n '___Version___' -v '20.5.370' add8

# Node fuse3 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse3
oplocate -x 7.3169399999999998 -y -15.81180000206232 fuse3
opspareds "" fuse3
opparm fuse3  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse3 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse3 -*
chautoscope fuse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse3
nbop __netbox7 add fuse3
opexprlanguage -s hscript fuse3
opuserdata -n '___Version___' -v '20.5.370' fuse3

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 0.94432099999999985 -y -16.532300002062321 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( right ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast1
nbop __netbox7 add blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node sort9 (Sop/sort)
opadd -e -n sort sort9
oplocate -x 9.2866199999999992 -y -10.308970002062321 sort9
opspareds "" sort9
opparm -V 20.5.370 sort9 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort9 -*
chautoscope sort9 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort9
opexprlanguage -s hscript sort9
opuserdata -n '___Version___' -v '20.5.370' sort9

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -4.1265799999999997 -y -16.702700002062318 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( left ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast2
nbop __netbox7 add blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node sort5 (Sop/sort)
opadd -e -n sort sort5
oplocate -x -3.7113900000000002 -y -10.908100002062319 sort5
opspareds "" sort5
opparm -V 20.5.370 sort5 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort5 -*
chautoscope sort5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort5
opexprlanguage -s hscript sort5
opuserdata -n '___Version___' -v '20.5.370' sort5

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 5.3439500000000004 -y -16.433200002062321 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( left ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast3
nbop __netbox7 add blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x 9.4944100000000002 -y -16.248900002062321 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( right ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast4
nbop __netbox7 add blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node fuse4 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse4
oplocate -x -4.1265799999999997 -y -14.829500002062321 fuse4
opspareds "" fuse4
opparm fuse4  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse4 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse4 -*
chautoscope fuse4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse4
nbop __netbox7 add fuse4
opexprlanguage -s hscript fuse4
opuserdata -n '___Version___' -v '20.5.370' fuse4

# Node fuse6 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse6
oplocate -x 5.3439500000000004 -y -15.001300002062322 fuse6
opspareds "" fuse6
opparm fuse6  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse6 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse6 -*
chautoscope fuse6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse6
nbop __netbox7 add fuse6
opexprlanguage -s hscript fuse6
opuserdata -n '___Version___' -v '20.5.370' fuse6

# Node fuse7 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse7
oplocate -x 9.4944100000000002 -y -15.001300002062322 fuse7
opspareds "" fuse7
opparm fuse7  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse7 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse7 -*
chautoscope fuse7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on fuse7
nbop __netbox7 add fuse7
opexprlanguage -s hscript fuse7
opuserdata -n '___Version___' -v '20.5.370' fuse7

# Node fuse8 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse8
oplocate -x 0.94432099999999985 -y -15.487300002062319 fuse8
opspareds "" fuse8
opparm fuse8  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse8 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse8 -*
chautoscope fuse8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse8
nbop __netbox7 add fuse8
opexprlanguage -s hscript fuse8
opuserdata -n '___Version___' -v '20.5.370' fuse8

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 2.0868199999999999 -y -33.983700002062321 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 2.2007599999999998 -y -31.843000002062322 switch1
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

# Node split1 (Sop/split)
opadd -e -n split split1
oplocate -x -0.034208300000000066 -y -1.8439500020623212 split1
opspareds "" split1
opparm split1 group ( left ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split1 -*
chautoscope split1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split1
opexprlanguage -s hscript split1
opuserdata -n '___Version___' -v '' split1

# Node split2 (Sop/split)
opadd -e -n split split2
oplocate -x 21.110299999999999 -y -9.0745500000000003 split2
opspareds "" split2
opparm split2 group ( left ) grouptype ( guess ) negate ( off ) removegrp ( off )
chlock split2 -*
chautoscope split2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on split2
opexprlanguage -s hscript split2
opuserdata -n '___Version___' -v '' split2

# Node rewire3 (Sop/rewire)
opadd -e -n rewire rewire3
oplocate -x 22.5032 -y -11.6456 rewire3
opspareds "" rewire3
opparm -V 20.5.370 rewire3 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire3 -*
chautoscope rewire3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on rewire3
nbop __netbox8 add rewire3
opexprlanguage -s hscript rewire3
opuserdata -n '___Version___' -v '20.5.370' rewire3

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x 22.5002 -y -10.8127 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@rewire_to = (@numvtx-1)-@vtxnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle6
nbop __netbox8 add attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node clip_end_segment2 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_end_segment2
oplocate -x 22.5002 -y -16.9712 clip_end_segment2
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_end_segment2
opparm clip_end_segment2  bindings ( 0 ) groupbindings ( 0 )
opparm clip_end_segment2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat width_cos = ch("../W") * cos(45.0);\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - width_cos * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( -1 ) p1 ( -2 )
chlock clip_end_segment2 -* +p0 +p1
chautoscope clip_end_segment2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on clip_end_segment2
nbop __netbox10 add clip_end_segment2
opexprlanguage -s hscript clip_end_segment2
opuserdata -n '___Version___' -v '' clip_end_segment2

# Node clip_start_segment2 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_start_segment2
oplocate -x 22.5002 -y -16.051600000000001 clip_start_segment2
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_start_segment2
opparm clip_start_segment2  bindings ( 0 ) groupbindings ( 0 )
opparm clip_start_segment2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat width_cos = ch("../W") * cos(45.0);\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - width_cos * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( 0 ) p1 ( 1 )
chlock clip_start_segment2 -* +p0 +p1
chautoscope clip_start_segment2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on clip_start_segment2
nbop __netbox10 add clip_start_segment2
opexprlanguage -s hscript clip_start_segment2
opuserdata -n '___Version___' -v '' clip_start_segment2

# Node sort11 (Sop/sort)
opadd -e -n sort sort11
oplocate -x 22.5032 -y -14.2697 sort11
opspareds "" sort11
chblockbegin
chadd -t 0 0 sort11 pointreverse
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"reversed_point_order",0)==1' sort11/pointreverse
chblockend
opparm -V 20.5.370 sort11 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( pointreverse ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort11 -*
chautoscope sort11 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort11
nbop __netbox9 add sort11
opexprlanguage -s hscript sort11
opuserdata -n '___Version___' -v '20.5.370' sort11

# Node check_if_point_is_ascending_order2 (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_ascending_order2
oplocate -x 22.5002 -y -13.386200000000001 check_if_point_is_ascending_order2
opspareds "" check_if_point_is_ascending_order2
opparm check_if_point_is_ascending_order2  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_ascending_order2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\n//int ps[] = primpoints(0, 0);\n//for(int i=0; i<len(ps); ++i)\n//    printf("ps[%d]: %d\\n", i, ps[i] );\n\n\n//printf("Is closest_id[0]==0 ? %d\\n", point(0, "closest_id", 0)==0 );\ni@reversed_point_order = point(0, "closest_id", 0)!=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_ascending_order2 -*
chautoscope check_if_point_is_ascending_order2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on check_if_point_is_ascending_order2
nbop __netbox9 add check_if_point_is_ascending_order2
opexprlanguage -s hscript check_if_point_is_ascending_order2
opuserdata -n '___Version___' -v '' check_if_point_is_ascending_order2

# Node rewire4 (Sop/rewire)
opadd -e -n rewire rewire4
oplocate -x 17.429400000000001 -y -11.6456 rewire4
opspareds "" rewire4
opparm -V 20.5.370 rewire4 group ( "" ) grouptype ( guess ) attrib ( rewire_to ) deletetargetpointattrib ( off ) recurse ( off ) keepunusedpoints ( off ) createorigattrib ( off ) origattrib ( rewired_from )
chlock rewire4 -*
chautoscope rewire4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on rewire4
nbop __netbox11 add rewire4
opexprlanguage -s hscript rewire4
opuserdata -n '___Version___' -v '20.5.370' rewire4

# Node attribwrangle7 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle7
oplocate -x 17.426400000000001 -y -10.8127 attribwrangle7
opspareds "" attribwrangle7
opparm attribwrangle7  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle7 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@rewire_to = (@numvtx-1)-@vtxnum;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle7 -*
chautoscope attribwrangle7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle7
nbop __netbox11 add attribwrangle7
opexprlanguage -s hscript attribwrangle7
opuserdata -n '___Version___' -v '' attribwrangle7

# Node clip_end_segment3 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_end_segment3
oplocate -x 17.430199999999999 -y -16.9712 clip_end_segment3
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_end_segment3
opparm clip_end_segment3  bindings ( 0 ) groupbindings ( 0 )
opparm clip_end_segment3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat width_cos = ch("../W") * cos(45.0);\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - width_cos * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( -1 ) p1 ( -2 )
chlock clip_end_segment3 -* +p0 +p1
chautoscope clip_end_segment3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on clip_end_segment3
nbop __netbox13 add clip_end_segment3
opexprlanguage -s hscript clip_end_segment3
opuserdata -n '___Version___' -v '' clip_end_segment3

# Node clip_start_segment3 (Sop/attribwrangle)
opadd -e -n attribwrangle clip_start_segment3
oplocate -x 17.430199999999999 -y -16.051600000000001 clip_start_segment3
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "p0"                 label   "P0"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "p1"                 label   "P1"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' clip_start_segment3
opparm clip_start_segment3  bindings ( 0 ) groupbindings ( 0 )
opparm clip_start_segment3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '/*\np0         p(clip plane)       p1\n|---------------x--------------|\n      <--- n(=normalize(v))\n\n                |--------------|\n                 remaining part\n                 after clip\n*/\n\n\n\nint p0_idx = chi("p0");\nint p1_idx = chi("p1");\nfloat width_cos = ch("../W") * cos(45.0);\n\nint ps[] = primpoints(0, 0);\nvector p0 = point(geoself(), "P", ps[p0_idx]);\nvector p1 = point(geoself(), "P", ps[p1_idx]);\nvector v = p0 - p1;\nvector n = normalize(v);\n\nvector p = p0 - width_cos * n;//w*v;\nfloat d = -dot(n,p);\n\nif( dot(p-p1,n)<=0.0 )\n{\n    setpointattrib(geoself(), "P", ps[p0_idx], p1);\n    return;\n}\n\n\nvector4 plane = set(n.x, n.y, n.z, d);\n//printf( "%f\\n", plane );\n\nint result=-1;\nclip( result, p1, p0, plane );\n//printf( "%d, %f, %f\\n", result, p0, p1 );\n\nsetpointattrib(geoself(), "P", ps[p0_idx], p0);\n//setpointattrib(geoself(), "P", ps[p1_idx], p1);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) p0 ( 0 ) p1 ( 1 )
chlock clip_start_segment3 -* +p0 +p1
chautoscope clip_start_segment3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on clip_start_segment3
nbop __netbox13 add clip_start_segment3
opexprlanguage -s hscript clip_start_segment3
opuserdata -n '___Version___' -v '' clip_start_segment3

# Node sort12 (Sop/sort)
opadd -e -n sort sort12
oplocate -x 17.433199999999999 -y -14.2697 sort12
opspareds "" sort12
chblockbegin
chadd -t 0 0 sort12 pointreverse
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"reversed_point_order",0)==1' sort12/pointreverse
chblockend
opparm -V 20.5.370 sort12 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( pointreverse ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort12 -*
chautoscope sort12 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort12
nbop __netbox12 add sort12
opexprlanguage -s hscript sort12
opuserdata -n '___Version___' -v '20.5.370' sort12

# Node check_if_point_is_ascending_order3 (Sop/attribwrangle)
opadd -e -n attribwrangle check_if_point_is_ascending_order3
oplocate -x 17.430199999999999 -y -13.386200000000001 check_if_point_is_ascending_order3
opspareds "" check_if_point_is_ascending_order3
opparm check_if_point_is_ascending_order3  bindings ( 0 ) groupbindings ( 0 )
opparm check_if_point_is_ascending_order3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '// distance_pointsegment(q, p0, p1)\n// https://www.sidefx.com/docs/houdini/vex/functions/distance_pointsegment.html\n\n//int ps[] = primpoints(0, 0);\n//for(int i=0; i<len(ps); ++i)\n//    printf("ps[%d]: %d\\n", i, ps[i] );\n\n\n//printf("Is closest_id[0]==0 ? %d\\n", point(0, "closest_id", 0)==0 );\ni@reversed_point_order = point(0, "closest_id", 0)!=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_if_point_is_ascending_order3 -*
chautoscope check_if_point_is_ascending_order3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on check_if_point_is_ascending_order3
nbop __netbox12 add check_if_point_is_ascending_order3
opexprlanguage -s hscript check_if_point_is_ascending_order3
opuserdata -n '___Version___' -v '' check_if_point_is_ascending_order3

# Node attribwrangle11 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle11
oplocate -x 24.298200000000001 -y -20.4697 attribwrangle11
opspareds "" attribwrangle11
opparm attribwrangle11  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle11 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector p = point(0,"P", @ptnum);\n\n\nint numpoints = npoints(1);\nint i = nearpoint(1, p);\nfloat h = point(1,"height",i);\n\n@P.y = h;\n\n/*\nif( @ptnum==0 )\n{\n    int ps[] = primpoints(1, 0);\n\n    vector p0 = point(1,"P",ps[0]);\n    vector p1 = point(1,"P",ps[1]);\n    float leng = length(p0-p1);\n    \n    float h0 = point(1,"height",0);\n    float h1 = point(1,"height",1);\n    float dh = (h0-h1) / leng;\n    \n    float ext = chf("../W") * 0.5;\n    \n    float newh = dh*ext;\n    \n    printf("!!!!%f, %f, %f\\n", dh, dh*ext, h0 );\n    @P.y = h0 + dh*ext;// + newh;\n}\nelse if( @ptnum==@numpt-1 )\n{\n//    printf("!!!!");\n\n}\n*/' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle11 -*
chautoscope attribwrangle11 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle11
opexprlanguage -s hscript attribwrangle11
opuserdata -n '___Version___' -v '' attribwrangle11

# Node attribwrangle14 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle14
oplocate -x 8.63551 -y -26.913500002062321 attribwrangle14
opspareds "" attribwrangle14
opparm attribwrangle14  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle14 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector p = point(0,"P", @ptnum);\n\n\nint numpoints = npoints(1);\nint i = nearpoint(1, p);\nfloat h = point(1,"height",i);\n\n@P.y += h;\n\n/*\nif( @ptnum==0 )\n{\n    int ps[] = primpoints(1, 0);\n\n    vector p0 = point(1,"P",ps[0]);\n    vector p1 = point(1,"P",ps[1]);\n    float leng = length(p0-p1);\n    \n    float h0 = point(1,"height",0);\n    float h1 = point(1,"height",1);\n    float dh = (h0-h1) / leng;\n    \n    float ext = chf("../W") * 0.5;\n    \n    float newh = dh*ext;\n    \n    printf("!!!!%f, %f, %f\\n", dh, dh*ext, h0 );\n    @P.y = h0 + dh*ext;// + newh;\n}\nelse if( @ptnum==@numpt-1 )\n{\n//    printf("!!!!");\n\n}\n*/' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle14 -*
chautoscope attribwrangle14 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle14
opexprlanguage -s hscript attribwrangle14
opuserdata -n '___Version___' -v '' attribwrangle14

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x -3.4262314657987127e-17 -y 5.7877000106692309 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int al =   chi("../Alignment");\nprintf("%d\\n",  al );' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node polyframe1 (Sop/polyframe)
opadd -e -n polyframe polyframe1
oplocate -x 7.3169399999999989 -y -19.352875166660386 polyframe1
opspareds "" polyframe1
opparm -V 20.5.370 polyframe1 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( on ) N ( N ) tangentuon ( on ) tangentu ( tangentu ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe1 -*
chautoscope polyframe1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyframe1
opexprlanguage -s hscript polyframe1
opuserdata -n '___Version___' -v '20.5.370' polyframe1
oporder -e polyexpand2d1 check_if_point_is_left_or_right_of_center null1 clip_function_test add5 polyextrude1 polyexpand2d2 transform1 clean1 merge4 polyextrude2 polyexpand2d3 transform3 polyextrude3 polyexpand2d4 transform4 merge5 polyextrude4 polyextrude5 polyextrude6 polyexpand2d5 transform5 clean2 merge6 polyextrude7 clean3 add3 attribwrangle9 check_if_point_is_left_or_right_of_center1 blast8 polyexpand2d7 attribwrangle10 sort10 rewire1 attribwrangle4 clip_end_segment clip_start_segment sort6 check_if_point_is_ascending_order rewire2 attribwrangle5 clip_end_segment1 clip_start_segment1 sort7 check_if_point_is_ascending_order1 merge1 add6 fuse1 merge2 add7 fuse2 merge3 add8 fuse3 blast1 sort9 blast2 sort5 blast3 blast4 fuse4 fuse6 fuse7 fuse8 output0 switch1 split1 split2 rewire3 attribwrangle6 clip_end_segment2 clip_start_segment2 sort11 check_if_point_is_ascending_order2 rewire4 attribwrangle7 clip_end_segment3 clip_start_segment3 sort12 check_if_point_is_ascending_order3 attribwrangle11 attribwrangle14 attribwrangle1 polyframe1 
opcf ..

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x 4.1917499999999999 -y 4.18241 add3
opspareds "" add3
opparm add3  points ( 7 ) prims ( 1 )
opparm -V 20.5.370 add3 stdswitcher ( 0 0 0 ) keep ( off ) points ( 7 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -8.310231997980374 0 -5.101238288487917 ) weight0 ( 1 ) usept1 ( on ) pt1 ( -4.925878058069987 -0.3025818318128586 -7.74378953759328 ) weight1 ( 1 ) usept2 ( on ) pt2 ( -1.7721339375626393 0.8742424249649048 -7.458605202106966 ) weight2 ( 1 ) usept3 ( on ) pt3 ( -1.0043319223094338 1.5114163160324097 -3.937796292561387 ) weight3 ( 1 ) usept4 ( on ) pt4 ( 2.4830994398343833 -0.23365849256515503 -4.155529821680007 ) weight4 ( 1 ) usept5 ( on ) pt5 ( 4.362990550930839 2.2943488359451294 1.666749164673134 ) weight5 ( 1 ) usept6 ( on ) pt6 ( 2.9999188620454134 -1.0186234712600708 6.764161620346881 ) weight6 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

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
oplocate -x 2.5878700000000001 -y -1.6694100000000001 lattice1
opspareds "" lattice1
opparm -V 20.5.370 lattice1 group ( "" ) stdswitcher ( 0 0 ) divs ( 1 1 1 ) interptype ( bezier ) restgroup ( "" ) kernel ( wyvill ) radius ( 1 ) normthreshold ( 0 ) bspheres ( off )
chlock lattice1 -*
chautoscope lattice1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off lattice1
opexprlanguage -s hscript lattice1
opuserdata -n '___Version___' -v '20.5.370' lattice1

# Node bound1 (Sop/bound)
opadd -e -n bound bound1
oplocate -x 4.1917499999999999 -y -0.21721499999999999 bound1
opspareds "" bound1
opparm -V 20.5.370 bound1 group ( "" ) grouptype ( guess ) keepOriginal ( off ) createboundinggeo ( on ) createempty ( on ) separator ( ) boundtype ( off ) orientedbbox ( off ) refinementiterations ( 6 ) dodivs ( on ) divs ( 1 1 1 ) rebar ( off ) minsize ( 0 0 0 ) orient ( y ) accurate ( off ) minradius ( 0 ) orientedbrect ( off ) origin ( 0 0 0 ) dist ( 0 ) dir ( 0 1 0 ) minpad ( 0 0 0 ) maxpad ( 0 0 0 ) addboundsgroup ( off ) boundsgroup ( bounds ) addxformattrib ( off ) xformattrib ( xform ) addradiiattrib ( off ) radiiattrib ( radii )
chlock bound1 -*
chautoscope bound1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bound1
opexprlanguage -s hscript bound1
opuserdata -n '___Version___' -v '20.5.370' bound1

# Node edit1 (Sop/edit)
opadd -e -n edit edit1
oplocate -x 5.7879300000000002 -y -1.2217499999999999 edit1
opspareds "" edit1
opparm -V 20.5.370 edit1 group ( p0-4 ) grouptype ( edges ) modeswitcher ( 0 0 ) switcher ( 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -5.988216161727905 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) parmgroup_pivotxform ( 0 ) p ( -1.4612903594970703 3.029026985168457 -11.518953323364258 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) parmgroup_lpivotxform ( 0 ) lp ( 0 0 0 ) lpr ( 0 0 0 ) parmgroup_lprexform ( 0 ) lprexform_xOrd ( srt ) lprexform_rOrd ( xyz ) lprexform_t ( 0 0 0 ) lprexform_r ( 0 0 0 ) lprexform_s ( 1 1 1 ) lprexform_shear ( 0 0 0 ) vlength ( on ) parmgroup_xformspace ( 0 ) xformspace ( global ) localframe ( component ) localspaceupvector ( 0 1 0 ) leadislandhint ( p0-4 ) slideonsurface ( off ) dist ( 0 ) leadnml ( on ) apply ( 0 ) softparmsgrouper ( 0 ) distmetric ( surface ) applyrolloff ( off ) distattr ( "" ) leadptattr ( "" ) rad ( 0 ) type ( cubic ) tandeg ( 0 0 ) kernel ( wyvill ) visualizefalloff ( state ) sculptswitcher ( 0 0 0 ) op ( smoothdeform ) axis ( normal ) vector ( 0 0 1 ) stencilaccum ( off ) stencilclear ( 0 ) resetnormal ( 0 ) flood ( 0 ) color ( off off ) fd ( 0.10000000149011612 ) bd ( -0.10000000149011612 ) shape ( circle ) bitmap ( butterfly1.pic ) bmpchan ( alpha ) sculptrad ( 0.10000000149011612 ) uvradius ( 0.10000000149011612 ) radiuspressure ( 1 ) usedepth ( off ) depth ( 0.1 0.1 ) brushangle ( 0 ) squash ( 1 ) opacity ( 1 ) opacitypresure ( 1 ) brushsplatter ( 0 ) papergrain ( 0 ) softedge ( 1 ) sculptkernel ( elendt ) uptype ( stroke ) upvector ( 0 1 0 ) projtype ( on ) useconnectivity ( on ) usenormals ( on ) realtime ( off ) dir ( 0 0 1 ) hitpos ( 0 0 0 ) hitprim ( 0 ) hituvw ( 0 0 0 ) hitpressure ( 1 ) hitpt ( 0 ) event ( nop ) useorient ( off ) doreflect ( off ) symaxis ( 1 0 0 ) symorig ( 0 0 0 ) symdist ( 0 ) symthreshold ( 1 ) symplanetol ( 9.999999747378752e-6 ) updatenmls ( on ) clearall ( 0 )
chlock edit1 -*
chautoscope edit1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off edit1
opexprlanguage -s hscript edit1
opuserdata -n '___Version___' -v '20.5.370' edit1

# Node polyframe1 (Sop/polyframe)
opadd -e -n polyframe polyframe1
oplocate -x -7.1382099999999999 -y 0.85604999999999998 polyframe1
opspareds "" polyframe1
opparm -V 20.5.370 polyframe1 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( off ) N ( N ) tangentuon ( on ) tangentu ( N ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe1 -*
chautoscope polyframe1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyframe1
opexprlanguage -s hscript polyframe1
opuserdata -n '___Version___' -v '20.5.370' polyframe1

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x -7.1412100000000001 -y 3.2682500000000001 circle1
opspareds "" circle1
chblockbegin
chadd -t 0 0 circle1 divs
chkey -t 0 -v 32 -m 0 -a 0 -A 0 -T a  -F 32*4 circle1/divs
chblockend
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( divs ) arc ( openarc ) angle ( 0 350 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x -7.1412100000000001 -y 2.0308999999999999 attribwrangle1
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "height"                 label   "Height"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float t = float(@ptnum)/float(@numpt - 1); // (0~@numpt)を(0~1)に正規化(@ptnumはintなのでfloatにキャストしてます)\n@P.y += chf("height") * t; \n\n//@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) height ( 0.334 )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -7.2778600000000004 -y -1.2217499999999999 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 0.2 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( attrib ) upvectoratstart ( off ) useendupvector ( off ) upvectorattrib ( N ) endupvectorattrib ( N ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x -7.2778600000000004 -y -0.18385000000000001 attribwrangle2
opspareds "" attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x -9.1433900000000001 -y -1.33613 polyexpand2d1
opspareds "" polyexpand2d1
opparm -V 20.5.370 polyexpand2d1 group ( "" ) planepossrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( 0.1 ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d1 -*
chautoscope polyexpand2d1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d1
opexprlanguage -s hscript polyexpand2d1
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d1

# Node sweep2 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep2
oplocate -x -3.11863 -y -2.56806 sweep2
opspareds "" sweep2
opparm sweep2  scaleramp ( 2 )
opparm -V 20.5.370 sweep2 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 1 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( y ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep2 -*
chautoscope sweep2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep2
opexprlanguage -s hscript sweep2
opuserdata -n '___Version___' -v '20.5.370' sweep2

# Node resample2 (Sop/resample)
opadd -e -n resample resample2
oplocate -x -2.9443299999999999 -y 2.3430499999999999 resample2
opspareds "" resample2
opparm -V 20.5.370 resample2 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.26 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample2 -*
chautoscope resample2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample2
opexprlanguage -s hscript resample2
opuserdata -n '___Version___' -v '20.5.370' resample2

# Node polybevel2 (Sop/polybevel::3.0)
opadd -e -n polybevel::3.0 polybevel2
oplocate -x -2.4305599999999998 -y 3.3430499999999999 polybevel2
opspareds "" polybevel2
opparm polybevel2  profileramp ( 2 )
opparm -V 20.5.370 polybevel2 group ( "" ) grouptype ( points ) ignoregroup ( 0 ) ignorebridgededges ( on ) ignoresharededges ( off ) ignoreflatedges ( off ) ignoreflatpoints ( off ) ignoreinlinepoints ( off ) flatangle ( 2 ) offsettingsection ( 0 ) offset ( 1 ) useoffsetscale ( unscaled ) pointscaleattr ( pscale ) sliding ( auto ) asymtol ( 0.5 ) slideedges ( "" ) collisionsandlimits ( 0 ) detectcollisions ( on ) restrictslides ( on ) limit ( individually ) stopatslideend ( on ) stopatpinches ( on ) pinchangle ( 0 ) stopatcollisions ( on ) filletsection ( 0 ) filletshape ( round ) divisions ( 6 ) profilesampling ( uniform ) convexity ( 1 ) profilesource ( basic ) profilegroup ( 0 ) profilescale ( 1 ) reverseprofile ( off ) symmetrizeprofile ( on ) profiledirection ( "" ) profileramp ( 2 ) flatboost ( 30 ) outputgroupssection ( 0 ) useptfilletgroup ( off ) ptfilletgroup ( pointfilletpolys ) useptfilletedges ( off ) ptfilletedges ( pointfilletedges ) useedgefilletgroup ( off ) edgeprims ( edgefilletpolys ) useoffsetedges ( off ) offsetedges ( offsetedges ) useoffsetpoints ( off ) offsetpoints ( offsetpoints ) usemergedpoints ( off ) mergedpoints ( mergedpoints ) profileramp1pos ( 0 ) profileramp1value ( 0.5 ) profileramp1interp ( catmull-rom ) profileramp2pos ( 1 ) profileramp2value ( 0.5 ) profileramp2interp ( catmull-rom )
chlock polybevel2 -*
chautoscope polybevel2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polybevel2
opexprlanguage -s hscript polybevel2
opuserdata -n '___Version___' -v '20.5.370' polybevel2

# Node attribwrangle3 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle3
oplocate -x -2.94733 -y 1.30315 attribwrangle3
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "height"                 label   "Height"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' attribwrangle3
opparm attribwrangle3  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float t = float(@ptnum)/float(@numpt - 1); // (0~@numpt)を(0~1)に正規化(@ptnumはintなのでfloatにキャストしてます)\n@P.y += chf("height") * t; \n\n//@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) height ( 10 )
chlock attribwrangle3 -*
chautoscope attribwrangle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle3
opexprlanguage -s hscript attribwrangle3
opuserdata -n '___Version___' -v '' attribwrangle3

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x -2.94733 -y -1.28417 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '@N.y=0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node polyframe2 (Sop/polyframe)
opadd -e -n polyframe polyframe2
oplocate -x -2.9443299999999999 -y -0.056575399999999998 polyframe2
opspareds "" polyframe2
opparm -V 20.5.370 polyframe2 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( off ) N ( N ) tangentuon ( on ) tangentu ( N ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe2 -*
chautoscope polyframe2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyframe2
opexprlanguage -s hscript polyframe2
opuserdata -n '___Version___' -v '20.5.370' polyframe2

# Node add4 (Sop/add)
opadd -e -n add add4
oplocate -x 0.41626278277613915 -y 2.7085384150002514 add4
opspareds "" add4
opparm add4  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add4 stdswitcher ( 0 0 0 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -3.5916844821803586 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 2.040119762246583 0 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 9.300876389721193 0 0 ) weight2 ( 1 )
chlock add4 -*
chautoscope add4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add4
opexprlanguage -s hscript add4
opuserdata -n '___Version___' -v '20.5.370' add4
oporder -e Bend Elbow Straight add1 add2 add9 sort4 add10 polybevel1 Isle add3 resample1 lattice1 bound1 edit1 polyframe1 circle1 attribwrangle1 sweep1 attribwrangle2 polyexpand2d1 sweep2 resample2 polybevel2 attribwrangle3 attribwrangle4 polyframe2 add4 
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
opwire -n group4 -1 merge1
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
opcf ..
opcf Elbow
opwire -n merge1 -0 output0
opwire -n switchif1 -0 merge1
opwire -n group4 -1 merge1
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
opcf ..
opcf Straight
opwire -n merge1 -0 output0
opwire -n outline_points_l -0 group1
opwire -n group1 -0 group2
opwire -n group2 -0 merge1
opwire -n group4 -1 merge1
opwire -n connect_points_l -0 group3
opwire -n group3 -0 group4
opcf ..
opwire -n Bend -0 add2
opwire -n sort4 -0 add9
opwire -n Straight -0 sort4
opwire -n Elbow -0 add10
opwire -n add1 -0 polybevel1
opwire -n resample1 -0 Isle
opcf Isle
opwire -n null1 -0 polyexpand2d1
opwire -n polyexpand2d1 -0 check_if_point_is_left_or_right_of_center
opwire -n null1 -1 check_if_point_is_left_or_right_of_center
opwire -n sort10 -0 null1
opwire -n add5 -0 clip_function_test
opwire -n polyexpand2d2 -0 polyextrude1
opwire -n blast1 -0 polyexpand2d2
opwire -n polyextrude1 -0 transform1
opwire -n merge4 -0 clean1
opwire -n transform1 -0 merge4
opwire -n polyextrude5 -1 merge4
opwire -n polyexpand2d3 -0 polyextrude2
opwire -n blast3 -0 polyexpand2d3
opwire -n polyextrude2 -0 transform3
opwire -n polyexpand2d4 -0 polyextrude3
opwire -n blast4 -0 polyexpand2d4
opwire -n polyextrude3 -0 transform4
opwire -n transform3 -0 merge5
opwire -n polyextrude4 -1 merge5
opwire -n transform4 -2 merge5
opwire -n polyframe1 -0 polyextrude4
opwire -n add7 -0 polyextrude5
opwire -n polyexpand2d5 -0 polyextrude6
opwire -n blast2 -0 polyexpand2d5
opwire -n polyextrude6 -0 transform5
opwire -n merge6 -0 clean2
opwire -n transform5 -0 merge6
opwire -n polyextrude7 -1 merge6
opwire -n add6 -0 polyextrude7
opwire -n attribwrangle14 -0 clean3
opwire -n blast8 -0 attribwrangle9
opwire -n attribwrangle10 -1 attribwrangle9
opwire -n polyexpand2d7 -0 check_if_point_is_left_or_right_of_center1
opwire -n add3 -1 check_if_point_is_left_or_right_of_center1
opwire -n check_if_point_is_left_or_right_of_center1 -0 blast8
opwire -n attribwrangle10 -0 polyexpand2d7
opwire -n add3 -0 attribwrangle10
opwire -n attribwrangle1 -0 sort10
opwire -n attribwrangle4 -0 rewire1
opwire -n -o 1 split1 -0 attribwrangle4
opwire -n clip_start_segment -0 clip_end_segment
opwire -n sort6 -0 clip_start_segment
opwire -n check_if_point_is_ascending_order -0 sort6
opwire -n rewire1 -0 check_if_point_is_ascending_order
opwire -n attribwrangle5 -0 rewire2
opwire -n split1 -0 attribwrangle5
opwire -n clip_start_segment1 -0 clip_end_segment1
opwire -n sort7 -0 clip_start_segment1
opwire -n check_if_point_is_ascending_order1 -0 sort7
opwire -n rewire2 -0 check_if_point_is_ascending_order1
opwire -n sort5 -0 merge1
opwire -n null1 -1 merge1
opwire -n fuse1 -0 add6
opwire -n merge1 -0 fuse1
opwire -n clip_end_segment -0 merge2
opwire -n sort9 -1 merge2
opwire -n fuse2 -0 add7
opwire -n merge2 -0 fuse2
opwire -n sort5 -0 merge3
opwire -n clip_end_segment -1 merge3
opwire -n fuse3 -0 add8
opwire -n merge3 -0 fuse3
opwire -n fuse8 -0 blast1
opwire -n null1 -0 sort9
opwire -n fuse4 -0 blast2
opwire -n clip_end_segment1 -0 sort5
opwire -n fuse6 -0 blast3
opwire -n fuse7 -0 blast4
opwire -n sort5 -0 fuse4
opwire -n sort5 -0 fuse6
opwire -n clip_end_segment -0 fuse7
opwire -n clip_end_segment -0 fuse8
opwire -n switch1 -0 output0
opwire -n clean2 -0 switch1
opwire -n clean1 -1 switch1
opwire -n clean3 -2 switch1
opwire -n check_if_point_is_left_or_right_of_center -0 split1
opwire -n check_if_point_is_left_or_right_of_center1 -0 split2
opwire -n attribwrangle6 -0 rewire3
opwire -n -o 1 split2 -0 attribwrangle6
opwire -n clip_start_segment2 -0 clip_end_segment2
opwire -n sort11 -0 clip_start_segment2
opwire -n check_if_point_is_ascending_order2 -0 sort11
opwire -n rewire3 -0 check_if_point_is_ascending_order2
opwire -n attribwrangle7 -0 rewire4
opwire -n split2 -0 attribwrangle7
opwire -n clip_start_segment3 -0 clip_end_segment3
opwire -n sort12 -0 clip_start_segment3
opwire -n check_if_point_is_ascending_order3 -0 sort12
opwire -n rewire4 -0 check_if_point_is_ascending_order3
opwire -n clip_end_segment2 -0 attribwrangle11
opwire -n clip_end_segment2 -1 attribwrangle11
opwire -n merge5 -0 attribwrangle14
opwire -n merge5 -1 attribwrangle14
opwire -n -i 0 -0 attribwrangle1
opwire -n add8 -0 polyframe1
opcf ..
opwire -n polybevel1 -0 resample1
opwire -n Isle -0 lattice1
opwire -n bound1 -1 lattice1
opwire -n edit1 -2 lattice1
opwire -n Isle -0 bound1
opwire -n bound1 -0 edit1
opwire -n attribwrangle1 -0 polyframe1
opwire -n circle1 -0 attribwrangle1
opwire -n attribwrangle2 -0 sweep1
opwire -n polyframe1 -0 attribwrangle2
opwire -n attribwrangle2 -0 polyexpand2d1
opwire -n attribwrangle4 -0 sweep2
opwire -n polybevel2 -0 resample2
opwire -n add1 -0 polybevel2
opwire -n resample2 -0 attribwrangle3
opwire -n polyframe2 -0 attribwrangle4
opwire -n attribwrangle3 -0 polyframe2
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
