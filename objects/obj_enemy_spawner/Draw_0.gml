/// @description Insert description here
// You can write your code in this editor
for(var _i = 0; _i < enemy_amount; _i++)
{
	
	
	//draw_rectangle_color(x_pos, y_pos, x_pos+15, y_pos+15, c_black, c_black, c_blue, c_blue, 0)
	x_pos = 276 + enemy_positions.two[_i]._x
	y_pos = 376 + enemy_positions.two[_i]._y
	draw_sprite(enemies[_i].overworld_sprite, enemy_idx, enemies[_i]._x, enemies[_i]._y)
}



