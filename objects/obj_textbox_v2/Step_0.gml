/// @description Insert description here
// You can write your code in this editor
cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
textbox_w = cam_w - (x_buffer*2)
textbox_h = 68
textbox_x = cam_x + x_buffer
textbox_y = cam_y + cam_h - textbox_h - 5
text_x = textbox_x + font_size_scaled;
text_y = textbox_y + 9;
text_to_be_drawn = current_dialog_block[dialog_idx].dialog
;
speaker = current_dialog_block[dialog_idx].speaker
name_textbox_w = string_length(speaker)*font_size +10;

name_textbox_x = textbox_x + textbox_w - name_textbox_w;
name_textbox_y = textbox_y - name_textbox_h;

name_text_x = name_textbox_x + name_textbox_w /2 - string_length(speaker)*font_size_scaled/2
name_text_y = name_textbox_y + name_textbox_h /2 - font_size_scaled/2

if(dialog_idx >= array_length(current_dialog_block)){dialog_idx = 0}

if(keyboard_check_pressed(global.key_enter) && next){
	dialog_idx += 1;
	next_timer = 0
	text_idx = 0;
	next = false
	if(dialog_idx > array_length(current_dialog_block)-1){
		instance_destroy()
		return;
	}
	var _qid = current_dialog_block[dialog_idx].quest
	if(!is_undefined(_qid)){
		var _quest = get_quest_by_id(_qid)
		_quest.meta.done = true;
	}
	
	
	
	
	
	
}

//if(next_timer>=1)
//{
//	next_timer = 0
//	text_idx = 0;
//	next = false
//	dialog_idx += 1;
//}

if(next)
{
	next_timer += next_timer_increment
}

if(text_idx >= string_length(text_to_be_drawn) && dialog_idx < array_length(current_dialog_block))
{
	
	next = true
}

text_idx += 1;










