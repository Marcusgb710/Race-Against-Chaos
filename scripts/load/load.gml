// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_game(_selected_level_=undefined){
		var _selected_level = _selected_level_;
		game();
		if(!is_undefined(_selected_level)){room_goto(_selected_level); return;}
		
		var _data = load();
	
		if(!is_array(_data) && array_length(struct_get_names(_data)) != 0){
			show_debug_message(_data)
			_game = _data
			
			if(!is_undefined(_game.room))
			{
				_load = true;
				_selected_level = _game.room
				
				
			}
		
				
		}
		else{_selected_level = MistHouse}
		print(_selected_level);
		if(_selected_level == pointer_null)
		{
			_selected_level = Premenu
		}
		room_goto(_selected_level);
		
}


function load(){
	try{
	var _file = file_text_open_read("datafiles/"+"_save_.txt");
	var _encoded_string = file_text_read_string(_file)
	
	var _decoded_data = base64_decode(_encoded_string)
	//show_debug_message(_decoded_data)
	var _data = json_parse(_decoded_data)
	//show_debug_message(_data)
	file_text_close(_file)
	return _data
	}
	catch(_e)
	{
		return {}
	}
}