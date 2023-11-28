if place_meeting(x, y, obj_player) && !instance_exists(obj_textbox_v2)
{
	var _gt = game_text_v2();
	//create_textbox(text_id);
	create_textbox_v2("misecondline");
	instance_destroy();
}



