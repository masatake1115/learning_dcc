# Automatically generated script
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node vex (/vex)

# Node mat (/mat)
opcf mat

# Node metalgrate (Vop/principledshader::2.0)
opadd -e -n principledshader::2.0 metalgrate
oplocate -x 0 -y 0 metalgrate
opspareds "" metalgrate
chblockbegin
chadd -t 0 0 metalgrate specular_tint
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("metallic")+(1-ch("metallic"))*ch("reflecttint")' metalgrate/specular_tint
chadd -t 0 0 metalgrate baseBump_useTexture
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("baseBumpAndNormal_enable") && strcmp(chs("baseBumpAndNormal_type"), "bump") == 0' metalgrate/baseBump_useTexture
chadd -t 0 0 metalgrate baseNormal_useTexture
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("baseBumpAndNormal_enable") && strcmp(chs("baseBumpAndNormal_type"), "normal") == 0' metalgrate/baseNormal_useTexture
chadd -t 0 0 metalgrate shop_disable_displace_shader
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '!ch("dispInput_enable") && !ch("dispTex_enable") && !ch("dispNoise_enable")' metalgrate/shop_disable_displace_shader
chadd -t 0 0 metalgrate vm_displacebound
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1.01*ch("dispInput_enable")*ch("dispInput_max") + ch("dispTex_enable")*max(abs((1.0+ch("dispTex_offset"))*ch("dispTex_scale")), abs(ch("dispTex_offset")*ch("dispTex_scale"))) + ch("dispNoise_enable")*abs(ch("dispNoise_amp"))' metalgrate/vm_displacebound
chadd -t 0 0 metalgrate speccolorr
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("basecolorr")' metalgrate/speccolorr
chadd -t 0 0 metalgrate speccolorg
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("basecolorg")' metalgrate/speccolorg
chadd -t 0 0 metalgrate speccolorb
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("basecolorb")' metalgrate/speccolorb
chblockend
opparm metalgrate specmodel ( ggx ) coatspecmodel ( ggx ) specular_tint ( specular_tint ) diffuse_folder_15 ( 0 0 0 0 0 0 ) folder7 ( 1 ) basecolor ( 1 1 1 ) albedomult ( 1 ) basecolor_usePointColor ( on ) basecolor_usePackedColor ( off ) frontface ( on ) folder4 ( 1 ) ior ( 1.5 ) rough ( 1 ) aniso ( 0 ) anisodir ( 0 ) folder12 ( 0 ) metallic ( 0 ) reflect ( 1 ) reflecttint ( 0 ) coat ( 0 ) coatrough ( 0 ) folder13 ( 0 ) transparency ( 0 ) transcolor ( 1 1 1 ) transdist ( 0.1 ) dispersion ( 0 ) priority ( 0 ) transcolor_usePointColor ( off ) folder8 ( 0 ) sss ( 0 ) ssscolor ( 1 1 1 ) sssmodel ( pbrsss ) sssdist ( 0.1 ) sssphase ( 0 ) ssscolor_usePointColor ( off ) folder11 ( 0 ) sheen ( 0 ) sheentint ( 0 ) folder9 ( 0 ) emitint ( 0 ) emitcolor ( 1 1 1 ) emitcolor_usePointColor ( off ) emitillum ( on ) folder15 ( 0 ) opac ( 1 ) opaccolor ( 1 1 1 ) opacpointalpha ( on ) opacpackedalpha ( off ) folder6 ( 0 ) fakecausticsenabled ( off ) fakecausticstransmit ( 1 ) fakecausticsshadow ( 1 ) fakecausticsopacity ( 0 ) folder17 ( 0 ) alphablendmode ( blend ) alphacutoff ( 0.5 ) folder54 ( 0 ) basecolor_useTexture ( on ) basecolor_texture ( '$HFS/houdini/pic/texture/metal001_basecolor.rat' ) basecolor_textureIntensity ( 1 ) basecolor_textureWrap ( repeat ) basecolor_textureColorSpace ( auto ) basecolor_useTextureAlpha ( off ) folder1 ( 0 ) ior_useTexture ( off ) ior_texture ( "" ) ior_monoChannel ( 0 ) ior_textureWrap ( repeat ) ior_textureColorSpace ( linear ) folder227 ( 0 ) rough_useTexture ( on ) rough_texture ( '$HFS/houdini/pic/texture/metal001_rough.rat' ) rough_monoChannel ( 0 ) rough_textureWrap ( repeat ) rough_textureColorSpace ( linear ) folder228 ( 0 ) aniso_useTexture ( off ) aniso_texture ( "" ) aniso_monoChannel ( 0 ) aniso_textureWrap ( repeat ) aniso_textureColorSpace ( linear ) folder229 ( 0 ) anisodir_useTexture ( off ) anisodir_texture ( "" ) anisodir_monoChannel ( 0 ) anisodir_textureWrap ( repeat ) anisodir_textureColorSpace ( linear ) anisodir_textureFilter ( point ) folder55 ( 0 ) metallic_useTexture ( off ) metallic_texture ( "" ) metallic_monoChannel ( 0 ) metallic_textureWrap ( repeat ) metallic_textureColorSpace ( linear ) folder16 ( 0 ) reflect_useTexture ( off ) reflect_texture ( "" ) reflect_monoChannel ( 0 ) reflect_textureWrap ( repeat ) reflect_textureColorSpace ( linear ) folder226 ( 0 ) reflecttint_useTexture ( off ) reflecttint_texture ( "" ) reflecttint_monoChannel ( 0 ) reflecttint_textureWrap ( repeat ) reflecttint_textureColorSpace ( linear ) folder233 ( 0 ) coat_useTexture ( off ) coat_texture ( "" ) coat_monoChannel ( 0 ) coat_textureWrap ( repeat ) coat_textureColorSpace ( linear ) folder234 ( 0 ) coatrough_useTexture ( off ) coatrough_texture ( "" ) coatrough_monoChannel ( 0 ) coatrough_textureWrap ( repeat ) coatrough_textureColorSpace ( linear ) folder2 ( 0 ) transparency_useTexture ( off ) transparency_texture ( "" ) transparency_monoChannel ( 0 ) transparency_textureWrap ( repeat ) transparency_textureColorSpace ( linear ) folder5 ( 0 ) transcolor_useTexture ( off ) transcolor_texture ( "" ) transcolor_textureIntensity ( 1 ) transcolor_textureWrap ( repeat ) transcolor_textureColorSpace ( auto ) folder5_1 ( 0 ) transdist_useTexture ( off ) transdist_texture ( "" ) transdist_monoChannel ( 0 ) transdist_textureWrap ( repeat ) transdist_textureColorSpace ( linear ) folder5_2 ( 0 ) dispersion_useTexture ( off ) dispersion_texture ( "" ) dispersion_monoChannel ( 0 ) dispersion_textureWrap ( repeat ) dispersion_textureColorSpace ( linear ) folder230 ( 0 ) sss_useTexture ( off ) sss_texture ( "" ) sss_monoChannel ( 0 ) sss_textureWrap ( repeat ) sss_textureColorSpace ( linear ) folder3 ( 0 ) sssdist_useTexture ( off ) sssdist_texture ( "" ) sssdist_monoChannel ( 0 ) sssdist_textureWrap ( repeat ) sssdist_textureColorSpace ( linear ) folder3_1 ( 0 ) ssscolor_useTexture ( off ) ssscolor_texture ( "" ) ssscolor_textureWrap ( repeat ) ssscolor_textureColorSpace ( linear ) folder231 ( 0 ) sheen_useTexture ( off ) sheen_texture ( "" ) sheen_monoChannel ( 0 ) sheen_textureWrap ( repeat ) sheen_textureColorSpace ( linear ) folder232 ( 0 ) sheentint_useTexture ( off ) sheentint_texture ( "" ) sheentint_monoChannel ( 0 ) sheentint_textureWrap ( repeat ) sheentint_textureColorSpace ( linear ) diffuse_folder_14_3 ( 0 ) emitcolor_useTexture ( off ) emitcolor_texture ( "" ) emitcolor_textureIntensity ( 1 ) emitcolor_textureWrap ( repeat ) emitcolor_textureColorSpace ( repeat ) folder14 ( 0 ) opaccolor_useTexture ( off ) opaccolor_texture ( "" ) opaccolor_textureWrap ( repeat ) opaccolor_textureIntensity ( 1 ) opaccolor_textureColorSpace ( repeat ) folder18 ( 0 ) occlusion_useTexture ( off ) occlusion_texture ( "" ) occlusion_textureWrap ( repeat ) occlusion_textureIntensity ( 1 ) occlusion_textureColorSpace ( auto ) folder235 ( 0 ) surface_textureFilter ( catrom ) surface_textureFilterWidth ( 1 ) roundedEdge_enable ( off ) roundedEdge_radius ( 0.01 ) roundedEdge_mode ( 0 ) shading_16 ( 0 0 ) baseBumpAndNormal_enable ( off ) baseBumpAndNormal_type ( normal ) baseBump_colorSpace ( linear ) baseBump_bumpScale ( 0.05 ) baseBump_bumpTexture ( "" ) baseBump_wrap ( repeat ) baseBump_filter ( gauss ) baseBump_filterWidth ( 1 ) baseBump_channel ( 0 ) baseBump_imagePlane ( "" ) baseNormal_colorspace ( linear ) baseNormal_vectorSpace ( uvtangent ) baseNormal_scale ( 1 ) baseNormal_texture ( "" ) baseNormal_wrap ( repeat ) baseNormal_filter ( gauss ) baseNormal_filterWidth ( 1 ) baseNormal_channel ( 0 ) baseNormal_imagePlane ( "" ) baseNormal_space ( 0 ) baseNormal_flipX ( off ) baseNormal_flipY ( off ) baseBump_useTexture ( baseBump_useTexture ) baseNormal_useTexture ( baseNormal_useTexture ) separateCoatNormals ( off ) coatBumpAndNormal_enable ( on ) coatBumpAndNormal_type ( normal ) coatBump_colorSpace ( linear ) coatBump_bumpScale ( 0.05 ) coatBump_bumpTexture ( "" ) coatBump_wrap ( repeat ) coatBump_filter ( gauss ) coatBump_filterWidth ( 1 ) coatBump_channel ( 0 ) coatBump_imagePlane ( "" ) coatNormal_colorspace ( linear ) coatNormal_vectorSpace ( uvtangent ) coatNormal_scale ( 1 ) coatNormal_texture ( "" ) coatNormal_wrap ( repeat ) coatNormal_filter ( gauss ) coatNormal_filterWidth ( 1 ) coatNormal_channel ( 0 ) coatNormal_imagePlane ( "" ) coatNormal_space ( 0 ) coatNormal_flipX ( off ) coatNormal_flipY ( off ) shop_disable_displace_shader ( shop_disable_displace_shader ) folder236 ( 0 ) vm_displacebound ( vm_displacebound ) vm_truedisplace ( on ) vm_bumpraydisplace ( on ) folder10 ( 0 ) dispInput_enable ( off ) dispInput_max ( 1 ) dispInput_vectorspace ( uvtangent ) folder237 ( 0 ) dispTex_enable ( on ) dispTex_type ( disp ) dispTex_colorSpace ( linear ) dispTex_vectorSpace ( uvtangent ) dispTex_channelOrder ( xyz ) dispTex_offset ( -0.5 ) dispTex_scale ( 0.05 ) dispTex_texture ( '$HFS/houdini/pic/texture/metal001_height.rat' ) dispTex_channel ( 0 ) dispTex_wrap ( repeat ) dispTex_filter ( gauss ) dispTex_filterWidth ( 1 ) folder238 ( 0 ) dispNoise_enable ( off ) dispNoise_type ( xnoise ) dispNoise_freq ( 10 10 10 ) dispNoise_offset ( 0 0 0 ) dispNoise_amp ( 1 ) dispNoise_rough ( 0.5 ) dispNoise_atten ( 1 ) dispNoise_turb ( 5 ) folder239 ( 0 ) difflabel ( diffuse ) refllabel ( reflect ) refractlabel ( refract ) coatlabel ( coat ) ssslabel ( sss ) folder0 ( 0 ) uvtrans ( 0 0 ) uvrot ( 0 ) uvscale ( 1 1 ) Cd ( 1 1 1 ) Alpha ( 1 ) layer ( "" ) direct ( 0 0 0 ) indirect ( 0 0 0 ) Ce ( 0 0 0 ) direct_emission ( 0 0 0 ) all_emission ( 0 0 0 ) all ( 0 0 0 ) indirect_emission ( 0 0 0 ) direct_comp ( "" ) indirect_comp ( "" ) all_comp ( "" ) direct_noshadow ( 0 0 0 ) direct_shadow ( 0 0 0 ) indirect_noshadow ( 0 0 0 ) indirect_shadow ( 0 0 0 ) level ( 0 ) diffuselevel ( 0 ) specularlevel ( 0 ) volumelevel ( 0 ) direct_samples ( 0 ) indirect_samples ( 0 ) nlights ( 0 ) direct_noshadow_comp ( "" ) indirect_noshadow_comp ( "" ) nddispersion ( 0 ) ndpriority ( 0 ) ndior ( 0 ) absorption ( 0 0 0 ) Oc ( 0 0 0 ) Cv ( 0 0 0 ) Th ( 0 0 0 ) Ab ( 0 0 0 ) Cu ( 0 0 0 ) Vd ( 0 0 0 ) Nt ( 0 0 0 ) Ds ( 0 0 0 ) pre_disp_P ( 0 0 0 ) pre_disp_utan ( 0 0 0 ) pre_disp_vtan ( 0 0 0 ) pre_disp_N ( 0 0 0 ) disp ( 0 ) vdisp ( 0 0 0 ) Dt ( 0 0 0 ) Vdt ( 0 0 0 ) baseN ( 0 0 0 ) coatN ( 0 0 0 ) speccolor ( speccolorr speccolorg speccolorb ) displayColor ( 1 1 1 ) st ( 0 0 ) displayOpacity ( 1 )
chlock metalgrate -*
chautoscope metalgrate -*
opcomment -c 'Created from Gallery Entry: Metal Grate\n\nMetal Grate' metalgrate
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -L off -M off -H on -E on metalgrate
opexprlanguage -s hscript metalgrate
opuserdata -n '___Version___' -v '' metalgrate
opuserdata -n '___toolcount___' -v '176' metalgrate
opuserdata -n '___toolid___' -v 'convertGallery' metalgrate
opuserdata -n '__inputgroup_Bump & Normals' -v 'collapsed' metalgrate
opuserdata -n '__inputgroup_Displacement' -v 'collapsed' metalgrate
opuserdata -n '__inputgroup_Opacity' -v 'collapsed' metalgrate
opuserdata -n '__inputgroup_Settings' -v 'collapsed' metalgrate
opuserdata -n '__inputgroup_Surface' -v 'collapsed' metalgrate
opuserdata -n '__inputgroup_Textures' -v 'collapsed' metalgrate
opcf ..

