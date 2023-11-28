





instance_create_depth(0, 0, -9999, obj_inventory, {})
instance_create_depth(0, 0, -9999, obj_debug, {})
instance_create_depth(0, 0, -9888, obj_quest, {})

if(load_){
	print("PEEEEEEEEEEEEEENISSSSSSSSSSS")
	print(_game.battle_party_data[0].last_pos);
	x = _game.battle_party_data[0].last_pos._x
	y = _game.battle_party_data[0].last_pos._y
	load_ = false;
	
}


if room == MistHouse 
{
casual = true;
sprite[RIGHT] = spr_MistyCasualR;
sprite[UP] = spr_MistyCasualU;
sprite[LEFT] = spr_MistyCasualL;
sprite[DOWN] = spr_MistyCasualD;
} else {
casual = false;
}