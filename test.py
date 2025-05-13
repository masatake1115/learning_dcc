import pathlib
import json

import unreal


# Import texture and create uasset
#import_texture("D:/Asphalt031.png", "/Game/Textures")
def import_texture(jpg_file_path, destination_path='/Game/Textures'):
    # Create task
    task = unreal.AssetImportTask()
    task.filename = jpg_file_path
    task.destination_path = destination_path
    task.automated = True
    task.save = True
    task.replace_existing = True
    task.destination_name = pathlib.Path(jpg_file_path).stem # Use filename as asset name

    # Set factory to import as texture
    task.factory = unreal.TextureFactory()

    # Run the task
    unreal.AssetToolsHelpers.get_asset_tools().import_asset_tasks([task])

    print(f"Imported texture from {jpg_file_path} to {destination_path}")

    #print( "---------------", destination_path + "/" + task.destination_name )

    return destination_path + "/" + task.destination_name


#ensure_unreal_directory("/Game/Textures/fgdsfgds")
def ensure_unreal_directory( path: str ):
    """
    Ensures that a folder exists in the Unreal Content Browser.
    :param path: Virtual path, e.g., "/Game/MyTextures"
    """
    if not unreal.EditorAssetLibrary.does_directory_exist(path):
        created = unreal.EditorAssetLibrary.make_directory(path)
        if created:
            print(f"Created directory: {path}")
        else:
            print(f"Failed to create directory: {path}")
    else:
        print(f"Directory already exists: {path}")




def copy_material_instance( source_path, destination_path, new_name ):
    """
    Copies a Material Instance asset in Unreal Engine using Python.
    
    :param source_path: Full path to the existing material instance (e.g. "/Game/Materials/MI_Original")
    :param destination_path: Folder path to place the copy (e.g. "/Game/Materials/Instances")
    :param new_name: Name of the new material instance (e.g. "MI_Copy")
    """
    asset_tools = unreal.AssetToolsHelpers.get_asset_tools()

    # Load source asset
    source_asset = unreal.EditorAssetLibrary.load_asset(source_path)
    if not source_asset:
        print(f"Error: Could not load material instance at {source_path}")
        return

    # Make sure destination path exists
    if not unreal.EditorAssetLibrary.does_directory_exist(destination_path):
        unreal.EditorAssetLibrary.make_directory(destination_path)

    # Duplicate the asset
    new_asset = asset_tools.duplicate_asset(
        asset_name=new_name,
        package_path=destination_path,
        original_object=source_asset
    )

    if new_asset:
        print(f"Material Instance copied to: {destination_path}/{new_name}")
    else:
        print("Failed to copy material instance.")

    return new_asset







Root_tex = "D:/DataSet/pbr mats/ambientCG"
Specifier = [ "AmbientOcclusion", "Color", "Displacement", "NormalDX", "Roughness", "Metalness" ]# ambientcg pbr tex channel specifier
Channel = { "AmbientOcclusion": "AmbientOcclusion", "Color": "BaseColor", "Displacement" : "Displacement", "NormalDX": "Normal", "Roughness": "Roughness", "Metalness": "Metallic" }# my MI_Base texture slot names
Content_Root = "/Game/Textures/ambientCG"



pbrDirs = {}# pbt dir name: texture paths
texAssets = {}


#=======================================================================================#
#                       Create content folder and extract textures                      #
#=======================================================================================#

# Create directory for pbr texture asset
ensure_unreal_directory( Content_Root )

directories = [ p for p in pathlib.Path( Root_tex ).iterdir() if p.is_dir() ]


for d in directories:
    #print(d, d.name)
    pbrDirs[ d.name ] = {}

    tex_files = list( d.rglob("*.jpg") )

    pbrTexFiles = pbrDirs[ d.name ]

    for file in tex_files:
        for spc in Specifier:
            if( spc in file.name ):
                pbrTexFiles[ Channel[spc] ] = file


#print( pbrDirs )
for pbrdir, texpaths in pbrDirs.items():
    #print( "TODO: Create directory...", pbrdir )
    content_dir = Content_Root + "/" + pbrdir
    ensure_unreal_directory( content_dir )

    texAssets[ pbrdir ] = {}

    for textype, path in texpaths.items():
        #print("  TODO: Extract texture asset...", textype, path, path.stem )
        asset_path = import_texture( path.as_posix(), content_dir )
        texAssets[ pbrdir ][ textype ] = asset_path


#=======================================================================================#
#                               Create Material Instance                                #
#=======================================================================================#
path_mat_source = "/Game/Materials/MI_Base"
path_dest = "/Game/Materials/Copies"

#print( "!!!!!!!!!", texAssets )

for key, tex_assets in texAssets.items():

    new_mi_name = "MI_" + key
    new_mi = None

    # Check if material instance already exists
    if( unreal.EditorAssetLibrary.does_asset_exist(new_mi_name) ):
        new_mi = unreal.EditorAssetLibrary.load_asset(new_mi_name)
    else:
        # Create new material instance
        new_mi = copy_material_instance( source_path=path_mat_source, destination_path=path_dest, new_name=new_mi_name )


    # Assign textures
    for channel, tex_path in tex_assets.items():
        tex = unreal.EditorAssetLibrary.load_asset( tex_path )
        unreal.MaterialEditingLibrary.set_material_instance_texture_parameter_value( new_mi, parameter_name=channel, value=tex )
    """
    # Base color
    tex = unreal.EditorAssetLibrary.load_asset( tex_assets["Color"] )
    unreal.MaterialEditingLibrary.set_material_instance_texture_parameter_value( new_mi, parameter_name="BaseColor", value=tex )

    # Ambient Occlusion
    tex = unreal.EditorAssetLibrary.load_asset( tex_assets["AmbientOcclusion"] )
    unreal.MaterialEditingLibrary.set_material_instance_texture_parameter_value( new_mi, parameter_name="AmbientOcclusion", value=tex )   

    # Roughness
    tex = unreal.EditorAssetLibrary.load_asset( tex_assets["Roughness"] )
    unreal.MaterialEditingLibrary.set_material_instance_texture_parameter_value( new_mi, parameter_name="Roughness", value=tex )   
    
    # Normal
    tex = unreal.EditorAssetLibrary.load_asset( tex_assets["NormalDX"] )
    unreal.MaterialEditingLibrary.set_material_instance_texture_parameter_value( new_mi, parameter_name="Normal", value=tex )   
    """
    # Apply and save
    unreal.EditorAssetLibrary.save_asset( new_mi.get_path_name() )




"""
import sys
import importlib
import unreal

src_dir = unreal.Paths.project_plugins_dir()
src_dir += "RunPyqtWidget/Source/RunPyqtWidget/Private"

#print(  src_dir )
if( not src_dir in sys.path ):  sys.path.append( src_dir )
#print( sys.path )

import testWidget 
importlib.reload( testWidget )0

"""