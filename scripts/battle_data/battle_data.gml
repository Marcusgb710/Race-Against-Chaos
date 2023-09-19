// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function battle_data(){
	enum ITEM{
		FOOD,
		DAMAGE,
		DEFEND
	}
	var ____test_item = {name: "TEST", type: ITEM.DAMAGE, amount: 5}
	var __actions = 
	{
		attack:
		{
			name:"ATTACK",
			action: function(_target){}
		},
		defend:
		{
			name:"DEFEND",
			action: function(_target){}
		},
		flee:
		{
			name:"FLEE",
			action: function(){}
		}
	}
	var _effects = {}
	
	_effects.lightning = new Effect("LIGTNING", BATTLE_MENU_STATE.ACTION);
	_effects.lightning.action();
	
	_effects.fire = new Effect("FIRE", BATTLE_MENU_STATE.ACTION);
	
	_effects.ice = new Effect("ICE", BATTLE_MENU_STATE.ACTION);
	
	
	

	var _items = {}
	_items.tea = new Item("TEA", ITEM.FOOD, 5)
	_items.tea.action = function(_target){_target.current_hp += 5}
	
	_items.cookie = new Item("COOKIE", ITEM.FOOD, 7)
	_items.cookie.action = function(_target){_target.current_hp += 7}
	
	_items.chocobar = new Item("CHOCOBAR", ITEM.FOOD, 6)
	_items.chocobar.action = function(_target){_target.current_hp += 6}
	
	_items.coffee = new Item("TEA", ITEM.FOOD, 7)
	_items.coffee.action = function(_target){_target.current_hp += 7}
	
	var _spells = {}
	_spells.hurt = new Action("HURT", BATTLE_MENU_STATE.ACTION)
	_spells.hurt.action = function(_target){_target.current_hp -= 4}
	
	_spells.heal = new Action("HEAL", BATTLE_MENU_STATE.ACTION)
	_spells.heal.action = function(_target){_target.current_hp += 4}
	
	_spells.stun = new Action("STUN", BATTLE_MENU_STATE.ACTION)
	_spells.stun.action = function(_target){show_debug_message("STUNNED")}
	
	_spells.sleep = new Action("SLEEP", BATTLE_MENU_STATE.ACTION)
	_spells.sleep.action = function(_target){show_debug_message("SLEPT")}
	
	_spells.drain = new Action("DRAIN", BATTLE_MENU_STATE.ACTION)
	_spells.drain.action = function(_target){show_debug_message("DRAINED")}
	
    var _battle_enemy_data = 
	{
		_weak:[
					{
				name: "Meeks",
				max_hp: 20,
				current_hp: 20,
				max_pp: 5,
				current_pp: 5,
				current_defense: 0,
				max_melee_damage: 5,
				known_spells: [_spells.stun, _spells.sleep],
				effects: [],
				sprite: spr_Meeks,
				
				
			},
					{
				name: "Tinizorpo",
				max_hp: 32,
				current_hp: 32,
				max_pp: 8,
				current_pp: 8,
				current_defense: 0,
				max_melee_damage: 12,
				known_spells: [_spells.hurt, _spells.stun],
				effects: [],
				sprite: spr_Tinizorpo
				},
					{
					name: "Bfishimp",
					max_hp: 55,
					current_hp: 55,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 15,
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
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_DolphInaShell
					}
				
		],
		_strong:[
					{
					name: "Flora",
					max_hp: 140,
					current_hp: 110,
					max_pp: 50,
					current_pp: 50,
					current_defense: 0,
					max_melee_damage: 18,
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
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_moonplant
					},
					
		],
		_psyche:[
					{
					name: "Haunted Pants",
					max_hp: 250,
					current_hp: 250,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 20,
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
					known_spells:[_spells.stun, _spells.sleep, _spells.drain],
					effects: [],
					sprite: spr_crookedwizard
					},
		],
		_machine:[
					{
					name: "Moppy",
					max_hp: 300,
					current_hp: 300,
					max_pp: 2000,
					current_pp: 2000,
					current_defense: 0,
					max_melee_damage: 40,
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
					known_spells:[_spells.stun, _spells.drain],
					effects: [],
					sprite: spr_washy
					},
		],
		_bosses:[
					{
					name: "Edgar",
					max_hp: 100,
					current_hp: 100,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 10,
					known_spells:[],
					effects: [],
					sprite: spr_EdgarMAD
					},
					{
					name: "Edgar NEO",
					max_hp: 210,
					current_hp: 210,
					max_pp: 0,
					current_pp: 0,
					current_defense: 0,
					max_melee_damage: 50,
					known_spells:[_spells.stun],
					effects: [],
					sprite: spr_EdgarNEONPC
					},
		],
		_secret_bosses:{},
	}
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
			known_spells: [_spells.heal, _spells.sleep],
			inventory: [_items.tea,],
			effects: [],
			sprite: spr_Misty_btl_UI
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
			known_spells: [_spells.hurt, _spells.stun],
			inventory: [_items.cookie],
			effects:[],
			sprite: spr_John_btl_UI
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
			known_spells: [_spells.hurt, _spells.stun, _spells.sleep],
			inventory: [_items.chocobar],
			effects:[],
			sprite: spr_Kelsi_btl_UI
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
			known_spells: [_spells.hurt, _spells.stun],
			inventory: [_items.coffee],
			effects:[],
			sprite: spr_Cory_btl_UI
		},
				
	]

	return [_battle_enemy_data, _party_data];
}