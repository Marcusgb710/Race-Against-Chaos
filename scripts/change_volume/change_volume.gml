// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_volume(value){
	var type = menu_option[page];
	
	switch(type){
	case 0: audio_master_gain(value); break;
	case 1: audio_group_set_gain(ag_sfx, value, 0); break;
	case 2: audio_group_set_gain(ag_mus, value, 0); break;
		
		
	}
}