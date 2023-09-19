// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function death(_party, _enemies){
	for (var _i=0; _i < array_length(_party); _i++)
			{
				var _party_member = _party[_i];
				if (_party_member.current_hp <= 0)
				{
					show_debug_message($"{_party_member.name} is dead")
				}
				
				
			}
			for (var _i=0; _i < array_length(_enemies); _i++)
			{
				var _enemy = _enemies[_i];
				if _(_enemy.current_hp <= 0)
				{
					show_debug_message($"{_enemy.name} is dead")
				}
				
			}
}