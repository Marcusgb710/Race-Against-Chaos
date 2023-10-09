/// @description Insert description here
// You can write your code in this editor

_p_x = obj_player.x
_p_y = obj_player.y
//logic
var _detection_circle = abs(sqr(enemies[0]._x-_p_x) + sqr(enemies[0]._y-_p_y)) < sqr(detection_radius)
var _battle_detection_circle = abs(sqr(enemies[0]._x-_p_x) + sqr(enemies[0]._y-_p_y)) < sqr(32)

if(_detection_circle)
{
	
	
	for(var _i = 0; _i < enemy_amount; _i++)
	{
		var _distance_x = ((_p_x-16) + 64)/2 - (enemies[_i]._x+64)/2
		var _distance_y = ((_p_y -23) + 64)/2 - (enemies[_i]._y+64)/2
		
		var _distance = power((sqr(_distance_x) + sqr(_distance_y)), 0.5)
		
		var _speed = 0.3
		
		enemies[_i]._x += _speed * _distance_x / _distance;
		enemies[_i]._y += _speed * _distance_y / _distance;
		 
	}
	
	if(_battle_detection_circle)
	{
		
		room_goto(WeakEnemy)
	}
	
}
else
{
	
}

//draw






