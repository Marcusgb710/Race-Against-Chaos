/// @description Insert description here
// You can write your code in this editor
randomize()

enum BATTLE_MENU_STATE{
	TRANSFER,
	ACTION,
	SELECT,
};

enum BATTLE_MENU_PAGE{
	MAIN,
	PSI,
	INVENTORY,
	DEFEND,
	FLEE,
}

enum TURN_STATE{
	EFFECTS,
	PLAYER,
	ENEMY,
	END,
}

battle_menu = {
	main:[
		new Action("ATTACK", BATTLE_MENU_STATE.ACTION, false) ,
		{
			name:"PSI",
			type: BATTLE_MENU_STATE.TRANSFER,
			goto: BATTLE_MENU_PAGE.PSI,
		
		},
		{
			name:"INVENTORY",
			type: BATTLE_MENU_STATE.TRANSFER,
			goto: BATTLE_MENU_PAGE.INVENTORY,
		
		},
		new Action("DEFEND", BATTLE_MENU_STATE.ACTION, true),
		
		new Action("FLEE", BATTLE_MENU_STATE.ACTION, true) ,
		]
}

battle_menu.main[0].action = function(_target){
	var _carry_over_dmg = 0;
	
	if(_target.current_defense > 0)
	{
		_target.current_defense -= 4;
		if(_target.current_defense <= 0){_target.current_hp -= abs(_target.current_defense) _target.current_defense = 0};
		show_debug_message(_target);
		return;
	}
	_target.current_hp -= 4 
	show_debug_message(_target)
	}
battle_menu.main[3].action = function(_target){_target.current_defense += 2}
battle_menu.main[4].action = function(_target){can_move = false
				draw_flee_screen = true;
				alarm[0] = 240;}

enemy_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve1");
hero_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve2");
enemy_hurt_curve = animcurve_get_channel(ac_hurt_animation, "curve1");
hero_hurt_curve = animcurve_get_channel(ac_hero_hurt_animation, "curve1");
enemy_curve_percent = 0;
hero_curve_percent = 0;
enemy_hurt_percent = 0;
hero_hurt_percent = 0;

_spells = spells();
_effects = game_effects();
_items = items();
current_menu = battle_menu.main;
_battle_data = battle_data(_spells);
chosen_enemies = choose_room_enemies(_battle_data);
enemy_data = create_enemies(chosen_enemies.enemies);

song = chosen_enemies.music;
party = hero_party(_spells, _items); 

enemies = enemy_data[0];
enemy_amount = enemy_data[1];
party_count = get_party_count(party);

hero_damage_text = 0;
hurt_hero = false;
picked_hero = 0;

selected_hero = 0;
selected_enemy = 0;
selected_option = 0;
selecting_hero = undefined;
friendly = false;
selecting = false;
selected = false;
selecting_target = false;
show_enemy_arrow = false;
show_hero_selection_curve = false;
draw_flee_screen = false;
can_move = true;
enemy_hurt_animation_activation = false; //lol the varable name rhymes

current_state = TURN_STATE.PLAYER;