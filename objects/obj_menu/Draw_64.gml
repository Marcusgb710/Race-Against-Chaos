if(!global.pause) exit;

draw_set_font(Gonzobo);

var gwidth = global.view_width, gheight = global.view_height;

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 16;
var start_y = (gheight/2) - ((((ds_height-1)/2) * y_buffer)), start_x = gwidth/2;

//Draw Pause Menu Back
draw_sprite_ext(spr_pausemenu, 0,0,0,gwidth,gheight,0,c_white,1)


//Draw Elements on Left Side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty;

var yy = 0; repeat(ds_height){
	lty = start_y + (yy*y_buffer);
	c = c_white;
	xo = 0;
	
	if(yy == menu_option[page]){
		c = c_fuchsia;
		xo = -(x_buffer/2);
	}
	
	draw_text_color(ltx+xo, lty, ds_grid[# 0, yy], c,c,c,c, 1);
	yy++;
}

//Draw Dividing Line
draw_line(start_x, start_y, start_x, lty);


//Draw Elements on Right Side
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer);
	
	switch(ds_grid[# 1, yy]){
		case menu_element_type.shift:
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var left_shift = "<< ";
			var right_shift = " >>";
			var c = c_white;
			
			if(current_val == 0) left_shift = "";
			if(current_val == array_length(ds_grid[# 4, yy])-1) right_shift = "";
		    
			if (inputting and yy == menu_option[page]) { c = c_fuchsia; }
			draw_text_color(rtx, rty, left_shift+current_array[current_val]+right_shift, c,c,c,c, 1);
			
		break;
			
		case menu_element_type.slider:
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			var c = c_white;
			
			draw_line_width(rtx, rty, rtx+len, rty, 2);
			
			if (inputting and yy == menu_option[page]) { c = c_fuchsia; }
			draw_circle_color(rtx + (circle_pos*len), rty, 4, c,c, false);
			draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100))+"%", c,c,c,c, 1);
		
		break;
		
		case menu_element_type.toggle:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			c = c_fuchsia;
			if (inputting and yy == menu_option[page]) { c = c_fuchsia; }
			
			if(current_val == 0) { c1 = c; c2 = c_purple; }
			else				 { c2 = c; c1 = c_purple; }
			
			draw_text_color(rtx,rty, "ON", c1,c1,c1,c1,1);
			draw_text_color(rtx + 32,rty, "OFF",c2,c2,c2,c2,1);
		break;
		
		case menu_element_type.input:
			var current_val = ds_grid[# 3, yy];
			var string_val;
			
			switch(current_val){
				case vk_up:		string_val = "UP KEY"; break;
				case vk_left:	string_val = "LEFT KEY"; break;
				case vk_down:	string_val = "DOWN KEY"; break;
				case vk_right:	string_val = "RIGHT KEY"; break;
				default:		string_val = chr(current_val) break;
		}
		
		c = c_purple;
		if (inputting and yy == menu_option[page]) { c = c_fuchsia; }
		draw_text_color(rtx, rty, string_val, c,c,c,c, 1);
		
		break;
	}
	
	yy++;
}


draw_set_valign(fa_top);


