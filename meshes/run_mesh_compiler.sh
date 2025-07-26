filename=$1
filepath=/home/deck/.steam/root/steamapps/compatdata/573090/pfx/drive_c/users/steamuser/AppData/Roaming/Stormworks/data/mods/electric_parts_expanded/meshes/
compiler_path=/home/deck/.steam/steam/steamapps/common/Stormworks/sdk/mesh_compiler.com

STEAM_COMPAT_CLIENT_INSTALL_PATH=/home/deck/.steam/root/steamapps STEAM_COMPAT_DATA_PATH=/home/deck/.steam/root/steamapps/compatdata/573090 /home/deck/.local/share/Steam/steamapps/common/Proton\ 9.0\ \(Beta\)/proton run ${compiler_path} ${filepath}/${filename} -o ${filepath}/ -s
