// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pick_room_enemies(_enemies_list){
	var ___enemies;
	randomize()
	var _random_number = random(1);
	for(var _i = 0; _i < array_length(_enemies_list); _i++)
	{
		var _enemies = _enemies_list[_i][0];
		var _enemies_percentage = _enemies_list[_i][1];
		
		if(_random_number>0 && _random_number < _enemies_percentage){___enemies = _enemies break;}
		else{___enemies = _enemies_list[0][0]}
	}
	
	
	return ___enemies;
}