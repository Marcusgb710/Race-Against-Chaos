/// @description Insert description here
// You can write your code in this editor
if(!show){exit}
var _font = Gonzobo;
var _cam_x = camera_get_view_x(view_camera[0]);
var _cam_y = camera_get_view_y(view_camera[0]);
var _quest_text_x = _cam_x + 288 - 30;
var _quest_text_y = _cam_y + 15;
draw_set_font(_font);
var _string_length = string_length(_quests_[quest_index].name) * font_get_size(_font);

draw_set_alpha(opacity)
draw_text_transformed(_quest_text_x-_string_length, _quest_text_y, _quests_[quest_index].name, 1, 1, 0)
draw_set_alpha(1);




