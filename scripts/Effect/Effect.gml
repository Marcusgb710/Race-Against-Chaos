// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Effect(_name, _type, _friendly, _effect_counter,_efx, _effect_spr) constructor{
	name = _name;
	type = _type;
	friendly = _friendly;
	effect_counter = _effect_counter;
	effect_counter_max = _efx;
	effect_spr = _effect_spr
	
	function counter()
	{
	
		effect_counter -=1;
	
	}	
	
	function reset()
	{
		effect_counter = effect_counter_max	
	}
	
}