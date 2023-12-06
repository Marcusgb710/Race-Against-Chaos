// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_enemies(_enemies){
	
	if(array_length(_enemies) == 1){
		return [[new Enemy(_enemies[0])], 1]
	}
	
	
	var _enemy_amount = round(random_range(1, 3))
	var _enemy_list = [];
	repeat(_enemy_amount)
	{
			randomize();
			var _random_enemy_idx = random_range(0, array_length(_enemies)-1);
			var _enemy = new Enemy(_enemies[_random_enemy_idx])
			array_push(_enemy_list, _enemy);
			
	}
	return [_enemy_list, _enemy_amount]
}