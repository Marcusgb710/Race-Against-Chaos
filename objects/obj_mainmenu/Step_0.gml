up_key =  keyboard_check_pressed(vk_up);
down_key =  keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


if accept_key {
	
  var _sml = menu_level;	
	
  switch(menu_level){	
	case 0:
		switch(pos){
	
		case 0:
			//"New Game"
			instance_create_layer(obj_sitting.x, obj_sitting.y, "Instances", obj_sittingA);
			instance_destroy(self);
		break;
		case 1:
			//Load Game
			menu_level = 1;
		break;
		case 2:
			//Quit
			game_end();
		break;
		}
		
		
	break;
	
	case 1:
		switch(pos){
	
		case 0:
			//"Slot 1"
			var _filename = "savedata" + ".sav";
			if !file_exists(_filename)
			{
				show_message("NO SAVE DATA.")	
			} else {
				audio_stop_sound(mus_Main_Menu);
			load_game(0);
			}
		break;
		case 1:
			//Autosave
			var _filename = "savedata" + string("2") + ".sav";
			if !file_exists(_filename)
			{
				show_message("NO SAVE DATA.")	
			} else {
				audio_stop_sound(mus_Main_Menu);
			load_game(2);
			}
		break;
		case 2:
			//Slot 2
			var _filename = "savedata" + string("1") + ".sav";
			if !file_exists(_filename)
			{
				show_message("NO SAVE DATA.")	
			} else {
				audio_stop_sound(mus_Main_Menu);
			load_game(1);
			}
		case 3:
			//Back
			menu_level = 0;
		break;
		
		break;
		}
	
	break;
	

	}
	  
  if _sml != menu_level {pos = 0}
  
  op_length = array_length(option[menu_level]);
  }

