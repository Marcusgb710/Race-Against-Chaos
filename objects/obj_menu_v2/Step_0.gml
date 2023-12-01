/// @description Insert description here
// You can write your code in this editor
//left 1
//right 2
//up 0
//down3
//enter 4
#region controls
var _up = keyboard_check_pressed(pages.controls[0].key);
var _left = keyboard_check(pages.controls[1].key);
var _right = keyboard_check(pages.controls[2].key);
var _down = keyboard_check_pressed(pages.controls[3].key);
var _interact = keyboard_check_released(pages.controls[4].key);

/// some nicer scrolling currently click every 1/6 of a second. may move this and add nicer sliding to the sliders
key_durations[1] = (key_durations[1]+1)*_left
key_durations[2] = (key_durations[2]+1)*_right
var _fps = game_get_speed(gamespeed_fps);
_left = key_durations[1] == 1 || (key_durations[1]/_fps > 0.75 && key_durations[1] % int64(1/6*_fps) == 0)
_right = key_durations[2] == 1 || (key_durations[2]/_fps > 0.75 && key_durations[2] % int64(1/6*_fps) == 0)

#endregion

#region debug debug debug
if(keyboard_check_pressed(vk_add)){_debug_option_main_page.show = !_debug_option_main_page.show}
#endregion

#region This defines how the controls work when you are changing a menu option
if (selected_option != undefined){
	
	_shift_index = settings_controller(selected_option, _left, _right, _shift_index)
	
}
#endregion


if(!selecting){
if(_down){
	selected_menu += 1;
	if (page == pages.main && pages.main[0].show == false && selected_menu > _page_array_length-1){
		selected_menu = 1;
	}
	
	if(selected_menu > _page_array_length-1){
		selected_menu = 0;	
		
	}
	audio_play_sound(snd_selectsound, 5, false);
}
if(_up){
	selected_menu -= 1
	if(page == pages.main && pages.main[0].show == false && selected_menu < 1 || selected_menu < 0){
		selected_menu = _page_array_length-1;
	}
	audio_play_sound(snd_selectsound, 5, false);
	
	}
}






var _option = page[selected_menu];
selected_option = _option

if _option.func == menu_element_type.input {
	if _option._show_overlay && !(keyboard_key == vk_nokey) && !(keyboard_key == pages.controls[4].key){
		page[selected_menu].select_key = keyboard_key
	}
}


if(_interact){
	
	
	
	#region if you are changing a menu option the functionality goes here i.e changing volume, changing input
	if (selecting) {
		_option._show_overlay = false
		selecting = false;
		selected_option = undefined
		selection_controller(_option, current_menu)
		return
	}
	#endregion
	if(_option.func == menu_element_type.page_transfer)
	{
		var _results = page_navigation(_option, pages); 
		page = _results[0]; 
		selected_menu = _results[1];
		current_menu = _results[2]
		
	}
	else if(_option.name == "EXIT"){
		global.key_down = pages.controls[3].key;
		global.key_enter = pages.controls[4].key;
		global.key_left = pages.controls[1].key;
		global.key_up = pages.controls[0].key;
		global.key_right = pages.controls[2].key;
		
		game();
		var _data = load();
		//show_debug_message(_data)

		//print(_data.room)
		//print(_data.last_room_entered)
		if(variable_struct_exists(_data, "debug_version")){
			print(_data.debug_version);
			print(_game.debug_version);
		if(_data.debug_version != _game.debug_version){
			room_goto(_selected_level);
			return;
		}
		}
		if(!is_array(_data) && array_length(struct_get_names(_data)) != 0){
			//_game = _data
			
			//if(!is_undefined(_game.room))
			//{
			//	_selected_level = _game.room
				
			//}
				
		}
		with(obj_player)
		{
			//load_ = true;
		}
		room_goto(_selected_level);
		}
	else if(page == pages.debug && _option.func == menu_element_type.debug){
		_selected_level = _option._room;
		}
	else if(_option.func == menu_element_type.slider || _option.func == menu_element_type.shift || _option.func == menu_element_type.input){
		
		selecting = !selecting
		
	}
	if(_option.func == menu_element_type.input) {
		_option._show_overlay = true;
	}
	
	
	audio_play_sound(snd_confirm, 5, false);
}


