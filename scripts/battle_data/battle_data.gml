// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
globalvar enemies_in_room;
enemies_in_room = undefined;
function battle_data(_spells){
    var _battle_enemy_data = 
	{
		_weak:{
			chances : {a:0.5 , d:0.2, p:0.3},
			music: mus_Battle_Against_A_Weak_Enemy,
			_room: WeakEnemy,
			enemies: [
					{
				name: "Meeks",
				max_hp: 20,
				current_hp: 20,
				max_pp: 5,
				current_pp: 5,
				current_defense: 0,
				max_melee_damage: 5,
				turn: true,
				known_spells: [_spells.stun, _spells.sleep],
				effects: [],
				sprite: spr_Meeks,
				overworld_sprite: spr_ovmeeks,
				overworld_fps:12,
				animation_idx:0,
				
				
			},
					{
				name: "Tinizorpo",
				max_hp: 32,
				current_hp: 32,
				max_pp: 8,
				current_pp: 8,
				current_defense: 0,
				max_melee_damage: 12,
				turn: true,
				known_spells: [_spells.hurt, _spells.stun],
				effects:[],
				sprite: spr_Tinizorpo,
				overworld_sprite: spr_ovtinizorpo,
				overworld_fps: 8,
				animation_idx:0,
				},
					{
					name: "Bfishimp",
					max_hp: 55,
					current_hp: 55,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 15,
					turn: true,
					known_spells:[],
					effects: [],
					sprite: spr_Bfishimp
					},
					{
					name: "DolphInAShell",
					max_hp: 55,
					current_hp: 55,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 5,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_DolphInaShell
					}
					]
		}
		,_strong:{
			chances : {a:0.7 , d:0.2, p:0.1},
			music: mus_Battle_Against_A_Strong_Enemy,
			_room: StrongEnemy,
			enemies:[
					{
					name: "Flora",
					max_hp: 140,
					current_hp: 110,
					max_pp: 50,
					current_pp: 50,
					current_defense: 0,
					max_melee_damage: 18,
					turn: true,
					known_spells:[_spells.stun, _spells.sleep],
					effects: [],
					sprite: spr_Flora
					},
					{
					name: "Gun",
					max_hp: 75,
					current_hp: 75,
					max_pp: 75,
					current_pp: 75,
					current_defense: 0,
					max_melee_damage: 75,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_Gun
					},
					{
					name: "Sharky",
					max_hp: 50,
					current_hp: 50,
					max_pp: 50,
					current_pp: 50,
					current_defense: 0,
					max_melee_damage: 50,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_sharky
					},
					{
					name: "MoonPlant",
					max_hp: 150,
					current_hp: 150,
					max_pp: 50,
					current_pp: 50,
					current_defense: 0,
					max_melee_damage: 25,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_moonplant
					},
					
		],		
		}
		,_psyche:{
			chances : {a:0.3 , d:0.2, p:0.5},
			music: mus_Battle_Against_A_Psyche_Enemy,
			_room: PsycheEnemy,
			enemies: [
					{
					name: "Haunted Pants",
					max_hp: 250,
					current_hp: 250,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 20,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_hauntedpants
					},
					{
					name: "Haunted Suit",
					max_hp: 250,
					current_hp: 250,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 20,
					turn: true,
					known_spells:[_spells.stun, _spells.sleep, _spells.drain],
					effects: [],
					sprite: spr_HauntedSuit
					},
					{
					name: "Crooked Wizard",
					max_hp: 270,
					current_hp: 270,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 16,
					turn: true,
					known_spells:[_spells.stun, _spells.sleep, _spells.drain],
					effects: [],
					sprite: spr_crookedwizard
					},
		],	
		}
		,_machine:{
			chances : {a:0.7 , d:0.2, p:0.1},
			music: mus_Battle_Against_A_Machine,
			_room: MachEnemy,
			enemies: [
					{
					name: "Moppy",
					max_hp: 300,
					current_hp: 300,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 40,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_moppy
					},
					{
					name: "Roomba",
					max_hp: 320,
					current_hp: 320,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 40,
					turn: true,
					known_spells:[_spells.stun, _spells.drain],
					effects: [],
					sprite: spr_roomba
					},
					{
					name: "Washy",
					max_hp: 280,
					current_hp: 280,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 60,
					turn: true,
					known_spells:[_spells.stun, _spells.drain],
					effects: [],
					sprite: spr_washy
					},
		],
		}
		,_bosses:{
			music: mus_Edgar_Finch,
			enemies:[
					{
					name: "Edgar",
					max_hp: 100,
					current_hp: 100,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 10,
					turn: true,
					known_spells:[],
					effects: [],
					sprite: spr_btl_WeakEdgar
					},
					{
					name: "Edgar NEO",
					max_hp: 210,
					current_hp: 210,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 50,
					turn: true,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_btl_Edgar
					},
		],
		}
		,_secret_bosses:{},
	}
	

	return _battle_enemy_data;
}