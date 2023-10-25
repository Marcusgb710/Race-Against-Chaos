/// @description Insert description here
// You can write your code in this editor
delete battle_menu;
var  _party = hero_party(_spells, _items);
for(var _i = 0; _i < array_length(party); _i++)
{
	
	party[_i].current_defense = 0
	party[_i].effects = []
	party[_i].known_spells = _party[_i].known_spells
	
}
_game.battle_party_data = party;
save(_game)
instance_destroy(obj_battle_object_v2);
audio_stop_all()

