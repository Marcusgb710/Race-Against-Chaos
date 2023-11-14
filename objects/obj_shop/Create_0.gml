/// @description Insert description here
// You can write your code in this editor


font = Gonzobo;
font_scale = 0.75;
font_size = font_get_size(font);
font_size_scaled = font_size*font_scale;



item_names = struct_get_names(_items);
item_count = array_length(item_names);
max_string_length = get_max_string_length(item_names, _items)*font_size_scaled;

selection_arrow_index = 0;
yes_or_no_arrow_index = 0;
option_string = "YES                NO";
option_distance = 30;
confirmation_options = ["YES", "NO"];
confirmation_options_pos = [-option_distance, option_distance]
longest_string_len = 0;




cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]); 
cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);

//textbox_x = cam_x + cam_w - 100 - max_string_length;
//textbox_y = cam_y + 25;
//textbox_w = textbox_x + 15+max_string_length;
//textbox_h = item_count * (5 +2+font_size) ;

//textbox_x = cam_x +cam_w/2
//textbox_y = cam_y + cam_h/2

textbox_h = item_count * (5+2+font_size)

textbox_w = 15+max_string_length
textbox_y = textbox_y - textbox_h/2
textbox_x = textbox_x - textbox_w + 5
text_y = textbox_y + font_size

confirm_textbox_x =  textbox_x
confirm_textbox_y = textbox_y + textbox_h + 5
confirm_textbox_h = 40;
confirm_textbox_w = (longest_string_len*font_size_scaled)+30

confirm_arrow_y = confirm_textbox_y+confirm_textbox_h-sprite_get_height(spr_selectarrow)

party_member_x = cam_x + cam_w/2;
party_member_y = confirm_textbox_y+confirm_textbox_h

party_member_selection_curve = animcurve_get_channel(ac_shop_curves, "party_member_selection");
party_member_selection_percent = 0;
position = animcurve_channel_evaluate(party_member_selection_curve, party_member_selection_percent);
start_y = party_member_y + 2;
end_y = party_member_y - 2;
distance = end_y - start_y;
selection_party_member_y = start_y + (distance * position);


show = false;
debug = false;
selecting_option = false;
confirm_purchase = false;
show_confirm_purchase = false;
navigate_shop = true
selection_close = false
party_member_index = 0;

text_to_be_drawn = ""
text_currently_being_drawn = ""
close_timer_setting = 100;
close_timer = 0;
start_close_timer = false;

	
text_idx =1






