if instance_exists(buttonobj)
{
	state = buttonobj.state;	
}

if state == 0
{
	mask_index = sprite_index;
}

if state == 1
{
	mask_index = spr_nothing;	
}

image_index = state;