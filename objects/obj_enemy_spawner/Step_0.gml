/// @description Insert description here
// You can write your code in this editor
_x = obj_camera.x
_y = obj_camera.y
//logic





//draw
for(var _i = 0; _i < enemy_amount; _i++)
{
	
	x_pos = 10 + enemy_positions.two[_i]._x
	y_pos = 10 + enemy_positions.two[_i]._y
	var _detection_circle = abs(sqr(x_pos-_x) + sqr(y_pos-_y)) < sqr(detection_radius+64)
	show_debug_message(_detection_circle)
}



