// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function selection_controller(_element, _menu){
	switch (_menu)
	{
		case (PAGE_NAV.AUDIO):
			
			var _starting_x = (global.view_width /2) +16
			var _ending_x = _starting_x + 64
			var _normalize = (_element.pos.x_ - _starting_x)/(_ending_x - _starting_x) * 100
			change_volume(_element, _normalize)
		
			break;
		
		
		case (PAGE_NAV.GRAPHICS):
			
			change_window_mode(_element)
			
			break;
		
		case (PAGE_NAV.CONTROLS):
			
			if _element.select_key != vk_nokey {
				_element.key = _element.select_key
			}
			break;
		
	}
}