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

	if(gamepad_is_connected(0)) {
		var _horizontalaxis = gamepad_axis_value(0, gp_axislh)
		var _verticalaxis = gamepad_axis_value(0, gp_axislv)
		_verticalaxis+=gamepad_button_check(0, gp_padd)-gamepad_button_check(0, gp_padu)
		_horizontalaxis+=gamepad_button_check(0, gp_padr)-gamepad_button_check(0, gp_padl)
		gamepad_set_axis_deadzone(0, 0.8)
		if(_horizontalaxis > 0) {
			_right = true;
		}
		if(_horizontalaxis < 0) {
			_left = true;
		}
		if(_verticalaxis < 0 && upvariable == 1) {
			_up = true;	
			upvariable = 0;
		}
		if(_verticalaxis > 0 && downvariable == 1) {
			_down = true;
			downvariable = 0;
		}
		if(_verticalaxis == 0){
			upvariable = 1
			downvariable = 1;
		}
		if(gamepad_button_check_pressed(0, gp_face1)) {
			_interact = true;
		}
	}

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

#region changing control keys
if _option.func == menu_element_type.input {
	if _option._show_overlay && !(keyboard_key == vk_nokey) && !(keyboard_key == pages.controls[4].key){
		page[selected_menu].select_key = keyboard_key
	}
}
#endregion
#region Interact Key
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
	#region page navigation
	if(_option.func == menu_element_type.page_transfer)
	{
		var _results = page_navigation(_option, pages); 
		page = _results[0]; 
		selected_menu = _results[1];
		current_menu = _results[2]
		
	}
	#endregion
	#region EXIT TO GAME
	else if(_option.name == "EXIT"){
		#region Set Game Controls
		global.key_down = pages.controls[3].key;
		global.key_enter = pages.controls[4].key;
		global.key_left = pages.controls[1].key;
		global.key_up = pages.controls[0].key;
		global.key_right = pages.controls[2].key;
#endregion
		
		#region game start
		var _selected_level_ = _selected_level;
		
		load_game(_selected_level_);//REMOVE _selected_level_ IF YOU WANT TO TRY THE LOAD SYSTEM
		
		
		#endregion
		}
	#endregion
	#region Change the room that loads when you start the game
	else if(page == pages.debug && _option.func == menu_element_type.debug){
		_selected_level = _option._room;
		}
	#endregion
	#region Changing sliders
	else if(_option.func == menu_element_type.slider || _option.func == menu_element_type.shift || _option.func == menu_element_type.input){
		
		selecting = !selecting
		
	}
	#endregion
	#region Changing Game Input
	if(_option.func == menu_element_type.input) {
		_option._show_overlay = true;
	}
	#endregion
	
	audio_play_sound(snd_confirm, 5, false);
}
#endregion


