if !show exit;

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
	if (inventory[i] != -1)
	{
		draw_sprite(spr_items, inventory[i], xx, yy);	
	}	
}
