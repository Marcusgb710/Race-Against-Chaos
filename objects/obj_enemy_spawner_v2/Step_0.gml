/// @description Insert description here
// You can write your code in this editor

_p_x = obj_player.x
_p_y = obj_player.y
var _p_w = obj_player.sprite_width
var _p_h = obj_player.sprite_height

for(var _i = 0; _i < array_length(battle_layer); _i++)
{
	var _layer = battle_layer[_i]
	
	var _x = layer_sprite_get_x(_layer)
	var _y = layer_sprite_get_y(_layer)
	var _detection_x = _x - radius
	var _detection_y = _y - radius
	var _detection_width = _x + radius
	var _detection_height = _y + radius
	var _detection_circle = abs(sqr(_x-_p_x) + sqr(_y-_p_y)) < sqr(detection_radius)
	
	
	if(_detection_circle)
	{
		switch (obj_player.face)
		{
			case DOWN:
			obj_player.y = _y - 5 - _p_h
			obj_player.x = (_x + _detection_width)/2
			break;
			case UP:
			obj_player.y = _detection_height + 3
			obj_player.x = (_x + _detection_width)/2
			break;
			case LEFT:
			obj_player.x = _detection_width + 3
			obj_player.y = (_y+_detection_height)/2
			break;
			case RIGHT:
			obj_player.x = _x - 5 - _p_w
			obj_player.y = (_y+_detection_height)/2
			break;
			
				
		}
		last_room = room;
		room_goto(enemy_data._room)
	}
		

}



