/// @description Insert description here
// You can write your code in this editor
delete battle_menu;
var  __party = hero_party(_spells, _items);
for(var _i = 0; _i < array_length(_party); _i++)
{
	if(_party[_i].in_party){
		_party[_i].current_hp = party[_i].current_hp;
		_party[_i].current_pp = party[_i].current_pp;
	}
	_party[_i].current_defense = 0
	_party[_i].effects = []
	_party[_i].known_spells = __party[_i].known_spells
	
}
_game.battle_party_data = _party;
save(_game)
instance_destroy(obj_battle_object_v2);
audio_stop_all()