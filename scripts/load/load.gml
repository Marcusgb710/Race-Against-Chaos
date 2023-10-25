// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load(){
	try{
	var _file = file_text_open_read("datafiles/"+"_savee_.txt");
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