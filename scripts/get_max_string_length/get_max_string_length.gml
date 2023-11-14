// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_max_string_length(_string_array, _items=undefined){
	if(argument_count == 1)
	{
		
		return
	}
	var _max_str_length = 0;
	var _max_str_length_idx = 0;
	for(var _i = 0; _i < array_length(_string_array); _i++)
	{
		if(string_length(array_get(_string_array, _i)) > _max_str_length)
		{
			_max_str_length = string_length(array_get(_string_array, _i));
			_max_str_length_idx = _i;
		}
	}
	_max_str_length += string_length($" ${_items[$ _string_array[_max_str_length_idx]].shop_price}")
	return _max_str_length;
}