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
var _interact;
_interact = keyboard_check_released(pages.controls[4].key);


if _left {key_durations[1] += 1}
else {key_durations[1] = 0}
if _right {key_durations[2] += 1}
else {key_durations[2] = 0}

/// some nicer scrolling currently click every 1/6 of a second. may move tis and add nicer sliding to the sliders
var _fps = game_get_speed(gamespeed_fps);
_left = false;
_right = false;
if key_durations[1] == 1 {_left = true}
if key_durations[1]/_fps > 0.75 and key_durations[1] % int64(1/6*_fps) == 0{_left = true;}
if key_durations[2] == 1 {_right = true;}
if key_durations[2]/_fps > 0.75 and key_durations[2] % int64(1/6*_fps) == 0{_right = true;}

#endregion

#region debug debug debug
if(keyboard_check_pressed(vk_add)){_debug_option_main_page.show = !_debug_option_main_page.show}
#endregion

#region This defines how the controls work when you are changing a menu option
if (selected_option != undefined){
	
	_shift_index = settings_controller(selected_option, _left, _right, _shift_index)
	
}
#endregion

#region this would control how the input selection works.//change this
if keyboard_key != vk_nokey && selecting_input
{
	
	selected_option.key = keyboard_key
	selecting_input = false 
	selected_option._show_overlay = false
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
	if(page == pages.main && pages.main[0].show == false && selected_menu < 1||selected_menu < 0){
		selected_menu = _page_array_length-1;
	}
	audio_play_sound(snd_selectsound, 5, false);
	
	}
}
if(_interact){
	var _option = page[selected_menu];
	selected_option = _option
#region if you are changing a menu option the functionality goes here i.e changing volume, changing input
	if(selecting)
	{
		selecting = false;
		selected_option = undefined
		selection_controller(_option)
		return
		
	}
#endregion
	if(_option.func == menu_element_type.page_transfer)
	{
		var _results = page_navigation(_option, pages); 
		page = _results[0]; 
		selected_menu = _results[1];
	}
	else if(_option.name == "EXIT"){
		global.key_down = pages.controls[3].key;
		global.key_enter = pages.controls[4].key;
		global.key_left = pages.controls[1].key;
		global.key_up = pages.controls[0].key;
		global.key_right = pages.controls[2].key;
		room_goto(_selected_level);
		}
	else if(page == pages.debug && _option.func == menu_element_type.debug){
		_selected_level = _option._room;
		}
	else if(_option.func == menu_element_type.slider || _option.func == menu_element_type.shift){
			
			selecting = !selecting
			
	}
	else if(_option.func == menu_element_type.input)
	{
		selected_option = _option
		selected_option._show_overlay = !selected_option._show_overlay;
		selecting_input = true;
	}
	audio_play_sound(snd_confirm, 5, false);
}


