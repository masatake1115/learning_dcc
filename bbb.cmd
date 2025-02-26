# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)

# Node obj (/obj)
opcf obj

# Node test_stair (Object/geo)
opadd -e -n geo test_stair
oplocate -x -2.8291599999999999 -y 1.0722100000000001 test_stair
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' test_stair
opset -S on test_stair
opparm -V 20.5.370 test_stair stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock test_stair -*
chautoscope test_stair -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off test_stair
opexprlanguage -s hscript test_stair
opuserdata -n '___Version___' -v '20.5.370' test_stair
opcf test_stair

# Network Box __netbox1
nbadd __netbox1
nblocate -x -27.8972 -y -5.16517 __netbox1
nbsize -w 9.95358 -h 10.5815 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Network Box __netbox2
nbadd __netbox2
nblocate -x -10.7708 -y -11.1662 __netbox2
nbsize -w 28.8378 -h 16.3629 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Node extrude_along_normal (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 extrude_along_normal
oplocate -x -24.706800000000001 -y -0.15132100000000001 extrude_along_normal
opspareds "" extrude_along_normal
opparm extrude_along_normal  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 extrude_along_normal group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) ptnormalsrc ( attribute ) ptnormalattrib ( N_ ) dist ( 1 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( global ) rst ( srt ) xyz ( xyz ) translate ( 1 1 1 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock extrude_along_normal -*
chautoscope extrude_along_normal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on extrude_along_normal
nbop __netbox1 add extrude_along_normal
opexprlanguage -s hscript extrude_along_normal
opuserdata -n '___Version___' -v '20.5.370' extrude_along_normal

# Node create_y_up_normal_attribute (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 create_y_up_normal_attribute
oplocate -x -24.7103 -y 1.0654600000000001 create_y_up_normal_attribute
opspareds "" create_y_up_normal_attribute
opparm create_y_up_normal_attribute  numattr ( 1 )
opparm -V 20.5.370 create_y_up_normal_attribute group ( "" ) grouptype ( guess ) encodenames ( off ) numattr ( 1 ) enable1 ( on ) name1 ( N_ ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( vector ) typeinfo1 ( guess ) precision1 ( auto ) size1 ( 1 ) default1v ( 0 1 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 1 0 0 ) string1 ( "" ) numattr_spacerparm1 ( )
chlock create_y_up_normal_attribute -*
chautoscope create_y_up_normal_attribute -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on create_y_up_normal_attribute
nbop __netbox1 add create_y_up_normal_attribute
opexprlanguage -s hscript create_y_up_normal_attribute
opuserdata -n '___Version___' -v '20.5.370' create_y_up_normal_attribute

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x -25.6859 -y -1.2911900000000001 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.673 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyextrude1
nbop __netbox1 add polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node polyextrude2 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude2
oplocate -x -23.154399999999999 -y -1.2911900000000001 polyextrude2
opspareds "" polyextrude2
opparm polyextrude2  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude2 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( -0.108 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude2 -*
chautoscope polyextrude2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyextrude2
nbop __netbox1 add polyextrude2
opexprlanguage -s hscript polyextrude2
opuserdata -n '___Version___' -v '20.5.370' polyextrude2

# Node reverse1 (Sop/reverse)
opadd -e -n reverse reverse1
oplocate -x -23.154399999999999 -y -2.2072699999999998 reverse1
opspareds "" reverse1
opparm -V 20.5.370 reverse1 group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse1 -*
chautoscope reverse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on reverse1
nbop __netbox1 add reverse1
opexprlanguage -s hscript reverse1
opuserdata -n '___Version___' -v '20.5.370' reverse1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -24.485600000000002 -y -3.3764400000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on merge1
nbop __netbox1 add merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node wall (Sop/box)
opadd -e -n box wall
oplocate -x -27.497199999999999 -y -3.3795899999999999 wall
opspareds "" wall
opparm -V 20.5.370 wall type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 2.9962007999420166 6 1.5405474305152893 ) t ( 0.9981003999710083 3 0.7542568147182465 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock wall -*
chautoscope wall -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on wall
nbop __netbox1 add wall
opexprlanguage -s hscript wall
opuserdata -n '___Version___' -v '20.5.370' wall

# Node boolean1 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean1
oplocate -x -25.288699999999999 -y -4.9651699999999996 boolean1
opspareds "" boolean1
opparm -V 20.5.370 boolean1 inputa ( 0 ) agroup ( "" ) asurface ( solid ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( solid ) resolveb ( on ) output ( 0 ) booleanop ( subtract ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean1 -*
chautoscope boolean1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on boolean1
nbop __netbox1 add boolean1
opexprlanguage -s hscript boolean1
opuserdata -n '___Version___' -v '20.5.370' boolean1

# Node slope_outline1 (Sop/add)
opadd -e -n add slope_outline1
oplocate -x -21.201799999999999 -y 4.9162800000000004 slope_outline1
opspareds "" slope_outline1
opparm slope_outline1  points ( 8 ) prims ( 1 )
opparm -V 20.5.370 slope_outline1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 8 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( -1 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 1.5 1.5 0 ) weight2 ( 1 ) usept3 ( on ) pt3 ( 2.5 1.5 0 ) weight3 ( 1 ) usept4 ( on ) pt4 ( 2.5 1.5 1.5 ) weight4 ( 1 ) usept5 ( on ) pt5 ( 1.5 1.5 1.5 ) weight5 ( 1 ) usept6 ( on ) pt6 ( 0 3 1.5 ) weight6 ( 1 ) usept7 ( on ) pt7 ( -1 3 1.5 ) weight7 ( 1 )
chlock slope_outline1 -*
chautoscope slope_outline1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on slope_outline1
nbop __netbox1 add slope_outline1
opexprlanguage -s hscript slope_outline1
opuserdata -n '___Version___' -v '20.5.370' slope_outline1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -20.343599999999999 -y 4.1154000000000002 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 3 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on transform1
nbop __netbox1 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x -21.2029 -y 3.2896200000000002 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on merge2
nbop __netbox1 add merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node join1 (Sop/join)
opadd -e -n join join1
oplocate -x -21.201799999999999 -y 2.2324799999999998 join1
opspareds "" join1
opparm -V 20.5.370 join1 group ( "" ) blend ( off ) tolerance ( 1 ) bias ( 0.5 ) knotmult ( off ) proximity ( on ) dir ( ujoin ) joinop ( all ) inc ( 1 ) loop ( off ) prim ( off ) onlyconnected ( off )
chlock join1 -*
chautoscope join1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on join1
nbop __netbox1 add join1
opexprlanguage -s hscript join1
opuserdata -n '___Version___' -v '20.5.370' join1

# Node extrudevolume2 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume2
oplocate -x -20.566400000000002 -y 0.363508 extrudevolume2
opspareds "" extrudevolume2
opparm extrudevolume2 depth ( 1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( on ) topgrp ( extrudeTop ) outputbasegrp ( on ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( on ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( on ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume2 -*
chautoscope extrudevolume2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on extrudevolume2
nbop __netbox1 add extrudevolume2
opexprlanguage -s hscript extrudevolume2
opuserdata -n '___Version___' -v '' extrudevolume2

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x -20.075800000000001 -y -1.1226499999999999 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( "" ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast1
nbop __netbox1 add blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node Straight1 (Sop/Straight)
opadd -e -n Straight Straight1
oplocate -x -3.0758700000000001 -y 5.2063600000000001 Straight1
opspareds "" Straight1
chblockbegin
chadd -t 0 0 Straight1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/Width")' Straight1/Width
chadd -t 0 0 Straight1 Elevation
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5 * ch("../Params/Elevation")' Straight1/Elevation
chblockend
opparm Straight1 Length ( 2 ) Width ( Width ) Elevation ( Elevation )
chlock Straight1 -*
chautoscope Straight1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Straight1
nbop __netbox2 add Straight1
opexprlanguage -s hscript Straight1
opuserdata -n '___Version___' -v '' Straight1

# Node Elbow1 (Sop/Elbow)
opadd -e -n Elbow Elbow1
oplocate -x -5.7654800000000002 -y 4.8089899999999997 Elbow1
opspareds "" Elbow1
chblockbegin
chadd -t 0 0 Elbow1 Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/Width")' Elbow1/Width
chadd -t 0 0 Elbow1 CornerType
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/CornerType")' Elbow1/CornerType
chblockend
opparm Elbow1 Direction ( "" ) Width ( Width ) CornerType ( CornerType )
chlock Elbow1 -*
chautoscope Elbow1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Elbow1
nbop __netbox2 add Elbow1
opexprlanguage -s hscript Elbow1
opuserdata -n '___Version___' -v '' Elbow1

# Node Params (Sop/null)
opadd -e -n null Params
oplocate -x 0.86543700000000001 -y 4.57613 Params
opspareds '    parm {         name    "copyinput"         baseparm         label   "Copy Input (Note: Input will be still cooked if disabled)"         export  none     }     parm {         name    "cacheinput"         baseparm         label   "Cache Input"         export  none     }     parm {         name    "NumFloors"         label   "NumFloors"         type    integer         default { "1" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "1" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Elevation"         label   "Elevation"         type    float         default { "2.5" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "CornerType"         label   "CornerType"         type    ordinal         default { "0" }         menu {             ""  "Rect"             ""  "Arc"         }         parmtag { "script_callback_language" "python" }     }     parm {         name    "GroundFloor"         label   "GroundFloor"         type    integer         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' Params
opparm -V 20.5.370 Params copyinput ( on ) cacheinput ( off ) NumFloors ( 7 ) Width ( 1.3 ) Elevation ( 3 ) CornerType ( "" ) GroundFloor ( 0 )
chlock Params -*
chautoscope Params -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Params
nbop __netbox2 add Params
opexprlanguage -s hscript Params
opuserdata -n '___Version___' -v '20.5.370' Params

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -8.0291399999999999 -y -7.3048299999999999 add2
opspareds "" add2
opparm add2  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( rightside ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
nbop __netbox2 add add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x -10.2743 -y -7.3048299999999999 add3
opspareds "" add3
opparm add3  points ( 0 ) prims ( 1 )
opparm -V 20.5.370 add3 stdswitcher ( 1 1 1 ) keep ( off ) points ( 0 ) remove ( on ) switcher ( 1 1 ) prims ( 1 ) group ( leftside ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
nbop __netbox2 add add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node extrudevolume1 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume1
oplocate -x -2.3823099999999999 -y -9.3402700000000003 extrudevolume1
opspareds "" extrudevolume1
opparm extrudevolume1 depth ( 1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( on ) topgrp ( extrudeTop ) outputbasegrp ( on ) basegrp ( extrudeBase ) outputsidegrp ( on ) sidegrp ( extrudeSide ) outputtopseamgrp ( on ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( on ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume1 -*
chautoscope extrudevolume1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on extrudevolume1
nbop __netbox2 add extrudevolume1
opexprlanguage -s hscript extrudevolume1
opuserdata -n '___Version___' -v '' extrudevolume1

# Node extrudevolume3 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume3
oplocate -x -8.0291399999999999 -y -9.3048300000000008 extrudevolume3
opspareds "" extrudevolume3
opparm extrudevolume3 depth ( 1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume3 -*
chautoscope extrudevolume3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume3
nbop __netbox2 add extrudevolume3
opexprlanguage -s hscript extrudevolume3
opuserdata -n '___Version___' -v '' extrudevolume3

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x 2.26329 -y -9.1526999999999994 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.805 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyextrude4
nbop __netbox2 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x -0.222216 -y -8.8481199999999998 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( extrudeSide ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast3
nbop __netbox2 add blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -10.2743 -y -8.3048300000000008 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox2 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node Landing (Sop/Straight)
opadd -e -n Straight Landing
oplocate -x -8.4355799999999999 -y 4.5811299999999999 Landing
opspareds "" Landing
chblockbegin
chadd -t 0 0 Landing Length
chkey -t 0 -v 2 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/Width")' Landing/Length
chadd -t 0 0 Landing Width
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/Width")' Landing/Width
chblockend
opparm Landing Length ( Length ) Width ( Width ) Elevation ( 0 )
chlock Landing -*
chautoscope Landing -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off Landing
nbop __netbox2 add Landing
opexprlanguage -s hscript Landing
opuserdata -n '___Version___' -v '' Landing

# Node merge4 (Sop/merge)
opadd -e -n merge merge4
oplocate -x -8.0472300000000008 -y -1.1176600000000001 merge4
opspareds "" merge4
opparm -V 20.5.370 merge4
chlock merge4 -*
chautoscope merge4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge4
nbop __netbox2 add merge4
opexprlanguage -s hscript merge4
opuserdata -n '___Version___' -v '20.5.370' merge4

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x -6.67971 -y 3.08562 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( end ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast4
nbop __netbox2 add blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x -6.6827100000000002 -y 2.0687199999999999 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(1,"P",0);\n@P += pos;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
nbop __netbox2 add attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node blast5 (Sop/blast)
opadd -e -n blast blast5
oplocate -x -4.9484300000000001 -y 1.1729700000000001 blast5
opspareds "" blast5
opparm -V 20.5.370 blast5 group ( end ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast5 -*
chautoscope blast5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast5
nbop __netbox2 add blast5
opexprlanguage -s hscript blast5
opuserdata -n '___Version___' -v '20.5.370' blast5

# Node attribwrangle5 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle5
oplocate -x -5.50291 -y -0.038209699999999999 attribwrangle5
opspareds "" attribwrangle5
opparm attribwrangle5  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle5 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(1,"P",0);\n@P += pos;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle5 -*
chautoscope attribwrangle5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle5
nbop __netbox2 add attribwrangle5
opexprlanguage -s hscript attribwrangle5
opuserdata -n '___Version___' -v '' attribwrangle5

# Node entrance_slope (Sop/null)
opadd -e -n null entrance_slope
oplocate -x -8.0291399999999999 -y -2.24796 entrance_slope
opspareds "" entrance_slope
opparm -V 20.5.370 entrance_slope copyinput ( on ) cacheinput ( off )
chlock entrance_slope -*
chautoscope entrance_slope -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off entrance_slope
nbop __netbox2 add entrance_slope
opexprlanguage -s hscript entrance_slope
opuserdata -n '___Version___' -v '20.5.370' entrance_slope

# Node slope (Sop/null)
opadd -e -n null slope
oplocate -x -1.73116 -y -5.18567 slope
opspareds "" slope
opparm -V 20.5.370 slope copyinput ( on ) cacheinput ( off )
chlock slope -*
chautoscope slope -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off slope
nbop __netbox2 add slope
opexprlanguage -s hscript slope
opuserdata -n '___Version___' -v '20.5.370' slope

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x -2.1716000000000002 -y 2.30864 transform3
opspareds "" transform3
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 270 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
nbop __netbox2 add transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x -2.1716000000000002 -y 1.30864 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( max ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
nbop __netbox2 add matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node blast6 (Sop/blast)
opadd -e -n blast blast6
oplocate -x -0.94882100000000003 -y 0.131857 blast6
opspareds "" blast6
opparm -V 20.5.370 blast6 group ( end ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast6 -*
chautoscope blast6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast6
nbop __netbox2 add blast6
opexprlanguage -s hscript blast6
opuserdata -n '___Version___' -v '20.5.370' blast6

# Node attribwrangle6 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle6
oplocate -x -0.14677899999999999 -y -1.00634 attribwrangle6
opspareds "" attribwrangle6
opparm attribwrangle6  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle6 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(1,"P",0);\n@P += pos;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle6 -*
chautoscope attribwrangle6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle6
nbop __netbox2 add attribwrangle6
opexprlanguage -s hscript attribwrangle6
opuserdata -n '___Version___' -v '' attribwrangle6

# Node merge5 (Sop/merge)
opadd -e -n merge merge5
oplocate -x -1.73231 -y -4.0273899999999996 merge5
opspareds "" merge5
opparm -V 20.5.370 merge5
chlock merge5 -*
chautoscope merge5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge5
nbop __netbox2 add merge5
opexprlanguage -s hscript merge5
opuserdata -n '___Version___' -v '20.5.370' merge5

# Node blast7 (Sop/blast)
opadd -e -n blast blast7
oplocate -x 0.66392499999999999 -y -1.9012 blast7
opspareds "" blast7
opparm -V 20.5.370 blast7 group ( end ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast7 -*
chautoscope blast7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast7
nbop __netbox2 add blast7
opexprlanguage -s hscript blast7
opuserdata -n '___Version___' -v '20.5.370' blast7

# Node attribwrangle7 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle7
oplocate -x 0.22353999999999999 -y -2.9261499999999998 attribwrangle7
opspareds "" attribwrangle7
opparm attribwrangle7  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle7 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'vector pos = point(1,"P",0);\n@P += pos;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle7 -*
chautoscope attribwrangle7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle7
nbop __netbox2 add attribwrangle7
opexprlanguage -s hscript attribwrangle7
opuserdata -n '___Version___' -v '' attribwrangle7

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 6.9033800000000003 -y -3.9514900000000002 foreach_end1
opspareds "" foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 iterations
chkey -t 0 -v 3 -m 0 -a 0 -A 0 -T a  -F 'ch("../Params/NumFloors")-1' foreach_end1/iterations
chadd -t 0 0 foreach_end1 startvalue
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-ch("../Params/GroundFloor")' foreach_end1/startvalue
chblockend
opparm -V 20.5.370 foreach_end1 itermethod ( count ) method ( merge ) iterations ( iterations ) startvalue ( startvalue ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
nbop __netbox2 add foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 6.9033800000000003 -y 1.58185 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( input ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node foreach_count1 (Sop/block_begin)
opadd -e -n block_begin foreach_count1
oplocate -x 9.9033800000000003 -y 1.58185 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.370 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '20.5.370' foreach_count1

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x 6.7480200000000004 -y -5.0613099999999998 null1
opspareds "" null1
opparm -V 20.5.370 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null1
nbop __netbox2 add null1
opexprlanguage -s hscript null1
opuserdata -n '___Version___' -v '20.5.370' null1

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x 6.9017799999999996 -y -2.3781599999999998 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( "" ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
nbop __netbox2 add copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '20.5.370' copytopoints1

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 6.9017799999999996 -y 2.8339500000000002 add1
opspareds "" add1
opparm add1  points ( 1 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
nbop __netbox2 add add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 8.1594999999999995 -y -0.82189999999999996 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'detail("../foreach_count1/", "value", 0) * ch("../Params/Elevation")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -*
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
nbop __netbox2 add transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x 8.1594999999999995 -y 0.36367500000000003 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( none ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( max ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
nbop __netbox2 add matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node transform5 (Sop/xform)
opadd -e -n xform transform5
oplocate -x 10.4877 -y -0.82189999999999996 transform5
opspareds "" transform5
chblockbegin
chadd -t 0 0 transform5 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '(detail("../foreach_count1/", "value", 0)+0.5) * ch("../Params/Elevation")' transform5/ty
chblockend
opparm -V 20.5.370 transform5 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 180 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform5 -*
chautoscope transform5 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform5
nbop __netbox2 add transform5
opexprlanguage -s hscript transform5
opuserdata -n '___Version___' -v '20.5.370' transform5

# Node matchsize3 (Sop/matchsize)
opadd -e -n matchsize matchsize3
oplocate -x 10.4877 -y 0.36367500000000003 matchsize3
opspareds "" matchsize3
opparm matchsize3 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( min ) goal_x ( same ) offset_x ( 0 ) justify_y ( none ) goal_y ( same ) offset_y ( 0 ) justify_z ( max ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize3 -*
chautoscope matchsize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize3
nbop __netbox2 add matchsize3
opexprlanguage -s hscript matchsize3
opuserdata -n '___Version___' -v '' matchsize3

# Node transform6 (Sop/xform)
opadd -e -n xform transform6
oplocate -x -8.4355799999999999 -y 3.7631199999999998 transform6
opspareds "" transform6
opparm -V 20.5.370 transform6 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 180 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform6 -*
chautoscope transform6 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform6
nbop __netbox2 add transform6
opexprlanguage -s hscript transform6
opuserdata -n '___Version___' -v '20.5.370' transform6

# Node transform7 (Sop/xform)
opadd -e -n xform transform7
oplocate -x -3.0758700000000001 -y 4.2574800000000002 transform7
opspareds "" transform7
opparm -V 20.5.370 transform7 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 180 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform7 -*
chautoscope transform7 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform7
nbop __netbox2 add transform7
opexprlanguage -s hscript transform7
opuserdata -n '___Version___' -v '20.5.370' transform7

# Node transform8 (Sop/xform)
opadd -e -n xform transform8
oplocate -x -5.7654800000000002 -y 4.0702100000000003 transform8
opspareds "" transform8
opparm -V 20.5.370 transform8 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 180 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform8 -*
chautoscope transform8 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform8
nbop __netbox2 add transform8
opexprlanguage -s hscript transform8
opuserdata -n '___Version___' -v '20.5.370' transform8

# Node merge6 (Sop/merge)
opadd -e -n merge merge6
oplocate -x 9.0883299999999991 -y -1.63168 merge6
opspareds "" merge6
opparm -V 20.5.370 merge6
chlock merge6 -*
chautoscope merge6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge6
nbop __netbox2 add merge6
opexprlanguage -s hscript merge6
opuserdata -n '___Version___' -v '20.5.370' merge6

# Node extrudevolume4 (Sop/extrudevolume)
opadd -e -n extrudevolume extrudevolume4
oplocate -x -10.2743 -y -9.4910399999999999 extrudevolume4
opspareds "" extrudevolume4
opparm extrudevolume4 depth ( 1 ) basenormal ( 0 1 0 ) flat ( on ) labelparm ( 'Base Extension (Second Output)' ) basepadding ( 0.1 ) baselift ( 1 ) folder0 ( 0 ) outputtopgrp ( off ) topgrp ( extrudeTop ) outputbasegrp ( off ) basegrp ( extrudeBase ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputtopseamgrp ( off ) topseamgrp ( extrudeTopSeam ) outputbaseseamgrp ( off ) baseseamgrp ( extrudeBaseSeam )
chlock extrudevolume4 -*
chautoscope extrudevolume4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off extrudevolume4
nbop __netbox2 add extrudevolume4
opexprlanguage -s hscript extrudevolume4
opuserdata -n '___Version___' -v '' extrudevolume4

# Node merge7 (Sop/merge)
opadd -e -n merge merge7
oplocate -x -6.6891100000000003 -y -10.6652 merge7
opspareds "" merge7
opparm -V 20.5.370 merge7
chlock merge7 -*
chautoscope merge7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge7
nbop __netbox2 add merge7
opexprlanguage -s hscript merge7
opuserdata -n '___Version___' -v '20.5.370' merge7

# Node fuse2 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse2
oplocate -x -8.0237300000000005 -y -8.3048300000000008 fuse2
opspareds "" fuse2
opparm fuse2  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse2 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse2 -*
chautoscope fuse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse2
nbop __netbox2 add fuse2
opexprlanguage -s hscript fuse2
opuserdata -n '___Version___' -v '20.5.370' fuse2

# Node boolean2 (Sop/boolean::2.0)
opadd -e -n boolean::2.0 boolean2
oplocate -x -6.6867900000000002 -y -11.6928 boolean2
opspareds "" boolean2
opparm -V 20.5.370 boolean2 inputa ( 0 ) agroup ( "" ) asurface ( surface ) resolvea ( on ) inputb ( 0 ) bgroup ( "" ) bsurface ( surface ) resolveb ( on ) output ( 0 ) booleanop ( union ) subtractchoices ( aminusb ) shatterchoices ( apieces ) opencurvesonly ( on ) generateaaseams ( on ) generatebbseams ( on ) generateabseams ( on ) adepth ( 1 1000 ) bdepth ( 1 1000 ) windingop ( arange ) mergenbrs ( off ) detriangulate ( all ) removeinlinepoints ( on ) uniqueseams ( off ) correctnormals ( on ) useaxapolys ( off ) axapolys ( axapolys ) useaxbpolys ( off ) axbpolys ( axbpolys ) useaxalist ( off ) axalist ( axalist ) useaxblist ( off ) axblist ( axblist ) collapsetinyedges ( on ) lengththreshold ( 1e-5 ) outputprimgroups ( 0 ) useapolys ( off ) apolys ( apolys ) useainsideb ( off ) ainsideb ( ainsideb ) useaoutsideb ( off ) aoutsideb ( aoutsideb ) usebpolys ( off ) bpolys ( bpolys ) usebinsidea ( off ) binsidea ( binsidea ) useboutsidea ( off ) boutsidea ( boutsidea ) useaboverlap ( off ) aboverlap ( aboverlap ) useaonlypieces ( off ) aonlypieces ( apieces ) usebonlypieces ( off ) bonlypieces ( bpieces ) useabpieces ( off ) abpieces ( abpieces ) usereversedpolys ( off ) reversedpolys ( reversed ) outputedgegroups ( 0 ) useaaseamedges ( off ) aaseamedges ( aseams ) usebbseamedges ( off ) bbseamedges ( bseams ) useabseamedges ( off ) abseamedges ( abseams )
chlock boolean2 -*
chautoscope boolean2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off boolean2
opexprlanguage -s hscript boolean2
opuserdata -n '___Version___' -v '20.5.370' boolean2

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x -6.4549500000000002 -y -12.6928 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.172 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5
oporder -e extrude_along_normal create_y_up_normal_attribute polyextrude1 polyextrude2 reverse1 merge1 wall boolean1 slope_outline1 transform1 merge2 join1 extrudevolume2 blast1 Straight1 Elbow1 Params add2 add3 extrudevolume1 extrudevolume3 polyextrude4 blast3 fuse1 Landing merge4 blast4 attribwrangle4 blast5 attribwrangle5 entrance_slope slope transform3 matchsize2 blast6 attribwrangle6 merge5 blast7 attribwrangle7 foreach_end1 foreach_begin1 foreach_count1 null1 copytopoints1 add1 transform4 matchsize1 transform5 matchsize3 transform6 transform7 transform8 merge6 extrudevolume4 merge7 fuse2 boolean2 polyextrude5 
opcf ..
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
opcf test_stair
opwire -n create_y_up_normal_attribute -0 extrude_along_normal
opwire -n join1 -0 create_y_up_normal_attribute
opwire -n extrude_along_normal -0 polyextrude1
opwire -n extrude_along_normal -0 polyextrude2
opwire -n polyextrude2 -0 reverse1
opwire -n polyextrude1 -0 merge1
opwire -n reverse1 -1 merge1
opwire -n wall -0 boolean1
opwire -n merge1 -1 boolean1
opwire -n slope_outline1 -0 transform1
opwire -n slope_outline1 -0 merge2
opwire -n transform1 -1 merge2
opwire -n merge2 -0 join1
opwire -n join1 -0 extrudevolume2
opwire -n extrudevolume2 -0 blast1
opwire -n null1 -0 add2
opwire -n fuse2 -0 extrudevolume3
opwire -n blast3 -0 polyextrude4
opwire -n extrudevolume1 -0 blast3
opwire -n add3 -0 fuse1
opwire -n transform6 -0 merge4
opwire -n attribwrangle4 -1 merge4
opwire -n attribwrangle5 -2 merge4
opwire -n transform6 -0 blast4
opwire -n transform7 -0 attribwrangle4
opwire -n blast4 -1 attribwrangle4
opwire -n attribwrangle4 -0 blast5
opwire -n transform8 -0 attribwrangle5
opwire -n blast5 -1 attribwrangle5
opwire -n merge4 -0 entrance_slope
opwire -n merge5 -0 slope
opwire -n transform8 -0 transform3
opwire -n transform3 -0 matchsize2
opwire -n matchsize2 -0 blast6
opwire -n transform7 -0 attribwrangle6
opwire -n blast6 -1 attribwrangle6
opwire -n matchsize2 -0 merge5
opwire -n attribwrangle6 -1 merge5
opwire -n attribwrangle7 -2 merge5
opwire -n attribwrangle6 -0 blast7
opwire -n transform8 -0 attribwrangle7
opwire -n blast7 -1 attribwrangle7
opwire -n copytopoints1 -0 foreach_end1
opwire -n add1 -0 foreach_begin1
opwire -n foreach_end1 -0 null1
opwire -n merge6 -0 copytopoints1
opwire -n foreach_begin1 -1 copytopoints1
opwire -n matchsize1 -0 transform4
opwire -n slope -0 matchsize1
opwire -n foreach_count1 -1 matchsize1
opwire -n matchsize3 -0 transform5
opwire -n slope -0 matchsize3
opwire -n foreach_count1 -1 matchsize3
opwire -n Landing -0 transform6
opwire -n Straight1 -0 transform7
opwire -n Elbow1 -0 transform8
opwire -n transform4 -0 merge6
opwire -n transform5 -1 merge6
opwire -n fuse1 -0 extrudevolume4
opwire -n extrudevolume4 -0 merge7
opwire -n extrudevolume3 -1 merge7
opwire -n add2 -0 fuse2
opwire -n merge7 -0 boolean2
opwire -n boolean2 -0 polyextrude5
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
