if !instance_exists(obj_player) exit;

switch(obj_player.torecordsprite[record]){
	
case spr_MistyD: sprite_index = spr_JohnnyD; break;
case spr_MistyR: sprite_index = spr_JohnnyR; break;
case spr_MistyU: sprite_index = spr_JohnnyU; break;
case spr_MistyL: sprite_index = spr_JohnnyL; break;

	
}

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];

image_index = obj_player.image_index;