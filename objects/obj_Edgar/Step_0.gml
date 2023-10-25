if !instance_exists(obj_player) exit;

if !Cmove && global.egg == false
	{
	image_index = 0;
	}
	

if global.egg == true
{
	if (!obj_player.down_key && !obj_player.up_key) 
	{
	image_index = 0;
	}
y = obj_player.y;
}

