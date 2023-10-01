if place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space) && !instance_exists(obj_textbox)
{
	create_textbox(text_id);
}



