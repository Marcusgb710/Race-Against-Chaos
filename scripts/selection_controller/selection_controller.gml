// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function selection_controller(_element){
	switch(_element.func)
	{
		//change this
		case(menu_element_type.slider):
			var _starting_x = (global.view_width /2) +16
			var _ending_x = _starting_x + 64
			var _normalize = (_element.pos.x_ - _starting_x)/(_ending_x - _starting_x) * 100
			change_volume(_element, _normalize)
		
			break;
		
	
		
		case(menu_element_type.shift):
			/// change this
			
			
			change_window_mode(_element)
			
			//_element._text = _element.options[_shift_index]	
			
			break;
				
	}
}