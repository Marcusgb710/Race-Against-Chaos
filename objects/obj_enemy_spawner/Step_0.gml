/// @description Insert description here
// You can write your code in this editor
_x = obj_camera.x
_y = obj_camera.y
var _p_x = obj_player.x
var _p_y = obj_player.y
//logic
var _detection_circle = abs(sqr(x_pos-_p_x) + sqr(y_pos-_p_y)) < sqr(detection_radius+64)
var _battle_detection_circle = abs(sqr(_p_x - x_pos) + sqr(_p_y - y_pos)) < sqr(64) 

if(_detection_circle)
{
	
	
	for(var _i = 0; _i < enemy_amount; _i++)
	{
		var _distance_x = _p_x - enemies[_i]._x
		var _distance_y = _p_y - enemies[_i]._y
		
		var _distance = power((sqr(_distance_x) + sqr(_distance_y)), 0.5)
		
		var _speed = 0.3
		
		enemies[_i]._x += _speed * _distance_x / _distance;
		enemies[_i]._y += _speed * _distance_y / _distance;
		 
	}
	if(_battle_detection_circle)
	{
		show_debug_message("P")
		room_goto(WeakEnemy)
	}
	
}
else
{
	
}

//draw
if(enemy_idx >= 4)
{
	enemy_idx = 0
}

enemy_idx += 1/12;





