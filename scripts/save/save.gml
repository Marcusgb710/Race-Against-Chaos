// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_pos(){
	
		var _member = _game.battle_party_data[0];
		if(instance_exists(obj_player)){
		_member.last_pos._x = obj_player.x;
		_member.last_pos._y = obj_player.y;
		}
		_game.battle_party_data[0].last_pos = _member.last_pos;
	
	
}
function save(_data){
	save_pos();
	var _jsonified_data = json_stringify(_data);
	var _encoded_data = base64_encode(_jsonified_data);
	var _file = file_text_open_write("datafiles/" + "_save_.txt")
	file_text_write_string(_file, _encoded_data)
	file_text_close(_file)
}