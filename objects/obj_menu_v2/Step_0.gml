/// @description Insert description here
// You can write your code in this editor
//left 1
//right 2
//up 0
//down3
//enter 4

var _up = keyboard_check_pressed(pages.controls[0].key);
var _left = keyboard_check(pages.controls[1].key);
var _right = keyboard_check(pages.controls[2].key);
var _down = keyboard_check_pressed(pages.controls[3].key);
var _interact = keyboard_check_pressed(pages.controls[4].key);

if(keyboard_check_pressed(vk_add)){_debug_option_main_page.show = !_debug_option_main_page.show}

if (selected_option != undefined){
	selecting = true;
	_shift_index = settings_controller(selected_option, _left, _right, _shift_index)
}
else{
	selecting = false;	
}
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
	if(_option.func == menu_element_type.page_transfer)
	{
		var _results = page_navigation(_option, pages); 
		page = _results[0]; 
		selected_menu = _results[1];
	}
	if(_option.name == "EXIT"){
		global.key_down = pages.controls[3].key;
		global.key_enter = pages.controls[4].key;
		global.key_left = pages.controls[1].key;
		global.key_up = pages.controls[0].key;
		global.key_right = pages.controls[2].key;
		room_goto(_selected_level);
		}
	if(page == pages.debug && _option.func == menu_element_type.debug){
		_selected_level = _option._room;
		}
	if(_option.func == menu_element_type.slider || _option.func == menu_element_type.shift){
			selected_option = _option
			selecting = !selecting
			
	}
	if(_option.func == menu_element_type.input)
	{
		selected_option = _option
		selected_option._show_overlay = !selected_option._show_overlay;
		selecting = !selecting
	}
	audio_play_sound(snd_confirm, 5, false);
}


