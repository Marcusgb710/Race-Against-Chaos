// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(_data){
	var _jsonified_data = json_stringify(_data);
	var _encoded_data = base64_encode(_jsonified_data);
	var _file = file_text_open_write("datafiles/" + "_savee_.txt")
	file_text_write_string(_file, _encoded_data)
	file_text_close(_file)
}