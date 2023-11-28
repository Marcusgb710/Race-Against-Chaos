if place_meeting(x, y, obj_player) && keyboard_check_released(vk_space) && !instance_exists(obj_textbox_v2)
{
	//create_textbox(text_id);
	
	//instance_create_layer(0, 0,"Instances", obj_textbox_v2, {current_dialog_block: game_dialog.barista});
	create_textbox_v2(text_id);
	instance_destroy();
}





