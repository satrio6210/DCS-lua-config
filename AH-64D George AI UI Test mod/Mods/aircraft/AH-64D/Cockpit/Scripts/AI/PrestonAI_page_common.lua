dofile(LockOn_Options.common_script_path.."elements_defs.lua")



function create_and_add_elements(weap_control_size, compass_size, is_vr)
--intentionally no indentation

--for VR only!
local compass_pos 		= {0,	-0.40}
local weap_control_pos 	= {0,	0.32} --seems okay, may be a subject to change

if is_vr then 
	SetCustomScale(1.0)
else 
	SetScale(FOV)
	local total_aspect  = LockOn_Options.screen.aspect
	local total_w 		= LockOn_Options.screen.width
	local total_h 		= LockOn_Options.screen.height
	local ULX,ULY,SZX,SZY,GUI_scale = get_UIMainView()
	
	--not for VR!
	compass_pos = {-0.82 * total_aspect, -0.7} --relative to screen center, 1 means half screen height ~~afaik~~
	weap_control_pos 	= {0.8 * total_aspect, -0.75}
	--viewports stuff	
	local v = find_viewport("GU_MAIN_VIEWPORT", "CENTER")
	if v ~= nil then
		if v.width ~= total_w or v.height ~= total_h then
			ULX = v.x
			ULY = v.y
			SZX = v.width
			SZY = v.height
			local aspect = SZX/SZY

			local offsetX = (ULX + SZX / 2 - total_w / 2) / total_w * total_aspect * 2
			local offsetY = -(ULY + SZY / 2 - total_h / 2) / total_h * 2
			local padding = math.min(total_aspect, aspect) * 0.2
			compass_pos = { -math.min(total_aspect, aspect) + offsetX + padding, -1 + offsetY * 2 + padding}
			weap_control_pos = { math.min(total_aspect, aspect) + offsetX - padding, -1 + offsetY * 2 + padding }

			compass_size = compass_size * v.height / total_h
			weap_control_size = weap_control_size * v.height / total_h
		end
	end
	--end viewports stuff
end

local former_size = 2400
local former_scale_multipiler = 4

local compass_size_adj = compass_size * former_scale_multipiler
local weap_control_size_adj = weap_control_size * former_scale_multipiler
local txt_box_size = compass_size_adj * 1.15

local text_frame_width = compass_size * 0.55
local text_frame_height = compass_size * 0.12

local list_arrow_width = compass_size * 0.06 * 20 / 26
local list_arrow_height = compass_size * 0.07
local list_arrow_x_offset = -text_frame_width  * 0.45 --relative to list (middle entry) center

local weap_text_radius = 0.25 * weap_control_size / 0.7
local weap_text_radius_far = 0.45 * weap_control_size / 0.7

local caption_scale_weap_control
local caption_scale_compass
if not is_vr then
    caption_scale_weap_control = weap_control_size * 0.17
    caption_scale_compass = compass_size  * 0.12
else
    caption_scale_weap_control = weap_control_size * 2.2
    caption_scale_compass = compass_size  * 1.2
end

local VR_rotate_angle_Z_bot = 72.0
local VR_rotate_angle_Z_top = -60.0
local VR_add_height = compass_size * 0.06

local list_text_scale_compass = caption_scale_compass * 0.58
local list_text_scale_weap_control = caption_scale_weap_control * 0.7

local text_defs_compass = {list_text_scale_compass * 0.05, list_text_scale_compass * 0.05, 0, 0}
local text_defs_weap_control = {list_text_scale_weap_control * 0.05, list_text_scale_weap_control * 0.05, 0, 0}

ARIAL_TABLE  = {class  = "ceUITTF",  ttf = "Arial.ttf" , size = 20}
local arial_font   = MakeFont(ARIAL_TABLE,{255,255,255,255})

local texture_w = 1024
local texture_h = 1024				
local function minmax_to_coords(mm_table)
	return
	{
		{mm_table.min_x / texture_w, mm_table.max_y / texture_h},
		{mm_table.max_x / texture_w, mm_table.max_y / texture_h},
		{mm_table.max_x / texture_w, mm_table.min_y / texture_h},
		{mm_table.min_x / texture_w, mm_table.min_y / texture_h},
	}
end

local compass_center_tex_pos = 
{
	min_x = 472,
	max_x = 498,
	min_y = 32,
	max_y = 70,
}

