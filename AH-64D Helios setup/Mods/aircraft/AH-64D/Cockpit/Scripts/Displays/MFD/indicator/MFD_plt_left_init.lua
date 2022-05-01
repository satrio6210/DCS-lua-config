dofile(LockOn_Options.script_path.."Displays/MFD/indicator/MFD_init.lua")
dofile(LockOn_Options.script_path.."Displays/MFD/indicator/MFD_Opacity_Materials.lua")
dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
dofile(LockOn_Options.script_path.."Displays/MFD/device/MFD_device_IDs.lua")

addOpacitySensitiveMaterials(opacity_sensitive_materials, "PLT_L")
addOpacitySensitiveMaterials(color_sensitive_materials, "PLT_L")

selfID = MFD_SELF_IDS.PLT_LMFD

writeParameter("MFD_init_DEFAULT_LEVEL", 4)
writeParameter("MFD_NUM", selfID)
writeParameter( "FONT_PREFIX", "font_PLT_LMFD_" )

--ViewportHandling
update_screenspace_diplacement(1, true, 0)
try_find_assigned_viewport("AH64_LEFT_PLT_MFD")
