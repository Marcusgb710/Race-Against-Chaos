// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_battle_decision(_enemy_choices){

	var _max = max(_enemy_choices.a, _enemy_choices.d, _enemy_choices.p)
	var _min = min(_enemy_choices.a, _enemy_choices.d, _enemy_choices.p)
	var _result;
	randomize()
	var _r = random(1)
	var _vars = struct_get_names(_enemy_choices)
	var _struct_length = array_length(_vars);
	

	if(_r >= _max)
	{
		for(var _i = 0; _i < _struct_length; _i++)
		{
			if(_enemy_choices[$_vars[_i]] == _max)
			{
				_result = _vars[_i]
			}
		}
	}
	else if (_r <= _min)
	{
		
			for(var _i = 0; _i < _struct_length; _i++)
		{
			if(_enemy_choices[$_vars[_i]] == _min)
			{
				_result = _vars[_i]
			}
		}
	}
	else
	{
	
			
			
		for(var _i = 0; _i < _struct_length; _i++)
		{
			if(_enemy_choices[$_vars[_i]] != _max && _enemy_choices[$"{_vars[_i]}"] != _min)
			{
				_result = _vars[_i]
			}
		}
			
	}
	
	return _result;
}