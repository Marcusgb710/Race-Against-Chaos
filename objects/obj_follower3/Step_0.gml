if !instance_exists(obj_player) exit;

switch(obj_player.torecordsprite[record]){
	
case obj_player.sprite[DOWN]: sprite_index = spr_JohnnyD; break;
case obj_player.sprite[RIGHT]: sprite_index = spr_JohnnyR; break;
case obj_player.sprite[UP]: sprite_index = spr_JohnnyU; break;
case obj_player.sprite[LEFT]: sprite_index = spr_JohnnyL; break;

	
}

x = obj_player.pos_x[record];
y = obj_player.pos_y[record];

image_index = obj_player.image_index;