/// @description Insert description here
// You can write your code in this editor


//text_speed

font = Gonzobo
font_scale = 0.9
font_size = font_get_size(font);
font_size_scaled = font_size * font_scale

sound_timer = 0;
sound_timer_end = 6
text_pause_timer = 0;
text_pause_timer_increment = 1/9
start_text_pause_timer = false;


text_idx = 1;
dialog_idx = 0;
next = false;
needs_next = true;
next_char_timer = 0;
next_char_timer_increment_setting = 2;
next_char_timer_increment = 1/next_char_timer_increment_setting;

next_timer_increment_setting = 60
next_timer_increment = 1/next_timer_increment_setting
next_timer = 0;



cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
x_buffer = 41;

textbox_w = cam_w - (x_buffer*2);
textbox_h = 50;
textbox_x = cam_x + x_buffer;
textbox_y = cam_y + cam_h - textbox_h;
if(x!=0){
textbox_x = x;
}
if(y !=0){
textbox_y = y;	
}

speaker = current_dialog_block[dialog_idx].speaker;
speaker_sound = current_dialog_block[dialog_idx].speaker_sound;
nathans_way = current_dialog_block[dialog_idx].dialog;

nathans_way = nathans_textbox_fix(nathans_way, textbox_w)

name_textbox_w = string_length(speaker)*font_size;
name_textbox_h = font_size + 10;
name_textbox_x = textbox_x + textbox_w - name_textbox_w;
name_textbox_y = textbox_y - name_textbox_h;

name_text_x = name_textbox_x + name_textbox_w /2 
name_text_y = name_textbox_y



text_x = textbox_x + font_size_scaled;
text_y = textbox_y + 9;

//game_text(current_dialog_block, textbox_w, font_size_scaled)

line_break = 1;
//nathans_way = text_to_be_drawn
nathans_idx = 1;
nathans_idx_incrementor = 1;




//longest_string_length
textbox_sprite = spr_txtbox
font_color = c_white
in_battle=false;

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




