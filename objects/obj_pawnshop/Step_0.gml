/// @description Insert description here
// You can write your code in this editor
if((instance_exists(obj_debug)&&obj_debug.show)||(instance_exists(obj_inventory)&&obj_inventory.show)){return}
if(keyboard_check_pressed(ord("S"))){
	with(obj_shop){
	show = !show
	if(instance_exists(obj_player)){
	if(!show && obj_player.can_move = false){obj_player.can_move = true; obj_player.control = true;}
	else{obj_player.can_move = false; obj_player.control = false;};
	}
	}
}	







