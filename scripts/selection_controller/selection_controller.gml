// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function selection_controller(_element){
	switch(_element.func)
	{
		case(menu_element_type.slider):
			var _starting_x = (global.view_width /2) +16
			var _ending_x = _starting_x + 64
			var _normalize = (_element.pos.x_ - _starting_x)/(_ending_x - _starting_x) *100
			change_volume_v2(_element, _normalize)
		
			break;
		
	
		
		case(menu_element_type.shift):
			
			if(_element._text == "WINDOWED")
			{
				window_set_fullscreen(0);
				_element._text = v_element.options[_shift_index]	
	 
			}
			else if(_element._text == "FULLSCREEN"){window_set_fullscreen(1);}
			
			
			break;
				
	}
}