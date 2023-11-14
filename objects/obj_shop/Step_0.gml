/// @description Insert description here
// You can write your code in this editor

//text_to_be_drawn = "hello weenie hut general"


if(!window_open()){return}
#region update draw variables
party_member_selection_percent += 1/60;
if(party_member_selection_percent > 1){party_member_selection_percent -=1};

cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]); 
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
textbox_h = item_count * (5+2+font_size)
textbox_w = 15+max_string_length
text_y = textbox_y + font_size
party_member_x = cam_x + cam_w/2 - sprite_get_width(spr_Misty_btl_UI)/2*get_party_count(_game.battle_party_data);
party_member_y = confirm_textbox_y+confirm_textbox_h
position = animcurve_channel_evaluate(party_member_selection_curve, party_member_selection_percent);
start_y = party_member_y + 2;
end_y = party_member_y - 2;
distance = end_y - start_y;
selection_party_member_y = start_y + (distance * position);
#endregion
//textbox_x = cam_x +cam_w/2;


if(!selection_close){
#region controls
if(keyboard_check_pressed(global.key_enter))
{
	text_currently_being_drawn = ""
	var _item = _items[$ item_names[selection_arrow_index]]
	text_to_be_drawn = $"Do you want to buy {_item.name}?";
	
	if(!navigate_shop){
		close_timer = 0;
		text_idx = 1;
		var _op = array_get(confirmation_options, yes_or_no_arrow_index)
		
		show_debug_message(_op)
	switch(_op)
		{
			case "YES":
			if(_game.gold < _item.shop_price){
				text_to_be_drawn  = $"You Dont Have Enough Gold!";
				selection_close = true;
				
				break;
			}
				//_ttd = $"You Have Bought {_item.name}?";
				show_debug_message(text_to_be_drawn)
				var _player_inventory = _game.battle_party_data[party_member_index].inventory
				array_push(_player_inventory, _item)
				_game.gold -= _item.shop_price
				text_to_be_drawn  = $"You Have Bought {_item.name}?";
				selection_close = true
				
				
				break;
			
			case "NO":
				//_ttd = $"Whatcha Lookin For?";
				show_debug_message(text_to_be_drawn)
				text_to_be_drawn  = $"Whatcha Lookin For Then?";
				selection_close = true
				
				
				break;
			
		}
	
		
		selection_close = true
	}
	else{
		

	text_idx = 1;
		
	confirm_purchase = true;
	
	navigate_shop = false;	
	}
}
if(navigate_shop){
if(keyboard_check_pressed(global.key_down))
{
	selection_arrow_index += 1
	if(selection_arrow_index > item_count-1)
	{
		selection_arrow_index = 0;
	}
}
if(keyboard_check_pressed(global.key_up))
{
	selection_arrow_index -= 1
	if(selection_arrow_index < 0)
	{
		selection_arrow_index = item_count-1 ;
	}
}
}

if(keyboard_check_pressed(global.key_left)){if(navigate_shop){party_member_index-=1 if(party_member_index<=0){party_member_index = 0}}else{yes_or_no_arrow_index -= 1 if(yes_or_no_arrow_index < 0){yes_or_no_arrow_index = 1}}}
if(keyboard_check_pressed(global.key_right)){if(navigate_shop){party_member_index+=1 if(party_member_index>get_party_count(_game.battle_party_data)-1){party_member_index = 0}}else{yes_or_no_arrow_index += 1 if(yes_or_no_arrow_index > 1){yes_or_no_arrow_index = 0}}}


#endregion
}
if(confirm_purchase)
{
	//confirm_textbox_x =  textbox_x-textbox_w/2 -55
	confirm_textbox_x =  textbox_x
	confirm_textbox_y = textbox_y + textbox_h + 5
	confirm_textbox_h = 40;
	confirm_textbox_w = (longest_string_len*font_size_scaled)+30

	confirm_arrow_y = confirm_textbox_y+confirm_textbox_h-sprite_get_height(spr_selectarrow)


	if(string_length(text_to_be_drawn)>longest_string_len){longest_string_len = string_length(text_to_be_drawn)}
	
	if(close_timer >= 1)
		{
			show_debug_message("close")
			
			confirm_purchase = false;
			
			navigate_shop = true;
			yes_or_no_arrow_index = 0;
			
			text_currently_being_drawn = ""
			text_to_be_drawn = ""
			
			text_idx = 1;
			close_timer = 0;
			start_close_timer = false;
			
		}
	if(start_close_timer)
	{
		
		
		close_timer += 1/close_timer_setting;
	}
	
	if(selection_close){
		start_close_timer = true
		selection_close = false;
		
	}
	try{
	if(text_idx >= string_length(text_to_be_drawn)){return}
	//string_set_byte_at(text_currently_being_drawn, text_idx, ord(string_char_at(text_to_be_drawn, text_idx)))
	//text_currently_being_drawn += string_char_at(text_to_be_drawn, text_idx)
	
	text_idx +=1
	
}	
}


