/// @description Insert description here
// You can write your code in this editor
if(!show){exit}
camx = camera_get_view_x(view_camera[0]) + 54;
camy = camera_get_view_y(view_camera[0]); 

draw_set_alpha(0.5);
draw_rectangle_color(0,0,camx+288,camy+216,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

draw_sprite_stretched
(
	spr_inventory,
	0,
	camx-6,
	camy-6,
	12+rowlength*36,
	12+(((SLOTS-1) div rowlength)+1)*36
);


for (var i = 0; i < SLOTS; i += 1)
{
	var xx = camx + (i mod rowlength) * 36 + 2;
	var yy = camy + (i div rowlength) * 36 + 2;
	draw_sprite(spr_slot,0,xx,yy)
	
	var _inventory_size = array_length(party_inventory)
	if(i <= _inventory_size-1){
	var _item = party_inventory[i];
	draw_sprite(_item.sprite, 1, xx, yy);	
	}
	
		
}
if(debug){
draw_set_font(FontNumbers)
var _health_and_pp_Xoffset = 12
var _health_and_pp_Yoffset = 3;
var _hoffset = 0;
var _y = (camy+216) - sprite_get_height(menu_sprite) - amount_to_move_enemy_up;
var _x =(camx + 288)/2 - sprite_get_width(menu_sprite) - 16;
draw_rectangle_color(_x, _y, _x+sprite_get_width(menu_sprite), _y+sprite_get_height(menu_sprite), c_black, c_black, c_black, c_black, 0);
draw_sprite(menu_sprite, 1, _x, _y)
for(var _j = 0; _j < string_length($"{current_hero.current_hp}"); _j++)
		{
			var _num = string_char_at($"{current_hero.current_hp}", _j+1)
			
			draw_text_transformed(_x+_health_and_pp_Xoffset+_hoffset, _y+_health_and_pp_Yoffset,_num, 0.8, 0.8, 0)
			_hoffset += 5
		}
		_hoffset = 0
		
		for(var _j = 0; _j < string_length($"{current_hero.current_pp}"); _j++)
		{
			var _num = string_char_at($"{current_hero.current_pp}", _j+1)
			
			draw_text_transformed(_x+_health_and_pp_Xoffset +_hoffset, _y + font_get_size(FontNumbers)+_health_and_pp_Yoffset, _num, 0.8, 0.8, 0)
			_hoffset += 5
		}
}

if(adding_removing)
{
	var _t_x = camx - 54
	var _t_y = camy-6+12+(((SLOTS-1) div rowlength)+1)*36
	var _t_w = camx+288
	var _t_h = camy-6+12+(((SLOTS-1) div rowlength)+1)*36 +12
	draw_set_font(Gonzobo)
	
	draw_rectangle(_t_x, _t_y, _t_w, _t_h, false);
	draw_text_ext_color(_t_x+2, _t_y + 3, command, -1, -1, c_black, c_black, c_black, c_black, 1)
	
	
}



