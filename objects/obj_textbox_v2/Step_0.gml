/// @description Insert description here
// You can write your code in this editor
if(!in_battle){
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);

textbox_w = cam_w - (x_buffer*2)
textbox_h = 68
textbox_x = cam_x + x_buffer
textbox_y = cam_y + cam_h - textbox_h - 5
}
text_x = textbox_x + font_size_scaled;
text_y = textbox_y + 9;
speaker = current_dialog_block[dialog_idx].speaker
speaker_sound = current_dialog_block[dialog_idx].speaker_sound
name_textbox_w = string_length(speaker)*font_size +10;

name_textbox_x = textbox_x + textbox_w - name_textbox_w;
name_textbox_y = textbox_y - name_textbox_h;

name_text_x = name_textbox_x + name_textbox_w /2 - string_length(speaker)*font_size_scaled/2
name_text_y = name_textbox_y + name_textbox_h /2 - font_size_scaled/2

if(dialog_idx >= array_length(current_dialog_block)){dialog_idx = 0}

var _interactButton = keyboard_check_pressed(global.key_enter)
if(gamepad_is_connected(0)) {
	if(gamepad_button_check_pressed(0, gp_face1)) {
		_interactButton = true;
	}
}


if(_interactButton){
	if(!needs_next){return}
	if(nathans_idx < string_length(nathans_way))
	{
		//nathans_idx_incrementor = 3;
		nathans_idx += 2;
		nathans_idx = string_length(nathans_way)
		
		next = true;
		audio_play_sound(speaker_sound, 8, false);
		return;
		
	}
	if(next){
	dialog_idx += 1;
	
	if(dialog_idx > array_length(current_dialog_block)-1){
		instance_destroy()
		return;
	}
	var _battle_var = current_dialog_block[dialog_idx].battle
	if(!is_undefined(_battle_var)){
		_battle = _battle_var
	}
	var _qid = current_dialog_block[dialog_idx].quest
	if(!is_undefined(_qid)){
		var _quest = get_quest_by_id(_qid)
		_quest.meta.done = true;
	}
	nathans_way = current_dialog_block[dialog_idx].dialog;
	nathans_way = nathans_textbox_fix(nathans_way, textbox_w)
	line_break = 1;
	next_timer = 0
	text_idx = 0;
	nathans_idx = 0;
	next = false
	}
	
	
	
	
	
	
}

//if(next_timer>=1)
//{
//	next_timer = 0
//	text_idx = 0;
//	next = false
//	dialog_idx += 1;
//}
if(text_pause_timer >= 1)
{
	start_text_pause_timer = false;
	text_pause_timer = 0;
}

if(start_text_pause_timer){
	text_pause_timer += text_pause_timer_increment	
	
	
}

if(text_pause_timer != 0 )return
if(next)
{
	next_timer += next_timer_increment
}

if(nathans_idx >= string_length(nathans_way) && dialog_idx < array_length(current_dialog_block))
{
	
	next = true
}
if(nathans_idx >= string_length(nathans_way)){
	if(!needs_next){
	
		audio_stop_sound(speaker_sound);
		obj_battle_object_v2.att=true}
	return}
if(sound_timer >= sound_timer_end)
{
	sound_timer = 0;

	audio_play_sound(speaker_sound, 8, false);
	
}
sound_timer++;
if(next_char_timer >=1){
	
	next_char_timer = 0; 
	
	
	text_idx += 1;
	nathans_idx += nathans_idx_incrementor;
	var _sca = string_char_at(nathans_way, nathans_idx);
	if(_sca == "," || _sca == "." || _sca == "?")
	{
		start_text_pause_timer = true;
	
	}
	
	
}


next_char_timer += next_char_timer_increment











