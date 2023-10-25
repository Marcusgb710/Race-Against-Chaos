/// @description Insert description here
// You can write your code in this editor
delete battle_menu;
var  _party = hero_party(_spells, _items);
for(var _i = 0; _i < array_length(party); _i++)
{
	var _hero = party[_i]
	party[_i].effects = []
	party[_i].known_spells = _party[_i].known_spells
	
}
save(party)
instance_destroy(obj_battle_object_v2);
audio_stop_all()

