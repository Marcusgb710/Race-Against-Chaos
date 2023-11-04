if !instance_exists(obj_player) exit;

if !Cmove && global.egg == false
	{
	image_index = 0;
	}
	

if global.egg == true
{
	if (y == obj_player.y) 
	{
	image_index = 0;
	
	}
y = obj_player.y;
}

