// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function battle_actions(_party, _enemies){
	switch(TURN_STATE){
		case TURN_STATE.EFFECTS:
		//apply effects
			for (var _i=0; _i < array_length(_party); _i++)
			{
				var _party_member = _party[_i];
				if(array_length(_party_member.effects) > 0)
				{
					for(var _j = 0; _j < array_length(_party_member.effects); _j++)
					{
						show_debug_message($"{_party_member.name} is currently affected by {_party_member.effects[_j]}");
					}
				}
			}
			for (var _i=0; _i < array_length(_enemies); _i++)
			{
				var _enemy = _enemies[_i];
				if(array_length(_enemy.effects) > 0)
				{
					for(var _j = 0; _j < array_length(_enemy.effects); _j++)
					{
						show_debug_message($"{_enemy.name} is currently affected by {_enemy.effects[_j]}");
					}
				}
			}
		case TURN_STATE.PLAYER:
			//chose option
		
		
		case TURN_STATE.ENEMY:
		//apply damage
		
		case TURN_STATE.END:
		//end turn
		//draw_roundrect_color_ext
	}
}