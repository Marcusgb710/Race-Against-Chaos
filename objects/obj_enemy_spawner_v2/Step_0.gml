/// @description Insert description here
// You can write your code in this editor

_p_x = obj_player.x
_p_y = obj_player.y

for(var _i = 0; _i < array_length(battle_layer); _i++)
{
	var _layer = battle_layer[_i]
	
	var _x = layer_sprite_get_x(_layer)
	var _y = layer_sprite_get_y(_layer)
	var _detection_circle = abs(sqr(_x-_p_x) + sqr(_y-_p_y)) < sqr(detection_radius)
	
	if(_detection_circle)
	{
		room_goto(enemy_data._room)
	}
		

}



