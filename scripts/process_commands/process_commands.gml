// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function process_commands(_command, _commands){
	var _split_string = string_split(_command, " ");
	var _command_names = struct_get_names(_commands);
	//if(array_length(_split_string) <= 2){
	//return;	
		
	//}
	
	var _command_ = string_lower(array_get(_split_string, 0) + array_get(_split_string, 1));
	array_delete(_split_string, 0, 1);
	array_delete(_split_string, 0, 1);
	show_debug_message(_command_)
	show_debug_message(_command_names)
	
	if(variable_struct_exists(_commands, _command_))
	{
		var _recived_command = _commands[$ _command_];
		var _command_string;
		if(array_length(_split_string) <=0){_command_string=""}
		else{
		_command_string = string_lower(array_get(_split_string, array_length(_split_string)-1))
		}
		
		show_debug_message(_command_string)
		show_debug_message(_command_)
		if(array_length(_split_string)>1){
			_command_string = _split_string
		}
		else if(string_length(_command_string)<=0){return _recived_command()}
		else if(is_numeric(string_digits(_command_string))){
			_command_string = real(_command_string)
		}
		
		
		return _recived_command(_command_string);
		
		
	}
	
	
	

}