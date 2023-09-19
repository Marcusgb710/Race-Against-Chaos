// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function page_navigation(option, pages){
	var _page;
	var _selected_option;
	
	switch(option.goto){
		case(PAGE_NAV.MAIN):
			_page = pages.main;
			
			_selected_option = 1;
			break;
		case(PAGE_NAV.SETTINGS):
			_page = pages.settings;
			_selected_option = 0
			break;
		case(PAGE_NAV.DEBUG):
			_page = pages.debug;
			_selected_option =0;
			break;
		case(PAGE_NAV.AUDIO):
			if !(audio_is_playing(snd_guy_voice)) { audio_play_sound(snd_guy_voice, 1, false); }
			_page = pages.audio;
			_selected_option =0;
			break;
		case(PAGE_NAV.GRAPHICS):
			_page = pages.graphics;
			_selected_option =0;
			break;	
		case(PAGE_NAV.CONTROLS):
			_page = pages.controls;
			_selected_option =0;
			break;
	}
	
	return [_page, _selected_option];
}