// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pick_room_enemies(_enemy_data){
	var _chances;
	var _enemies;
		switch(room)
		{
			case Jamesoak_West:
				_chances = [[_enemy_data._weak, 0.7], [_enemy_data._strong, 0.3]]
				break;
			case Jamesoak_East:
				_chances = [[_enemy_data._weak, 0.7], [_enemy_data._strong, 0.3]]
				break;
			case Jamesoak_North:
				_chances = [[_enemy_data._weak, 0.7], [_enemy_data._strong, 0.3]]
				break;
											
			case Jamesoak_South:
				_chances = [[_enemy_data._weak, 0.7], [_enemy_data._strong, 0.3]]
				break;
			case Jamesoak_Midtown:
				_chances = [[_enemy_data._weak, 0.7], [_enemy_data._strong, 0.3]]
				break;
			
			
		}
		
		randomize();
		var _chance = random(1);
		var _chance_calculation = [];
		for(var _i=0; _i < array_length(_chances); _i++)
		{
			var _chance_ = _chances[_i][1];
			
			array_push(_chance_calculation, abs(_chance - _chance_))
			
		}
		
		_enemies = _chances[array_get_index(_chance_calculation, array_min(_chance_calculation))];
		return _enemies[0]
}