// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_window_mode_v2(_option){
	var _name = _option.name;
	var _value = _option._text;
	
	switch(_name){
		case("WINDOW MODE"):
			if(_value == "FULLSCREEN"){window_set_fullscreen(true);}
			if(_value == "WINDOWED"){window_set_fullscreen(false);}
			break;
		case("RESOLUTION"):
			break;
	}
}