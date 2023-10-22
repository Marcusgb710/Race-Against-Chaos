/// @description Insert description here
// You can write your code in this editor

for(var _i = 0; _i < array_length(battle_layer); _i++)
{
	var _layer = battle_layer[_i]
	
	var _x = layer_sprite_get_x(_layer)
	var _y = layer_sprite_get_y(_layer)
	draw_rectangle(_x-radius, _y-radius, _x+radius, _y+radius, 1)
	draw_circle_color(_x, _y, radius, cream_color, cream_color, 0)
}


