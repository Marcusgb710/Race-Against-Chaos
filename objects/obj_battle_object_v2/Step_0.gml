/// @description Insert description here
// You can write your code in this editor
play_audio(song);
var _up = keyboard_check_pressed(global.key_up);
var _down = keyboard_check_pressed(global.key_down);
var _left = keyboard_check_pressed(global.key_left);
var _right = keyboard_check_pressed(global.key_right);
var _select = keyboard_check_pressed(global.key_enter);


if(keyboard_check_pressed(vk_add))
{
	array_push(party[0].known_spells, _spells.superheal)
	array_push(enemies[0].effects, _effects.fire)
}


for (var _i=0; _i < array_length(enemies); _i++)
{
	var _enemy = enemies[_i];
	if(_enemy.current_hp <= 0)
	{
		array_delete(enemies, _i, 1);
		
		if(array_length(enemies) <= 0)
		{
			alarm[0] = 120;
			can_move = false;
		}
		
		enemy_amount = array_length(enemies)
		return;
	}
}
if (do_after_animation)
{
	if after_animation > 1{ after_animation = 0 do_after_animation = false;}
	after_animation += 1/60;	
}

if(can_move){
	
switch(current_state)
{

	case TURN_STATE.EFFECTS:
		for (var _i=0; _i < party_count; _i++)
			{
				var _party_member = party[_i];
				if(array_length(_party_member.effects) > 0)
				{
					
					for(var _j = 0; _j < array_length(_party_member.effects); _j++)
					{
						var _effect = _party_member.effects[_j]
						if(_effect.effect_counter <= 0)
						{
							
							array_delete(_party_member.effects, _j, 1);
						}
						picked_hero = _i;
						if _effect.friendly
						{
							
							heal_hero = true;
							hurt_hero = true;
						}
						else
						{
							hurt_hero = true;	
						}
						_effect.action(_party_member);
						_effect.counter();
					}
				}
			}
		for (var _i=0; _i < array_length(enemies); _i++)
			{
				var _enemy = enemies[_i];
				if(array_length(_enemy.effects) > 0)
				{
					for(var _j = 0; _j < array_length(_enemy.effects); _j++)
					{
						var _effect = _enemy.effects[_j]
						if _effect.friendly
						{
							
						}
						else
						{
							current_enemy_animation = _i
							enemy_hurt_animation_activation = true;
							
						}
						if(_effect.effect_counter <= 0)
						{
							
							array_delete(_enemy.effects, _j, 1);
						}
						
						_effect.action(_enemy);
						_effect.counter();
					}
				}
			}
		
		
		current_state = TURN_STATE.PLAYER
		break;
		
	case TURN_STATE.PLAYER:
	if(animation_check(do_after_animation, hurt_hero, enemy_hurt_animation_activation, enemy_defense_animation_activation))
	{
	
	
		if(_select)
			{
				var _current_option = current_menu[selected_option]
				
				
				if(selecting){
					
					if(friendly)
					{
						show_hero_selection_curve = false;
						
						var _hero = party[selected_hero];
						
						
						
						var _before_hero_hp = _hero.current_hp
						var _before_hero_defense = _hero.current_defense					
						_current_option.action(_hero)
						
						picked_hero = selected_hero;
						if(_current_option.name == "DEFEND"){hero_damage_text = _hero.current_defense - _before_hero_defense defend_hero = true hurt_hero = true}
						else{hero_damage_text = _hero.current_hp - _before_hero_hp heal_hero = true hurt_hero = true}
						
						selected_hero = selecting_hero;
						
						
						
					}
					else
					{
					show_enemy_arrow = false;
					var _enemy = enemies[selected_enemy];
					current_enemy_animation = selected_enemy
					enemy_hurt_animation_activation = true;
					_current_option.action(_enemy)
					}
					
					current_state = TURN_STATE.ENEMY;
					return;
					}
					
				
				var _menu_data = change_battle_menu(_current_option, current_menu, battle_menu, selected_hero, party, selected_option, selecting);
				current_menu = _menu_data[0];
				selected_option = _menu_data[1];
				if(_current_option.type == BATTLE_MENU_STATE.ACTION && !selected){
					if(_current_option.name == "FLEE")
					{
						_current_option.action(undefined);	
						return;
					}
					selecting = true; 
					
					if(_current_option.friendly){
					selecting_hero = selected_hero 
					friendly = true 
					show_hero_selection_curve = true
					}
					else
					{
						show_enemy_arrow = true;
					}
					
					}
				
				
			}
		if(!selecting)
		{
			if(_up)
			{
				selected_option -= 1 
				if(selected_option < 0)
				{
					selected_option = array_length(current_menu) -1;	
				}
			}
			if(_down)
			{
				selected_option += 1
				if(selected_option > array_length(current_menu)-1)
				{
					selected_option = 0;
				}
			}
			}
		else
			{
			if(_left)
			{
				if(friendly)
				{
						selected_hero -= 1;
						if(selected_hero < 0){selected_hero = party_count-1}
				}
				else
				{
				selected_enemy -= 1;
				if(selected_enemy < 0){selected_enemy = enemy_amount-1}
				}
			}
			if(_right)
			{
				if(friendly)
				{
						selected_hero += 1;
						if(selected_hero > party_count-1){selected_hero = 0}
				}
				else
				{
				selected_enemy += 1;
				if(selected_enemy > enemy_amount-1){selected_enemy = 0;}
				}
				
			}
			}
	}
		break;
	case TURN_STATE.ENEMY:
		//if(!enemy_hurt_animation_activation)
		if(animation_check(do_after_animation, hurt_hero, enemy_hurt_animation_activation, enemy_defense_animation_activation))
		{
		var _current_turns_enemy = enemies[enemies_turn];
		current_enemy_animation = enemies_turn
		var _enemy_options = ["a", "d", "p"];
		randomize();
		var _random_enemy_option_idx = random_range(0, array_length(_enemy_options)-1);
		picked_hero = round(random_range(0, party_count-1))
		var _random_hero = party[picked_hero]
		var _random_choice = enemy_battle_decision(chosen_enemies.chances)
		
		show_debug_message(_random_choice)
		//select_option
		switch(_random_choice)
		{
			case "a":
				var _dmg = round(random_range(1, 2))
				
					var _carry_over_dmg = 0;
	
				if(_random_hero.current_defense > 0)
				{
					_random_hero.current_defense -= _dmg;
					if(_random_hero.current_defense <= 0){_random_hero.current_hp -= abs(_random_hero.current_defense) _random_hero.current_defense = 0};
		
					
				}
				else{
				_random_hero.current_hp -= _dmg 
				}
				hero_damage_text = _dmg;
				hurt_hero = true;
				selected = false;
				
				break;
				
			case "d":
				_current_turns_enemy.current_defense += 5;
				enemy_defense_text = $"s+5"
				selected = false;
				enemy_defense_animation_activation = true;				
				break;
				
			case "p":
				if(array_length(_current_turns_enemy.known_spells)> 0)
				{
					var _random_enemy_spell = round(random_range(0, array_length(_current_turns_enemy.known_spells)-1))
					_current_turns_enemy.known_spells[_random_enemy_spell].action(_random_hero)
					
				}
				_random_hero.current_hp -= round(random_range(1, 2));
				selected = false;
				
				break;
			
		}
		
		current_state = TURN_STATE.END
		}
		break;
		
	case TURN_STATE.END:
		//if(!hurt_hero && !enemy_defense_animation_activation)
		if(animation_check(do_after_animation, hurt_hero, enemy_hurt_animation_activation, enemy_defense_animation_activation))
		{
		
		selected = false;
		selecting = false;
		friendly = false;
		current_menu = battle_menu.main
		selected_option = 0;
		current_enemy_animation = selected_enemy
		
		
		enemies_turn += 1;
		selected_hero += 1;
		if (selected_hero > party_count-1){selected_hero = 0};
		if(!party[selected_hero].turn){selected_hero += 1 if (selected_hero > party_count-1){selected_hero = 0};};
		if (enemies_turn > enemy_amount-1){enemies_turn = 0};
		if(!enemies[enemies_turn].turn){enemies_turn += 1 if (enemies_turn > enemy_amount-1){enemies_turn = 0};};
		
		can_move = true;
		current_state = TURN_STATE.EFFECTS
		}
		break;
			
		
}
	
}

for (var _i=0; _i < array_length(enemies); _i++)
{
	var _enemy = enemies[_i];
	if(_enemy.current_hp <= 0)
	{
		array_delete(enemies, _i, 1);
		
		if(array_length(enemies) <= 0)
		{
			alarm[0] = 120;
			can_move = false;
		}
		
		enemy_amount = array_length(enemies)
		return;
	}
}




