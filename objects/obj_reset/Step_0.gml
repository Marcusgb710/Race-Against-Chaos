if place_meeting(x,y,obj_player) 
{
	state = 1;	
} else {
 state = 0;	
}

if state == 1
{
	with(obj_pushblock)
	{
		onice = false
		sliding = false
		x = xstart;
		y = ystart;
	}
}

image_index = state;