local compass_base_tex_pos = 
{
	min_x = 24,
	max_x = 384,
	min_y = 192,
	max_y = 552,
}

local compass_scale_tex_pos = 
{
	min_x = 424,
	max_x = 760,
	min_y = 204,
	max_y = 540,
}

local compass_waypoint_tex_pos = 
{
	min_x = 392,
	max_x = 426,
	min_y = 32,
	max_y = 61,
}

local compass_waypoint_y_offset = 350

local compass_arrow_tex_pos = 
{
	min_x = 288,
	max_x = 342,
	min_y = 11,
	max_y = 78,
}

local compass_arrow_y_offset = 560

local yellow_box_tex_pos = 
{
	min_x = 16,
	max_x = 96,
	min_y = 16,
	max_y = 56,
}

local white_box_tex_pos = 
{
	min_x = 136,
	max_x = 216,
	min_y = 16,
	max_y = 56,
}

local weap_circle_tex_pos = 
{
	min_x = 472,
	max_x = 718,
	min_y = 664,
	max_y = 910,
}

local list_bg_tex_pos = 
{
	min_x = 792,
	max_x = 952,
	min_y = 688,
	max_y = 878,
}

local list_arrow_tex_pos = 
{
	min_x = 552,
	max_x = 568,
	min_y = 32,
	max_y = 47,
}

local box_x_offset = 540 --* 1.01
local box_y_offset_down = -765 --* 0.96
local box_y_offset_up = 765 * 0.99
local box_y_offset_big = 984 --* 0.98

--IIOD

local function simple_rectangle(wid,hei)
	return	{
				{-wid/2,hei/2},
				{wid/2,hei/2},
				{wid/2,-hei/2},
				{-wid/2,-hei/2},
			}
end

local function simple_square(size)
	return simple_rectangle(size,size)
end

local function less_simple_rectangle(former, scale, wid, hei)
	return	{
				{-wid / 2 / former * scale,	-hei / 2 / former * scale},
				{wid / 2 / former * scale,	-hei / 2 / former * scale},
				{wid / 2 / former * scale,	hei / 2 / former * scale},
				{-wid / 2 / former * scale,	hei / 2 / former * scale},
			}
end

local function only_offset(former, scale, offset_pix_x, offset_pix_y)
	return {offset_pix_x / former * scale / former_scale_multipiler, offset_pix_y / former * scale / former_scale_multipiler}
end

local function less_simple_rectangle_with_offset(former, scale, wid, hei, offset_pix_x, offset_pix_y, scale_size)
	local no_offset = less_simple_rectangle(former, scale_size or scale, wid, hei)
	local offset = only_offset(former, scale, offset_pix_x, offset_pix_y)
	return	{
				{no_offset[1][1] + offset[1],	no_offset[1][2] + offset[2]},
				{no_offset[2][1] + offset[1],	no_offset[2][2] + offset[2]},
				{no_offset[3][1] + offset[1],	no_offset[3][2] + offset[2]},
				{no_offset[4][1] + offset[1],	no_offset[4][2] + offset[2]},
			}
end



local function get_w(mm_table)
	return mm_table.max_x - mm_table.min_x
end

local function get_h(mm_table)
	return mm_table.max_y - mm_table.min_y
end

local function get_size(mm_table)
	return get_w(mm_table), get_h(mm_table)
end

local function AddElement(elem)
	if not is_vr then
		elem.screenspace		= ScreenType.SCREENSPACE_TRUE
	end
	Add(elem)
end

local common_mat = MakeMaterial("Mods/aircraft/AH-64D/Cockpit/IndicationResources/AI/ai_combined.dds",{255,255,255,255})

local 	base_					= CreateElement "ceSimple"
		base_.controllers 		= {{"vr_size_control",compass_pos[2]}}
AddElement(base_)


--PilotAI
local compass_center			= CreateElement "ceTexPoly"
compass_center.name				= "compass_center"
compass_center.material			= common_mat
compass_center.vertices			= { --special case
									{-get_w(compass_center_tex_pos) / 2 / former_size * compass_size_adj,	-get_h(compass_center_tex_pos) * 25/38 / former_size * compass_size_adj},
									{get_w(compass_center_tex_pos) / 2 / former_size * compass_size_adj,		-get_h(compass_center_tex_pos) * 25/38 / former_size * compass_size_adj},
									{get_w(compass_center_tex_pos) / 2 / former_size * compass_size_adj,		get_h(compass_center_tex_pos) * 13/38 / former_size * compass_size_adj},
									{-get_w(compass_center_tex_pos) / 2 / former_size * compass_size_adj,	get_h(compass_center_tex_pos) * 13/38 / former_size * compass_size_adj}
								}
