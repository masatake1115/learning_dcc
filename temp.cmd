# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node obj (/obj)
opcf obj

# Node geo1 (Object/geo)
opadd -e -n geo geo1
oplocate -x -1.4902599999999999 -y 0.28425299999999998 geo1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' geo1
opset -S on geo1
opparm -V 20.5.370 geo1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock geo1 -*
chautoscope geo1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off geo1
opexprlanguage -s hscript geo1
opuserdata -n '___Version___' -v '20.5.370' geo1
opcf geo1

# Node solver1 (Sop/solver)
opadd -e -n solver solver1
oplocate -x -2.1957800000000001 -y -2.3727100000000001 solver1
opspareds '    parm {         name    "resimulate"         baseparm         label   "Reset Simulation"         export  none     }     parm {         name    "useinitialsop"         baseparm         label   "Use Initial SOP"         nolabel         joinnext         export  none     }     parm {         name    "initialsop"         baseparm         label   "Initial State"         export  none     }     parm {         name    "startframe"         baseparm         label   "Start Frame"         export  none     }     parm {         name    "substep"         baseparm         label   "Sub Steps"         export  none     }     parm {         name    "cacheenabled"         baseparm         label   "Cache Simulation"         export  none     }     parm {         name    "cachetodisk"         baseparm         label   "Allow Caching To Disk"         export  none     }     parm {         name    "cachemaxsize"         baseparm         label   "Cache Memory (MB)"         export  none     }     parm {         name    "num_chromosomes"         label   "num_chromosomes"         type    integer         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     } ' solver1
opparm solver1 resimulate ( 0 ) useinitialsop ( off ) initialsop ( "" ) startframe ( 1 ) substep ( 1 ) cacheenabled ( on ) cachetodisk ( off ) cachemaxsize ( 5000 ) num_chromosomes ( 25 )
chlock solver1 -*
chautoscope solver1 -*
opcolor -c 0.80000001192092896 0.016000000759959221 0.016000000759959221 solver1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off solver1
opexprlanguage -s hscript solver1
opuserdata -n '___Version___' -v '' solver1

# Editable subnode
opcf solver1/d

