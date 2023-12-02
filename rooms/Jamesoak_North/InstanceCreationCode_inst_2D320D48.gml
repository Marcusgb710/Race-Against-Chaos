t_scene_info = [
	[cutscene_change_face, obj_player, UP],
	[cutscene_move_char, obj_player, 1120, 528, false, 1],
	[cutscene_change_face, obj_player, LEFT],
	[cutscene_move_char, obj_player, 974, 528, false, 1],
	[cutscene_pause_sound, mus_Jamesoak_D],
	[cutscene_create_textbox, "Edgar2.1"],
	[cutscene_change_face, obj_player, RIGHT],
	[cutscene_instance_create, 1120, 528, "Instances", obj_Edgar],
	[cutscene_change_sprite_index, obj_Edgar, spr_EdgarLMAD],
	[cutscene_move_char, obj_Edgar, 1020, 528, false, 2],
	[cutscene_play_sound, mus_angry, 1, true],
	[cutscene_create_textbox, "Edgar2"],
	//(Battle Starts)
];