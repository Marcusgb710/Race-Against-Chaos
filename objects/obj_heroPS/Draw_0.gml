if state == "READY"{
	draw_self();	
	
	if (obj_battle_spawnerPS.playerturn) && (obj_battle_spawnerPS.herotocommand == id){
		draw_sprite(spr_selectarrow, 0, x + 10, y + 12 + (sprite_height/2));	
	}
	
	if (stunned > 0) image_blend = c_yellow;
	
	if (isasleep) image_blend = c_blue;
	
	if (stunned > 0) && (isasleep) image_blend = c_green;
	
	if dead{image_blend = c_dkgray;}
}
