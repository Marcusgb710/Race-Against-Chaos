// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game(){ // THIS FUNCTION SHOULD BE LOADED BEFORE YOU LOAD INTO THE GAME. ONCE CALLED YOU DONT NEED TO CALL IT AGAIN

#region initializing variables
	globalvar _game;
	globalvar _load;
	globalvar _battle;
	_load = false;
	_game = {};
	_battle = undefined;
	var _effects = game_effects();
	var _spells = spells(_effects);
	var _items = items();
	
#endregion

#region
///DO NOT TOUCH

_game.debug_version = "2.0.1"
_game.load = false;
///DO NOT TOUCH
#endregion

#region Gold for game
_game.gold = 500;
#endregion
#region game party data
	_game.battle_party_data = [
		{
			name: "Misty",
			max_hp: 140,
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
#endregion

#region game quests
	_game.quests = [
		{
			name: "Exit Room",
			completed: false,
			id: "q1",
			meta:{
				type: "room",
				room: MistHouse,
				leaving: true,
			}
		},
		{
			name: "Ask Around",
			completed: false,
			id: "q2",
			meta:{
			type: "speech",
			done: false,
			}
		},
		{
			name: "Go to East Js",
			completed: false,
			id: "q3",
			meta:{
			type: "speech",
			done: false,
			}
		},
		{
			name: "Detour",	
			completed: false,
			id: "q4",
			meta:{
			type: "room",
			room: GasSt,
			leaving: false,
			}
		},
		{
			name: "Talk to Cory",
			completed: false,
			id: "q5",
			meta:{
			type: "speech",
			done: false,
			}
		},
		{
			name: "Fetch some Coffee",
			completed: false,
			id: "q6",
			meta:{
			type: "speech",
			done: false,
			}
		},
		
	]
#endregion

#region game room to be saved
	_game.room = undefined
#endregion

#region rooms entered
_game.last_room_entered = undefined

#endregion
}