# Node s (Dop/sopsolver)
opadd -e -n sopsolver s
oplocate -x 1.88226 -y 0.51761800000000002 s
opspareds "" s
opparm s  numinputs ( 0 ) numoutputs ( 0 ) numstamps ( 0 )
opparm -V 20.5.370 s parmop_usesoppath ( default ) usesoppath ( off ) parmop_soppath ( default ) soppath ( "" ) parmop_datapath ( default ) datapath ( Geometry ) parmop_doinvoke ( default ) doinvoke ( off ) parmop_primaryinputname ( default ) primaryinputname ( data ) parmop_numinputs ( default ) numinputs ( 0 ) parmop_numoutputs ( default ) numoutputs ( 0 ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( on ) parmop_numstamps ( default ) numstamps ( 0 ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock s -*
chautoscope s -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 s
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off s
opexprlanguage -s hscript s
opuserdata -n '___Version___' -v '20.5.370' s
opcf s

# Node pointjitter1 (Sop/pointjitter)
opadd -e -n pointjitter pointjitter1
oplocate -x -0.59764099999999998 -y -4.3180199999999997 pointjitter1
opspareds "" pointjitter1
chblockbegin
chadd -t 0 0 pointjitter1 seed
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Frame pointjitter1/seed
chblockend
opparm pointjitter1 group ( "" ) useidattrib ( on ) idattrib ( id ) scale ( 0.15 ) axisscale ( 1 1 1 ) seed ( seed ) usepscale ( off ) updatenmls ( on )
chlock pointjitter1 -*
chautoscope pointjitter1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off pointjitter1
opexprlanguage -s hscript pointjitter1
opuserdata -n '___Version___' -v '' pointjitter1
opcf ..

# End of editable subnode
opcf ../..

opcf ..
opcf ..

# Node vex (/vex)

# Node mat (/mat)
opcf obj
opcf geo1

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x -2.1957800000000001 -y 1.1746000000000001 box1
opspareds "" box1
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1 1 1 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 8 8 8 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node copy1 (Sop/copyxform)
opadd -e -n copyxform copy1
oplocate -x -2.1957800000000001 -y -0.22278000000000001 copy1
opspareds "" copy1
chblockbegin
chadd -t 0 0 copy1 ncy
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../solver1/num_chromosomes")' copy1/ncy
chblockend
opparm -V 20.5.370 copy1 sourcegroup ( "" ) sourcegrouptype ( guess ) ncy ( ncy ) pack ( off ) pivot ( centroid ) viewportlod ( full ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) newgroups ( on ) newgroupprefix ( box ) docopyattrib ( off ) copyattrib ( copynum )
chlock copy1 -*
chautoscope copy1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copy1
opexprlanguage -s hscript copy1
opuserdata -n '___Version___' -v '20.5.370' copy1

# Node grouppromote1 (Sop/grouppromote)
opadd -e -n grouppromote grouppromote1
oplocate -x -2.1957800000000001 -y -1.2417 grouppromote1
opspareds "" grouppromote1
opparm grouppromote1  promotions ( 1 )
opparm -V 20.5.370 grouppromote1 promotions ( 1 ) enable1 ( on ) fromtype1 ( prims ) totype1 ( points ) group1 ( box* ) newname1 ( "" ) preserve1 ( off ) onlyboundary1 ( off ) includeunshared1 ( on ) includecurveunshared1 ( on ) useconnectivityattrib1 ( off ) connectivityattrib1 ( uv ) primsbyattribbndpts1 ( off ) onlyfull1 ( off ) onlyprimsedge1 ( off ) removedegen1 ( off ) toattrib1 ( off )
chlock grouppromote1 -*
chautoscope grouppromote1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouppromote1
opexprlanguage -s hscript grouppromote1
opuserdata -n '___Version___' -v '20.5.370' grouppromote1

# Editable subnode
opcf solver1/d
opcf s

# Node Input_1 (Sop/object_merge)
opadd -e -n object_merge Input_1
oplocate -x -0.448353 -y -1.6779900000000001 Input_1
opspareds "" Input_1
opparm Input_1  numobj ( 1 )
opparm -V 20.5.370 Input_1 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 0)`' ) group1 ( "" ) expand1 ( off )
chlock Input_1 -*
chautoscope Input_1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_1
opexprlanguage -s hscript Input_1
opuserdata -n '___Version___' -v '20.5.370' Input_1

# Node Input_2 (Sop/object_merge)
opadd -e -n object_merge Input_2
oplocate -x 7.4656000000000002 -y -2.2325200000000001 Input_2
opspareds "" Input_2
opparm Input_2  numobj ( 1 )
opparm -V 20.5.370 Input_2 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 1)`' ) group1 ( "" ) expand1 ( off )
chlock Input_2 -*
chautoscope Input_2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_2
opexprlanguage -s hscript Input_2
opuserdata -n '___Version___' -v '20.5.370' Input_2

# Node Input_3 (Sop/object_merge)
opadd -e -n object_merge Input_3
oplocate -x 8.7743500000000001 -y -2.8480300000000001 Input_3
opspareds "" Input_3
opparm Input_3  numobj ( 1 )
opparm -V 20.5.370 Input_3 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 2)`' ) group1 ( "" ) expand1 ( off )
chlock Input_3 -*
chautoscope Input_3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_3
opexprlanguage -s hscript Input_3
opuserdata -n '___Version___' -v '20.5.370' Input_3

# Node Input_4 (Sop/object_merge)
opadd -e -n object_merge Input_4
oplocate -x 10.2864 -y -3.4025500000000002 Input_4
opspareds "" Input_4
opparm Input_4  numobj ( 1 )
opparm -V 20.5.370 Input_4 numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`opinputpath("../..", 3)`' ) group1 ( "" ) expand1 ( off )
chlock Input_4 -*
chautoscope Input_4 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 Input_4
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Input_4
opexprlanguage -s hscript Input_4
opuserdata -n '___Version___' -v '20.5.370' Input_4

# Node Prev_Frame (Sop/dopimport::2.0)
opadd -e -n dopimport::2.0 Prev_Frame
oplocate -x 2.95383 -y -1.67954 Prev_Frame
opspareds "" Prev_Frame
chblockbegin
chadd -t 0 0 Prev_Frame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' Prev_Frame/integrateovertime
chblockend
opparm -V 20.5.370 Prev_Frame doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) relpattern ( "" ) donotsim ( on ) folder_geometry ( 0 ) importstyle ( fetch ) spacer ( "" ) pointsquicksetup ( menu ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) pack ( off ) pivot ( centroid ) viewportlod ( full ) adddopobjectpath ( off ) adddopobjectname ( off ) dopobjectnameattrib ( dopobjectname ) adddopdatapath ( off ) dopdatapathattrib ( dopdatapath ) transferattributes ( "" ) transfergroups ( "" ) folder_xform ( 0 ) doposxform ( on ) dogeoxform ( on ) keepworldspacepos ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) addtoexistingvel ( on )
chlock Prev_Frame -*
chautoscope Prev_Frame -*
opcolor -c 0.56499999761581421 0.49399998784065247 0.86299997568130493 Prev_Frame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Prev_Frame
opexprlanguage -s hscript Prev_Frame
opuserdata -n '___Version___' -v '20.5.370' Prev_Frame

# Node OUT (Sop/output)
opadd -e -n output OUT
oplocate -x -0.59764099999999998 -y -20.220199999999998 OUT
opspareds "" OUT
opparm -V 20.5.370 OUT outputidx ( 0 )
chlock OUT -*
chautoscope OUT -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '20.5.370' OUT

# Node measure1 (Sop/measure::2.0)
opadd -e -n measure::2.0 measure1
oplocate -x 1.75007 -y -9.3670100000000005 measure1
opspareds "" measure1
opparm measure1  colorramp ( 3 )
opparm -V 20.5.370 measure1 group ( "" ) grouptype ( prims ) measurement ( 0 ) measure ( volume ) curvaturetype ( curvedness ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( throughout ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( on ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( volume ) usetotalattrib ( on ) totalattribname ( totalvolume ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock measure1 -*
chautoscope measure1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off measure1
opexprlanguage -s hscript measure1
opuserdata -n '___Version___' -v '20.5.370' measure1

# Node measure2 (Sop/measure::2.0)
opadd -e -n measure::2.0 measure2
oplocate -x 1.75007 -y -10.525499999999999 measure2
opspareds "" measure2
opparm measure2  colorramp ( 3 )
opparm -V 20.5.370 measure2 group ( "" ) grouptype ( prims ) measurement ( 0 ) measure ( area ) curvaturetype ( curvedness ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( throughout ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( on ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( area ) usetotalattrib ( on ) totalattribname ( totalarea ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock measure2 -*
chautoscope measure2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off measure2
opexprlanguage -s hscript measure2
opuserdata -n '___Version___' -v '20.5.370' measure2

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x 1.75007 -y -5.2151100000000001 switch1
opspareds "" switch1
chblockbegin
chadd -t 0 0 switch1 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F > 1' switch1/input
chblockend
opparm -V 20.5.370 switch1 input ( input )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x 1.7516700000000001 -y -13.5168 foreach_end1
opspareds "" foreach_end1
chblockbegin
chadd -t 0 0 foreach_end1 iterations
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../num_chromosomes")' foreach_end1/iterations
chblockend
opparm -V 20.5.370 foreach_end1 itermethod ( count ) method ( merge ) iterations ( iterations ) startvalue ( 0 ) increment ( 1 ) class ( point ) useattrib ( on ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x 1.7516700000000001 -y -6.97445 foreach_begin1
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
oplocate -x 4.7516699999999998 -y -6.97445 foreach_count1
opspareds "" foreach_count1
opparm -V 20.5.370 foreach_count1 method ( metadata ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_count1 -*
chautoscope foreach_count1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_count1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_count1
opexprlanguage -s hscript foreach_count1
opuserdata -n '___Version___' -v '20.5.370' foreach_count1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 1.75007 -y -8.1907899999999998 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 'box`detail("../foreach_count1/","iteration",0)`' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node compute_score (Sop/attribwrangle)
opadd -e -n attribwrangle compute_score
oplocate -x 1.7470699999999999 -y -11.916700000000001 compute_score
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "iteration"                 label   "Iteration"                 type    integer                 default { "0" }                 range   { 0 10 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' compute_score
opparm compute_score  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 compute_score iteration
chkey -t 0 -v 6 -m 0 -a 0 -A 0 -T a  -F 'detail("../foreach_count1/","iteration",0)' compute_score/iteration
chblockend
opparm compute_score folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float area_score = fit(abs(4.84-f@totalarea), 0, 4, 1, 0);\nfloat volume_score = fit(abs(1.0-f@totalvolume), 0, 2, 1, 0);\n\nfloat score = area_score * volume_score;\n\nint iteration = chi ("iteration");\nstring name = sprintf("score%d", iteration);\n\n//printf("%s, %f\\n", name, area_score);\nsetdetailattrib(0, name, score);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) iteration ( iteration )
chlock compute_score -*
chautoscope compute_score -*
opcolor -c 0 0 0 compute_score
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compute_score
opexprlanguage -s hscript compute_score
opuserdata -n '___Version___' -v '' compute_score

# Node random_id (Sop/attribwrangle)
opadd -e -n attribwrangle random_id
oplocate -x -0.60064099999999998 -y -3.1473800000000001 random_id
opspareds "" random_id
opparm random_id  bindings ( 0 ) groupbindings ( 0 )
opparm random_id folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@id = int(50000 * nrandom());' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock random_id -*
chautoscope random_id -*
opcolor -c 0 0 0 random_id
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off random_id
opexprlanguage -s hscript random_id
opuserdata -n '___Version___' -v '' random_id

# Node compute_next_generation (Sop/attribwrangle)
opadd -e -n attribwrangle compute_next_generation
oplocate -x -0.60064099999999998 -y -15.406000000000001 compute_next_generation
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "group_type" "simple" }             grouptag { "sidefx::look" "blank" }              parm {                 name    "num_chromosomes"                 label   "Num Chromosomes"                 type    integer                 default { "0" }                 range   { 0 10 }             }             parm {                 name    "cross_over"                 label   "Cross Over"                 type    float                 default { "0" }                 range   { 0 1 }             }             parm {                 name    "mutation"                 label   "Mutation"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' compute_next_generation
opparm compute_next_generation  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 compute_next_generation num_chromosomes
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../../num_chromosomes")' compute_next_generation/num_chromosomes
chblockend
opparm compute_next_generation folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int num_chromosomes = chi("num_chromosomes");\nfloat cross_over = chf("cross_over");\nfloat mutation = chf("mutation");\n\nint keep = num_chromosomes / 2;\n\nfloat scores[];\nfor( int i=0; i<num_chromosomes; ++i )\n{\n    scores[i] = detail(1,sprintf("score%d",i));\n}\n//printf("%f\\n", scores);\nint sorted_scores[] = argsort( scores );\nsetdetailattrib(0, "maxscore", scores[sorted_scores[num_chromosomes-1]]);\nsetdetailattrib(0, "maxelement", sorted_scores[num_chromosomes-1]);\n\nfor( int n=0; n<keep; ++n )\n{\n    int i = sorted_scores[num_chromosomes-1-n];\n    int points_one[] = expandpointgroup(1, sprintf("box%d",i));\n    \n    for( int m=1; m<=2; ++m )\n    {\n        int j = sorted_scores[num_chromosomes-1-n-m];\n        int points_two[] = expandpointgroup(1, sprintf("box%d",j));\n        int points_target[] = expandpointgroup(1,sprintf("box%d",n * 2 + m - 1));\n        \n        for( int k=0; k<len(points_target); ++k )\n        {\n            vector P = point(1,"P",points_one[k]);\n            if( nrandom() < cross_over )\n            {\n                P = point(1,"P",points_two[k]);\n            }\n            if( nrandom() < mutation )\n            {\n                P += (nrandom()-{0.5,0.5,0.5})*0.05;\n            }\n            setpointattrib(0,"P",points_target[k],P);\n        }\n    }\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) num_chromosomes ( num_chromosomes ) cross_over ( 0.4 ) mutation ( 0.1 )
chlock compute_next_generation -*
chautoscope compute_next_generation -*
opcolor -c 0 0 0 compute_next_generation
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off compute_next_generation
opexprlanguage -s hscript compute_next_generation
opuserdata -n '___Version___' -v '' compute_next_generation

# Node grouprename1 (Sop/grouprename)
opadd -e -n grouprename grouprename1
oplocate -x 3.1709100000000001 -y -16.327200000000001 grouprename1
opspareds "" grouprename1
opparm grouprename1  renames ( 1 )
opparm -V 20.5.370 grouprename1 renames ( 1 ) enable1 ( on ) grouptype1 ( points ) group1 ( box* ) newname1 ( old* )
chlock grouprename1 -*
chautoscope grouprename1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouprename1
opexprlanguage -s hscript grouprename1
opuserdata -n '___Version___' -v '20.5.370' grouprename1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -0.59879099999999996 -y -17.939399999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x 2.95383 -y -3.04135 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( old* ) grouptype ( guess ) computenorms ( off ) negate ( off ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node groupdelete1 (Sop/groupdelete)
opadd -e -n groupdelete groupdelete1
oplocate -x 2.95383 -y -4.0262700000000002 groupdelete1
opspareds "" groupdelete1
opparm groupdelete1  deletions ( 1 )
opparm -V 20.5.370 groupdelete1 deletions ( 1 ) removegrp ( off ) selection_folder ( 0 ) selectiongroup ( "" ) selectiongrouptype ( guess ) enable1 ( on ) grouptype1 ( any ) group1 ( old* )
chlock groupdelete1 -*
chautoscope groupdelete1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off groupdelete1
opexprlanguage -s hscript groupdelete1
opuserdata -n '___Version___' -v '20.5.370' groupdelete1

# Node smooth1 (Sop/smooth::2.0)
opadd -e -n smooth::2.0 smooth1
oplocate -x -0.59764099999999998 -y -16.475200000000001 smooth1
opspareds "" smooth1
opparm -V 20.5.370 smooth1 group ( "" ) contrainedboundary ( groupboundary ) constrainedpoints ( "" ) attributes ( P ) method ( uniform ) strength ( 1 ) filterquality ( 3 ) updateaffectednmls ( on )
chlock smooth1 -*
chautoscope smooth1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off smooth1
opexprlanguage -s hscript smooth1
opuserdata -n '___Version___' -v '20.5.370' smooth1
oporder -e Input_1 Input_2 Input_3 Input_4 Prev_Frame OUT measure1 measure2 switch1 foreach_end1 foreach_begin1 foreach_count1 blast1 compute_score pointjitter1 random_id compute_next_generation grouprename1 merge1 blast2 groupdelete1 smooth1 
opcf ..

# End of editable subnode
opcf ../..


# Node measure1 (Sop/measure::2.0)
opadd -e -n measure::2.0 measure1
oplocate -x 1.6178999999999999 -y 0.170233 measure1
opspareds "" measure1
opparm measure1  colorramp ( 3 )
opparm -V 20.5.370 measure1 group ( "" ) grouptype ( prims ) measurement ( 0 ) measure ( volume ) curvaturetype ( curvedness ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( throughout ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( on ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( volume ) usetotalattrib ( on ) totalattribname ( totalvolume ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock measure1 -*
chautoscope measure1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off measure1
opexprlanguage -s hscript measure1
opuserdata -n '___Version___' -v '20.5.370' measure1

# Node measure2 (Sop/measure::2.0)
opadd -e -n measure::2.0 measure2
oplocate -x 1.6178999999999999 -y -1.2417 measure2
opspareds "" measure2
opparm measure2  colorramp ( 3 )
opparm -V 20.5.370 measure2 group ( "" ) grouptype ( prims ) measurement ( 0 ) measure ( area ) curvaturetype ( curvedness ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( throughout ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( on ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( area ) usetotalattrib ( on ) totalattribname ( totalarea ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock measure2 -*
chautoscope measure2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off measure2
opexprlanguage -s hscript measure2
opuserdata -n '___Version___' -v '20.5.370' measure2

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x -2.1957800000000001 -y -4.09978 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 'old`detail("../solver1/", "maxelement", 0)`' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -2.19693 -y -5.8247499999999999 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node font1 (Sop/font)
opadd -e -n font font1
oplocate -x 2.1209699999999998 -y -4.09978 font1
opspareds "" font1
opparm -V 20.5.370 font1 type ( poly ) file ( 'Lato Bold' ) text ( '`int(detail("../solver1/", "maxscore", 0)*100)`' ) halign ( center ) valign ( middle ) use_descender ( off ) t ( 3 1.6 0 ) r ( 0 0 0 ) s ( 1 1 ) tracking ( 0 0 ) fontsize ( 1 ) oblique ( 0 ) lod ( 1 ) autokern ( on ) hole ( on ) addattrib ( off )
chlock font1 -*
chautoscope font1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off font1
opexprlanguage -s hscript font1
opuserdata -n '___Version___' -v '20.5.370' font1
oporder -e box1 copy1 grouppromote1 solver1 measure1 measure2 blast1 merge1 font1 
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
opwire -n box1 -0 copy1
opwire -n copy1 -0 grouppromote1
opwire -n grouppromote1 -0 solver1
opwire -n box1 -0 measure1
opwire -n measure1 -0 measure2
opwire -n solver1 -0 blast1
opwire -n blast1 -0 merge1
opwire -n font1 -1 merge1
opcf ..
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
