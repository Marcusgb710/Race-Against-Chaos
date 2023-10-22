// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_effect(_target, _effect, _action){
	_effect.action = _action
	if(array_contains(_target.effects, _effect))
	{
		_effect.effect_counter += _effect.effect_counter_max
		return
	}
	array_push(_target.effects, _effect)
}