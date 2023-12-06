// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function print(_val){
	show_debug_message(_val)
}


function array_min(_value_array){
	var _min;
	for(var _i=0; _i < array_length(_value_array); _i++)
	{
		var _value = _value_array[_i]
		if(_i == 0){_min = _value continue}
		if(_value < _min){_min = _value}
	}
	
	return _min;
	
}