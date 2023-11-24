if place_meeting(x, y, obj_player) && !instance_exists(obj_textbox_v2)
{
	var _gt = game_text_v2();
	//create_textbox(text_id);
	instance_create_depth(0, 0, -9999, obj_textbox_v2, {current_dialog_block: _gt.misecondline })
	instance_destroy();
}



