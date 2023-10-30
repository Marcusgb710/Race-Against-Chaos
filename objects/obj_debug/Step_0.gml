/// @description Insert description here
// You can write your code in this editor




if(keyboard_check(vk_control) && keyboard_check_pressed(vk_alt))
{
	show = !show;
	command = ""
	
}


if(close_timer >= 1)
{
	
	start_close_timer = false;
	close_timer = 0;
	command = "";
}
if(start_close_timer)
{
	close_timer += 1/60;
	return;
}


if(!show){return};

cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]); 
text_box_x = cam_x;
text_box_y = cam_y + 216 - 100;
text_box_w = cam_x + 288;
text_box_h = text_box_y + font_get_size(Gonzobo)*2

if(keyboard_check_pressed(vk_return))
{
	
	show_debug_message(_game.battle_party_data)
	command = process_commands(command, console_commands)
	start_close_timer = true;
}

if(keyboard_check_pressed(vk_backspace)){
	if(string_length(command) <= 0){return}
	
	command = string_delete(command, string_length(command), 1);
	return;
}
if(keyboard_check_pressed(global.key_enter)){
	command += " "
}

if(keyboard_check_pressed(keyboard_key))
{
	var _char = ansi_char(keyboard_key)
	if(array_contains(alphabet, string_upper(_char)))
	{
		command += _char
	}
	
}




