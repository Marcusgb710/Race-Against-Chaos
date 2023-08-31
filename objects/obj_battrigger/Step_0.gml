if place_meeting(x,y,obj_player) && !instance_exists(obj_battransition)
{
	var inst = instance_create_depth(0,0,-10000,obj_battransition);
	inst.target_rm = target_rm;
}
