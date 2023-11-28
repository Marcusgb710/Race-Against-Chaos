/// @description Insert description here
// You can write your code in this editor
if(!show){exit}
draw_set_halign(fa_left);

#region draw party
draw_set_font(FontNumbers);
var _health_and_pp_Xoffset = 12
var _health_and_pp_Yoffset = 3;
var _hoffset = 0;
for(var _i=0; _i< array_length(_game.battle_party_data); _i++){
	
		var _party_member = _game.battle_party_data[_i];
		
		_hoffset = 0;
		if(_party_member.in_party){
		
		if(_i == party_member_index){
			draw_rectangle_color(party_member_x, selection_party_member_y, party_member_x+sprite_get_width(spr_Misty_btl_UI), selection_party_member_y+sprite_get_height(spr_Misty_btl_UI), c_black, c_black, c_black, c_black, false)
			draw_sprite(_party_member.sprite, 0, party_member_x ,selection_party_member_y)
			for(var _j = 0; _j < string_length($"{_party_member.current_hp}"); _j++)
		{
			var _num = string_char_at($"{_party_member.current_hp}", _j+1)
			
			draw_text_transformed(party_member_x+_health_and_pp_Xoffset+_hoffset, selection_party_member_y+_health_and_pp_Yoffset,_num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		_hoffset = 0
		
		for(var _j = 0; _j < string_length($"{_party_member.current_pp}"); _j++)
		{
			var _num = string_char_at($"{_party_member.current_pp}", _j+1)
			
			draw_text_transformed(party_member_x+_health_and_pp_Xoffset +_hoffset, selection_party_member_y + font_get_size(FontNumbers)+_health_and_pp_Yoffset, _num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		}
		else{
		
		draw_rectangle_color(party_member_x, party_member_y, party_member_x+sprite_get_width(spr_Misty_btl_UI), party_member_y+sprite_get_height(spr_Misty_btl_UI), c_black, c_black, c_black, c_black, false)
		draw_sprite(_party_member.sprite, 0, party_member_x ,party_member_y)
		for(var _j = 0; _j < string_length($"{_party_member.current_hp}"); _j++)
		{
			var _num = string_char_at($"{_party_member.current_hp}", _j+1)
			
			draw_text_transformed(party_member_x+_health_and_pp_Xoffset+_hoffset, party_member_y+_health_and_pp_Yoffset,_num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		_hoffset = 0
		
		for(var _j = 0; _j < string_length($"{_party_member.current_pp}"); _j++)
		{
			var _num = string_char_at($"{_party_member.current_pp}", _j+1)
			
			draw_text_transformed(party_member_x+_health_and_pp_Xoffset +_hoffset, party_member_y + font_get_size(FontNumbers)+_health_and_pp_Yoffset, _num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		}
		
		
		
		party_member_x += sprite_get_width(spr_Misty_btl_UI) +5
		}
}
#endregion

draw_set_font(font);

#region draw gold
var _gold_txt =  $"GOLD:{_game.gold}"
draw_text_transformed(cam_x+cam_w - string_length(_gold_txt)*font_size_scaled, cam_y+font_size_scaled+5,_gold_txt, font_scale, font_scale, 0);
#endregion
#region shop textbox
draw_sprite_stretched(spr_txtbox, 0, textbox_x, textbox_y, textbox_w, textbox_h)
draw_sprite_ext(spr_selectarrow, 0, textbox_x + sprite_get_height(spr_selectarrow), text_y + ((2+font_size) *(selection_arrow_index)) , 0.5, 0.5, 270, c_black, 1);

for(var _i=0; _i < array_length(item_names); _i++)
{
	
	var _item_name = $"{_items[$ item_names[_i]].name}";
	var _item_price = $"${_items[$ item_names[_i]].shop_price}" 
	
	draw_text_ext_transformed(textbox_x+sprite_get_height(spr_selectarrow), text_y, _item_name, -1, -1, font_scale, font_scale, 0)
	draw_text_ext_transformed(textbox_x+textbox_w - string_length(_item_price)*font_size_scaled - 3, text_y, _item_price, -1, -1, font_scale, font_scale, 0)
	text_y += 2 + font_size 
	
}


#endregion
#region buy confirmation textbox
if(confirm_purchase)
{
	
	
	draw_sprite_stretched(spr_txtbox, 0, confirm_textbox_x, confirm_textbox_y, confirm_textbox_w, confirm_textbox_h);
	
	
	//draw_text_transformed(_textbox_x+(_textbox_w/2)+(string_length(text_to_be_drawn)*font_size_scaled) /2, textbox_y+10-font_size_scaled, string_copy(text_to_be_drawn, 1, text_idx), font_scale, font_scale, 0);
	
	//draw_text(_y, textbox_y+10-font_size_scaled, string_copy(text_to_be_drawn, 1, text_idx));
	draw_text_transformed(confirm_textbox_x+confirm_textbox_w/2-string_length(text_to_be_drawn)*font_size_scaled/2, confirm_textbox_y+(font_size_scaled*2), string_copy(text_to_be_drawn, 1, text_idx), font_scale, font_scale, 0);
	
	draw_text_ext_transformed((confirm_textbox_x+confirm_textbox_w/2-string_length(confirmation_options[0])*font_size_scaled/2)+confirmation_options_pos[0], confirm_arrow_y - font_size_scaled,confirmation_options[0], -1, -1, font_scale, font_scale, 0)
	draw_text_ext_transformed((confirm_textbox_x+confirm_textbox_w/2-string_length(confirmation_options[1])*font_size_scaled/2)+confirmation_options_pos[1]+font_size_scaled, confirm_arrow_y - font_size_scaled,confirmation_options[1], -1, -1, font_scale, font_scale, 0)
	
	draw_sprite_ext(spr_selectarrow, 0,(confirm_textbox_x+confirm_textbox_w/2-string_length(confirmation_options[yes_or_no_arrow_index])*font_size_scaled/2)+confirmation_options_pos[yes_or_no_arrow_index] + sprite_get_width(spr_selectarrow)/2,confirm_arrow_y, 0.4, 0.4, 0, c_black, 1);
}
#endregion




