// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar last_room;

function hero_party(_spells, _items){
	var _party_data = 
	[
		{
			name: "Misty",
			max_hp: 104,
			current_hp: 140,
			max_pp: 25,
			current_pp: 25,
			current_defense: 0,
			max_melee_damage: 10,
			in_party: true,
			turn: true,
			known_spells: [_spells.heal, _spells.sleep],
			inventory: [_items.tea,],
			effects: [],
			sprite: spr_Misty_btl_UI,
			last_pos:{_x:0, _y:0},
			
		},
		{
			name: "Jon",
			max_hp: 124,
			current_hp: 124,
			max_pp: 38,
			current_pp: 38,
			current_defense: 0,
			max_melee_damage: 15,
			in_party: true,
			turn: true,
			known_spells: [_spells.hurt, _spells.stun],
			inventory: [_items.cookie],
			effects:[],
			sprite: spr_John_btl_UI,
			last_pos:{_x:0, _y:0}
		},
		{
			name: "Kelsi",
			max_hp: 116,
			current_hp: 116,
			max_pp: 28,
			current_pp: 28,
			current_defense: 0,
			max_melee_damage: 22,
			in_party: false,
			turn: true,
			known_spells: [_spells.hurt, _spells.stun, _spells.sleep],
			inventory: [_items.chocobar],
			effects:[],
			sprite: spr_Kelsi_btl_UI,
			last_pos:{_x:0, _y:0}
		},
		{
			name: "Cory",
			max_hp: 100,
			current_hp: 100,
			max_pp: 20,
			current_pp: 20,
			current_defense: 0,
			max_melee_damage: 24,
			in_party: false,
			turn: true,
			known_spells: [_spells.hurt, _spells.stun],
			inventory: [_items.coffee],
			effects:[],
			sprite: spr_Cory_btl_UI,
			last_pos:{_x:0, _y:0}
		},
				
	]
	return _party_data
}