compass_center.init_pos			= compass_pos
compass_center.tex_coords		= minmax_to_coords(compass_center_tex_pos)
compass_center.indices			= default_box_indices
compass_center.parent_element	= base_.name
if not is_vr then
	compass_center.controllers	= {{"show_compass"}}
else
	compass_center.controllers	= {{"show_compass_VR", VR_rotate_angle_Z_bot}}
end
AddElement(compass_center)

local compass_base				= CreateElement "ceTexPoly"
compass_base.name				= "compass_base"
compass_base.material			= common_mat
compass_base.parent_element 	= compass_center.name
compass_base.vertices			= less_simple_rectangle(former_size, compass_size_adj, get_size(compass_base_tex_pos))
compass_base.tex_coords			= minmax_to_coords(compass_base_tex_pos)
compass_base.indices			= default_box_indices
compass_base.controllers		= {{"rotate_compass_base"}}
AddElement(compass_base)

local compass_scale				= CreateElement "ceTexPoly"
compass_scale.name				= "compass_scale"
compass_scale.material			= common_mat
compass_scale.parent_element 	= compass_center.name
compass_scale.vertices			= less_simple_rectangle(former_size, compass_size_adj, get_size(compass_scale_tex_pos))
compass_scale.tex_coords		= minmax_to_coords(compass_scale_tex_pos)
compass_scale.indices			= default_box_indices
compass_scale.controllers		= {{"rotate_compass_scale"}}
AddElement(compass_scale)

local compass_waypoint				= CreateElement "ceTexPoly"
compass_waypoint.name				= "compass_waypoint"
compass_waypoint.material			= common_mat
compass_waypoint.parent_element 	= compass_center.name
compass_waypoint.vertices			= less_simple_rectangle_with_offset(former_size, compass_size_adj, get_w(compass_waypoint_tex_pos), get_h(compass_waypoint_tex_pos), 0, compass_waypoint_y_offset)
compass_waypoint.tex_coords			= minmax_to_coords(compass_waypoint_tex_pos)
compass_waypoint.indices			= default_box_indices
compass_waypoint.controllers		= {{"rotate_compass_waypoint"}}
AddElement(compass_waypoint)


local compass_arrow				= CreateElement "ceTexPoly"
compass_arrow.name				= "compass_arrow"
compass_arrow.parent_element 	= compass_center.name
compass_arrow.material			= common_mat
compass_arrow.vertices			= less_simple_rectangle_with_offset(former_size, compass_size_adj, get_w(compass_arrow_tex_pos), get_h(compass_arrow_tex_pos), 0, compass_arrow_y_offset)
compass_arrow.tex_coords		= minmax_to_coords(compass_arrow_tex_pos)
compass_arrow.indices			= default_box_indices
AddElement(compass_arrow)

local box_alt				= CreateElement "ceTexPoly"
box_alt.name				= "box_alt"
box_alt.parent_element 		= compass_center.name
box_alt.material			= common_mat
box_alt.init_pos 			= only_offset(former_size, compass_size_adj, box_x_offset, box_y_offset_up)
box_alt.vertices			= less_simple_rectangle(former_size, txt_box_size, get_size(white_box_tex_pos))
box_alt.tex_coords			= minmax_to_coords(white_box_tex_pos)
box_alt.indices				= default_box_indices
if is_vr then
	box_alt.controllers 		= {{'rotate_boxes_vr', VR_rotate_angle_Z_bot, VR_add_height}}
end
AddElement(box_alt)

local alt_text 			= CreateElement "ceStringPoly"
alt_text.name 			= "alt_text"
alt_text.parent_element = box_alt.name
alt_text.material 		= arial_font
--alt_text.init_pos 		= only_offset(former_size, compass_size_adj, box_x_offset, box_y_offset_up)
alt_text.stringdefs 	= text_defs_compass
alt_text.alignment 		= "CenterCenter"
alt_text.controllers 	= {{'alt_text'--[[, VR_rotate_angle_Z, VR_add_height]]}}
AddElement(alt_text)

