// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @func            print([argument])
/// @desc            prints N arguments
function print(){
	var _str = ""
	for(var _i=0; _i < argument_count; _i++){
		
		_str += $"{argument[_i]} "
	}
	show_debug_message(_str)
}


/// @func _len()
/// @desc returns the length of a struct, array, or string
/// @arg {Array | String | Struct} _index_based_obj A Data Structure(ONLY WORKS FOR ARRAYS, STRINGS, AND STRUCT)
/// @return {Int}
function _len(_index_based_obj){
	if(is_array(_index_based_obj)){
		return array_length(_index_based_obj);
	}
	if(is_string(_index_based_obj)){
		return string_length(_index_based_obj);
	}
	if(is_struct(_index_based_obj)){
		return variable_struct_names_count(_index_based_obj)
	}
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