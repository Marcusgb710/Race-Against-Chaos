// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_battle_textbox(_text_timer, _text_idx, _text="Message" , _text_box_width = 80, _text_box_height = 40){
	var _y_buffer = 100 + _text_box_height
	var _rect_x = (room_width-_text_box_width -(_text_box_width/2)) /2
	var _rect_y = (room_height - _text_box_height + _y_buffer) /2
	 
	var _text_y = _rect_y

	if(_text_idx > string_length(_text)){show_debug_message(string_length(_text)) return[0, 0]}
	
		//draw_rectangle_color(_rect_x, _rect_y, + _rect_x + _text_box_width, _rect_y +_text_box_height, c_black, c_black, c_black, c_black, 0 )
		
		
	draw_rectangle_color(_rect_x , _rect_y, + _rect_x + _text_box_width, _rect_y +_text_box_height, c_white, c_white, c_white, c_white, 1 )
	
	if(_text_timer >= 10)
	{
		
		var _letter = string_char_at(_text, _text_idx)
		draw_text(_text_x, _text_y, _letter)
		
		_text_x += font_get_size(GonzoboWh)
			
			
		_text_idx += 1
		_text_timer = 0
		return [_text_timer, _text_idx]
	}
	
	_text_timer += 1
	
	
	return [_text_timer, _text_idx]
	
	
	
}