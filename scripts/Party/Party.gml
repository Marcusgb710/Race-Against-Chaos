// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Party(_party_data, __spells) constructor{
			var _spells = []
			var spells_ = _party_data.known_spells
		
			for(var _i = 0; _i < array_length(spells_); _i ++)
			{
				var _spell = spells_[_i];
				var _spell_name = string_lower(string_letters(_spell.name))
				array_push(_spells, __spells[$ _spell_name])
			}
			name = _party_data.name
			max_hp= _party_data.max_hp
			current_hp= _party_data.current_hp
			max_pp= _party_data.max_pp
			current_pp= _party_data.current_pp
			current_defense= _party_data.current_defense
			max_melee_damage= _party_data.max_melee_damage
			in_party= _party_data.in_party
			turn= _party_data.turn
			known_spells= _spells
			inventory= _party_data.inventory
			effects= _party_data.effects
			sprite= _party_data.sprite
			last_pos= _party_data.last_pos
}