local alt_text_top 			= CreateElement "ceStringPoly"
alt_text_top.name 			= "alt_text_top"
alt_text_top.material 		= arial_font
alt_text_top.parent_element	= box_alt.name
alt_text_top.init_pos 		= {0, compass_size * 0.065}
alt_text_top.stringdefs 	= text_defs_compass
alt_text_top.alignment 		= "CenterCenter"
alt_text_top.value 			= "ALT"
AddElement(alt_text_top)

local alt_add_text 			= CreateElement "ceStringPoly"
alt_add_text.name 			= "alt_add_text"
alt_add_text.material 		= arial_font
alt_add_text.parent_element	= box_alt.name
alt_add_text.init_pos 		= {compass_size * 0.08, 0}
alt_add_text.stringdefs 	= text_defs_compass
alt_add_text.alignment 		= "LeftCenter"
alt_add_text.controllers 	= {{'alt_add_text',--[[, VR_rotate_angle_Z, VR_add_height]]}}
AddElement(alt_add_text)

local box_speed				= CreateElement "ceTexPoly"
box_speed.name				= "box_speed"
box_speed.parent_element 	= compass_center.name
box_speed.material			= common_mat
box_speed.init_pos 			= only_offset(former_size, compass_size_adj, -box_x_offset, box_y_offset_up)
box_speed.vertices			= less_simple_rectangle(former_size, txt_box_size, get_size(white_box_tex_pos))
box_speed.tex_coords		= minmax_to_coords(white_box_tex_pos)
box_speed.indices			= default_box_indices
if is_vr then
	box_speed.controllers 		= {{'rotate_boxes_vr', VR_rotate_angle_Z_bot, VR_add_height}}
end
AddElement(box_speed)

local ias_text 			= CreateElement "ceStringPoly"
ias_text.name 			= "ias_text"
ias_text.parent_element = box_speed.name
ias_text.material 		= arial_font
--ias_text.init_pos 		= only_offset(former_size, compass_size_adj, -box_x_offset, box_y_offset_up)
ias_text.stringdefs 	= text_defs_compass
ias_text.alignment 		= "CenterCenter"
ias_text.controllers 	= {{'speed_text'--[[, VR_rotate_angle_Z, VR_add_height]]}}
AddElement(ias_text)

local ias_text_top 			= CreateElement "ceStringPoly"
ias_text_top.name 			= "ias_text_top"
ias_text_top.material 		= arial_font
ias_text_top.parent_element	= box_speed.name
ias_text_top.init_pos 		= {0, compass_size * 0.065}
ias_text_top.stringdefs 	= text_defs_compass
ias_text_top.alignment 		= "CenterCenter"
ias_text_top.value 			= "IAS"
AddElement(ias_text_top)

local box_course				= CreateElement "ceTexPoly"
box_course.name				= "box_course"
box_course.parent_element 	= compass_center.name
box_course.material			= common_mat
box_course.init_pos 		= only_offset(former_size, compass_size_adj, 0, box_y_offset_big)
box_course.vertices			= less_simple_rectangle(former_size, txt_box_size, get_size(white_box_tex_pos))
box_course.tex_coords		= minmax_to_coords(white_box_tex_pos)
box_course.indices			= default_box_indices
if is_vr then
	box_course.controllers 		= {{'rotate_boxes_vr', VR_rotate_angle_Z_bot, VR_add_height}}
end
AddElement(box_course)

local course_text 			= CreateElement "ceStringPoly"
course_text.name 			= "course_text"
course_text.parent_element	= box_course.name
course_text.material 		= arial_font
--course_text.init_pos 		= only_offset(former_size, compass_size_adj, 0, box_y_offset_big)
course_text.stringdefs 	    = text_defs_compass
course_text.alignment 		= "CenterCenter"
course_text.controllers 	= {{'course_text'--[[, VR_rotate_angle_Z, VR_add_height]]}}
AddElement(course_text)

local box_mode				= CreateElement "ceTexPoly"
box_mode.name				= "box_mode"
box_mode.parent_element 	= compass_center.name
box_mode.material			= common_mat
if is_vr then
	box_mode.init_pos 		= {0, compass_size * 0.1}
	box_mode.vertices 		= less_simple_rectangle(former_size, compass_size_adj, get_size(white_box_tex_pos))
