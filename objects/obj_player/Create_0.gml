event_inherited();

hp = 100;
max_hp = hp;

xspd = 0;
yspd = 0;

control = true

Cmove = false;

move_spd = 1.2;


sprite[RIGHT] = spr_MistyR;
sprite[UP] = spr_MistyU;
sprite[LEFT] = spr_MistyL;
sprite[DOWN] = spr_MistyD;

sprite[SURP] = spr_MistySurprise;
sprite[BED1] = spr_MistyChillin;
sprite[BED2] = spr_MistyChillin2;


face = DOWN;

//inventory_system = instance_create_depth(0, 0, -9999, obj_inventory, {})

rain = false;
casual = false;
can_move = true


#region //party
array_size = 100;

for (var i = array_size-1; i >= 0; i--){
	
	pos_x[i] = x;
	pos_y[i] = y;
	
	torecordsprite[i] = spr_MistyD;
	
	}
	


#endregion

interactdist = 4;