if(!instance_exists(obj_player)){return}
follow = obj_player;


if follow != noone 
{
	xTo = follow.x;
	yTo = follow.y;	
}

x += (xTo - x)/25;
y += (yTo - y)/25;

x = clamp(x,0+(camw/2),room_width - (camw/2));
y = clamp(y,0+(camh/2),room_height - (camh/2));

camera_set_view_pos(view_camera[0],x-(camw*0.5),y-(camh*0.5));



