/// @description Insert description here
// You can write your code in this editor

display_set_gui_size(global.view_width, global.view_height);

draw_sprite_ext(spr_pausemenu, 0,0,0,global.view_height,global.view_height,0,c_white,1)

var _middlex = global.view_width / 2;
var _middley = global.view_height / 2;
_page_array_length = array_length(page)

var _y1 = _middley - (_page_array_length * option_buffer);
var _y2 = _middley + (_page_array_length * option_buffer);
var _x = _middlex - 16;
var _y = _y1
draw_line(_middlex, _y1, _middlex, _y2)
draw_set_font(Gonzobo);

for( var _i = 0; _i <_page_array_length; _i +=1)
{	
	var _menu_option = page[_i]	
	
	if (_menu_option.show)
	{
		
		
		element_options(_menu_option, _y, _middlex, _middley, _selected_level, _shift_index, _show_overlay, selected_option)
		
		draw_set_halign(fa_right);
		
		if(_i == selected_menu){
			draw_set_color(c_purple);
			_x -= 16
		}
		else if(_i == selected_menu && selecting){
			draw_set_color(c_fuchsia);
			_x -= 16
		}
		
		draw_text(_x, _y, _menu_option.name)
		_x = _middlex - 16
		draw_set_color(c_white);

		
		
		_y += option_buffer *2
		
	}
	
}