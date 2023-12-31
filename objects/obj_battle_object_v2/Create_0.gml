/// @description Insert description here
// You can write your code in this editor
upvariable = 1;
downvariable = 1;
leftvariable = 1;
rightvariable = 1;

randomize()
if(instance_exists(obj_quest)){
obj_quest.show = false;
}
#region battle enums
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
#endregion

#region effects variables
efx = false
e = 0
ee = 0

select_effected_enemy = 0
select_effected_hero = 0;
#endregion

#region textbox variables
att = false;
text_timer = 0
text_idx = 1
battle_text_ = battle_text()
draw_txt = false
text_to_draw = ""
drawn_text = ""
text_end_delay_timer = 0
text_end_delay = 60
txt_idx = 0
#endregion
extra_dmg = 0;
#region battle menu controls and variables
back_option = new Action("BACK", BATTLE_MENU_STATE.ACTION, undefined);
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
		back_option,
		]
}
enemy_damage_text = 0
battle_menu.main[0].action = function(_target, _caster=undefined){
	var _carry_over_dmg = 0;
	var _dmg = 4 + extra_dmg;
	
	if(_target.current_defense > 0)
	{
		_target.current_defense -= _dmg;
		enemy_damage_text = $"s-{_dmg}"
		if(_target.current_defense <= 0){enemy_damage_text = $"-{abs(_target.current_defense)} s-{4-abs(_target.current_defense)}" _target.current_hp -= abs(_target.current_defense) _target.current_defense = 0};
		
		return;
	}
	_target.current_hp -= _dmg 
	enemy_damage_text = $"-{_dmg}"
	extra_dmg = 0;
	}
battle_menu.main[3].action = function(_target, _caster=undefined){_target.current_defense += 2}
battle_menu.main[4].action = function(_target, _caster=undefined){can_move = false
	_game.battle_party_data = party;
	save(_game)
	draw_flee_screen = true;
	alarm[0] = 240;}
last_menu = battle_menu.main;
back_option.action = function(_target, _caster=undefined){current_menu = last_menu}


#endregion

battle_draw_sound = snd_vceType


#region animation curve variables
enemy_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve1");
hero_arrow_curve = animcurve_get_channel(ac_arrow_animation, "curve2");
enemy_hurt_curve = animcurve_get_channel(ac_hurt_animation, "curve1");
hero_hurt_curve = animcurve_get_channel(ac_hero_hurt_animation, "curve1");
defense_animation = animcurve_get_channel(ac_defense_animaiton, "curve1");
enemy_hurt_text_curve = animcurve_get_channel(ac_hurt_animation, "curve2");
enemy_attack_animation = animcurve_get_channel(ac_enemy_attack_animation, "curve1");

defense_curve_percent = 0;
enemy_curve_percent = 0;
hero_curve_percent = 0;
enemy_hurt_percent = 0;
hero_hurt_percent = 0;
#endregion

#region game data variables
_effects = game_effects();
_spells = spells(_effects);
_items = items();

current_menu = battle_menu.main;
_battle_data = battle_data(_spells);
//chosen_enemies = choose_room_enemies(_battle_data);
chosen_enemies = enemies_in_room
if(is_undefined(enemies_in_room)){chosen_enemies = choose_room_enemies(_battle_data) last_room = Premenu};


enemy_data = create_enemies(chosen_enemies.enemies);
bossbattle = false;

song = chosen_enemies.music;


print(chosen_enemies);


_party = create_party(_game.battle_party_data, _spells, _items)
party = []
array_foreach(_party, function(_value){if(_value.in_party){array_push(party, _value)}})


enemies = enemy_data[0];
enemy_amount = enemy_data[1];
party_count = get_party_count(party);
#endregion

#region animation variables
hero_damage_text = 0;
hurt_hero = false;
heal_hero = false;
defend_hero = false;
after_animation = 0;
do_after_animation = false;
#endregion

#region battle selection variables

picked_hero = 0;
enemies_turn = 0;
selected_hero = 0;
selected_enemy = 0;
selected_option = 0;
current_enemy_animation = selected_hero;
#endregion

#region boolean battle variables
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
enemy_attack_animation_activation = false;
#endregion


current_state = TURN_STATE.PLAYER;

event_inherited();

function bezier(_p0, _p1, _p2, _t){
	
	var _px = _p0[0]*sqr((1-_t))+2*(1-_t)*_t*_p1[0] + _p2[0]*sqr(_t)
	var _py = _p0[1]*sqr((1-_t))+2*(1-_t)*_t*_p1[1] + _p2[1]*sqr(_t)
	return [_px, _py];
}
function changeBattleMenu(_page){
	if(_page.type == BATTLE_MENU_STATE.TRANSFER && !selected)
	{
			selected_option = 0;
			last_menu = current_menu;
			switch(_page.goto)
			{
				case BATTLE_MENU_PAGE.PSI:
						current_menu = party[selected_hero].known_spells
					break;
				
				case BATTLE_MENU_PAGE.INVENTORY:
						current_menu = party[selected_hero].inventory
						// if inventory is empty the fill the inventory with EMPTY slots
						if(array_length(current_menu) <= 0){
							for(var _i = 0; _i < 4; _i++)
							{
									array_push(current_menu, {name: "EMPTY"})
							}
						}
					break;
			}
	}
	if(!array_contains(current_menu, back_option)){
		array_push(current_menu, back_option);
	}
	
}


for(var _i = 0; _i < _len(_battle_data._bosses.enemies); _i++){
	for(var _j = 0; _j<_len(enemies); _j++){
		var _enemy = enemies[_j];
		var _enemy_d =_battle_data._bosses.enemies[_i];
		if(_enemy.name == _enemy_d.name){
			for(var _i = 0; _i < array_length(battle_menu.main); _i ++){
				var men_op = battle_menu.main[_i];
				print("PENIS", men_op);
				if(men_op.name == "FLEE")
				{
					array_delete(battle_menu.main, _i, 1);
					current_menu = battle_menu.main;
				}
	}
			return
		}
	}
	
	
}

current_state = TURN_STATE.PLAYER;