else
	box_mode.vertices		= less_simple_rectangle_with_offset(former_size, compass_size_adj, get_w(white_box_tex_pos), get_h(white_box_tex_pos), -box_x_offset, box_y_offset_down, txt_box_size)
end
box_mode.tex_coords			= minmax_to_coords(yellow_box_tex_pos)
box_mode.indices			= default_box_indices
AddElement(box_mode)

local mode_text 			= CreateElement "ceStringPoly"
mode_text.name 			= "mode_text"
mode_text.material 		= arial_font
if is_vr then
	mode_text.parent_element	= box_mode.name
else
	mode_text.parent_element	= compass_center.name
	mode_text.init_pos			= {compass_size * -0.225, compass_size * -0.315}
end
mode_text.stringdefs 	= text_defs_compass
mode_text.alignment 		= "CenterCenter"
mode_text.controllers 	= {{'mode_text'--[[, VR_rotate_angle, VR_add_height]]}}
AddElement(mode_text)

--CPG AI

local weap_contol			= CreateElement "ceTexPoly"
weap_contol.name			= "weap_contol"
weap_contol.material		= common_mat
weap_contol.vertices		= simple_square(weap_control_size)
weap_contol.init_pos		= weap_control_pos
weap_contol.tex_coords		= minmax_to_coords(weap_circle_tex_pos)
weap_contol.indices			= default_box_indices
--weap_contol.parent_element	= base_.name
if not is_vr then
	weap_contol.controllers	= {{"show_weap_control"}}
else
	weap_contol.controllers	= {{"show_weap_control_VR", VR_rotate_angle_Z_top}}
end
AddElement(weap_contol)

local weapon_center 			= CreateElement "ceStringPoly"
weapon_center.name 				= "weapon_center"
weapon_center.parent_element	= weap_contol.name
weapon_center.material			= arial_font
weapon_center.stringdefs 		= text_defs_weap_control
weapon_center.alignment 		= "CenterCenter"
weapon_center.controllers 		= {{'weapon_center'}, {'weapon_text_color'}}
AddElement(weapon_center)

local weapon_right 				= CreateElement "ceStringPoly"
weapon_right.name 				= "weapon_right"
weapon_right.parent_element		= weap_contol.name
weapon_right.material			= arial_font
weapon_right.stringdefs 		= text_defs_weap_control
weapon_right.init_pos			= {weap_text_radius, 0}
weapon_right.alignment 			= "CenterCenter"
weapon_right.controllers 		= {{'weapon_right'}, {'weapon_text_color'}}
AddElement(weapon_right)

local weapon_up 				= CreateElement "ceStringPoly"
weapon_up.name 					= "weapon_up"
weapon_up.parent_element		= weap_contol.name
weapon_up.material				= arial_font
weapon_up.stringdefs 			= text_defs_weap_control
weapon_up.init_pos				= {0, weap_text_radius}
weapon_up.alignment 			= "CenterCenter"
weapon_up.controllers 			= {{'weapon_up'}, {'weapon_text_color'}}
AddElement(weapon_up)

local weapon_down 				= CreateElement "ceStringPoly"
weapon_down.name 				= "weapon_down"
weapon_down.parent_element		= weap_contol.name
weapon_down.material			= arial_font
weapon_down.stringdefs 			= text_defs_weap_control
weapon_down.init_pos			= {0, -weap_text_radius}
weapon_down.alignment 			= "CenterCenter"
weapon_down.controllers 		= {{'weapon_down'}, {'weapon_text_color'}}
AddElement(weapon_down)

local weapon_far_right 				= CreateElement "ceStringPoly"
weapon_far_right.name 				= "weapon_far_right"
weapon_far_right.parent_element		= weap_contol.name
weapon_far_right.material			= arial_font
weapon_far_right.stringdefs 		= text_defs_weap_control
weapon_far_right.init_pos			= {weap_text_radius_far, 0}
weapon_far_right.alignment 			= "CenterCenter"
weapon_far_right.controllers 		= {{'weapon_far_right'}, {'weapon_text_color'}}
AddElement(weapon_far_right)

