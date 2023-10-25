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

if(adding_removing)
{
	var _t_x = 3
	var _t_y = camy-6+12+(((SLOTS-1) div rowlength)+1)*36
	var _t_w = camx+288
	var _t_h = camy-6+12+(((SLOTS-1) div rowlength)+1)*36 +12
	draw_set_font(Gonzobo)
	
	draw_rectangle(_t_x, _t_y, _t_w, _t_h, false)
	draw_text_ext_color(_t_x+2, _t_y + 3, command, -1, -1, c_black, c_black, c_black, c_black, 1)
	
}



