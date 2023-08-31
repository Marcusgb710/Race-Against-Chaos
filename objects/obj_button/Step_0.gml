if place_meeting(x,y,obj_pushblock) || place_meeting(x,y,obj_player)
{
	state = 1;	
} else {
	state = 0;	
}

image_index = state;