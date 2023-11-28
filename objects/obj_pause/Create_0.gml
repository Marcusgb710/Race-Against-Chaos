/// @description Insert description here
// You can write your code in this editor

//obj_player.control = false


if instance_exists(obj_player){obj_player.control = false; obj_player.can_move = false}
if instance_exists(obj_quest){obj_quest.show = false; failed = false}
else {failed = true}



