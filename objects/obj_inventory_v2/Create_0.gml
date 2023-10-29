/// @description Insert description here
// You can write your code in this editor
items_ = items()
rowlength = 5;
inventory = array_create(SLOTS,-1);
randomize();
debug = false;
show = false;
adding_removing = false
command = ""
command_type = ""
party_inv_index = 0
party = []
array_foreach( _game.battle_party_data, function(_hero){if(_hero.in_party){return array_push(party, _hero)}})
current_hero = party[party_inv_index];
party_inventory = current_hero.inventory
start_close_timer = false
close_timer = 0
alphabet = ["A","B","C","D","E","F","G","H","I","J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
menu_sprite = current_hero.sprite
amount_to_move_enemy_up = 30




