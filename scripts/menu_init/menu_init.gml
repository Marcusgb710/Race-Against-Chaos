function menu_init(_pages, _option_buffer, _page_array_length){
	var __y = (global.view_height/2) - (_page_array_length * _option_buffer)
	for( var _i = 0; _i <array_length(_pages.audio)-1; _i +=1)
	{
	
		_pages.audio[_i].pos = {x_: (global.view_width/2)+16, y_: __y}
		__y += _option_buffer * 2
	}
	for( var _i = 0; _i <array_length(_pages.graphics)-1; _i +=1)
	{
	var _element = _pages.graphics[_i];
	if(_element.func == menu_element_type.shift){
		_element._text = _element.options[_shift_index]	
	}
  }
}