if !instance_exists(obj_player) exit;

switch(obj_player.torecordsprite[record]){
	
case spr_MistyD: sprite_index = spr_KelsieD; break;
case spr_MistyR: sprite_index = spr_KelsieR; break;
case spr_MistyU: sprite_index = spr_KelsieU; break;
case spr_MistyL: sprite_index = spr_KelsieL; break;

	
}

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];

image_index = obj_player.image_index;