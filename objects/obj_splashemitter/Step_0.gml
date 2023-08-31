xx = irandom_range(0, room_width);
yy = irandom_range(0, room_height);
timer++;

camx = camera_get_view_x(view_camera[0]);
camy = camera_get_view_y(view_camera[0]);


if timer >= wait
{
	var inst = instance_create_layer(xx,yy,"Instances", obj_splash);	
	
	with(inst)
	{
		if place_meeting(x,y,obj_rainbarrier)
		{
		instance_destroy(inst);
		}
	}
timer = 0;
}


