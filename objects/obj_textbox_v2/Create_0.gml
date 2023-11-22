/// @description Insert description here
// You can write your code in this editor


//text_speed
font = Gonzobo
font_scale = 0.9
font_size = font_get_size(font);
font_size_scaled = font_size * font_scale

text_to_be_drawn = current_dialog_block[1].dialog

text_idx = 1;
dialog_idx = 0;
next = false;
next_timer_increment_setting = 60
next_timer_increment = 1/next_timer_increment_setting
next_timer = 0; 
speaker = current_dialog_block[dialog_idx].speaker

cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
x_buffer = 41;
textbox_w = cam_w - (x_buffer*2);
textbox_h = 50;
textbox_x = cam_x + x_buffer;
textbox_y = cam_y + cam_h - textbox_h;
name_textbox_w = string_length(speaker)*font_size;
name_textbox_h = font_size + 10;
name_textbox_x = textbox_x + textbox_w - name_textbox_w;
name_textbox_y = textbox_y - name_textbox_h;

name_text_x = name_textbox_x + name_textbox_w /2 
name_text_y = name_textbox_y



text_x = textbox_x + font_size_scaled;
text_y = textbox_y + 9;

//game_text(t.mifirstline, textbox_w, font_size_scaled)







//longest_string_length
textbox_sprite = spr_txtbox
font_color = c_white


function stop_player(){
	with(obj_player){
		can_move = false;
		control = false;
		
	}
}
function resume_player_movement(){
	with(obj_player){
		can_move = true;
		control = true;
		
	}
	
}
stop_player();







