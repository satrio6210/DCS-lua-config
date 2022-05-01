dofile(LockOn_Options.script_path.."Displays/MFD/indicator/MFD_init.lua")
dofile(LockOn_Options.script_path.."Displays/MFD/indicator/MFD_Opacity_Materials.lua")
dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
dofile(LockOn_Options.script_path.."Displays/MFD/device/MFD_device_IDs.lua")

addOpacitySensitiveMaterials(opacity_sensitive_materials, "PLT_R")
addOpacitySensitiveMaterials(color_sensitive_materials, "PLT_R")

selfID = MFD_SELF_IDS.PLT_RMFD

writeParameter("MFD_init_DEFAULT_LEVEL", 6)
writeParameter("MFD_NUM", selfID)
writeParameter( "FONT_PREFIX", "font_PLT_RMFD_" )

--ViewportHandling
update_screenspace_diplacement(1, false, 0)
try_find_assigned_viewport("AH64_RIGHT_PLT_MFD")