# Node obj (/obj)
opcf obj

# Node RoofAd (Object/geo)
opadd -e -n geo RoofAd
oplocate -x -1.17961 -y 0.31925599999999998 RoofAd
opspareds '    group {         name    "stdswitcher4"         label   "Transform"         grouptag { "sidefx::switcher" "stdswitcher" }          parm {             name    "xOrd"             baseparm             label   "Transform Order"             joinnext             export  none         }         parm {             name    "rOrd"             baseparm             label   "Rotate Order"             nolabel             export  none         }         parm {             name    "t"             baseparm             label   "Translate"             export  all         }         parm {             name    "r"             baseparm             label   "Rotate"             export  all         }         parm {             name    "s"             baseparm             label   "Scale"             export  none         }         parm {             name    "p"             baseparm             label   "Pivot Translate"             export  none         }         parm {             name    "pr"             baseparm             label   "Pivot Rotate"             export  none         }         parm {             name    "scale"             baseparm             label   "Uniform Scale"             export  none         }         parm {             name    "pre_xform"             baseparm             label   "Modify Pre-Transform"             export  none         }         parm {             name    "keeppos"             baseparm             label   "Keep Position When Parenting"             export  none         }         parm {             name    "childcomp"             baseparm             label   "Child Compensation"             export  none         }         parm {             name    "constraints_on"             baseparm             label   "Enable Constraints"             export  none         }         parm {             name    "constraints_path"             baseparm             label   "Constraints"             export  none         }         parm {             name    "lookatpath"             baseparm             label   "Look At"             invisible             export  none         }         parm {             name    "lookupobjpath"             baseparm             label   "Look Up Object"             invisible             export  none         }         parm {             name    "lookup"             baseparm             label   "Look At Up Vector"             invisible             export  none         }         parm {             name    "pathobjpath"             baseparm             label   "Path Object"             invisible             export  none         }         parm {             name    "roll"             baseparm             label   "Roll"             invisible             export  none         }         parm {             name    "pos"             baseparm             label   "Position"             invisible             export  none         }         parm {             name    "uparmtype"             baseparm             label   "Parameterization"             invisible             export  none         }         parm {             name    "pathorient"             baseparm             label   "Orient Along Path"             invisible             export  none         }         parm {             name    "up"             baseparm             label   "Orient Up Vector"             invisible             export  none         }         parm {             name    "bank"             baseparm             label   "Auto-Bank factor"             invisible             export  none         }     }      group {         name    "stdswitcher4_1"         label   "Render"          parm {             name    "shop_materialpath"             baseparm             label   "Material"             export  none         }         parm {             name    "shop_materialopts"             baseparm             label   "Options"             invisible             export  none         }         parm {             name    "tdisplay"             baseparm             label   "Display"             joinnext             export  none         }         parm {             name    "display"             baseparm             label   "Display"             export  none         }         parm {             name    "viewportlod"             label   "Display As"             type    ordinal             default { "full" }             help    "Choose how the object\'s geometry should be rendered in the viewport"             menu {                 "full"      "Full Geometry"                 "points"    "Point Cloud"                 "box"       "Bounding Box"                 "centroid"  "Centroid"                 "hidden"    "Hidden"                 "subd"      "Subdivision Surface / Curves"             }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendervisibility"             label   "Render Visibility"             type    string             default { "*" }             menureplace {                 "*"                             "Visible to all"                 "primary"                       "Visible only to primary rays"                 "primary|shadow"                "Visible only to primary and shadow rays"                 "-primary"                      "Invisible to primary rays (Phantom)"                 "-diffuse"                      "Invisible to diffuse rays"                 "-diffuse&-reflect&-refract"    "Invisible to secondary rays"                 ""                              "Invisible (Unrenderable)"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendervisibility" }             parmtag { "spare_category" "Render" }         }         parm {             name    "vm_rendersubd"             label   "Render Polygons As Subdivision (Mantra)"             type    toggle             default { "0" }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "rendersubd" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdstyle"             label   "Subdivision Style"             type    string             default { "mantra_catclark" }             hidewhen "{ vm_rendersubd == 0 }"             menu {                 "mantra_catclark"   "Mantra Catmull-Clark"                 "osd_catclark"      "OpenSubdiv Catmull-Clark"             }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdstyle" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_subdgroup"             label   "Subdivision Group"             type    string             default { "" }             hidewhen "{ vm_rendersubd == 0 }"             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "subdgroup" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_quality"             label   "Open Subdiv Quality"             type    float             default { "1" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_quality" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_vtxinterp"             label   "OSD Vtx Interp"             type    integer             default { "2" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "No vertex interpolation"                 "1" "Edges only"                 "2" "Edges and Corners"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_vtxinterp" }             parmtag { "spare_category" "Geometry" }         }         parm {             name    "vm_osd_fvarinterp"             label   "OSD FVar Interp"             type    integer             default { "4" }             hidewhen "{ vm_rendersubd == 0 vm_subdstyle != osd_catclark }"             menu {                 "0" "Smooth everywhere"                 "1" "Sharpen corners only"                 "2" "Sharpen edges and corners"                 "3" "Sharpen edges and propagated corners"                 "4" "Sharpen all boundaries"                 "5" "Bilinear interpolation"             }             range   { 0 10 }             parmtag { "mantra_class" "object" }             parmtag { "mantra_name" "osd_fvarinterp" }             parmtag { "spare_category" "Geometry" }         }         group {             name    "folder0"             label   "Shading"              parm {                 name    "categories"                 label   "Categories"                 type    string                 default { "" }                 help    "A list of tags which can be used to select the object"                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "reflectmask"                 label   "Reflection Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be reflected on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "refractmask"                 label   "Refraction Mask"                 type    oplist                 default { "*" }                 help    "Objects that will be refracted on this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/GEOMETRY!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightmask"                 label   "Light Mask"                 type    oplist                 default { "*" }                 help    "Lights that illuminate this object."                 parmtag { "opexpand" "1" }                 parmtag { "opfilter" "!!OBJ/LIGHT!!" }                 parmtag { "oprelative" "/obj" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "lightcategories"                 label   "Light Selection"                 type    string                 default { "*" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_lpetag"                 label   "LPE Tag"                 type    string                 default { "" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "lpetag" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilter"                 label   "Volume Filter"                 type    string                 default { "box" }                 menu {                     "box"       "Box Filter"                     "gaussian"  "Gaussian"                     "bartlett"  "Bartlett (triangle)"                     "catrom"    "Catmull-Rom"                     "hanning"   "Hanning"                     "blackman"  "Blackman"                     "sinc"      "Sinc (sharpening)"                 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filter" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_volumefilterwidth"                 label   "Volume Filter Width"                 type    float                 default { "1" }                 range   { 0.001 5 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "filterwidth" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_matte"                 label   "Matte shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "matte" }                 parmtag { "spare_category" "Shading" }             }             parm {                 name    "vm_rayshade"                 label   "Raytrace Shading"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rayshade" }                 parmtag { "spare_category" "Shading" }             }         }          group {             name    "folder0_1"             label   "Sampling"              parm {                 name    "geo_velocityblur"                 label   "Geometry Velocity Blur"                 type    ordinal                 default { "off" }                 disablewhen "{ allowmotionblur == 0 }"                 menu {                     "off"       "No Velocity Blur"                     "on"        "Velocity Blur"                     "accelblur" "Acceleration Blur"                 }             }             parm {                 name    "geo_accelattribute"                 label   "Acceleration Attribute"                 type    string                 default { "accel" }                 hidewhen "{ geo_velocityblur != accelblur }"                 parmtag { "spare_category" "Sampling" }             }         }          group {             name    "folder0_2"             label   "Dicing"              parm {                 name    "vm_shadingquality"                 label   "Shading Quality"                 type    float                 default { "1" }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "shadingquality" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_flatness"                 label   "Dicing Flatness"                 type    float                 default { "0.05" }                 range   { 0 1 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "flatness" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_raypredice"                 label   "Ray Predicing"                 type    integer                 default { "0" }                 menu {                     "0" "Disable Predicing"                     "1" "Full Predicing"                     "2" "Precompute Bounds"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "raypredice" }                 parmtag { "spare_category" "Dicing" }             }             parm {                 name    "vm_curvesurface"                 label   "Shade Curves As Surfaces"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "curvesurface" }                 parmtag { "spare_category" "Dicing" }             }         }          group {             name    "folder0_3"             label   "Geometry"              parm {                 name    "vm_rmbackface"                 label   "Backface Removal"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rmbackface" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "shop_geometrypath"                 label   "Procedural Shader"                 type    oppath                 default { "" }                 parmtag { "opfilter" "!!SHOP/GEOMETRY!!" }                 parmtag { "oprelative" "." }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_forcegeometry"                 label   "Force Procedural Geometry Output"                 type    toggle                 default { "1" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_rendersubdcurves"                 label   "Render Polygon Curves As Subdivision (Mantra)"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "rendersubdcurves" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpoints"                 label   "Render As Points (Mantra)"                 type    integer                 default { "2" }                 menu {                     "0" "No Point Rendering"                     "1" "Render Only Points"                     "2" "Render Unconnected Points"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_renderpointsas"                 label   "Render Points As (Mantra)"                 type    integer                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 menu {                     "0" "Spheres"                     "1" "Circles"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "renderpointsas" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_usenforpoints"                 label   "Use N For Point Rendering"                 type    toggle                 default { "0" }                 disablewhen "{ vm_renderpoints == 0 }"                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "usenforpoints" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pointscale"                 label   "Point Scale"                 type    float                 default { "1" }                 disablewhen "{ vm_renderpoints == 0 }"                 range   { 0! 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pointscale" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_pscalediameter"                 label   "Treat Point Scale as Diameter Instead of Radius"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "pscalediameter" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_metavolume"                 label   "Metaballs as Volume"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "metavolume" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_coving"                 label   "Coving"                 type    integer                 default { "1" }                 menu {                     "0" "Disable Coving"                     "1" "Coving for displacement/sub-d"                     "2" "Coving for all primitives"                 }                 range   { 0 10 }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "coving" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_materialoverride"                 label   "Material Override"                 type    string                 default { "compact" }                 menu {                     "none"      "Disabled"                     "full"      "Evaluate for Each Primitve/Point"                     "compact"   "Evaluate Once"                 }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_overridedetail"                 label   "Ignore Geometry Attribute Shaders"                 type    toggle                 default { "0" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "overridedetail" }                 parmtag { "spare_category" "Geometry" }             }             parm {                 name    "vm_procuseroottransform"                 label   "Proc Use Root Transform"                 type    toggle                 default { "1" }                 parmtag { "mantra_class" "object" }                 parmtag { "mantra_name" "procuseroottransform" }                 parmtag { "spare_category" "Geometry" }             }         }      }      group {         name    "stdswitcher4_2"         label   "Misc"          parm {             name    "use_dcolor"             baseparm             label   "Set Wireframe Color"             export  none         }         parm {             name    "dcolor"             baseparm             label   "Wireframe Color"             export  none         }         parm {             name    "picking"             baseparm             label   "Viewport Selecting Enabled"             export  none         }         parm {             name    "pickscript"             baseparm             label   "Select Script"             export  none         }         parm {             name    "caching"             baseparm             label   "Cache Object Transform"             export  none         }         parm {             name    "vport_shadeopen"             baseparm             label   "Shade Open Curves In Viewport"             export  none         }         parm {             name    "vport_displayassubdiv"             baseparm             label   "Display as Subdivision in Viewport"             invisible             export  none         }         parm {             name    "vport_onionskin"             baseparm             label   "Onion Skinning"             export  none         }     }  ' RoofAd
opset -S on RoofAd
opparm -V 20.5.370 RoofAd stdswitcher ( 0 0 0 ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) pr ( 0 0 0 ) scale ( 1 ) pre_xform ( clean ) keeppos ( off ) childcomp ( off ) constraints_on ( off ) constraints_path ( "" ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( on ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher4 ( 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) vm_osd_quality ( 1 ) vm_osd_vtxinterp ( 2 ) vm_osd_fvarinterp ( 4 ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) lightcategories ( * ) vm_lpetag ( "" ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) geo_accelattribute ( accel ) vm_shadingquality ( 1 ) vm_flatness ( 0.05 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_overridedetail ( off ) vm_procuseroottransform ( on )
chlock RoofAd -*
chautoscope RoofAd -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off -x off RoofAd
opexprlanguage -s hscript RoofAd
opuserdata -n '___Version___' -v '20.5.370' RoofAd
opcf RoofAd

# Network Box __netbox6
nbadd __netbox6
nblocate -x -5.48304 -y 1.36873 __netbox6
nbsize -w 3.43269 -h 2.97892 __netbox6
nbset  -m off __netbox6
nbcolor -c 0.52 0.52 0.52 __netbox6

# Node add1 (Sop/add)
opadd -e -n add add1
oplocate -x -3.0223200000000001 -y 14.2095 add1
opspareds "" add1
opparm add1  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add1 stdswitcher ( 1 1 1 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 5 0 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 5 0 3 ) weight2 ( 1 )
chlock add1 -*
chautoscope add1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add1
opexprlanguage -s hscript add1
opuserdata -n '___Version___' -v '20.5.370' add1

# Node circle1 (Sop/circle)
opadd -e -n circle circle1
oplocate -x -8.7146100000000004 -y 10.2821 circle1
opspareds "" circle1
opparm -V 20.5.370 circle1 type ( poly ) orient ( zx ) reverse ( on ) rad ( 3 3 ) t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 ) order ( 4 ) divs ( 8 ) arc ( closed ) angle ( 0 360 ) imperfect ( on )
chlock circle1 -*
chautoscope circle1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off circle1
opexprlanguage -s hscript circle1
opuserdata -n '___Version___' -v '20.5.370' circle1

# Node osm_import1 (labs::Sop/osm_import)
opadd -e -n labs::osm_import osm_import1
oplocate -x -0.16044900000000001 -y 17.061499999999999 osm_import1
opspareds "" osm_import1
opparm -V 370 osm_import1 osm_file ( '$HIP/testosm/osm/map.osm' ) build_nodes ( off ) read_building_colors ( off ) only_close_buildings ( on )
chlock osm_import1 -*
chautoscope osm_import1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off osm_import1
opexprlanguage -s hscript osm_import1
opuserdata -n '___Version___' -v '370' osm_import1

# Node osm_filter1 (labs::Sop/osm_filter)
opadd -e -n labs::osm_filter osm_filter1
oplocate -x -0.16044900000000001 -y 16.0718 osm_filter1
opspareds "" osm_filter1
opparm -V 370 osm_filter1 fd_buildings ( 0 ) buildings ( on ) building_parts ( off ) fd_roads ( 0 ) roads ( off ) motorway_roads ( on ) primary_roads ( on ) secondary_roads ( on ) tertiary_roads ( on ) residential_roads ( on ) footway_roads ( on ) pedestrian_roads ( on ) other_roads ( off ) other_data ( off )
chlock osm_filter1 -*
chautoscope osm_filter1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off osm_filter1
opexprlanguage -s hscript osm_filter1
opuserdata -n '___Version___' -v '370' osm_filter1

# Node blast1 (Sop/blast)
opadd -e -n blast blast1
oplocate -x -0.16044900000000001 -y 12.8689 blast1
opspareds "" blast1
opparm -V 20.5.370 blast1 group ( 0-5 ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast1 -*
chautoscope blast1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast1
opexprlanguage -s hscript blast1
opuserdata -n '___Version___' -v '20.5.370' blast1

# Node fuse3 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse3
oplocate -x -0.16044900000000001 -y 15.0505 fuse3
opspareds "" fuse3
opparm fuse3  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse3 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse3 -*
chautoscope fuse3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse3
opexprlanguage -s hscript fuse3
opuserdata -n '___Version___' -v '20.5.370' fuse3

# Node matchsize1 (Sop/matchsize)
opadd -e -n matchsize matchsize1
oplocate -x -0.16044900000000001 -y 11.1548 matchsize1
opspareds "" matchsize1
opparm matchsize1 group ( "" ) grouptype ( guess ) sepparm ( ) justifytarget ( auto ) doboundgroup ( off ) folder2 ( 0 ) sourcegroup ( "" ) sourcegrouptype ( guess ) refgroup ( "" ) refgrouptype ( guess ) folder1 ( 0 ) t ( 0 0 0 ) size ( 1 1 1 ) folder0 ( 0 ) dotranslate ( on ) justify_x ( center ) goal_x ( same ) offset_x ( 0 ) justify_y ( center ) goal_y ( same ) offset_y ( 0 ) justify_z ( center ) goal_z ( same ) offset_z ( 0 ) doscale ( off ) uniformscale ( on ) scale_axis ( min ) scale_x ( on ) scale_y ( on ) scale_z ( on ) restorexform ( off ) restoreattrib ( xform ) stashxform ( off ) stashattrib ( xform ) stashmerge ( replace )
chlock matchsize1 -*
chautoscope matchsize1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off matchsize1
opexprlanguage -s hscript matchsize1
opuserdata -n '___Version___' -v '' matchsize1

# Node polypath3 (Sop/polypath)
opadd -e -n polypath polypath3
oplocate -x -8.2937799999999999 -y 8.8535199999999996 polypath3
opspareds "" polypath3
opparm polypath3 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath3 -*
chautoscope polypath3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath3
opexprlanguage -s hscript polypath3
opuserdata -n '___Version___' -v '' polypath3

# Node add2 (Sop/add)
opadd -e -n add add2
oplocate -x 6.1650299999999998 -y 10.8102 add2
opspareds "" add2
opparm add2  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add2 stdswitcher ( 0 0 0 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( on ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 15 0 0 ) weight1 ( 17.949054260110355 ) usept2 ( on ) pt2 ( 15 0 -13 ) weight2 ( 1 )
chlock add2 -*
chautoscope add2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add2
opexprlanguage -s hscript add2
opuserdata -n '___Version___' -v '20.5.370' add2

# Node sort5 (Sop/sort)
opadd -e -n sort sort5
oplocate -x -0.16044900000000001 -y 10.1548 sort5
opspareds "" sort5
opparm -V 20.5.370 sort5 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort5 -*
chautoscope sort5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort5
opexprlanguage -s hscript sort5
opuserdata -n '___Version___' -v '20.5.370' sort5

# Node add3 (Sop/add)
opadd -e -n add add3
oplocate -x -4.9995700000000003 -y 14.2095 add3
opspareds "" add3
opparm add3  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add3 stdswitcher ( 1 1 1 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 5 0 0 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 5 0 3 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 0 0 0 ) weight2 ( 1 )
chlock add3 -*
chautoscope add3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add3
opexprlanguage -s hscript add3
opuserdata -n '___Version___' -v '20.5.370' add3

# Node add4 (Sop/add)
opadd -e -n add add4
oplocate -x -7.1867799999999997 -y 14.2095 add4
opspareds "" add4
opparm add4  points ( 3 ) prims ( 1 )
opparm -V 20.5.370 add4 stdswitcher ( 1 1 1 ) keep ( off ) points ( 3 ) remove ( off ) switcher ( 1 1 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) prim0 ( "" ) closed0 ( off ) usept0 ( on ) pt0 ( 5 0 3 ) weight0 ( 1 ) usept1 ( on ) pt1 ( 0 0 0 ) weight1 ( 1 ) usept2 ( on ) pt2 ( 5 0 0 ) weight2 ( 1 )
chlock add4 -*
chautoscope add4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add4
opexprlanguage -s hscript add4
opuserdata -n '___Version___' -v '20.5.370' add4

# Node switch1 (Sop/switch)
opadd -e -n switch switch1
oplocate -x -5.0575999999999999 -y 12.826499999999999 switch1
opspareds "" switch1
opparm -V 20.5.370 switch1 input ( 0 )
chlock switch1 -*
chautoscope switch1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch1
opexprlanguage -s hscript switch1
opuserdata -n '___Version___' -v '20.5.370' switch1

# Node polypath4 (Sop/polypath)
opadd -e -n polypath polypath4
oplocate -x -5.0575999999999999 -y 9.5769900000000003 polypath4
opspareds "" polypath4
opparm polypath4 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath4 -*
chautoscope polypath4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath4
opexprlanguage -s hscript polypath4
opuserdata -n '___Version___' -v '' polypath4

# Node polypath5 (Sop/polypath)
opadd -e -n polypath polypath5
oplocate -x -0.16044900000000001 -y 9.0449800000000007 polypath5
opspareds "" polypath5
opparm polypath5 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath5 -*
chautoscope polypath5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath5
opexprlanguage -s hscript polypath5
opuserdata -n '___Version___' -v '' polypath5

# Node transform2 (Sop/xform)
opadd -e -n xform transform2
oplocate -x -5.0575999999999999 -y 11.6868 transform2
opspareds "" transform2
opparm -V 20.5.370 transform2 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 2 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform2 -*
chautoscope transform2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform2
opexprlanguage -s hscript transform2
opuserdata -n '___Version___' -v '20.5.370' transform2

# Node sort6 (Sop/sort)
opadd -e -n sort sort6
oplocate -x -4.9995700000000003 -y 10.577 sort6
opspareds "" sort6
opparm -V 20.5.370 sort6 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( rev ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort6 -*
chautoscope sort6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort6
opexprlanguage -s hscript sort6
opuserdata -n '___Version___' -v '20.5.370' sort6

# Node switch2 (Sop/switch)
opadd -e -n switch switch2
oplocate -x -4.2666899999999996 -y 6.89147 switch2
opspareds "" switch2
opparm -V 20.5.370 switch2 input ( 4 )
chlock switch2 -*
chautoscope switch2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off switch2
opexprlanguage -s hscript switch2
opuserdata -n '___Version___' -v '20.5.370' switch2

# Node polypath6 (Sop/polypath)
opadd -e -n polypath polypath6
oplocate -x 4.2331799999999999 -y 9.5769900000000003 polypath6
opspareds "" polypath6
opparm polypath6 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath6 -*
chautoscope polypath6 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath6
opexprlanguage -s hscript polypath6
opuserdata -n '___Version___' -v '' polypath6

# Node line1 (Sop/line)
opadd -e -n line line1
oplocate -x 6.9419899999999997 -y 8.9405400000000004 line1
opspareds "" line1
opparm -V 20.5.370 line1 type ( poly ) origin ( 0 0 0 ) dir ( 0.9527452800668663 0 0.3037703594992531 ) dist ( 7.857512950897217 ) points ( 0 ) order ( 4 )
chlock line1 -*
chautoscope line1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off line1
opexprlanguage -s hscript line1
opuserdata -n '___Version___' -v '20.5.370' line1

# Node billboard (Sop/subnet)
opadd -e -n subnet billboard
oplocate -x -4.2428400000000002 -y 0.27978700000000001 billboard
opspareds '    parm {         name    "label1"         baseparm         label   "Input #1 Label"         export  all     }     parm {         name    "label2"         baseparm         label   "Input #2 Label"         export  all     }     parm {         name    "label3"         baseparm         label   "Input #3 Label"         export  all     }     parm {         name    "label4"         baseparm         label   "Input #4 Label"         export  all     }     parm {         name    "BoardFrameSize"         label   "BoardFrameSize"         type    float         default { "0.05" }         range   { 0.01! 0.2! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SupportSize"         label   "SupportSize"         type    float         default { "0.15" }         range   { 0.1! 0.5! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BillboardHeght"         label   "BillboardHeght"         type    integer         default { "0" }         range   { 0! 5! }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BillboardBottomOffset"         label   "BillboardBottomOffset"         type    float         default { "0.4" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "BillboardFrontOffset"         label   "BillboardFrontOffset"         type    float         default { "0.4" }         range   { 0! 10 }         parmtag { "script_callback_language" "python" }     }     parm {         name    "SupportInterval"         label   "SupportInterval"         type    float         default { "3" }         range   { 1! 10 }         parmtag { "script_callback_language" "python" }     } ' billboard
opparm -V 20.5.370 billboard label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) BoardFrameSize ( 0.05 ) SupportSize ( 0.1 ) BillboardHeght ( 1 ) BillboardBottomOffset ( 0.5 ) BillboardFrontOffset ( 0.15 ) SupportInterval ( 3 )
chlock billboard -*
chautoscope billboard -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off billboard
opexprlanguage -s hscript billboard
opuserdata -n '___Version___' -v '20.5.370' billboard
opcf billboard

# Network Box __netbox6
nbadd __netbox6
nblocate -x -0.174694 -y 4.73329 __netbox6
nbsize -w 4.02237 -h 2.3138 __netbox6
nbset  -m off __netbox6
nbcolor -c 0.52 0.52 0.52 __netbox6

# Network Box __netbox5
nbadd __netbox5
nblocate -x -2.5005 -y -8.12568 __netbox5
nbsize -w 2.91588 -h 2.53276 __netbox5
nbset  -m off __netbox5
nbcolor -c 0.52 0.52 0.52 __netbox5

# Network Box __netbox4
nbadd __netbox4
nblocate -x -3.91298 -y -4.93767 __netbox4
nbsize -w 5.86716 -h 7.47924 __netbox4
nbset  -m off __netbox4
nbcolor -c 0.52 0.52 0.52 __netbox4

# Network Box __netbox3
nbadd __netbox3
nblocate -x -2.5005 -y -14.9221 __netbox3
nbsize -w 2.98314 -h 1.62616 __netbox3
nbset  -m off __netbox3
nbcolor -c 0.52 0.52 0.52 __netbox3

# Network Box __netbox2
nbadd __netbox2
nblocate -x -2.5005 -y -12.5055 __netbox2
nbsize -w 2.98314 -h 2.71616 __netbox2
nbset  -m off __netbox2
nbcolor -c 0.52 0.52 0.52 __netbox2

# Network Box __netbox1
nbadd __netbox1
nblocate -x 2.4029 -y -7.9184 __netbox1
nbsize -w 2.803 -h 4.74926 __netbox1
nbset  -m off __netbox1
nbcolor -c 0.52 0.52 0.52 __netbox1

# Node polyextrude_height (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_height
oplocate -x 7.7094800000000001 -y 0.52590000000000003 polyextrude_height
opspareds "" polyextrude_height
opparm polyextrude_height  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude_height dist
chkey -t 0 -v 0.73299999999999998 -m 0 -a 0 -A 0 -T a  -F 'detail("../Dims", "BillboardHeights", ch("../BillboardHeght"))' polyextrude_height/dist
chblockend
opparm -V 20.5.370 polyextrude_height group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) ptnormalsrc ( attribute ) ptnormalattrib ( SignboardUp ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_height -* +dist
chautoscope polyextrude_height -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude_height
opexprlanguage -s hscript polyextrude_height
opuserdata -n '___Version___' -v '20.5.370' polyextrude_height

# Node sweep3 (Sop/sweep::2.0)
opadd -e -n sweep::2.0 sweep3
oplocate -x -1.7346200000000001 -y -8.9867899999999992 sweep3
opspareds "" sweep3
opparm sweep3  scaleramp ( 2 )
opparm -V 20.5.370 sweep3 curvegroup ( "" ) crosssectiongroup ( "" ) sepparm ( ) surface_folder ( 1 1 1 ) surfaceshape ( input ) surfacetype ( quads ) scale ( 1 ) cols ( 1 ) radius ( 0.1 ) width ( 0.1 ) reversecrosssections ( off ) stretcharoundturns ( on ) maxstretcharoundturns ( 10 ) endcaps_folder ( 0 ) endcaptype ( single ) capdivs ( 3 ) triangularpoles ( off ) capscale ( 1 ) caproundness ( 1 ) addendcapsgroup ( off ) endcapsgroup ( endcaps ) scale_folder ( 0 ) applyscale ( off ) scaleramp ( 2 ) rotation_folder ( 0 ) rOrd ( xyz ) applyroll ( on ) roll ( 0 ) fulltwists ( 0 ) incroll ( 0 ) rollper ( fulldistance ) rollattrib ( roll ) sepparmroll ( ) applyyaw ( off ) yaw ( 0 ) incyaw ( 0 ) yawper ( fulldistance ) yawattrib ( yaw ) sepparmyaw ( ) applypitch ( off ) pitch ( 0 ) incpitch ( 0 ) pitchper ( fulldistance ) pitchattrib ( pitch ) cross_sections_folder ( 0 ) copyorder ( each ) crosssectionattrib ( variant ) primtype ( auto ) unrollclosedrowcol ( off ) swaprowcol ( off ) closeifnocurveinput ( off ) up_folder ( 0 ) upvectortype ( y ) upvectoratstart ( on ) useendupvector ( off ) upvectorattrib ( N ) endupvectorattrib ( end_up ) upvector ( 0 1 0 ) endupvector ( 0 1 0 ) tangents_folder ( 0 ) tangenttype ( avgdir ) continuousclosed ( on ) extrapolateendtangents ( off ) transformbyattribs ( on ) uv_folder ( 0 ) computeuvs ( off ) overrideexistinguvs ( off ) lengthweighteduvs ( on ) normalizeu ( on ) normalizev ( off ) flipu ( on ) uvscale_folder ( 0 ) uvscale ( 1 1 ) usemeshedgelengths ( on ) propscalepercurve ( on ) uvseams_folder ( 0 ) wrapu ( on ) wrapv ( on ) attributes_folder ( 0 ) input_folder ( 0 ) attribsfrombackbone ( '* ^P ^N ^up ^pscale ^scale ^orient ^rot ^pivot ^trans ^transform' ) attribsfromcrosssection ( * ) output_folder ( 0 ) addptrow ( off ) ptrowattrib ( ptrow ) addptcol ( off ) ptcolattrib ( ptcol ) addprimrow ( off ) primrowattrib ( primrow ) addprimcol ( off ) primcolattrib ( primcol ) addcrosssectionnum ( off ) crosssectionnumattrib ( crossnum ) addcurvenum ( off ) curvenumattrib ( curvenum ) scaleramp1pos ( 0 ) scaleramp1value ( 1 ) scaleramp1interp ( linear ) scaleramp2pos ( 1 ) scaleramp2value ( 1 ) scaleramp2interp ( linear )
chlock sweep3 -*
chautoscope sweep3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sweep3
opexprlanguage -s hscript sweep3
opuserdata -n '___Version___' -v '20.5.370' sweep3

# Node attribwrangle3 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle3
oplocate -x 7.70648 -y -5.2775699999999999 attribwrangle3
opspareds "" attribwrangle3
opparm attribwrangle3  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle3 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'if( @group_Signboard )\n    s@component_type = "Signboard";\nelse\n    s@component_type = "Backside";' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle3 -*
chautoscope attribwrangle3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle3
opexprlanguage -s hscript attribwrangle3
opuserdata -n '___Version___' -v '' attribwrangle3

# Node polyextrude_front_panel (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_front_panel
oplocate -x 7.7094800000000001 -y -1.52067 polyextrude_front_panel
opspareds "" polyextrude_front_panel
opparm polyextrude_front_panel  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 polyextrude_front_panel dist
chkey -t 0 -v 0.21199999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../BillboardFrontOffset")' polyextrude_front_panel/dist
chblockend
opparm -V 20.5.370 polyextrude_front_panel group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( on ) frontgrp ( Signboard ) outputback ( on ) outputbackgrp ( on ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_front_panel -* +dist
chautoscope polyextrude_front_panel -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyextrude_front_panel
opexprlanguage -s hscript polyextrude_front_panel
opuserdata -n '___Version___' -v '20.5.370' polyextrude_front_panel

# Node create_backdideframe (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 create_backdideframe
oplocate -x 7.7094800000000001 -y -2.6776800000000001 create_backdideframe
opspareds "" create_backdideframe
opparm create_backdideframe  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 create_backdideframe inset
chkey -t 0 -v 0.029999999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../BoardFrameSize")' create_backdideframe/inset
chblockend
opparm -V 20.5.370 create_backdideframe group ( extrudeBack ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( 0 ) inset ( inset ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( on ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( on ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock create_backdideframe -* +inset
chautoscope create_backdideframe -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off create_backdideframe
opexprlanguage -s hscript create_backdideframe
opuserdata -n '___Version___' -v '20.5.370' create_backdideframe

# Node dent_backsideframe (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 dent_backsideframe
oplocate -x 7.7094800000000001 -y -3.9206599999999998 dent_backsideframe
opspareds "" dent_backsideframe
opparm dent_backsideframe  thicknessramp ( 2 ) twistramp ( 2 )
chblockbegin
chadd -t 0 0 dent_backsideframe dist
chkey -t 0 -v -0.050000000000000003 -m 0 -a 0 -A 0 -T a  -F '-ch("../BoardFrameSize")' dent_backsideframe/dist
chblockend
opparm -V 20.5.370 dent_backsideframe group ( extrudeBack ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( dist ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( off ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock dent_backsideframe -* +dist
chautoscope dent_backsideframe -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off dent_backsideframe
opexprlanguage -s hscript dent_backsideframe
opuserdata -n '___Version___' -v '20.5.370' dent_backsideframe

# Node reverse_to_face_outside (Sop/reverse)
opadd -e -n reverse reverse_to_face_outside
oplocate -x 7.7094800000000001 -y -0.52705000000000002 reverse_to_face_outside
opspareds "" reverse_to_face_outside
opparm -V 20.5.370 reverse_to_face_outside group ( "" ) vtxsort ( reverseu ) vtxuoff ( 0 ) vtxvoff ( 0 )
chlock reverse_to_face_outside -*
chautoscope reverse_to_face_outside -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off reverse_to_face_outside
opexprlanguage -s hscript reverse_to_face_outside
opuserdata -n '___Version___' -v '20.5.370' reverse_to_face_outside

# Node add_signboear_up_vector_attrib (Sop/attribwrangle)
opadd -e -n attribwrangle add_signboear_up_vector_attrib
oplocate -x 7.70648 -y 1.65961 add_signboear_up_vector_attrib
opspareds "" add_signboear_up_vector_attrib
opparm add_signboear_up_vector_attrib  bindings ( 0 ) groupbindings ( 0 )
opparm add_signboear_up_vector_attrib folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@SignboardUp={0,1,0};' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock add_signboear_up_vector_attrib -*
chautoscope add_signboear_up_vector_attrib -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off add_signboear_up_vector_attrib
opexprlanguage -s hscript add_signboear_up_vector_attrib
opuserdata -n '___Version___' -v '' add_signboear_up_vector_attrib

# Node normal1 (Sop/normal)
opadd -e -n normal normal1
oplocate -x 7.7094800000000001 -y -6.8362499999999997 normal1
opspareds "" normal1
opparm -V 20.5.370 normal1 group ( "" ) grouptype ( guess ) overridenormal ( off ) normalattrib ( N ) construct ( 0 ) docompute ( on ) type ( typevertex ) cuspangle ( 30 ) method ( 1 ) origifzero ( on ) modify ( 0 ) normalize ( off ) reverse ( off )
chlock normal1 -*
chautoscope normal1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off normal1
opexprlanguage -s hscript normal1
opuserdata -n '___Version___' -v '20.5.370' normal1

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 3.3368799999999998 -y -16.9008 merge2
opspareds "" merge2
opparm -V 20.5.370 merge2
chlock merge2 -*
chautoscope merge2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '20.5.370' merge2

# Node gen_diagonal_frame (Sop/attribwrangle)
opadd -e -n attribwrangle gen_diagonal_frame
oplocate -x -1.7376199999999999 -y -4.69977 gen_diagonal_frame
opspareds "" gen_diagonal_frame
opparm gen_diagonal_frame  bindings ( 0 ) groupbindings ( 0 )
opparm gen_diagonal_frame folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'int numprims = @numprim;\nint numpoints = npoints(0);\nint points_per_prim = numpoints / numprims;\n\n//printf( "%d, %d\\n", numprims, numpoints);\n\nfor( int i=0; i<points_per_prim; ++i )\n{\n    int newprim = addprim(0, "polyline");\n    //int pts[];\n    for( int j=0; j<=numprims; ++j)\n    {\n        addvertex( 0, newprim, points_per_prim*(j%numprims)+i );\n        //append(pts, points_per_prim*j+i);\n    }\n//    printf("%d\\n", pts);\n}\n\nreturn;\nfor( int i=0; i<points_per_prim; ++i )\n{\n    vector  pt0 = point(0, "P", points_per_prim*(0)+i ),\n            pt1 = point(0, "P", points_per_prim*(numprims-1)+i );\n   \n    int newpt = addpoint(0, 0.5*(pt0+pt1) );\n    \n    int newprim = addprim(0, "polyline");\n    addvertex( 0, newprim, points_per_prim+i );\n    addvertex( 0, newprim, newpt );\n//    printf("%d\\n", pts);\n}' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock gen_diagonal_frame -*
chautoscope gen_diagonal_frame -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off gen_diagonal_frame
nbop __netbox4 add gen_diagonal_frame
opexprlanguage -s hscript gen_diagonal_frame
opuserdata -n '___Version___' -v '' gen_diagonal_frame

# Node grid3 (Sop/grid)
opadd -e -n grid grid3
oplocate -x 2.8029000000000002 -y -3.6691400000000001 grid3
opspareds "" grid3
chblockbegin
chadd -t 0 0 grid3 sizex
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../SupportSize")*0.5' grid3/sizex
chadd -t 0 0 grid3 sizey
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../SupportSize")' grid3/sizey
chblockend
opparm -V 20.5.370 grid3 type ( poly ) surftype ( rowcol ) orient ( xy ) size ( sizex sizey ) t ( 0 0 0 ) r ( 0 0 0 ) rows ( 2 ) cols ( 3 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid3 -* +sizex +sizey
chautoscope grid3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off grid3
nbop __netbox1 add grid3
opexprlanguage -s hscript grid3
opuserdata -n '___Version___' -v '20.5.370' grid3

# Node blast3 (Sop/blast)
opadd -e -n blast blast3
oplocate -x 2.8029000000000002 -y -4.6539799999999998 blast3
opspareds "" blast3
opparm -V 20.5.370 blast3 group ( '2 4' ) grouptype ( prims ) computenorms ( on ) negate ( off ) fillhole ( off ) removegrp ( on )
chlock blast3 -*
chautoscope blast3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off blast3
nbop __netbox1 add blast3
opexprlanguage -s hscript blast3
opuserdata -n '___Version___' -v '20.5.370' blast3

# Node attribwrangle5 (Sop/attribwrangle)
opadd -e -n attribwrangle attribwrangle5
oplocate -x 2.8029000000000002 -y -5.6938800000000001 attribwrangle5
opspareds "" attribwrangle5
opparm attribwrangle5  bindings ( 0 ) groupbindings ( 0 )
opparm attribwrangle5 folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@N=set(0,0,-1);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock attribwrangle5 -*
chautoscope attribwrangle5 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off attribwrangle5
nbop __netbox1 add attribwrangle5
opexprlanguage -s hscript attribwrangle5
opuserdata -n '___Version___' -v '' attribwrangle5

# Node polyexpand2d1 (Sop/polyexpand2d)
opadd -e -n polyexpand2d polyexpand2d1
oplocate -x 2.8058999999999998 -y -6.5462300000000004 polyexpand2d1
opspareds "" polyexpand2d1
opparm -V 20.5.370 polyexpand2d1 group ( "" ) planepossrc ( fitplane ) planeorigin ( 0 0 0 ) planedist ( 0 ) planenormal ( 0 1 0 ) output ( curves ) offset ( 0.005 ) divs ( 1 ) sidedetermination ( simplereach ) outputinside ( on ) outputoutside ( on ) keepinput ( off ) omitendcaps ( off ) localattribssection ( 0 ) uselocalinsidescale ( off ) localinsidescale ( offsetscale ) uselocaloutsidescale ( off ) localoutsidescale ( offsetscale ) newg ( off ) insidegroup ( inside ) outsidegroup ( outside ) doedgedistattrib ( off ) edgedistattrib ( edgedist ) doedgespeedattrib ( off ) edgespeedattrib ( edgespeed ) coincidencetol ( 0.003 ) parallelismtol ( 0.01 ) skeletonfailure ( error ) cacheskeleton ( on ) updatenmls ( on )
chlock polyexpand2d1 -*
chautoscope polyexpand2d1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polyexpand2d1
nbop __netbox1 add polyexpand2d1
opexprlanguage -s hscript polyexpand2d1
opuserdata -n '___Version___' -v '20.5.370' polyexpand2d1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -0.445824 -y -0.65166999999999997 transform1
opspareds "" transform1
chblockbegin
chadd -t 0 0 transform1 ty
chkey -t 0 -v 3.1000000000000001 -m 0 -a 0 -A 0 -T a  -F 'detail("../Dims", "BillboardHeights", ch("../BillboardHeght")) + ch("../BillboardBottomOffset")' transform1/ty
chblockend
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -* +ty
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform1
nbop __netbox4 add transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node polyextrude4 (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude4
oplocate -x -3.5129800000000002 -y -0.65166999999999997 polyextrude4
opspareds "" polyextrude4
opparm polyextrude4  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 20.5.370 polyextrude4 group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) ptnormalsrc ( precompute ) ptnormalattrib ( N ) dist ( -0.661 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivotxformsection ( 0 ) pivot ( 0 0 0 ) pivotrotate ( 0 0 0 ) prexformsection ( 0 ) prexform_rst ( srt ) prexform_xyz ( xyz ) prexform_translate ( 0 0 0 ) prexform_rotate ( 0 0 0 ) prexform_scale ( 1 1 1 ) prexform_shear ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( off ) outputsidegrp ( off ) sidegrp ( extrudeSide ) outputfrontseamgrp ( on ) frontseamgrp ( extrudeFrontSeam ) outputbackseamgrp ( off ) backseamgrp ( extrudeBackSeam ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) uvssection ( 0 ) genuvs ( on ) uvstyle ( proprtional ) uvscaling ( matchuv ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.1 ) backblend ( 0.1 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude4 -*
chautoscope polyextrude4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polyextrude4
nbop __netbox4 add polyextrude4
opexprlanguage -s hscript polyextrude4
opuserdata -n '___Version___' -v '20.5.370' polyextrude4

# Node blast4 (Sop/blast)
opadd -e -n blast blast4
oplocate -x -3.5129800000000002 -y -1.39394 blast4
opspareds "" blast4
opparm -V 20.5.370 blast4 group ( extrudeFrontSeam ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast4 -*
chautoscope blast4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast4
nbop __netbox4 add blast4
opexprlanguage -s hscript blast4
opuserdata -n '___Version___' -v '20.5.370' blast4

# Node sort3 (Sop/sort)
opadd -e -n sort sort3
oplocate -x -3.5129800000000002 -y -2.21502 sort3
opspareds "" sort3
opparm -V 20.5.370 sort3 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort3 -*
chautoscope sort3 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort3
nbop __netbox4 add sort3
opexprlanguage -s hscript sort3
opuserdata -n '___Version___' -v '20.5.370' sort3

# Node merge1 (Sop/merge)
opadd -e -n merge merge1
oplocate -x -1.73577 -y -3.7762500000000001 merge1
opspareds "" merge1
opparm -V 20.5.370 merge1
chlock merge1 -*
chautoscope merge1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off merge1
nbop __netbox4 add merge1
opexprlanguage -s hscript merge1
opuserdata -n '___Version___' -v '20.5.370' merge1

# Node normal2 (Sop/normal)
opadd -e -n normal normal2
oplocate -x -1.7346200000000001 -y -13.790900000000001 normal2
opspareds "" normal2
opparm -V 20.5.370 normal2 group ( "" ) grouptype ( guess ) overridenormal ( off ) normalattrib ( N ) construct ( 0 ) docompute ( on ) type ( typevertex ) cuspangle ( 60 ) method ( 1 ) origifzero ( on ) modify ( 0 ) normalize ( off ) reverse ( off )
chlock normal2 -*
chautoscope normal2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off normal2
nbop __netbox3 add normal2
opexprlanguage -s hscript normal2
opuserdata -n '___Version___' -v '20.5.370' normal2

# Node split_to_linesgments (Sop/polypath)
opadd -e -n polypath split_to_linesgments
oplocate -x -1.7346200000000001 -y -6.9466700000000001 split_to_linesgments
opspareds "" split_to_linesgments
opparm split_to_linesgments connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock split_to_linesgments -*
chautoscope split_to_linesgments -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off split_to_linesgments
nbop __netbox5 add split_to_linesgments
opexprlanguage -s hscript split_to_linesgments
opuserdata -n '___Version___' -v '' split_to_linesgments

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x 2.8058999999999998 -y -7.5676699999999997 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
nbop __netbox1 add facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node clean1 (Sop/clean)
opadd -e -n clean clean1
oplocate -x -1.7346200000000001 -y -10.2669 clean1
opspareds "" clean1
opparm clean1 fusepts ( off ) fusedist ( 0.001 ) deldegengeo ( on ) degentol ( 0.001 ) removeunusedgrp ( on ) orientpoly ( off ) reversewinding ( off ) fixoverlap ( off ) deleteoverlap ( on ) delunusedpts ( on ) dodelattribs ( off ) delattribs ( * ) dodelgroups ( off ) delgroups ( * ) delnans ( on ) make_manifold ( off ) delete_small ( on ) prim_count ( 3 )
chlock clean1 -*
chautoscope clean1 -* +delete_small
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off clean1
nbop __netbox2 add clean1
opexprlanguage -s hscript clean1
opuserdata -n '___Version___' -v '' clean1

# Node facet2 (Sop/facet)
opadd -e -n facet facet2
oplocate -x -1.7346200000000001 -y -12.355499999999999 facet2
opspareds "" facet2
opparm -V 20.5.370 facet2 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet2 -*
chautoscope facet2 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet2
nbop __netbox2 add facet2
opexprlanguage -s hscript facet2
opuserdata -n '___Version___' -v '20.5.370' facet2

# Node fuse1 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse1
oplocate -x -1.7346200000000001 -y -11.374499999999999 fuse1
opspareds "" fuse1
opparm fuse1  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse1 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse1 -*
chautoscope fuse1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse1
nbop __netbox2 add fuse1
opexprlanguage -s hscript fuse1
opuserdata -n '___Version___' -v '20.5.370' fuse1

# Node set_component_type (Sop/attribwrangle)
opadd -e -n attribwrangle set_component_type
oplocate -x -1.7376199999999999 -y -14.7342 set_component_type
opspareds "" set_component_type
opparm set_component_type  bindings ( 0 ) groupbindings ( 0 )
opparm set_component_type folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 's@component_type = "Support";' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock set_component_type -*
chautoscope set_component_type -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off set_component_type
nbop __netbox3 add set_component_type
opexprlanguage -s hscript set_component_type
opuserdata -n '___Version___' -v '' set_component_type

# Node check_cwccw (Sop/attribwrangle)
opadd -e -n attribwrangle check_cwccw
oplocate -x 0.26480599999999999 -y 6.5071899999999996 check_cwccw
opspareds "" check_cwccw
opparm check_cwccw  bindings ( 0 ) groupbindings ( 0 )
opparm check_cwccw folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@is_loop = (vertexpoint(0, 0) == vertexpoint(0, nvertices(0)-1));\n//printf( "isloop? %d\\n", @is_loop );\n \n\nint numPoints = npoints(0);\nfloat accum = 0.0;\n\nfor( int i=0; i<numPoints; ++i )\n{\n    vector p1 = point(0,"P",i);\n    vector p2 = point(0,"P", (i+1)%numPoints );\n    float area = p1.x*p2.z - p2.x*p1.z;\n    \n    accum += p1.x*p2.z - p2.x*p1.z; \n    //printf("%d: area=%f\\n", i, area );\n}\n\n//printf( "point ccw? %s (signed area=%f)\\n", (accum>0.0 ? "CW" : "CCW"), accum );\n\ni@is_clockwise = accum>0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_cwccw -*
chautoscope check_cwccw -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on check_cwccw
nbop __netbox6 add check_cwccw
opexprlanguage -s hscript check_cwccw
opuserdata -n '___Version___' -v '' check_cwccw

# Node sort7 (Sop/sort)
opadd -e -n sort sort7
oplocate -x -3.5129800000000002 -y -2.8787199999999999 sort7
opspareds "" sort7
chblockbegin
chadd -t 0 0 sort7 pointoffset
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"is_loop",0)' sort7/pointoffset
chblockend
opparm -V 20.5.370 sort7 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( shif ) pointseed ( 0 ) pointoffset ( pointoffset ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( off ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort7 -*
chautoscope sort7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort7
nbop __netbox4 add sort7
opexprlanguage -s hscript sort7
opuserdata -n '___Version___' -v '20.5.370' sort7

# Node resample_joints (Sop/resample)
opadd -e -n resample resample_joints
oplocate -x -1.7346200000000001 -y 1.81366 resample_joints
opspareds "" resample_joints
chblockbegin
chadd -t 0 0 resample_joints length
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../SupportInterval")' resample_joints/length
chblockend
opparm -V 20.5.370 resample_joints group ( "" ) maintainprimorder ( off ) lod ( 1 ) edge ( on ) method ( dist ) measure ( arc ) dolength ( on ) length ( length ) dosegs ( off ) segs ( 5 ) useattribs ( on ) allequal ( on ) last ( off ) randomshift ( off ) onlypoints ( off ) treatpolysas ( straight ) outputsubdpoly ( off ) doptdistattr ( off ) ptdistattr ( ptdist ) dotangentattr ( off ) tangentattr ( tangentu ) docurveuattr ( off ) curveuattr ( curveu ) docurvenumattr ( off ) curvenumattr ( curvenum )
chlock resample_joints -* +length
chautoscope resample_joints -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off resample_joints
nbop __netbox4 add resample_joints
opexprlanguage -s hscript resample_joints
opuserdata -n '___Version___' -v '20.5.370' resample_joints

# Node remove_duplicated_points (Sop/fuse::2.0)
opadd -e -n fuse::2.0 remove_duplicated_points
oplocate -x -1.7346200000000001 -y 0.76144000000000001 remove_duplicated_points
opspareds "" remove_duplicated_points
opparm remove_duplicated_points  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 remove_duplicated_points querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( off ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock remove_duplicated_points -*
chautoscope remove_duplicated_points -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_duplicated_points
nbop __netbox4 add remove_duplicated_points
opexprlanguage -s hscript remove_duplicated_points
opuserdata -n '___Version___' -v '20.5.370' remove_duplicated_points

# Node sort8 (Sop/sort)
opadd -e -n sort sort8
oplocate -x -0.822384 -y 5.7080799999999998 sort8
opspareds "" sort8
opparm -V 20.5.370 sort8 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort8 -*
chautoscope sort8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on sort8
nbop __netbox6 add sort8
opexprlanguage -s hscript sort8
opuserdata -n '___Version___' -v '20.5.370' sort8

# Node make_path_clockwise (Sop/switchif)
opadd -e -n switchif make_path_clockwise
oplocate -x 0.26780599999999999 -y 4.2777700000000003 make_path_clockwise
opspareds "" make_path_clockwise
opparm make_path_clockwise  tests ( 1 )
chblockbegin
chadd -t 0 0 make_path_clockwise expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"is_clockwise",0)' make_path_clockwise/expr1
chblockend
opparm -V 20.5.370 make_path_clockwise mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( detail ) attributes1 ( is_clockwise ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock make_path_clockwise -* +expr1
chautoscope make_path_clockwise -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on make_path_clockwise
nbop __netbox6 add make_path_clockwise
opexprlanguage -s hscript make_path_clockwise
opuserdata -n '___Version___' -v '20.5.370' make_path_clockwise

# Node remove_poiint_normal (Sop/attribwrangle)
opadd -e -n attribwrangle remove_poiint_normal
oplocate -x -1.7376199999999999 -y -7.8804999999999996 remove_poiint_normal
opspareds "" remove_poiint_normal
opparm remove_poiint_normal  bindings ( 0 ) groupbindings ( 0 )
opparm remove_poiint_normal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'removepointattrib(0, "N");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock remove_poiint_normal -*
chautoscope remove_poiint_normal -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off remove_poiint_normal
nbop __netbox5 add remove_poiint_normal
opexprlanguage -s hscript remove_poiint_normal
opuserdata -n '___Version___' -v '' remove_poiint_normal

# Node polypath7 (Sop/polypath)
opadd -e -n polypath polypath7
oplocate -x -0.822384 -y 5.0707000000000004 polypath7
opspareds "" polypath7
opparm polypath7 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath7 -*
chautoscope polypath7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on polypath7
nbop __netbox6 add polypath7
opexprlanguage -s hscript polypath7
opuserdata -n '___Version___' -v '' polypath7

# Node fuse4 (Sop/fuse::2.0)
opadd -e -n fuse::2.0 fuse4
oplocate -x -1.7346200000000001 -y -6.0429199999999996 fuse4
opspareds "" fuse4
opparm fuse4  numpointattribs ( 0 ) numgroups ( 0 )
opparm -V 20.5.370 fuse4 querygroup ( "" ) usetargetgroup ( off ) targetgroup ( "" ) modifyboth ( off ) posattrib ( P ) snapgroup ( 0 ) snaptype ( distancesnap ) algorithm ( lowest ) usetol3d ( on ) tol3d ( 0.001 ) targetptattrib ( snap_to ) targetclass ( point ) usepositionsnapmethod ( on ) positionsnapmethod ( average ) positionsnapweightname ( weight ) useradiusattrib ( off ) radiusattrib ( pscale ) usematchattrib ( off ) matchattrib ( name ) matchtype ( match ) matchtol ( 0 ) gridtype ( spacing ) gridspacing ( 0.1 0.1 0.1 ) gridlines ( 10 10 10 ) gridpow2 ( 3 3 3 ) gridoffset ( 0 0 0 ) gridround ( nearest ) usegridtol ( on ) gridtol ( 10 ) consolidategroup ( 0 ) consolidatesnappedpoints ( on ) keepconsolidatedpoints ( off ) deldegen ( on ) deldegenpoints ( on ) delunusedpoints ( off ) outputgroup ( 0 ) recomputenml ( on ) createsnappedgroup ( off ) snappedgroupname ( snapped_points ) createsnappedattrib ( off ) snappedattribname ( snapped_to ) numpointattribs ( 0 ) numgroups ( 0 )
chlock fuse4 -*
chautoscope fuse4 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off fuse4
nbop __netbox5 add fuse4
opexprlanguage -s hscript fuse4
opuserdata -n '___Version___' -v '20.5.370' fuse4

# Node output0 (Sop/output)
opadd -e -n output output0
oplocate -x 3.3380299999999998 -y -18.6602 output0
opspareds "" output0
opparm -V 20.5.370 output0 outputidx ( 0 )
chlock output0 -*
chautoscope output0 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off output0
opexprlanguage -s hscript output0
opuserdata -n '___Version___' -v '20.5.370' output0

# Node Dims (Sop/attribwrangle)
opadd -e -n attribwrangle Dims
oplocate -x 3.9800200000000001 -y 2.3629600000000002 Dims
opspareds "" Dims
opparm Dims  bindings ( 0 ) groupbindings ( 0 )
opparm Dims folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f[]@BillboardHeights = { 1.5, 2.0, 2.5, 3.0, 3.5, 4.0 };' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock Dims -*
chautoscope Dims -*
opcolor -c 1 0 0 Dims
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off Dims
opexprlanguage -s hscript Dims
opuserdata -n '___Version___' -v '' Dims

# Node transform4 (Sop/xform)
opadd -e -n xform transform4
oplocate -x 7.7094800000000001 -y -10.9442 transform4
opspareds "" transform4
chblockbegin
chadd -t 0 0 transform4 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../BillboardBottomOffset")' transform4/ty
chblockend
opparm -V 20.5.370 transform4 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 ty 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform4 -* +ty
chautoscope transform4 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off transform4
opexprlanguage -s hscript transform4
opuserdata -n '___Version___' -v '20.5.370' transform4

# Node uvtexture1 (Sop/texture)
opadd -e -n texture uvtexture1
oplocate -x 7.7094800000000001 -y -8.2184000000000008 uvtexture1
opspareds "" uvtexture1
chblockbegin
chadd -t 0 0 uvtexture1 su
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '1/detail("../Dims", "BillboardHeights", ch("../BillboardHeght"))' uvtexture1/su
chadd -t 0 0 uvtexture1 sv
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '1.0/detail("../Dims", "BillboardHeights", ch("../BillboardHeght"))' uvtexture1/sv
chblockend
opparm -V 20.5.370 uvtexture1 uvattrib ( uv ) group ( Signboard ) type ( face ) axis ( y ) campath ( "" ) coord ( vertex ) s ( su sv 1 ) offset ( 0 0 0 ) angle ( 0 ) fixseams ( off )
chlock uvtexture1 -*
chautoscope uvtexture1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off uvtexture1
opexprlanguage -s hscript uvtexture1
opuserdata -n '___Version___' -v '20.5.370' uvtexture1

# Node material2 (Sop/material)
opadd -e -n material material2
oplocate -x 7.7094800000000001 -y -9.68825 material2
opspareds "" material2
opparm material2  num_materials ( 1 ) num_local1 ( 0 )
opparm -V 20.5.370 material2 style ( primitive ) uselabels ( uselabels ) createstylesheets ( off ) fullpath ( on ) num_materials ( 1 ) group1 ( 5 ) shop_materialpath1 ( /mat/metalgrate ) localvar1 ( off ) mergeoverride1 ( off ) num_local1 ( 0 )
chlock material2 -*
chautoscope material2 -*
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off material2
opexprlanguage -s hscript material2
opuserdata -n '___Version___' -v '20.5.370' material2
opuserdata -n '___toolcount___' -v '2' material2
opuserdata -n '___toolid___' -v 'assign_material' material2

# Sticky Note __stickynote1
python -c 'hou.pwd().createStickyNote("__stickynote1")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setColor(hou.Color((1, 0.969, 0.522)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setText("・PolyExctrudeのエッジ外向き法線は、\nエッジ方向を左向きに90度回転させたベクトル\n\n・時計回りにPoint列を並べておく必要がある\n\n・プリミティブVertexが反時計回り並びではダメ\n　\nCW  CCWを判定する方法\nhttps://stackoverflow.com/questions/1165647/how-to-determine-if-a-list-of-polygon-points-are-in-clockwise-order")'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextSize(0)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setTextColor(hou.Color((0, 0, 0)))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setDrawBackground(True)'
python -c 'hou.pwd().findStickyNote("__stickynote1").setPosition(hou.Vector2(13.8027, -3.27443))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setSize(hou.Vector2(10.476, 3.35823))'
python -c 'hou.pwd().findStickyNote("__stickynote1").setMinimized(False)'
oporder -e polyextrude_height sweep3 attribwrangle3 polyextrude_front_panel create_backdideframe dent_backsideframe reverse_to_face_outside add_signboear_up_vector_attrib normal1 merge2 gen_diagonal_frame grid3 blast3 attribwrangle5 polyexpand2d1 transform1 polyextrude4 blast4 sort3 merge1 normal2 split_to_linesgments facet1 clean1 facet2 fuse1 set_component_type check_cwccw sort7 resample_joints remove_duplicated_points sort8 make_path_clockwise remove_poiint_normal polypath7 fuse4 output0 Dims transform4 uvtexture1 material2 
opcf ..

# Node foreach_end1 (Sop/block_end)
opadd -e -n block_end foreach_end1
oplocate -x -4.2412400000000003 -y -0.99688399999999999 foreach_end1
opspareds "" foreach_end1
opparm -V 20.5.370 foreach_end1 itermethod ( pieces ) method ( merge ) iterations ( 10 ) startvalue ( 1 ) increment ( 1 ) class ( primitive ) useattrib ( off ) attrib ( "" ) usemaxiter ( off ) maxiter ( 10 ) blockpath ( ../foreach_begin1 ) templatepath ( ../foreach_begin1 ) resetcookpass ( 0 ) dosinglepass ( off ) singlepass ( 0 ) stopcondition ( 0 ) multithread ( off )
chlock foreach_end1 -*
chautoscope foreach_end1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_end1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_end1
opexprlanguage -s hscript foreach_end1
opuserdata -n '___Version___' -v '20.5.370' foreach_end1

# Node foreach_begin1 (Sop/block_begin)
opadd -e -n block_begin foreach_begin1
oplocate -x -4.2650899999999998 -y 5.2271099999999997 foreach_begin1
opspareds "" foreach_begin1
opparm -V 20.5.370 foreach_begin1 method ( piece ) blockpath ( ../foreach_end1 ) resetcookpass ( 0 ) createmetablock ( 0 ) label1 ( 'iteration, numiterations, value, ivalue' )
chlock foreach_begin1 -*
chautoscope foreach_begin1 -*
opcolor -c 0.75 0.40000000596046448 0 foreach_begin1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F off -c on -e on -b off foreach_begin1
opexprlanguage -s hscript foreach_begin1
opuserdata -n '___Version___' -v '20.5.370' foreach_begin1

# Node facet1 (Sop/facet)
opadd -e -n facet facet1
oplocate -x -0.16044900000000001 -y 14.2095 facet1
opspareds "" facet1
opparm -V 20.5.370 facet1 group ( "" ) grouptype ( guess ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( on ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( off )
chlock facet1 -*
chautoscope facet1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off facet1
opexprlanguage -s hscript facet1
opuserdata -n '___Version___' -v '20.5.370' facet1

# Node testgeometry_templatebody1 (Sop/testgeometry_templatebody)
opadd -e -n testgeometry_templatebody testgeometry_templatebody1
oplocate -x 5.5474500000000004 -y 4.6641599999999999 testgeometry_templatebody1
opspareds "" testgeometry_templatebody1
opparm testgeometry_templatebody1 t ( 0 0 0 ) r ( 0 0 0 ) scale ( 1 )
chlock testgeometry_templatebody1 -*
chautoscope testgeometry_templatebody1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off testgeometry_templatebody1
opexprlanguage -s hscript testgeometry_templatebody1
opuserdata -n '___Version___' -v '' testgeometry_templatebody1

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x 5.4534500000000001 -y 3.3946399999999999 transform1
opspareds "" transform1
opparm -V 20.5.370 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 497.4136682958922 0 1057.1817198934193 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) scale ( 1 ) parmgroup_pivotxform ( 0 ) p ( 0 0 0 ) pr ( 0 0 0 ) parmgroup_prexform ( 0 ) prexform_xOrd ( srt ) prexform_rOrd ( xyz ) prexform_t ( 0 0 0 ) prexform_r ( 0 0 0 ) prexform_s ( 1 1 1 ) prexform_shear ( 0 0 0 ) movecentroid ( 0 ) movepivot ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off ) addattrib ( off ) outputattrib ( xform ) outputmerge ( post )
chlock transform1 -*
chautoscope transform1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opset -d off -r off -h off -f off -y off -t on -l off -s off -u off -F on -c on -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '20.5.370' transform1

# Node null1 (Sop/null)
opadd -e -n null null1
oplocate -x -4.2428400000000002 -y -2.3582999999999998 null1
opspareds "" null1
opparm -V 20.5.370 null1 copyinput ( on ) cacheinput ( off )
chlock null1 -*
chautoscope null1 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off null1
opexprlanguage -s hscript null1
opuserdata -n '___Version___' -v '20.5.370' null1

# Node blast2 (Sop/blast)
opadd -e -n blast blast2
oplocate -x -5.6577099999999998 -y -4.3317699999999997 blast2
opspareds "" blast2
opparm -V 20.5.370 blast2 group ( '@component_type=="Backside"' ) grouptype ( guess ) computenorms ( off ) negate ( on ) fillhole ( off ) removegrp ( off )
chlock blast2 -*
chautoscope blast2 -*
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b on blast2
opexprlanguage -s hscript blast2
opuserdata -n '___Version___' -v '20.5.370' blast2

# Node check_cwccw (Sop/attribwrangle)
opadd -e -n attribwrangle check_cwccw
oplocate -x -4.2458499999999999 -y 3.80775 check_cwccw
opspareds "" check_cwccw
opparm check_cwccw  bindings ( 0 ) groupbindings ( 0 )
opparm check_cwccw folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( detail ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'i@is_loop = (vertexpoint(0, 0) == vertexpoint(0, nvertices(0)-1));\n//printf( "isloop? %d\\n", @is_loop );\n \n\nint numPoints = npoints(0);\nfloat accum = 0.0;\n\nfor( int i=0; i<numPoints; ++i )\n{\n    vector p1 = point(0,"P",i);\n    vector p2 = point(0,"P", (i+1)%numPoints );\n    float area = p1.x*p2.z - p2.x*p1.z;\n    \n    accum += p1.x*p2.z - p2.x*p1.z; \n    //printf("%d: area=%f\\n", i, area );\n}\n\n//printf( "point ccw? %s (signed area=%f)\\n", (accum>0.0 ? "CW" : "CCW"), accum );\n\ni@is_clockwise = accum>0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id ) vex_inplace ( off ) vex_selectiongroup ( "" ) vex_precision ( auto )
chlock check_cwccw -*
chautoscope check_cwccw -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off check_cwccw
nbop __netbox6 add check_cwccw
opexprlanguage -s hscript check_cwccw
opuserdata -n '___Version___' -v '' check_cwccw

# Node sort8 (Sop/sort)
opadd -e -n sort sort8
oplocate -x -5.3330399999999996 -y 3.0086400000000002 sort8
opspareds "" sort8
opparm -V 20.5.370 sort8 pointsfolder ( 0 ) ptgroup ( "" ) ptsort ( none ) pointseed ( 0 ) pointoffset ( 0 ) pointprox ( 0 0 0 ) pointobjpath ( "" ) pointdir ( 0 1 0 ) pointexpr ( 0 ) pointattrib ( "" ) pointattribcomp ( 0 ) pointreverse ( on ) primitivesfolder ( 0 ) primgroup ( "" ) primsort ( none ) primseed ( 0 ) primoffset ( 0 ) primprox ( 0 0 0 ) primobjpath ( "" ) primdir ( 0 1 0 ) primexpr ( 0 ) primattrib ( "" ) primattribcomp ( 0 ) primreverse ( off ) vertexprimorder ( on )
chlock sort8 -*
chautoscope sort8 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off sort8
nbop __netbox6 add sort8
opexprlanguage -s hscript sort8
opuserdata -n '___Version___' -v '20.5.370' sort8

# Node make_path_clockwise (Sop/switchif)
opadd -e -n switchif make_path_clockwise
oplocate -x -4.2428499999999998 -y 1.57833 make_path_clockwise
opspareds "" make_path_clockwise
opparm make_path_clockwise  tests ( 1 )
chblockbegin
chadd -t 0 0 make_path_clockwise expr1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'detail(0,"is_clockwise",0)' make_path_clockwise/expr1
chblockend
opparm -V 20.5.370 make_path_clockwise mergecondition ( all ) testinput ( first ) tests ( 1 ) enable1 ( on ) type1 ( expr ) expr1 ( expr1 ) attribtype1 ( all ) attribowner1 ( detail ) attributes1 ( is_clockwise ) attribvaltype1 ( flt ) attribfloatcomp1 ( equal ) attribstringcomp1 ( equal ) attribval1 ( 0 ) attribsval1 ( "" ) counttype1 ( points ) countgroup1 ( "" ) countcomp1 ( equal ) countval1 ( 0 ) hasinputtype1 ( wired )
chlock make_path_clockwise -* +expr1
chautoscope make_path_clockwise -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off make_path_clockwise
nbop __netbox6 add make_path_clockwise
opexprlanguage -s hscript make_path_clockwise
opuserdata -n '___Version___' -v '20.5.370' make_path_clockwise

# Node polypath7 (Sop/polypath)
opadd -e -n polypath polypath7
oplocate -x -5.3330399999999996 -y 2.3712599999999999 polypath7
opspareds "" polypath7
opparm polypath7 connectends ( off ) maxendptdist ( 0.01 ) connectonlytoends ( on ) closeloops ( off )
chlock polypath7 -*
chautoscope polypath7 -*
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -F on -c on -e on -b off polypath7
nbop __netbox6 add polypath7
opexprlanguage -s hscript polypath7
opuserdata -n '___Version___' -v '' polypath7
oporder -e add1 circle1 osm_import1 osm_filter1 blast1 fuse3 matchsize1 polypath3 add2 sort5 add3 add4 switch1 polypath4 polypath5 transform2 sort6 switch2 polypath6 line1 billboard foreach_end1 foreach_begin1 facet1 testgeometry_templatebody1 transform1 null1 blast2 check_cwccw sort8 make_path_clockwise polypath7 
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
opcf mat
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
opcf RoofAd
opwire -n osm_import1 -0 osm_filter1
opwire -n facet1 -0 blast1
opwire -n osm_filter1 -0 fuse3
opwire -n blast1 -0 matchsize1
opwire -n circle1 -0 polypath3
opwire -n matchsize1 -0 sort5
opwire -n add4 -0 switch1
opwire -n add3 -1 switch1
opwire -n add1 -2 switch1
opwire -n sort6 -0 polypath4
opwire -n sort5 -0 polypath5
opwire -n switch1 -0 transform2
opwire -n transform2 -0 sort6
opwire -n polypath3 -0 switch2
opwire -n polypath4 -1 switch2
opwire -n polypath5 -2 switch2
opwire -n polypath6 -3 switch2
opwire -n line1 -4 switch2
opwire -n add2 -0 polypath6
opwire -n make_path_clockwise -0 billboard
opcf billboard
opwire -n add_signboear_up_vector_attrib -0 polyextrude_height
opwire -n remove_poiint_normal -0 sweep3
opwire -n facet1 -1 sweep3
opwire -n dent_backsideframe -0 attribwrangle3
opwire -n reverse_to_face_outside -0 polyextrude_front_panel
opwire -n polyextrude_front_panel -0 create_backdideframe
opwire -n create_backdideframe -0 dent_backsideframe
opwire -n polyextrude_height -0 reverse_to_face_outside
opwire -n make_path_clockwise -0 add_signboear_up_vector_attrib
opwire -n attribwrangle3 -0 normal1
opwire -n set_component_type -0 merge2
opwire -n transform4 -1 merge2
opwire -n merge1 -0 gen_diagonal_frame
opwire -n grid3 -0 blast3
opwire -n blast3 -0 attribwrangle5
opwire -n attribwrangle5 -0 polyexpand2d1
opwire -n remove_duplicated_points -0 transform1
opwire -n remove_duplicated_points -0 polyextrude4
opwire -n polyextrude4 -0 blast4
opwire -n blast4 -0 sort3
opwire -n remove_duplicated_points -0 merge1
opwire -n transform1 -1 merge1
opwire -n facet2 -0 normal2
opwire -n fuse4 -0 split_to_linesgments
opwire -n polyexpand2d1 -0 facet1
opwire -n sweep3 -0 clean1
opwire -n fuse1 -0 facet2
opwire -n clean1 -0 fuse1
opwire -n normal2 -0 set_component_type
opwire -n -i 0 -0 check_cwccw
opwire -n sort3 -0 sort7
opwire -n make_path_clockwise -0 resample_joints
opwire -n resample_joints -0 remove_duplicated_points
opwire -n check_cwccw -0 sort8
opwire -n polypath7 -0 make_path_clockwise
opwire -n check_cwccw -1 make_path_clockwise
opwire -n split_to_linesgments -0 remove_poiint_normal
opwire -n sort8 -0 polypath7
opwire -n gen_diagonal_frame -0 fuse4
opwire -n merge2 -0 output0
opwire -n material2 -0 transform4
opwire -n normal1 -0 uvtexture1
opwire -n uvtexture1 -0 material2
opcf ..
opwire -n billboard -0 foreach_end1
opwire -n switch2 -0 foreach_begin1
opwire -n fuse3 -0 facet1
opwire -n testgeometry_templatebody1 -0 transform1
opwire -n foreach_end1 -0 null1
opwire -n null1 -0 blast2
opwire -n foreach_begin1 -0 check_cwccw
opwire -n check_cwccw -0 sort8
opwire -n polypath7 -0 make_path_clockwise
opwire -n check_cwccw -1 make_path_clockwise
opwire -n sort8 -0 polypath7
opcf ..
opcf ..
opcf img
opcf ..
opcf mat
opcf ..
opcf tasks
opcf topnet1
opcf ..
opcf ..
opcf $saved_path
