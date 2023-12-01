/// @description Insert description here
// You can write your code in this editor

if(!show){exit}
draw_set_halign(fa_left)
var _font = Gonzobo;
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

draw_set_font(_font);
var _string_length = string_length(_quests_[quest_index].name) * font_get_size(_font);
var _quest_text_x = cam_x + cam_w - 30 - _string_length;
var _quest_text_y = cam_y + 15;
draw_set_alpha(opacity)
draw_text_transformed(_quest_text_x , _quest_text_y, _quests_[quest_index].name, 1, 1, 0)
draw_set_alpha(1);




