/// @description Insert description here
// You can write your code in this editor
data = battle_data(spells(game_effects()))

enemy_data = data._weak.enemies;

enemy_amount = 2;

_x = obj_camera.x
_y = obj_camera.y;
_w = 15;
_h = 15;

enemies = [enemy_data[0], enemy_data[1]]
enemy_positions = {
	one:[{_x:5 , _y:10},],
	two:[{_x:5, _y: 10}, {_x:10+_w, _y: 15+_h}],
	three:[{_x:5, _y: 10}, {_x:10 + _w, _y: 10}, {_x:10 + _w, _y: 15+ _h}]
}

detection_radius = 220;
enemy_idx = 0

_p_x = obj_player.x
_p_y = obj_player.y



for(var _i = 0; _i < enemy_amount; _i++)
{
	
	
	enemies[_i]._x = 276 + enemy_positions.two[_i]._x
	enemies[_i]._y = 376 + enemy_positions.two[_i]._y
}



