// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_volume(_option, _value){
	var _name = _option.name;
	
	switch(_name){
		case("MASTER"):
			audio_master_gain(_value*0.01);
			break;
			
		case("SFX"):
			audio_group_set_gain(ag_sfx, _value, 0);
			break;
		
		case("MUSIC"):
			audio_group_set_gain(ag_mus, _value, 0);
			break;
	}

}