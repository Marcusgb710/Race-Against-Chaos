if !instance_exists(obj_player) exit;

switch(obj_player.torecordsprite[record]){
	
case obj_player.sprite[DOWN]: sprite_index = spr_KelsieD; break;
case obj_player.sprite[RIGHT]: sprite_index = spr_KelsieR; break;
case obj_player.sprite[UP]: sprite_index = spr_KelsieU; break;
case obj_player.sprite[LEFT]: sprite_index = spr_KelsieL; break;

	
}

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];

image_index = obj_player.image_index;