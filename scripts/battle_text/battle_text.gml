// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function battle_text(){
	var _battle_text = {
		
	}
	
	
//attack
	_battle_text._damage = function(_defense_lost, _hp_lost, _target){
		if(_defense_lost > 0 && _hp_lost > 0)
		{
			return $"{_target.name} has lost {_defense_lost} defense and {_hp_lost} hp!"
		}
		if(_defense_lost > 0)
		{
			return $"{_target.name} has lost {_defense_lost} defense!"
		}
		
		return $"{_target.name} has lost {_hp_lost} hp!"
		}
	
	_battle_text._defense = function(_defense_gained, _target_name){return $"{_target_name}'s defense has gone up by {_defense_gained}"}
	
	_battle_text._heal = function(_hp_gained, _target_name){return $"{_target_name} has gained {_hp_gained} hp!"}
	
	_battle_text._effect = function(_effect_name, _target_name){return $"{_target_name} is effected by {string_lower(_effect_name)}"}
	
	_battle_text._no_effect = function(_target_name){return $"{_target_name} refuses to get hurt"}
	
	
	return _battle_text
	
}

