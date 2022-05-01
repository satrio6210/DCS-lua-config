dofile(LockOn_Options.common_script_path.."devices_defs.lua")

opacity_sensitive_materials = 
{
	"font_TEDAC",
	"font_TEDAC_BLACK",
	"font_TEDAC_big",
	"font_TEDAC_big_BLACK",
	"TEDAC_SYMBOLOGY",
	"TEDAC_SYMBOLOGY_BLACK",
}

color_sensitive_materials = 
{
	"font_TEDAC",
	"font_TEDAC_big",
	"TEDAC_SYMBOLOGY",
}

brightness_sensitive_materials = 
{
	"font_TEDAC",
	"font_TEDAC_big",
	"TEDAC_SYMBOLOGY",
}


local ResourcesPath = LockOn_Options.script_path.."../IndicationResources/"
local IndicationTexturesPath = ResourcesPath.."Displays/TEDAC/"

used_render_mask_day	= IndicationTexturesPath.."TEDAC_day.dds"
used_render_mask_night	= IndicationTexturesPath.."TEDAC_night.dds"

-- Parameters handling functions
indicator_type	= indicator_types.COMMON
purposes		= {100}--{render_purpose.GENERAL}

dofile(LockOn_Options.script_path.."Displays/TEDAC/TEDAC_PagesInit.lua")

--
use_parser					= false
dynamically_update_geometry	= false

dofile(LockOn_Options.common_script_path.."ViewportHandling.lua")
try_find_assigned_viewport("AH64_TEDAC")
