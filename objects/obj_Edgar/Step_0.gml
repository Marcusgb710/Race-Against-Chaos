


if instance_exists(obj_player)
{
	y = obj_player.y;
	
	
	if obj_player.down_key || obj_player.up_key || obj_player.Cmove
	{
	image_index = obj_player.image_index;
	}
	else
	{
	image_index = 0;
	}
}
