/// @description Insert description here
// You can write your code in this editor

data = battle_data(spells(game_effects()))

enemy_data = enemies_in_room;

detection_radius = 10;

battle_layer = layer_get_all_elements(layer_get_id("Battles"))

cream_color = make_color_rgb(255, 253, 208)
radius = 5

_p_x = obj_player.x
_p_y = obj_player.y

