function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtbS_spr[page_number] = spr_speakbox
	txtb_spr[page_number] = spr_txtbox;
	speaker[page_number] = 0;
	speaker_side[page_number] = 1;
	
	for (var c = 0; c < 500; c++)
		{
		col_1[c, page_number] = c_white;
		col_2[c, page_number] = c_white;
		col_3[c, page_number] = c_white;
		col_4[c, page_number] = c_white;
		
		float_text[c, page_number] = 0;
		float_dir[c, page_number] = c*20;
		
		shake_text[c, page_number] = 0;
		shake_dir[c, page_number] = irandom(360);
		shake_timer[c, page_number] = irandom(4);
		}
	
	txtb_spr[page_number] = spr_txtbox;
	speaker[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = snd_Def_Voice; 
}

///------text VFX------///
/// @param 1st_char
/// @param last_char
/// @param col1
/// @param col2
/// @param col3
/// @param col4
function scr_text_color(_start, _end, _col1, _col2, _col3, _col4){
	
for (var c = _start; c <= _end; c++)
	{
	col_1[c, page_number-1] = _col1;	
	col_2[c, page_number-1] = _col2;	
	col_3[c, page_number-1] = _col3;	
	col_4[c, page_number-1] = _col4;	
	}
	
}

/// @param 1st_char
/// @param last_char
function scr_text_float(_start, _end){
	
	for (var c = _start; c <= _end; c++)
		{
		float_text[c, page_number-1] = true;	
		}
	
}

/// @param 1st_char
/// @param last_char
function scr_text_shake(_start, _end){
	
	for (var c = _start; c <= _end; c++)
		{
		shake_text[c, page_number-1] = true;	
		}
}

/// @param Font_Name
function scr_text_font(_font){
	draw_set_font(_font);
}


/// @param text
/// @param [character]
function scr_text(_text){
	
scr_set_defaults_for_text();
	
text[page_number] = _text;

if argument_count > 1 {
	switch(argument[1])
		{
		
		case "Misty":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Misty";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_mist_voice; 
		break;
		
		case "Cory":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Cory";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_cory_voice; 
		break;
		
		case "Barista":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Barista";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "Egg":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Edgar";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "Girl":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Girl";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "Guy":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Guy";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "Max":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Max";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "SG":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Security";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		case "Book":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Book";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_mist_voice; 
		break;
		
		case "Jon":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Jon";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_jon_voice; 
		break;
		
		case "Kels":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Kelsi";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_kels_voice; 
		break;
		
		case "Old":
		txtb_spr[page_number] = spr_txtbox;
		speaker[page_number] = "Old Man Walt";
		speaker_side[page_number] = 1;
		snd[page_number] = snd_Def_Voice; 
		break;
		
		}
		
		
		
}

page_number++;

}

/// @param option
/// @param link_id
function scr_option(_option, _link_id){
	
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

/// @param text_id
function create_textbox(_text_id){
	with(instance_create_depth(0,0,-10000, obj_textbox))
		{
		scr_game_text(_text_id);
		}
}

