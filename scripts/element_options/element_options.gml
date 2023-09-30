// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function element_options(_element, _y_pos, _x_pos, _middley, _current_room, _shift_index, _show_overlay, _selected_element){
	draw_set_halign(fa_left);
	
	switch(_element.func){
		case(menu_element_type.debug):
			var _textx = _x_pos + 16;
			var _texty = _middley
			draw_text(_textx, _texty, "Current Room:");
			if (_element._room == _current_room){
				draw_text(_textx, _texty+10, $"{_element.name}")
			}
	
			
			break;
			
		case(menu_element_type.slider):
		
			var _line_length = 64;
			var _line_x1 = (global.view_width /2) + 16;
			
			draw_circle(_element.pos.x_, _element.pos.y_, 5, false);
			draw_line(_line_x1, _element.pos.y_, _line_x1 + _line_length, _element.pos.y_);
			
			break;
		
		case(menu_element_type.toggle):
			
			break;
		
		case(menu_element_type.shift):
			
			draw_text(_x_pos +5, _y_pos,$"<< {_element._text} >>")
			break;
			
		case (menu_element_type.input):
		
			if (_element._show_overlay){
				var _overlay_width = 64;
				var _overlay_height = 64;
				var _overlay_x = global.view_width /2;
				var _overlay_y = global.view_height /2;
				var _color = c_white;
				draw_rectangle_color(_overlay_x, _overlay_y, _overlay_width , _overlay_height, _color, _color, _color, _color, false);
				draw_set_color(c_black);
				draw_text((_overlay_x + _overlay_width)/2, (_overlay_y+_overlay_height)/2, $"{global._fhinputKeys[_element.key]}");
			}
		
		
			_text = $"Key {global._fhinputKeys[_element.key]}"
			draw_text(_x_pos, _y_pos, _text);
		
			break;
		
	}
	
	
}