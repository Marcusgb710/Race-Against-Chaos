/// @description Insert description here
// You can write your code in this editor
data = battle_data(spells(game_effects()))

enemy_data = data._weak.enemies;

enemy_amount = 2;

_x = obj_camera.x
_y = obj_camera.y;
_w = 15;
_h = 15;


enemy_positions = {
	one:[{_x:5 , _y:10},],
	two:[{_x:5, _y: 10}, {_x:10+_w, _y: 15+_h}],
	three:[{_x:5, _y: 10}, {_x:10 + _w, _y: 10}, {_x:10 + _w, _y: 15+ _h}]
}

detection_radius = 60;

x_pos = 0
y_pos = 0



