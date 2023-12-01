// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_room()
{
	//Get the individual count of each savable object
	var _roomstruct = 
	{
		
		
	
	}
	
	//Get the data from the different savable objects


	//Store the room specific struct in global.leveldata's variable meant for that level
	if room == JamsieBeach {global.leveldata.level_1 = _roomstruct;};
	if room == Forest {global.leveldata.level_2 = _roomstruct;};
}



function load_room()
{
	
	var _roomstruct = 0;
	
	//Get the correct struct for the room you're in
	if room == JamsieBeach {_roomstruct = global.leveldata.level_1;};
	if room == Forest {_roomstruct = global.leveldata.level_2;};
	
	//EXIT if roomstruct isn't a struct
	if !is_struct(_roomstruct) {exit;};
	
	
}



function save_game(_filenum = 0)
{
	
	var _savearray = array_create(0);
	
	//Save the room you're in
	save_room();
	
	//Set and save stats
	global.statdata.save_x = obj_player.x;
	global.statdata.save_y = obj_player.y;
	global.statdata.save_rm = room_get_name(room);
	
	if instance_exists(obj_camera)
	{
	global.statdata.savecam_x = obj_camera.x;
	global.statdata.savecam_y = obj_camera.y;
	}
	
	if instance_exists(obj_follower3)
	{
	global.statdata.f3save_x = global.statdata.save_x;
	global.statdata.f3save_y = global.statdata.save_y;
	}
	
	if instance_exists(obj_follower2)
	{
	global.statdata.f2save_x = global.statdata.save_x;
	global.statdata.f2save_y = global.statdata.save_y;
	}
	
	if instance_exists(obj_follower)
	{
	global.statdata.fsave_x = global.statdata.save_x;
	global.statdata.fsave_y = global.statdata.save_y;
	}
	
	array_push(_savearray, global.statdata);
	
	//save all the room data
	array_push(_savearray, global.leveldata);
	
	//Actual saving
	var _filename = "savedata" + string(_filenum) + ".sav";
	var _json = json_stringify(_savearray);
	var _buffer = buffer_create( string_byte_length(_json) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _json);
	
	buffer_save(_buffer, _filename);
	
	buffer_delete(_buffer);
	
}



function load_game____(_filenum = 0)
{
	
	//loading saved data
	var _filename = "savedata" + string(_filenum) + ".sav";
	if !file_exists(_filename) exit;
	
	//Load the buffer, ge tthe JSON, delete to free memory
	var _buffer = buffer_load(_filename);
	var _json = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	//Unstringify and get the data array
	var _loadarray = json_parse(_json);
	
	//Set the data in game to match loaded data
	global.statdata = array_get(_loadarray, 0);
	global.leveldata = array_get(_loadarray, 1);
	
	//Use new data to get to where we were
	var _loadroom = asset_get_index(global.statdata.save_rm);
	room_goto(_loadroom);
	instance_create_depth(0,0,-1111111111111, obj_fade);
	
	//Create the player objects
	
	if instance_exists(obj_player) {instance_destroy(obj_player);};
	instance_create_layer(global.statdata.save_x, global.statdata.save_y, "Instances", obj_player);
	
	if instance_exists(obj_camera) {instance_destroy(obj_camera);};
	instance_create_layer(global.statdata.savecam_x, global.statdata.savecam_y, layer, obj_camera);
	
	if global.jonparty{
	if instance_exists(obj_follower3) {instance_destroy(obj_follower3);};
	instance_create_layer(global.statdata.f3save_x, global.statdata.f3save_y, "Instances", obj_follower3);
	}
	
	if global.kelsparty{
	if instance_exists(obj_follower2) {instance_destroy(obj_follower2);};
	instance_create_layer(global.statdata.f2save_x, global.statdata.f2save_y, "Instances", obj_follower2);
	}
	
	if global.corparty{
	if instance_exists(obj_follower) {instance_destroy(obj_follower);};
	instance_create_layer(global.statdata.fsave_x, global.statdata.fsave_y, "Instances", obj_follower);
	}
	
	load_room();
}