// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function nathans_textbox_fix(_text, _maxTextBoxWidth){
	var textLength = string_length(_text);
	for(var mainIndex = 1; mainIndex < string_length(_text); mainIndex++) {
		var lineBreakIndex = 1;
		var lineBreakCount = 0;
		if(string_char_at(_text, mainIndex + (lineBreakCount*2)) == " ") {
			var wordIndex = 1;
			while(mainIndex+wordIndex < textLength && string_char_at(_text, mainIndex + (lineBreakCount*2)+wordIndex) != " ") {
				wordIndex++;
			}
			if(string_width(string_copy(_text, lineBreakIndex, mainIndex + (lineBreakCount*2) + wordIndex)) > _maxTextBoxWidth) {
				_text = string_delete(_text, mainIndex + (lineBreakCount*2), 1)
				_text = string_insert("\n", _text, mainIndex + (lineBreakCount*2));
			}
		}
	}
	return _text;
}
function game_text(string_array, textbox_width, font_size){
	var a = string_array
	var v = ""
	var _l = 0;
	var _spaces = [];
	var _string_split_list = [];
	for(var _i=0; _i < array_length(a); _i++)
	{
		var _string = a[_i].dialog;
		var _string_length = string_length(_string)
		
		
		if(_string_length*font_size > textbox_width)
		{
			for(var _s=0; _s < _string_length; _s++){
				var _char = string_char_at(_string, _s+1);
				print(_char);
				if(_char == " ")
				{
					_l = _s+1;
					array_push(_spaces, _l);
					print(_l*font_size)
					print(_l*font_size > textbox_width)
					if(_l*font_size > textbox_width)
					{
						array_push(_string_split_list, string_copy(_string, 1, _spaces[array_length(_spaces)-2]));
						print(_string_split_list)
						continue;
					}
					
				}
				
			}
				
			}
			
		}
		
		//a[_i].dialog = string_insert("\n", _string, _string_length/2)
		
		//show_debug_message(a[_i].dialog)
	}
	

