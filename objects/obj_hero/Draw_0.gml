if state == "READY"{
	draw_self();	
	
	if (obj_battle_spawner.playerturn) && (obj_battle_spawner.herotocommand == id){
		draw_sprite(spr_selectarrow, 0, x + 10, y + 12 + (sprite_height/2));	
	}
	
	if dead{
		image_blend = c_dkgray;
	}
}
