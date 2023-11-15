if place_meeting(x, y, obj_player) && !instance_exists(obj_textbox)
{
	create_textbox(text_id);
	instance_destroy();
}



