if !show
{
show = true;
if(instance_exists(obj_player)){obj_player.control = false}
}else if show = true
{
show = false;	
if(instance_exists(obj_player)){obj_player.control = true}
}

