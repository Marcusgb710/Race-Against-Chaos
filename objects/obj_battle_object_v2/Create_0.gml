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
	PLAYER_EFFECTS,
	ENEMY_EFFECTS,
	EFFECTS,
	PLAYER,
	ENEMY,
	END
	
}

efx = false
e = 0
ee = 0

select_effected_enemy = 0


text_timer = 0
text_idx = 1
battle_text_ = battle_text()
draw_txt = false
text_to_draw = ""
drawn_text = ""
text_end_delay_timer = 0
text_end_delay = 60
txt_idx = 0

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
enemy_damage_text = 0
battle_menu.main[0].action = function(_target){
	var _carry_over_dmg = 0;
	
	if(_target.current_defense > 0)
	{
		_target.current_defense -= 4;
		enemy_damage_text = $"s-4"
		if(_target.current_defense <= 0){enemy_damage_text = $"-{abs(_target.current_defense)} s-{4-abs(_target.current_defense)}" _target.current_hp -= abs(_target.current_defense) _target.current_defense = 0};
		
		return;
	}
	_target.current_hp -= 4 
	enemy_damage_text = $"-4"
	}
battle_menu.main[3].action = function(_target){_target.current_defense += 2}
battle_menu.main[4].action = function(_target){can_move = false
	save(party)
				draw_flee_screen = true;
				alarm[0] = 240;}

enemy_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve1");
hero_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve2");
enemy_hurt_curve = animcurve_get_channel(ac_hurt_animation, "curve1");
hero_hurt_curve = animcurve_get_channel(ac_hero_hurt_animation, "curve1");
defense_animation = animcurve_get_channel(ac_defense_animaiton, "curve1");
enemy_hurt_text_curve = animcurve_get_channel(ac_hurt_animation, "curve2");

defense_curve_percent = 0;
enemy_curve_percent = 0;
hero_curve_percent = 0;
enemy_hurt_percent = 0;
hero_hurt_percent = 0;


_effects = game_effects();
_spells = spells(_effects);
_items = items();

current_menu = battle_menu.main;
_battle_data = battle_data(_spells);
//chosen_enemies = choose_room_enemies(_battle_data);
chosen_enemies = enemies_in_room
if(is_undefined(enemies_in_room)){chosen_enemies = choose_room_enemies(_battle_data) last_room = Premenu};

enemy_data = create_enemies(chosen_enemies.enemies);

song = chosen_enemies.music;

var _save_data = load();
if(array_length(_save_data)>=1)
{
	party_data = _save_data;
	//party = hero_party(_spells, _items);
}
else
{
	party_data = hero_party(_spells, _items);
}

party = create_party(party_data, _spells)
show_debug_message(party)


enemies = enemy_data[0];
enemy_amount = enemy_data[1];
party_count = get_party_count(party);

hero_damage_text = 0;
hurt_hero = false;
heal_hero = false;
defend_hero = false;
picked_hero = 0;

after_animation = 0;
do_after_animation = false;


enemies_turn = 0;
selected_hero = 0;
selected_enemy = 0;
selected_option = 0;
current_enemy_animation = selected_hero;

heal_hero = false;
defend_hero = false;
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
enemy_heal_animaiton_activation = false;
enemy_defense_animation_activation = false;

current_state = TURN_STATE.PLAYER;