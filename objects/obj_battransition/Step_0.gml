if room == target_rm && image_index < 1
 {
		instance_deactivate_object(obj_player)
		if instance_exists(obj_follower)
		{
			instance_deactivate_object(obj_follower)
		}
		if instance_exists(obj_follower2)
		{
			instance_deactivate_object(obj_follower2)
		}
		if instance_exists(obj_follower3)
		{
			instance_deactivate_object(obj_follower3)
		}
		instance_destroy();
 }