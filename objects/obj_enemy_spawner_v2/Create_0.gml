/// @description Insert description here
// You can write your code in this editor

data = battle_data(spells(game_effects()))


enemy_data = pick_room_enemies(data)
print(enemy_data);
//if(is_undefined(enemy_data)){enemy_data = data._weak}


detection_radius = 5;

battle_layer = layer_get_all_elements(layer_get_id("Battles"))

cream_color = make_color_rgb(255, 253, 208)
radius = 5

_p_x = obj_player.x
_p_y = obj_player.y
