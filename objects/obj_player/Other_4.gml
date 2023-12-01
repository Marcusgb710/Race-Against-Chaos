





instance_create_depth(0, 0, -9999, obj_inventory, {})
instance_create_depth(0, 0, -9999, obj_debug, {})
instance_create_depth(0, 0, -9888, obj_quest, {})
if(_load){
	
	print(_game.battle_party_data[0].last_pos);
	var _x = _game.battle_party_data[0].last_pos._x
	var _y = _game.battle_party_data[0].last_pos._y
	obj_camera.x = _x;
	obj_camera.y = _y;
	x = _x
	y = _y
	_load = false;
	
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