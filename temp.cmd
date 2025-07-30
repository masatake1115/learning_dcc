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
oplocate -x -1.38571 -y 0.121429 geo1
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' geo1
opset -S on geo1
opparm -V 20.5.370 geo1 stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock geo1 -*
chautoscope geo1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off geo1
opexprlanguage -s hscript geo1
opuserdata -n '___Version___' -v '20.5.370' geo1
opcf geo1

# Node BankingCurve1 (Sop/subnet)
opadd -e -n subnet BankingCurve1
oplocate -x -1.56948 -y 7.53409 BankingCurve1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Banking"         label   "Banking"         type    float         default { "0.2" }         range   { -1 1 }         parmtag { "script_callback_language" "python" }     } ' BankingCurve1
opparm -V 20.5.370 BankingCurve1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Banking ( 0 )
chlock BankingCurve1 -*
chautoscope BankingCurve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off BankingCurve1
opexprlanguage -s hscript BankingCurve1
opuserdata -n '___Version___' -v '20.5.370' BankingCurve1
opcf BankingCurve1

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x -1.11759e-08 -y 5.3982900000000003 resample1
opspareds "" resample1
opparm -V 20.5.370 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 0.5 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( subd ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( on ) tangentattr ( N ) docurveuattr ( on ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.370' resample1

# Node curve_dirs (Sop/attribwrangle)
opadd -e -n attribwrangle curve_dirs
oplocate -x -0.00300001 -y 4.0588499999999996 curve_dirs
opspareds "" curve_dirs
opparm curve_dirs  bindings ( 0 ) groupbindings ( 0 )
opparm curve_dirs folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@flatnrm = @N;\n@flatnrm.y = 0;\n@flatnrm = normalize(@flatnrm);\n\nv@right = cross({0,1,0}, @flatnrm);\nv@up = cross(@N, @right);\n\nv@oldnrm = @N;\nv@N = v@right;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock curve_dirs -*
chautoscope curve_dirs -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curve_dirs
opexprlanguage -s hscript curve_dirs
opuserdata -n '___Version___' -v '' curve_dirs

# Node banking (Sop/attribwrangle)
opadd -e -n attribwrangle banking
oplocate -x -0.00300001 -y -0.51497300000000001 banking
opspareds '    group {         name    "folder1"         label   "Code"          parm {             name    "group"             baseparm             label   "Group"             export  none             bindselector uvselect "Modify Attribs"                 "Select the geometry to affect and press Enter to complete."                 0 1 0xffffffff 0 grouptype 0         }         parm {             name    "grouptype"             baseparm             label   "Group Type"             export  none         }         parm {             name    "class"             baseparm             label   "Run Over"             export  none         }         parm {             name    "vex_numcount"             baseparm             label   "Number Count"             export  none         }         parm {             name    "vex_threadjobsize"             baseparm             label   "Thread Job Size"             export  none         }         groupsimple {             name    "folder_generatedparms_snippet"             label   "Generated Channel Parameters"             grouptag { "sidefx::look" "blank" }              parm {                 name    "magnitude"                 label   "Magnitude"                 type    float                 default { "0" }                 range   { 0 1 }             }         }          parm {             name    "snippet"             baseparm             label   "VEXpression"             export  all         }         parm {             name    "exportlist"             baseparm             label   "Attributes to Create"             export  none         }         parm {             name    "vex_strict"             baseparm             label   "Enforce Prototypes"             export  none         }     }      group {         name    "folder1_1"         label   "Bindings"          parm {             name    "autobind"             baseparm             label   "Autobind by Name"             export  none         }         multiparm {             name    "bindings"             label    "Number of Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindname#"                 baseparm                 label   "Attribute Name"                 export  none             }             parm {                 name    "bindparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "groupautobind"             baseparm             label   "Autobind Groups by Name"             export  none         }         multiparm {             name    "groupbindings"             label    "Group Bindings"             baseparm             default 0             parmtag { "autoscope" "0000000000000000" }             parmtag { "multistartoffset" "1" }              parm {                 name    "bindgroupname#"                 baseparm                 label   "Group Name"                 export  none             }             parm {                 name    "bindgroupparm#"                 baseparm                 label   "VEX Parameter"                 export  none             }         }          parm {             name    "vex_cwdpath"             baseparm             label   "Evaluation Node Path"             export  none         }         parm {             name    "vex_outputmask"             baseparm             label   "Export Parameters"             export  none         }         parm {             name    "vex_updatenmls"             baseparm             label   "Update Normals If Displaced"             export  none         }         parm {             name    "vex_matchattrib"             baseparm             label   "Attribute to Match"             export  none         }         parm {             name    "vex_inplace"             baseparm             label   "Compute Results In Place"             export  none         }         parm {             name    "vex_selectiongroup"             baseparm             label   "Output Selection Group"             export  none         }         parm {             name    "vex_precision"             baseparm             label   "VEX Precision"             export  none         }     }  ' banking
opparm banking  bindings ( 0 ) groupbindings ( 0 )
chblockbegin
chadd -t 0 0 banking magnitude
chkey -t 0 -v 0.41899999999999998 -m 0 -a 0 -A 0 -T a  -F 'ch("../Banking")' banking/magnitude
chblockend
opparm banking folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@N = v@oldnrm;\nmatrix3 rot = ident();\nrotate(rot, -f@bank_ratio*chf("magnitude")*1.5*$PI, v@N);\n\nv@right *= rot;\nv@up *= rot;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto ) folder1 ( 0 0 ) folder_generatedparms_snippet ( 0 ) magnitude ( magnitude )
chlock banking -*
chautoscope banking -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off banking
opexprlanguage -s hscript banking
opuserdata -n '___Version___' -v '' banking

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x -1.11759e-08 -y -2.7903699999999998 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node visualize1 (Sop/visualize)
opadd -e -n visualize visualize1
oplocate -x -3.0916100000000002 -y 2.8538199999999998 visualize1
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }  ' visualize1
opparm visualize1  num_visualizers ( 1 )
opparm visualize1 setvisualizers ( off ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 1 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"Color 1"\n	},\n	"name":{\n		"type":"string",\n		"value":"vis_color_1"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"text\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tbank_ratio\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize1 -*
chautoscope visualize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on visualize1
opexprlanguage -s hscript visualize1
opuserdata -n '___Version___' -v '' visualize1

# Node visualize2 (Sop/visualize)
opadd -e -n visualize visualize2
oplocate -x -4.41988 -y -1.9487000000000001 visualize2
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }  ' visualize2
opparm visualize2  num_visualizers ( 3 )
opparm visualize2 setvisualizers ( on ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 3 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"right"\n	},\n	"name":{\n		"type":"string",\n		"value":"right"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tright\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' ) vis_active1 ( on ) vis_data1 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"up"\n	},\n	"name":{\n		"type":"string",\n		"value":"up"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tup\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' ) vis_active2 ( on ) vis_data2 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"normal"\n	},\n	"name":{\n		"type":"string",\n		"value":"normal"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tN\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize2 -*
chautoscope visualize2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off visualize2
opexprlanguage -s hscript visualize2
opuserdata -n '___Version___' -v '' visualize2

# Node bank_ratio (Sop/attribwrangle)
opadd -e -n attribwrangle bank_ratio
oplocate -x -0.00300001 -y 1.3524799999999999 bank_ratio
opspareds "" bank_ratio
opparm bank_ratio  bindings ( 0 ) groupbindings ( 0 )
opparm bank_ratio folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float   cr = point(1, "curvature", @ptnum*2),\n        cl = point(1, "curvature", @ptnum*2+1);\n\nfloat other_length = prim(1, "curvature", @ptnum);\nf@bank_ratio = cr-cl;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock bank_ratio -*
chautoscope bank_ratio -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off bank_ratio
opexprlanguage -s hscript bank_ratio
opuserdata -n '___Version___' -v '' bank_ratio

# Node visualize3 (Sop/visualize)
opadd -e -n visualize visualize3
oplocate -x -3.0916100000000002 -y 0.47548000000000001 visualize3
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }  ' visualize3
opparm visualize3  num_visualizers ( 1 )
opparm visualize3 setvisualizers ( off ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 1 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"Color 1"\n	},\n	"name":{\n		"type":"string",\n		"value":"vis_color_1"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"text\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tbank_ratio\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize3 -*
chautoscope visualize3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on visualize3
opexprlanguage -s hscript visualize3
opuserdata -n '___Version___' -v '' visualize3

# Node calc_curvature (Sop/subnet)
opadd -e -n subnet calc_curvature
oplocate -x 3.00305 -y 3.52122 calc_curvature
opspareds "" calc_curvature
opparm -V 20.5.370 calc_curvature label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' )
chlock calc_curvature -*
chautoscope calc_curvature -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off calc_curvature
opexprlanguage -s hscript calc_curvature
opuserdata -n '___Version___' -v '20.5.370' calc_curvature
opcf calc_curvature

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 0 -y 3.1378300000000001 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( '//if( 2*f@curvature >= $PI-1.0e-3 )\n//    f@curvature=0;\n\n//@P.y += f@curvature*2;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x 0.0030000000000000001 -y 5.0900600000000003 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 2 2 2 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 1 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( on ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 1 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( on ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node measure1 (Sop/measure::2.0)
opadd -e -n measure::2.0 measure1
oplocate -x 0.0030000000000000001 -y 4.16275 measure1
opspareds "" measure1
opparm measure1  colorramp ( 3 )
opparm -V 20.5.370 measure1 group ( "" ) grouptype ( points ) measurement ( 0 ) measure ( curvature ) curvaturetype ( gaussian ) principaltype ( min ) principalsign ( signed ) principalreportas ( scalar ) umbiliccutoff ( 0 ) integrationmode ( componentwise ) srcattrib ( P ) srccomp ( x ) scalenormalize ( on ) sepparm ( ) integrationdomain ( element ) refinetomanifold ( on ) pieceattrib ( class ) usecustompos ( off ) posattrib ( P ) visrange ( 0 ) userangemin ( off ) rangemin ( -1 ) userangemax ( off ) rangemax ( 1 ) usecenterwidth ( on ) width ( 6 ) widthscale ( mad ) centertype ( median ) fixedcenter ( 0 ) colorramp ( 3 ) vectorscale ( 1 ) output ( 0 ) attribname ( curvature ) usetotalattrib ( off ) totalattribname ( totalcurvature ) userangegroup ( off ) rangegroup ( inrange ) bakeintooutput ( off ) useremaprange ( off ) remaprange ( 0 1 ) colorramp1pos ( 0 ) colorramp1c ( 0 0 1 ) colorramp1interp ( linear ) colorramp2pos ( 0.5 ) colorramp2c ( 1 1 1 ) colorramp2interp ( linear ) colorramp3pos ( 1 ) colorramp3c ( 1 0 0 ) colorramp3interp ( linear )
chlock measure1 -*
chautoscope measure1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off measure1
opexprlanguage -s hscript measure1
opuserdata -n '___Version___' -v '20.5.370' measure1

# Node curve_dirs1 (Sop/attribwrangle)
opadd -e -n attribwrangle curve_dirs1
oplocate -x 0 -y 6.1117999999999997 curve_dirs1
opspareds "" curve_dirs1
opparm curve_dirs1  bindings ( 0 ) groupbindings ( 0 )
opparm curve_dirs1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@flatnrm = @N;\n@flatnrm.y = 0;\n@flatnrm = normalize(@flatnrm);\n\nv@right = cross({0,1,0}, @flatnrm);\nv@up = cross(@N, @right);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock curve_dirs1 -*
chautoscope curve_dirs1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off curve_dirs1
opexprlanguage -s hscript curve_dirs1
opuserdata -n '___Version___' -v '' curve_dirs1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0 -y 2.24363 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
oporder -e attribwrangle1 sweep1 measure1 curve_dirs1 output0 
opcf ..

# Node polyframe1 (Sop/polyframe)
opadd -e -n polyframe polyframe1
oplocate -x 2.55179 -y 5.8279500000000004 polyframe1
opspareds "" polyframe1
opparm -V 20.5.370 polyframe1 group ( "" ) entity ( primitive ) style ( edge2 ) attribname ( "" ) Non ( off ) N ( N ) tangentuon ( on ) tangentu ( N ) tangentvon ( off ) tangentv ( tangentv ) signson ( off ) signs ( signs ) ortho ( off ) lefthanded ( off )
chlock polyframe1 -*
chautoscope polyframe1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyframe1
opexprlanguage -s hscript polyframe1
opuserdata -n '___Version___' -v '20.5.370' polyframe1
oporder -e resample1 curve_dirs banking output0 visualize1 visualize2 bank_ratio visualize3 calc_curvature polyframe1 
opcf ..

# Node resample1 (Sop/resample)
opadd -e -n resample resample1
oplocate -x -1.56948 -y 8.7361199999999997 resample1
opspareds "" resample1
opparm -V 20.5.370 resample1 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( 2.5 ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( subd ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( on ) tangentattr ( N ) docurveuattr ( on ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample1 -*
chautoscope resample1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample1
opexprlanguage -s hscript resample1
opuserdata -n '___Version___' -v '20.5.370' resample1

# Node resample2 (Sop/resample)
opadd -e -n resample resample2
oplocate -x -1.56948 -y 6.3418900000000002 resample2
opspareds "" resample2
chblockbegin
chadd -t 0 0 resample2 length
chkey -t 0 -v 15 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Interval")' resample2/length
chblockend
opparm -V 20.5.370 resample2 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( off ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 10 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample2 -*
chautoscope resample2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample2
opexprlanguage -s hscript resample2
opuserdata -n '___Version___' -v '20.5.370' resample2

# Node sweep1 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep1
oplocate -x -1.6908799999999999 -y 4.9040699999999999 sweep1
opspareds "" sweep1
opparm sweep1  scaleramp ( 2 )
chblockbegin
chadd -t 0 0 sweep1 width
chkey -t 0 -v 15 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Width")' sweep1/width
chblockend
opparm -V 20.5.370 sweep1 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( ribbon ) surfacetype ( cols ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( width ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep1 -*
chautoscope sweep1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep1
opexprlanguage -s hscript sweep1
opuserdata -n '___Version___' -v '20.5.370' sweep1

# Node tube1 (Sop/tube)
opadd -e -n tube tube1
oplocate -x -5.5305600000000004 -y 6.6428700000000003 tube1
opspareds "" tube1
opparm -V 20.5.370 tube1 type ( poly ) surftype ( quads ) orient ( y ) cap ( on ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) r ( 0 -90 0 ) rad ( 0.75 0.75 ) radscale ( 1 ) height ( 25 ) rows ( 2 ) cols ( 3 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube1 -*
chautoscope tube1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off tube1
opexprlanguage -s hscript tube1
opuserdata -n '___Version___' -v '20.5.370' tube1

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -11.9123 -y 3.76912 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( min ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node copytopoints1 (Sop/copytopoints::2.0)
opadd -e -n copytopoints::2.0 copytopoints1
oplocate -x -7.0261399999999998 -y -0.71844399999999997 copytopoints1
opspareds "" copytopoints1
opparm copytopoints1  targetattribs ( 3 )
opparm -V 20.5.370 copytopoints1 sourcegroup ( "" ) sourcegrouptype ( guess ) targetgroup ( border ) useidattrib ( off ) idattrib ( name ) pack ( off ) pivot ( centroid ) viewportlod ( full ) transform ( on ) useimplicitn ( on ) resettargetattribs ( 0 ) targetattribs ( 3 ) useapply1 ( on ) applyto1 ( points ) applymethod1 ( copy ) applyattribs1 ( *,^v,^Alpha,^N,^up,^pscale,^scale,^orient,^rot,^pivot,^trans,^transform ) useapply2 ( on ) applyto2 ( points ) applymethod2 ( mult ) applyattribs2 ( Alpha ) useapply3 ( on ) applyto3 ( points ) applymethod3 ( add ) applyattribs3 ( v )
chlock copytopoints1 -*
chautoscope copytopoints1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off copytopoints1
opexprlanguage -s hscript copytopoints1
opuserdata -n '___Version___' -v '20.5.370' copytopoints1

# Node subnet1 (Sop/subnet)
opadd -e -n subnet subnet1
oplocate -x -6.2652599999999996 -y 8.7361199999999997 subnet1
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "Height"         label   "Height"         type    float         default { "0" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Interval"         label   "Interval"         type    float         default { "5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "PillawWidth"         label   "PillawWidth"         type    float         default { "1.5" }         range   { 0 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "Width"         label   "Width"         type    float         default { "15" }         range   { 0! 50 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BeamWidth"         label   "BeamWidth"         type    float         default { "1" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     } ' subnet1
opparm -V 20.5.370 subnet1 label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) Height ( 25 ) Interval ( 10 ) PillawWidth ( 2.51 ) Width ( 15 ) BeamWidth ( 1.28 )
chlock subnet1 -*
chautoscope subnet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off subnet1
opexprlanguage -s hscript subnet1
opuserdata -n '___Version___' -v '20.5.370' subnet1
opcf subnet1

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 0 -y 3.8999999999999999 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0
opcf ..

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x 10.6517 -y 7.0307899999999997 add1
opspareds "" add1
opparm add1  points ( 6 ) prims ( 1 )
chblockbegin
chadd -t 0 0 add1 pt0z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../subnet1/Interval")' add1/pt0z
chadd -t 0 0 add1 pt1z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../subnet1/Interval")+0.5' add1/pt1z
chadd -t 0 0 add1 pt2z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../subnet1/Interval")-0.5' add1/pt2z
chadd -t 0 0 add1 pt3z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../subnet1/Interval")' add1/pt3z
chadd -t 0 0 add1 pt4z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*ch("../subnet1/Interval")' add1/pt4z
chadd -t 0 0 add1 pt5z
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-0.5*ch("../subnet1/Interval")' add1/pt5z
chblockend
opparm -V 20.5.370 add1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 6 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 pt0z ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0.1 pt1z ) weight1 ( 1 ) usept2 ( on ) pt2 ( 0 0.1 pt2z ) weight2 ( 1 ) usept3 ( on ) pt3 ( 0 0 pt3z ) weight3 ( 1 ) usept4 ( on ) pt4 ( 0 0.5 pt4z ) weight4 ( 1 ) usept5 ( on ) pt5 ( 0 0.5 pt5z ) weight5 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node polyextrude1 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude1
oplocate -x 10.6517 -y 5.7814300000000003 polyextrude1
opspareds "" polyextrude1
opparm polyextrude1  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude1 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0.5 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude1 -*
chautoscope polyextrude1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude1
opexprlanguage -s hscript polyextrude1
opuserdata -n '___Version___' -v '20.5.370' polyextrude1

# Node Beam (Sop/null)
opadd -e -n null Beam
oplocate -x 10.6517 -y 3.37764 Beam
opspareds "" Beam
opparm -V 20.5.370 Beam copyinput ( on ) cacheinput ( off )
chlock Beam -*
chautoscope Beam -*
opcolor -c 1 0.52899998426437378 0.62400001287460327 Beam
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Beam
opexprlanguage -s hscript Beam
opuserdata -n '___Version___' -v '20.5.370' Beam

# Node matchsize2 (Sop/matchsize)
opadd -e -n matchsize matchsize2
oplocate -x 10.6517 -y 4.5887500000000001 matchsize2
opspareds "" matchsize2
opparm matchsize2 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( max ) goal_y ( same ) offset_y ( 0 ) justify_z ( min ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize2 -*
chautoscope matchsize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize2
opexprlanguage -s hscript matchsize2
opuserdata -n '___Version___' -v '' matchsize2

# Node visualize2 (Sop/visualize)
opadd -e -n visualize visualize2
oplocate -x -3.26593 -y -0.71844399999999997 visualize2
opspareds '    parm {         name    "setvisualizers"         baseparm         label   "Update Visualizers"         export  none     }     parm {         name    "clearvisualizers"         baseparm         label   "Clear Incoming Visualizers"         export  none     }     parm {         name    "wireframe"         baseparm         label   "Wireframe"         export  none     }     parm {         name    "shadeopencurves"         baseparm         label   "Shade Open Curves"         export  none     }     parm {         name    "lit"         baseparm         label   "Lighting"         export  none     }     parm {         name    "xray"         baseparm         label   "X-Ray"         export  none     }     parm {         name    "setcuspangle"         baseparm         label   "Set Cusp Angle"         nolabel         joinnext         export  none     }     parm {         name    "cuspangle"         baseparm         label   "Cusp Angle"         export  none     }     parm {         name    "showpoints"         baseparm         label   "Show Points"         export  none     }     parm {         name    "spherepoints"         baseparm         label   "Points as Spheres"         export  none     }     parm {         name    "spriteblend"         baseparm         label   "Sprite Blending"         export  none     }     parm {         name    "setspritecutoff"         baseparm         label   "Set Sprite Cutoff"         nolabel         joinnext         export  none     }     parm {         name    "spritecutoff"         baseparm         label   "Sprite Cutoff"         export  none     }     parm {         name    "node_vis_enabled"         label   "Visualization Enabled"         type    toggle         invisible         default { "1" }     }     multiparm {         name    "num_visualizers"         label    "Visualizers"         invisible         default 0         parmtag { "multistartoffset" "0" }          parm {             name    "vis_active#"             label   "Active #"             type    toggle             invisible             default { "0" }         }         parm {             name    "vis_data#"             label   "Raw Data #"             type    string             invisible             nolabel             default { "" }             parmtag { "editor" "1" }         }     }  ' visualize2
opparm visualize2  num_visualizers ( 3 )
opparm visualize2 setvisualizers ( on ) clearvisualizers ( off ) wireframe ( nochange ) shadeopencurves ( nochange ) lit ( nochange ) xray ( nochange ) setcuspangle ( off ) cuspangle ( 60 ) showpoints ( nochange ) spherepoints ( nochange ) spriteblend ( nochange ) setspritecutoff ( off ) spritecutoff ( 0.5 ) node_vis_enabled ( on ) num_visualizers ( 3 ) vis_active0 ( on ) vis_data0 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"right"\n	},\n	"name":{\n		"type":"string",\n		"value":"right"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tright\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' ) vis_active1 ( on ) vis_data1 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"up"\n	},\n	"name":{\n		"type":"string",\n		"value":"up"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tup\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' ) vis_active2 ( on ) vis_data2 ( '{\n	"flags":{\n		"type":"int",\n		"value":27\n	},\n	"icon":{\n		"type":"string",\n		"value":"VIEW_visualization_color"\n	},\n	"label":{\n		"type":"string",\n		"value":"normal"\n	},\n	"name":{\n		"type":"string",\n		"value":"normal"\n	},\n	"parameters":{\n		"type":"string",\n		"value":"{\\nversion 0.8\\nstyle\\t[ 0\\tlocks=0 ]\\t(\\t\\"vector\\"\\t)\\nclass\\t[ 0\\tlocks=0 ]\\t(\\t\\"point\\"\\t)\\nattrib\\t[ 0\\tlocks=0 ]\\t(\\tN\\t)\\nvisibility\\t[ 0\\tlocks=0 ]\\t(\\t\\"always\\"\\t)\\ndecorradius\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ngroup\\t[ 0\\tlocks=0 ]\\t(\\t\\"\\"\\t)\\npointsize\\t[ 0\\tlocks=0 ]\\t(\\t3\\t)\\nlengthscale\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nunitlength\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\nnormalize\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\narrowheads\\t[ 0\\tlocks=0 ]\\t(\\t\\"off\\"\\t)\\nvectorcoloring\\t[ 0\\tlocks=0 ]\\t(\\t\\"fixed\\"\\t)\\ncolorattrib\\t[ 0\\tlocks=0 ]\\t(\\tCd\\t)\\nramptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"false\\"\\t)\\ncolorramp\\t[ 0\\tlocks=0 ]\\t(\\t5\\t)\\nrangespec\\t[ 0\\tlocks=0 ]\\t(\\t\\"center-width\\"\\t)\\nminscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nmaxscalar\\t[ 0\\tlocks=0 ]\\t(\\t10\\t)\\ncenterscalar\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nwidthscalar\\t[ 0\\tlocks=0 ]\\t(\\t2\\t)\\nclamptype\\t[ 0\\tlocks=0 ]\\t(\\t\\"edge\\"\\t)\\ntreatasscalar\\t[ 0\\tlocks=0 ]\\t(\\t\\"on\\"\\t)\\nusing\\t[ 0\\tlocks=0 ]\\t(\\t\\"length\\"\\t)\\ncomponent\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\nrefvec\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t)\\nmarkercolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ntrail\\t[ 0\\tlocks=0 ]\\t(\\t1\\t1\\t0\\t0.5\\t)\\ntextcolor\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t0.75\\t0.75\\t)\\nfontsize\\t[ 0\\tlocks=0 ]\\t(\\t\\"guidefont\\"\\t)\\nxcolor\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t1\\t)\\nycolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0\\t1\\t)\\nzcolor\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0\\t1\\t1\\t)\\ncolorramp1pos\\t[ 0\\tlocks=0 ]\\t(\\t0\\t)\\ncolorramp1c\\t[ 0\\tlocks=0 ]\\t(\\t0.20000000298023224\\t0\\t1\\t)\\ncolorramp1interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp2pos\\t[ 0\\tlocks=0 ]\\t(\\t0.25\\t)\\ncolorramp2c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t0.8500000238418579\\t1\\t)\\ncolorramp2interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp3pos\\t[ 0\\tlocks=0 ]\\t(\\t0.5\\t)\\ncolorramp3c\\t[ 0\\tlocks=0 ]\\t(\\t0\\t1\\t0.10000000149011612\\t)\\ncolorramp3interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp4pos\\t[ 0\\tlocks=0 ]\\t(\\t0.75\\t)\\ncolorramp4c\\t[ 0\\tlocks=0 ]\\t(\\t0.949999988079071\\t1\\t0\\t)\\ncolorramp4interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\ncolorramp5pos\\t[ 0\\tlocks=0 ]\\t(\\t1\\t)\\ncolorramp5c\\t[ 0\\tlocks=0 ]\\t(\\t1\\t0\\t0\\t)\\ncolorramp5interp\\t[ 0\\tlocks=0 ]\\t(\\t\\"linear\\"\\t)\\n}\\n"\n	},\n	"scope":{\n		"type":"int",\n		"value":2\n	},\n	"type":{\n		"type":"string",\n		"value":"vis_marker"\n	}\n}\n' )
chlock visualize2 -*
chautoscope visualize2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off visualize2
opexprlanguage -s hscript visualize2
opuserdata -n '___Version___' -v '' visualize2

# Node attribwrangle1 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle1
oplocate -x 0.97780100000000003 -y 2.0854599999999999 attribwrangle1
opspareds "" attribwrangle1
opparm attribwrangle1  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle1 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@N = point(1, "N", @ptnum/2);\nv@up = point(1, "up", @ptnum/2);\n\n\n/*\nint points[] = primpoints(0, @primnum);\n\n//printf("%d\\n", points);\n//printf("%d: %f\\n", @primnum, len(points) );\n\nfor( int i=0; i<len(points)-1; ++i )\n{\n    //printf("%d: %d - %d\\n", i, points[i], points[i+1]);\n    vector  p0 = point(0, "P", points[i]),\n            p1 = point(0, "P", points[i+1]),\n            right = point(0, "right", points[i]);\n\n    vector dvec = normalize(p1-p0);\n\n    setpointattrib(0, "N", points[i], dvec);\n    setpointattrib(0, "up", points[i], cross(dvec, right));\n}\n*/' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle1 -*
chautoscope attribwrangle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle1
opexprlanguage -s hscript attribwrangle1
opuserdata -n '___Version___' -v '' attribwrangle1

# Node resample3 (Sop/resample)
opadd -e -n resample resample3
oplocate -x 0.98080100000000003 -y 0.76805599999999996 resample3
opspareds "" resample3
opparm -V 20.5.370 resample3 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( off ) length ( 0.1 ) dosegs ( on ) segs ( 3 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample3 -*
chautoscope resample3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample3
opexprlanguage -s hscript resample3
opuserdata -n '___Version___' -v '20.5.370' resample3

# Node grouprange1 (Sop/grouprange)
opadd -e -n grouprange grouprange1
oplocate -x 0.98080100000000003 -y -0.218144 grouprange1
opspareds "" grouprange1
opparm grouprange1  numrange ( 3 )
opparm -V 20.5.370 grouprange1 numrange ( 3 ) enable1 ( on ) groupname1 ( former ) group1 ( "" ) grouptype1 ( points ) mergeop1 ( replace ) method1 ( relative ) start1 ( 0 ) end1 ( 0 ) length1 ( 1 ) partition1 ( 0 ) numpartition1 ( 1 ) invert1 ( off ) folder0_1 ( 0 ) selectamount1 ( 1 ) selecttotal1 ( 3 ) selectoffset1 ( 1 ) folder1_1 ( 0 ) connectedgeo1 ( on ) useattrib1 ( off ) attrib1 ( "" ) usecolgroup1 ( off ) colgroup1 ( "" ) colgrouptype1 ( edges ) colallowonbnd1 ( on ) usepartnum1 ( off ) keeponlypartnum1 ( on ) partnum1 ( 0 ) enable2 ( on ) groupname2 ( latter ) group2 ( "" ) grouptype2 ( points ) mergeop2 ( replace ) method2 ( relative ) start2 ( 0 ) end2 ( 0 ) length2 ( 1 ) partition2 ( 0 ) numpartition2 ( 1 ) invert2 ( off ) folder0_2 ( 0 ) selectamount2 ( 1 ) selecttotal2 ( 3 ) selectoffset2 ( 2 ) folder1_2 ( 1 ) connectedgeo2 ( on ) useattrib2 ( off ) attrib2 ( "" ) usecolgroup2 ( off ) colgroup2 ( "" ) colgrouptype2 ( edges ) colallowonbnd2 ( on ) usepartnum2 ( off ) keeponlypartnum2 ( on ) partnum2 ( 0 ) enable3 ( on ) groupname3 ( border ) group3 ( "" ) grouptype3 ( points ) mergeop3 ( replace ) method3 ( relative ) start3 ( 0 ) end3 ( 0 ) length3 ( 1 ) partition3 ( 0 ) numpartition3 ( 1 ) invert3 ( off ) folder0_3 ( 0 ) selectamount3 ( 1 ) selecttotal3 ( 3 ) selectoffset3 ( 0 ) folder1_3 ( 1 ) connectedgeo3 ( on ) useattrib3 ( off ) attrib3 ( "" ) usecolgroup3 ( off ) colgroup3 ( "" ) colgrouptype3 ( edges ) colallowonbnd3 ( on ) usepartnum3 ( off ) keeponlypartnum3 ( on ) partnum3 ( 0 )
chlock grouprange1 -*
chautoscope grouprange1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouprange1
opexprlanguage -s hscript grouprange1
opuserdata -n '___Version___' -v '20.5.370' grouprange1

# Node polyextrude2 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude2
oplocate -x 0.98080100000000003 -y -1.32124 polyextrude2
opspareds "" polyextrude2
opparm polyextrude2  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude2 dist
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' polyextrude2/dist
chblockend
opparm -V 20.5.370 polyextrude2 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) ptnormalsrc ( attribute ) ptnormalattrib ( up ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude2 -*
chautoscope polyextrude2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude2
opexprlanguage -s hscript polyextrude2
opuserdata -n '___Version___' -v '20.5.370' polyextrude2

# Node polyextrude3 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude3
oplocate -x 0.98080100000000003 -y -3.58934 polyextrude3
opspareds "" polyextrude3
opparm polyextrude3  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude3 dist
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' polyextrude3/dist
chblockend
opparm -V 20.5.370 polyextrude3 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( on ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude3 -*
chautoscope polyextrude3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude3
opexprlanguage -s hscript polyextrude3
opuserdata -n '___Version___' -v '20.5.370' polyextrude3

# Node group1 (Sop/groupcreate)
opadd -e -n groupcreate group1
oplocate -x 0.98080100000000003 -y -4.8705400000000001 group1
opspareds "" group1
opparm -V 20.5.370 group1 groupname ( group1 ) grouptype ( edge ) mergeop ( replace ) folder0 ( 0 ) groupbase ( off ) basegroup ( "" ) ordered ( off ) geotype ( all ) switcher3 ( 0 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) initbounds ( 0 ) includenotwhollycontained ( off ) iso ( 0 ) invertvolume ( off ) switcher4 ( 0 ) groupnormal ( off ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) dir ( 0 0 1 ) angle ( 180 ) oppositenormals ( off ) switcher5 ( 0 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( on ) maxedgeangle ( 360 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) switcher6 ( 0 ) grouprandom ( off ) globalseed ( 1 ) useseedattrib ( off ) seedattrib ( id ) percent ( 50 )
chlock group1 -*
chautoscope group1 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off group1
opexprlanguage -s hscript group1
opuserdata -n '___Version___' -v '20.5.370' group1

# Node dissolve1 (Sop/dissolve::2.0)
opadd -e -n dissolve::2.0 dissolve1
oplocate -x 0.93933100000000003 -y -5.8705400000000001 dissolve1
opspareds "" dissolve1
opparm -V 20.5.370 dissolve1 group ( group1 ) invertsel ( delete ) compnorms ( off ) reminlinepts ( on ) coltol ( 45 ) remunusedpts ( on ) bridge ( bridge ) deldegeneratebridges ( off ) boundarycurves ( off )
chlock dissolve1 -*
chautoscope dissolve1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dissolve1
opexprlanguage -s hscript dissolve1
opuserdata -n '___Version___' -v '20.5.370' dissolve1

# Node attribwrangle2 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle2
oplocate -x 0.97780100000000003 -y -2.3912399999999998 attribwrangle2
opspareds "" attribwrangle2
opparm attribwrangle2  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle2 folder0 ( 0 0 ) group ( border ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@P -= v@up;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle2 -*
chautoscope attribwrangle2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle2
opexprlanguage -s hscript attribwrangle2
opuserdata -n '___Version___' -v '' attribwrangle2

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 0.93933100000000003 -y -7.07104 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Height")-ch("../subnet1/BeamWidth")' transform1/ty
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node attribwrangle3 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle3
oplocate -x -1.6938800000000001 -y 3.8849499999999999 attribwrangle3
opspareds "" attribwrangle3
opparm attribwrangle3  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'setprimgroup(0, "side", i@primnum, i@primnum);\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle3 -*
chautoscope attribwrangle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle3
opexprlanguage -s hscript attribwrangle3
opuserdata -n '___Version___' -v '' attribwrangle3

# Node reverse2 (Sop/reverse)
opadd -e -n reverse reverse2
oplocate -x -1.6908799999999999 -y 2.9300000000000002 reverse2
opspareds "" reverse2
opparm -V 20.5.370 reverse2 group ( 0 ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse2 -*
chautoscope reverse2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse2
opexprlanguage -s hscript reverse2
opuserdata -n '___Version___' -v '20.5.370' reverse2

# Node box1 (Sop/box)
opadd -e -n box box1
oplocate -x -12.023099999999999 -y 5.1608000000000001 box1
opspareds "" box1
chblockbegin
chadd -t 0 0 box1 sizey
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Height")' box1/sizey
chblockend
opparm -V 20.5.370 box1 type ( polymesh ) surftype ( quads ) consolidatepts ( on ) size ( 1.5 sizey 1.5 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) divrate ( 2 2 2 ) orderrate ( 4 4 4 ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) orientedbbox ( off ) vertexnormals ( off )
chlock box1 -*
chautoscope box1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off box1
opexprlanguage -s hscript box1
opuserdata -n '___Version___' -v '20.5.370' box1

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -3.81575 -y -7.5482399999999998 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node attribwrangle4 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle4
oplocate -x -5.7573100000000004 -y 1.14506 attribwrangle4
opspareds "" attribwrangle4
opparm attribwrangle4  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle4 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@N = v@flatnrm;//point(1, "N", @ptnum/2);\n//v@up = {0,1,0};//point(1, "up", @ptnum/2);\n\n\n/*\nint points[] = primpoints(0, @primnum);\n\n//printf("%d\\n", points);\n//printf("%d: %f\\n", @primnum, len(points) );\n\nfor( int i=0; i<len(points)-1; ++i )\n{\n    //printf("%d: %d - %d\\n", i, points[i], points[i+1]);\n    vector  p0 = point(0, "P", points[i]),\n            p1 = point(0, "P", points[i+1]),\n            right = point(0, "right", points[i]);\n\n    vector dvec = normalize(p1-p0);\n\n    setpointattrib(0, "N", points[i], dvec);\n    setpointattrib(0, "up", points[i], cross(dvec, right));\n}\n*/' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle4 -*
chautoscope attribwrangle4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle4
opexprlanguage -s hscript attribwrangle4
opuserdata -n '___Version___' -v '' attribwrangle4

# Node grid1 (Sop/grid)
opadd -e -n grid grid1
oplocate -x -8.4904399999999995 -y 6.8346099999999996 grid1
opspareds "" grid1
chblockbegin
chadd -t 0 0 grid1 sizex
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/PillawWidth")' grid1/sizex
chadd -t 0 0 grid1 sizey
chkey -t 0 -v 10 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/PillawWidth")' grid1/sizey
chblockend
opparm -V 20.5.370 grid1 type ( poly ) surftype ( quads ) orient ( zx ) size ( sizex sizey ) t ( 0 0 0 ) r ( 0 0 0 ) rows ( 2 ) cols ( 2 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid1 -*
chautoscope grid1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid1
opexprlanguage -s hscript grid1
opuserdata -n '___Version___' -v '20.5.370' grid1

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x -8.4904399999999995 -y 5.7240200000000003 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude4 dist
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Height")' polyextrude4/dist
chblockend
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node grouprange2 (Sop/grouprange)
opadd -e -n grouprange grouprange2
oplocate -x -6.2490800000000002 -y 2.9300000000000002 grouprange2
opspareds "" grouprange2
opparm grouprange2  numrange ( 3 )
opparm -V 20.5.370 grouprange2 numrange ( 3 ) enable1 ( on ) groupname1 ( former ) group1 ( "" ) grouptype1 ( points ) mergeop1 ( replace ) method1 ( relative ) start1 ( 0 ) end1 ( 0 ) length1 ( 1 ) partition1 ( 0 ) numpartition1 ( 1 ) invert1 ( off ) folder0_1 ( 0 ) selectamount1 ( 1 ) selecttotal1 ( 3 ) selectoffset1 ( 1 ) folder1_1 ( 0 ) connectedgeo1 ( on ) useattrib1 ( off ) attrib1 ( "" ) usecolgroup1 ( off ) colgroup1 ( "" ) colgrouptype1 ( edges ) colallowonbnd1 ( on ) usepartnum1 ( off ) keeponlypartnum1 ( on ) partnum1 ( 0 ) enable2 ( on ) groupname2 ( latter ) group2 ( "" ) grouptype2 ( points ) mergeop2 ( replace ) method2 ( relative ) start2 ( 0 ) end2 ( 0 ) length2 ( 1 ) partition2 ( 0 ) numpartition2 ( 1 ) invert2 ( off ) folder0_2 ( 0 ) selectamount2 ( 1 ) selecttotal2 ( 3 ) selectoffset2 ( 2 ) folder1_2 ( 1 ) connectedgeo2 ( on ) useattrib2 ( off ) attrib2 ( "" ) usecolgroup2 ( off ) colgroup2 ( "" ) colgrouptype2 ( edges ) colallowonbnd2 ( on ) usepartnum2 ( off ) keeponlypartnum2 ( on ) partnum2 ( 0 ) enable3 ( on ) groupname3 ( border ) group3 ( "" ) grouptype3 ( points ) mergeop3 ( replace ) method3 ( relative ) start3 ( 0 ) end3 ( 0 ) length3 ( 1 ) partition3 ( 0 ) numpartition3 ( 1 ) invert3 ( off ) folder0_3 ( 0 ) selectamount3 ( 1 ) selecttotal3 ( 3 ) selectoffset3 ( 0 ) folder1_3 ( 1 ) connectedgeo3 ( on ) useattrib3 ( off ) attrib3 ( "" ) usecolgroup3 ( off ) colgroup3 ( "" ) colgrouptype3 ( edges ) colallowonbnd3 ( on ) usepartnum3 ( off ) keeponlypartnum3 ( on ) partnum3 ( 0 )
chlock grouprange2 -*
chautoscope grouprange2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grouprange2
opexprlanguage -s hscript grouprange2
opuserdata -n '___Version___' -v '20.5.370' grouprange2

# Node sweep2 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep2
oplocate -x -6.2490800000000002 -y 5.10832 sweep2
opspareds "" sweep2
opparm sweep2  scaleramp ( 2 )
chblockbegin
chadd -t 0 0 sweep2 width
chkey -t 0 -v 15 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Width")-ch("../subnet1/BeamWidth")' sweep2/width
chblockend
opparm -V 20.5.370 sweep2 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( ribbon ) surfacetype ( cols ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( width ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep2 -*
chautoscope sweep2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep2
opexprlanguage -s hscript sweep2
opuserdata -n '___Version___' -v '20.5.370' sweep2

# Node resample4 (Sop/resample)
opadd -e -n resample resample4
oplocate -x -6.2490800000000002 -y 4.0845799999999999 resample4
opspareds "" resample4
opparm -V 20.5.370 resample4 group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( off ) length ( 0.1 ) dosegs ( on ) segs ( 3 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample4 -*
chautoscope resample4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample4
opexprlanguage -s hscript resample4
opuserdata -n '___Version___' -v '20.5.370' resample4

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x 5.1848799999999997 -y -1.28424 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( border ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node polyextrude5 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude5
oplocate -x 5.52013 -y -2.7671399999999999 polyextrude5
opspareds "" polyextrude5
opparm polyextrude5  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude5 dist
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' polyextrude5/dist
chblockend
opparm -V 20.5.370 polyextrude5 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) ptnormalsrc ( attribute ) ptnormalattrib ( up ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude5 -*
chautoscope polyextrude5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude5
opexprlanguage -s hscript polyextrude5
opuserdata -n '___Version___' -v '20.5.370' polyextrude5

# Node polyextrude6 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude6
oplocate -x 5.52013 -y -3.8421400000000001 polyextrude6
opspareds "" polyextrude6
opparm polyextrude6  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude6 dist
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' polyextrude6/dist
chblockend
opparm -V 20.5.370 polyextrude6 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( on ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude6 -*
chautoscope polyextrude6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude6
opexprlanguage -s hscript polyextrude6
opuserdata -n '___Version___' -v '20.5.370' polyextrude6

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x 5.0821899999999998 -y -7.07104 transform2
opspareds "" transform2
chblockbegin
chadd -t 0 0 transform2 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*(ch("../subnet1/Height")-ch("../subnet1/BeamWidth"))' transform2/ty
chblockend
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node sweep3 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep3
oplocate -x 9.0256000000000007 -y 0.32435599999999998 sweep3
opspareds "" sweep3
opparm sweep3  scaleramp ( 2 )
chblockbegin
chadd -t 0 0 sweep3 width
chkey -t 0 -v 15 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/Width")' sweep3/width
chblockend
opparm -V 20.5.370 sweep3 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( ribbon ) surfacetype ( rows ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( width ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep3 -*
chautoscope sweep3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep3
opexprlanguage -s hscript sweep3
opuserdata -n '___Version___' -v '20.5.370' sweep3

# Node sweep4 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep4
oplocate -x 9.0256000000000007 -y -0.96384400000000003 sweep4
opspareds "" sweep4
opparm sweep4  scaleramp ( 2 )
chblockbegin
chadd -t 0 0 sweep4 width
chkey -t 0 -v 0.20000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' sweep4/width
chblockend
opparm -V 20.5.370 sweep4 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 0 0 0 ) surfaceshape ( ribbon ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( width ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( none ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( normal ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( start_up ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep4 -*
chautoscope sweep4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep4
opexprlanguage -s hscript sweep4
opuserdata -n '___Version___' -v '20.5.370' sweep4

# Node polyextrude7 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude7
oplocate -x 9.0256000000000007 -y -2.08324 polyextrude7
opspareds "" polyextrude7
opparm polyextrude7  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude7 dist
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../subnet1/BeamWidth")' polyextrude7/dist
chblockend
opparm -V 20.5.370 polyextrude7 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude7 -*
chautoscope polyextrude7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude7
opexprlanguage -s hscript polyextrude7
opuserdata -n '___Version___' -v '20.5.370' polyextrude7

# Node transform3 (Sop/xform)
opadd -e -n xform transform3
oplocate -x 8.0539500000000004 -y -9.0075400000000005 transform3
opspareds "" transform3
chblockbegin
chadd -t 0 0 transform3 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*(ch("../subnet1/Height")-ch("../subnet1/BeamWidth"))' transform3/ty
chblockend
opparm -V 20.5.370 transform3 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform3 -*
chautoscope transform3 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform3
opexprlanguage -s hscript transform3
opuserdata -n '___Version___' -v '20.5.370' transform3

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x -0.95228040918833834 -y 13.88847966175838 add2
opspareds "" add2
opparm add2  points ( 2 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 1 1 1 ) keep ( off ) points ( 2 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 20 0 0 ) weight1 ( 1 )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2
oporder -e BankingCurve1 resample1 resample2 sweep1 tube1 matchsize1 copytopoints1 subnet1 add1 polyextrude1 Beam matchsize2 visualize2 attribwrangle1 resample3 grouprange1 polyextrude2 polyextrude3 group1 dissolve1 attribwrangle2 transform1 attribwrangle3 reverse2 box1 merge1 attribwrangle4 grid1 polyextrude4 grouprange2 sweep2 resample4 blast1 polyextrude5 polyextrude6 transform2 sweep3 sweep4 polyextrude7 transform3 add2 
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
opwire -n resample1 -0 BankingCurve1
opcf BankingCurve1
opwire -n -i 0 -0 resample1
opwire -n resample1 -0 curve_dirs
opwire -n bank_ratio -0 banking
opwire -n banking -0 output0
opwire -n curve_dirs -0 visualize1
opwire -n banking -0 visualize2
opwire -n curve_dirs -0 bank_ratio
opwire -n calc_curvature -1 bank_ratio
opwire -n bank_ratio -0 visualize3
opwire -n polyframe1 -0 calc_curvature
opcf calc_curvature
opwire -n measure1 -0 attribwrangle1
opwire -n curve_dirs1 -0 sweep1
opwire -n sweep1 -0 measure1
opwire -n -i 0 -0 curve_dirs1
opwire -n attribwrangle1 -0 output0
opcf ..
opwire -n -i 0 -0 polyframe1
opcf ..
opwire -n add2 -0 resample1
opwire -n BankingCurve1 -0 resample2
opwire -n resample2 -0 sweep1
opwire -n box1 -0 matchsize1
opwire -n polyextrude4 -0 copytopoints1
opwire -n attribwrangle4 -1 copytopoints1
opcf subnet1
opwire -n -i 0 -0 output0
opcf ..
opwire -n add1 -0 polyextrude1
opwire -n matchsize2 -0 Beam
opwire -n polyextrude1 -0 matchsize2
opwire -n attribwrangle1 -0 visualize2
opwire -n reverse2 -0 attribwrangle1
opwire -n resample2 -1 attribwrangle1
opwire -n attribwrangle1 -0 resample3
opwire -n resample3 -0 grouprange1
opwire -n grouprange1 -0 polyextrude2
opwire -n attribwrangle2 -0 polyextrude3
opwire -n polyextrude3 -0 group1
opwire -n group1 -0 dissolve1
opwire -n polyextrude2 -0 attribwrangle2
opwire -n dissolve1 -0 transform1
opwire -n sweep1 -0 attribwrangle3
opwire -n attribwrangle3 -0 reverse2
opwire -n copytopoints1 -0 merge1
opwire -n transform1 -1 merge1
opwire -n transform2 -2 merge1
opwire -n transform3 -3 merge1
opwire -n grouprange2 -0 attribwrangle4
opwire -n resample2 -1 attribwrangle4
opwire -n grid1 -0 polyextrude4
opwire -n resample4 -0 grouprange2
opwire -n resample2 -0 sweep2
opwire -n sweep2 -0 resample4
opwire -n grouprange1 -0 blast1
opwire -n blast1 -0 polyextrude5
opwire -n polyextrude5 -0 polyextrude6
opwire -n polyextrude6 -0 transform2
opwire -n resample2 -0 sweep3
opwire -n sweep3 -0 sweep4
opwire -n sweep4 -0 polyextrude7
opwire -n polyextrude7 -0 transform3
opcf ..
opcf ..
opcf img
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
