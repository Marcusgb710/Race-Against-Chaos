// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Effect2(_effect) constructor{
	name = _effect.name;
	type = _effect.type;
	friendly = _effect.friendly;
	effect_counter = _effect.effect_counter;
	effect_counter_max = _effect.effect_counter;
	effect_spr = _effect.effect_spr
	
	function counter()
	{
	
		effect_counter -=1;
	
	}	
	
	function reset()
	{
		effect_counter = effect_counter_max	
	}
	
}