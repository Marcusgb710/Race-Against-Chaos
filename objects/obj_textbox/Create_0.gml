depth = -20000

if instance_exists(obj_player){obj_player.control = false obj_player.can_move = false}
if instance_exists(obj_quest){obj_quest.show = false obj_quest.opacity = 0}

//textbox parameters
textbox_width = 200;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border * 2;
txtb_spr[0] = spr_txtbox;
txtbS_spr[0] = spr_speakbox;
txtb_img = 0;
txtb_img_spd = 0;

//the text
page = 0;
page_number = 0;
text[0] = "";


text_length[0] = string_length(text[0]);

char[0,0] = "";
char_x[0,0] = 0;
char_y[0,0] = 0;

draw_char = 0;
text_spd = 0.5;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;

setup = false;

//effects
scr_set_defaults_for_text();
last_free_space = 0;

text_pause_timer = 0;
text_pause_time = 10;

snd_delay[0] = 6;
snd_count = snd_delay[0];