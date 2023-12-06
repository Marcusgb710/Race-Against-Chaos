/**
 * @func        check_for_effect(_target, _effect)
 * @desc	  Checks if the target currently has an effect applied to them. returns True or False.			
 * @arg {struct}  _target The struct of the target you want to check the status of
 * @arg {struct}   _effect_to_check  The struct of the effect you want to compare
 * @return {Bool}.
*/
function check_for_effect(_target, _effect_to_check){
	var _effects = _target.effects;
	
	for(var _i=0; _i < array_length(_effects); _i++)
	{
		var _effect = _effects[_i];
		if(_effect.name == _effect_to_check.name)
		{
			return true;
		}
	}
	return false;
}
	
/**
 * @func          check_for_special_condition(_target)
 * @desc Checks   if a target has any special conditions for them to be attacked
 * @arg {struct}  _target A struct of the target you want to check for special conditions
 * @return {Bool}
 */
function check_for_special_condition(_target){
	var _special_conditions = _target.win_conditions;
	if(array_length(_special_conditions) > 0){return true}
	return false;
}
	

/**
 * @func                choose_boss(_enemy_data, _val)
 * @desc                Creates appropriate data for bosses and returns it as a struct
 * @arg {struct}		_enemy_data A Struct of the data for the enemy
 * @arg [{string | real}] _val The string name or number index of the boss you want. If no argument is provided _val defaults to 0
 * @return {struct}
 */
function choose_boss(_enemy_data, _val=0){
	var _boss_struct;
	if(is_string(_val)){
		var _bosses = _enemy_data._bosses.enemies
		for(var _i=0; _i < array_length(_bosses); _i++)
		{
			var _boss = _bosses[_i];
			var _boss_name = _boss.name;
			if(string_lower(_boss_name) == string_lower(_val))
			{
				_boss_struct = {
					chances : _boss.chances,
					music: _boss.music,
					_room: _boss._room,
					enemies: [_boss]
				}
			}
		}
	}
	if(is_numeric(_val)){
		var _data = _enemy_data._bosses.enemies;
		var _boss_array_length = array_length(_data);
		var _temp_val = _val;
		if(_temp_val < 0){
			_temp_val = _boss_array_length - abs(_temp_val);
		}
		if(_temp_val > _boss_array_length-1 || _temp_val < -_boss_array_length){_temp_val = _boss_array_length-1}
		
		var _boss = _data[_temp_val];
		var _boss_name = _boss.name;
		_boss_struct = {
					chances : _boss.chances,
					music: _boss.music,
					_room: _boss._room,
					enemies: [_boss]
				}
	}
	
	return _boss_struct;
		
	
}
	
/**
 * @func is_boss(_enemy_data, _enemy);
 * @desc Checks is selected enemy is a a boss.
 * @param {struct} _enemy_data The struct of enemy data to be compared
 * @param {struct} _enemy Th struct of the enemy you want to check
 * @returns {bool} returns true if enemy name is apart of one of the structs on the enemy list
 */
function is_boss(_enemy_data, _enemy)
{
	var _bosses = _enemy_data._bosses.enemies;
	
	for(var _i=0; _i < array_length(_bosses); _i++)
	{
		var _boss_name = _bosses[_i].name;
		if(string_lower(_boss_name) == string_lower(_enemy.name)){return true}
		return false;
	}
	
}



function check_spell_for_effect(_spell, _effect)
{
	if(!variable_struct_exists(_spell, "effect")){return false}
	if(_spell.effect == _effect){return true}
	return false;
}

