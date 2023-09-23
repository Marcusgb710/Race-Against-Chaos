// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function settings_controller(_option, _left_key, _right_key, _shift_index){
	
	switch(_option.func){
		case(menu_element_type.slider):
			var _starting_x = (global.view_width /2) +16
			var _ending_x = _starting_x
			
			

			if(_right_key)
			{
				if(_option.pos.x_ > _ending_x-1){return}
				_option.pos.x_ += 1;
			}
			if(_left_key){
				if(_option.pos.x_ < _starting_x+1){return}
				_option.pos.x_ -= 1 ;
			}
			var _normalize = (_option.pos.x_ - _starting_x)/(_ending_x - _starting_x) *100
			change_volume_v2(_option, _normalize)
			
			break;
		case(menu_element_type.shift):
			
			if(_right_key){
				_shift_index += 1
				
			}
			if(_left_key){
				_shift_index -= 1
			}
			if(_shift_index >= array_length(_option.options))
			{
				_shift_index  = 0;	
			}
			if (_shift_index < 0)
			{
				_shift_index = array_length(_option.options);	
			}
			_option._text = _option.options[_shift_index]
			break;
				
		case(menu_element_type.input):
			break;
	}
			
			
	return  _shift_index;
}