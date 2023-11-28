/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_sprite_stretched(textbox_sprite, 0, textbox_x, textbox_y, textbox_w, textbox_h)
draw_sprite_stretched(textbox_sprite, 0, name_textbox_x, name_textbox_y, name_textbox_w, name_textbox_h)
//draw_text_transformed_color(text_x, text_y, string_copy(nathans_way, 1, text_idx), font_scale, font_scale, 0, font_color, font_color, font_color, font_color, 1)
draw_text_ext_transformed_color(text_x, text_y, string_copy(nathans_way, 1, nathans_idx), font_size_scaled *2, -1, font_scale, font_scale, 0, font_color, font_color, font_color, font_color, 1)
draw_text_transformed_color(name_text_x, name_text_y, speaker, font_scale, font_scale, 0, font_color, font_color, font_color, font_color, 1)