local weapon_far_left 				= CreateElement "ceStringPoly"
weapon_far_left.name 				= "weapon_far_left"
weapon_far_left.parent_element		= weap_contol.name
weapon_far_left.material			= arial_font
weapon_far_left.stringdefs 			= text_defs_weap_control
weapon_far_left.init_pos			= {-weap_text_radius_far, 0}
weapon_far_left.alignment 			= "CenterCenter"
weapon_far_left.controllers 		= {{'weapon_far_left'}, {'weapon_text_color'}}
AddElement(weapon_far_left)


local middle_list_holder 			= CreateElement "ceTexPoly"
middle_list_holder.name				= "middle_list_holder"
middle_list_holder.material			= common_mat
middle_list_holder.vertices			= simple_rectangle(text_frame_width, text_frame_height * 5)
middle_list_holder.init_pos			= compass_pos
--middle_list_holder.parent_element	= base_.name
middle_list_holder.tex_coords		= minmax_to_coords(list_bg_tex_pos)
middle_list_holder.indices			= default_box_indices
if not is_vr then
	middle_list_holder.controllers		= {{"show_list"}}
else
	middle_list_holder.controllers		= {{"show_list_VR"}}
end
AddElement(middle_list_holder)



local middle_list_text 			= CreateElement "ceStringPoly"
middle_list_text.name 			= "middle_list_text"
middle_list_text.parent_element = middle_list_holder.name
middle_list_text.material 		= arial_font
middle_list_text.stringdefs 	= text_defs_compass
middle_list_text.alignment 		= "CenterCenter"
middle_list_text.controllers 	= {{'middle_list_text'}}
AddElement(middle_list_text)

local upper_upper_list_text 			= CreateElement "ceStringPoly"
upper_upper_list_text.name 				= "upper_upper_list_text"
upper_upper_list_text.parent_element 	= middle_list_text.name
upper_upper_list_text.material 			= arial_font
upper_upper_list_text.stringdefs 		= text_defs_compass
upper_upper_list_text.init_pos			= {0, text_frame_height*2}
upper_upper_list_text.alignment 		= "CenterCenter"
upper_upper_list_text.controllers 		= {{'upper_upper_list_text'}}
AddElement(upper_upper_list_text)

local upper_list_text 					= CreateElement "ceStringPoly"
upper_list_text.name 					= "upper_list_text"
upper_list_text.parent_element 			= middle_list_text.name
upper_list_text.material 				= arial_font
upper_list_text.stringdefs 				= text_defs_compass
upper_list_text.init_pos				= {0, text_frame_height}
upper_list_text.alignment 				= "CenterCenter"
upper_list_text.controllers 			= {{'upper_list_text'}}
AddElement(upper_list_text)

local lower_list_text 					= CreateElement "ceStringPoly"
lower_list_text.name 					= "lower_list_text"
lower_list_text.parent_element 			= middle_list_text.name
lower_list_text.material 				= arial_font
lower_list_text.stringdefs 				= text_defs_compass
lower_list_text.init_pos				= {0, -text_frame_height}
lower_list_text.alignment 				= "CenterCenter"
lower_list_text.controllers 			= {{'lower_list_text'}}
AddElement(lower_list_text)

local lower_lower_list_text 			= CreateElement "ceStringPoly"
lower_lower_list_text.name 				= "lower_lower_list_text"
lower_lower_list_text.parent_element 	= middle_list_text.name
lower_lower_list_text.material 			= arial_font
lower_lower_list_text.stringdefs 		= text_defs_compass
lower_lower_list_text.init_pos			= {0, -text_frame_height * 2}
lower_lower_list_text.alignment 		= "CenterCenter"
lower_lower_list_text.controllers 		= {{'lower_lower_list_text'}}
AddElement(lower_lower_list_text)


local middle_list_arrow 			= CreateElement "ceTexPoly"
middle_list_arrow.name				= "middle_list_arrow"
middle_list_arrow.parent_element 	= middle_list_holder.name
middle_list_arrow.material			= common_mat
middle_list_arrow.vertices			= simple_rectangle(list_arrow_width, list_arrow_height)
middle_list_arrow.init_pos			= {list_arrow_x_offset, 0}
middle_list_arrow.tex_coords		= minmax_to_coords(list_arrow_tex_pos)
middle_list_arrow.indices			= default_box_indices
AddElement(middle_list_arrow)
end --function create_and_add_elements(cross_size, compass_size, is_vr)
