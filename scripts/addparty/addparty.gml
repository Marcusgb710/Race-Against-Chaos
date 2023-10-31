// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function addCory()
{
	var follower_1 = instance_create_layer(obj_player.x,obj_player.y,"Instances", obj_follower);
	 follower_1.record = 68;
	 
}
function delCory()
{
	instance_destroy(obj_follower);
	 
}


function addKelsi()
{
	var follower_2 = instance_create_layer(obj_player.x,obj_player.y,"Instances", obj_follower2);
	 follower_2.record = 50;

}
function delKelsi()
{
	instance_destroy(obj_follower2);
	 
}


function addJon()
{
	var follower_3 = instance_create_layer(obj_player.x,obj_player.y,"Instances", obj_follower3);
	 follower_3.record = 25;	 
}
function delJon()
{
	instance_destroy(obj_follower3);
	 
}