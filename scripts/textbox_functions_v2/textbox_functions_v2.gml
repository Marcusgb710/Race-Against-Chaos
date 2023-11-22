// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function game_text(string_array, textbox_width, font_size){
	var a = string_array
	var v = ""
	var _l = 0;
	for(var _i=0; _i < array_length(a); _i++)
	{
		var _string = a[_i].dialog;
		var _string_length = string_length(_string)
		
		
		if(_string_length*font_size > textbox_width)
		{
			for(var _j=0; _j < _string_length; _j++)
			{
				var _char = string_char_at(_string, _j+1);
				
				if(_char == " ")
				{
					var _s = (_j+1)*font_size
					show_debug_message(_s)
					if(_s >0 && _s < textbox_w)
					{
						_l = _s;
					}
					continue;
				}
				v+=_char
				
				
			}
			show_debug_message(_string)
			show_debug_message(v)
			show_debug_message(_l)
		}
		v = ""
		_l = 0
		//a[_i].dialog = string_insert("\n", _string, _string_length/2)
		
		//show_debug_message(a[_i].dialog)
	}
	
}
