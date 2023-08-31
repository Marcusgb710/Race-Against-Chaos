if instance_exists(obj_player) && timetillbattlespawns > timer
{
if obj_player.right_key || obj_player.down_key || obj_player.up_key || obj_player.left_key
{
timetillbattlespawns--;
}
}

if timetillbattlespawns <= timer && !instance_exists(obj_battransition)
{
	save_game(2);
	var inst = instance_create_depth(0,0,-10000,obj_battransition);
	inst.target_rm = WeakEnemy;
	
}