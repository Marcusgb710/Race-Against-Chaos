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
	array_push(party[0].effects, _effects.fire)
}
if(array_length(enemies) <= 0)
{
	alarm[0] = 60;
}

for (var _i=0; _i < array_length(enemies); _i++)
{
	var _enemy = enemies[_i];
	if(_enemy.current_hp <= 0)
	{
		array_delete(enemies, _i, 1);	
	}
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
					show_debug_message(_party_member)
					for(var _j = 0; _j < array_length(_party_member.effects); _j++)
					{
						var _effect = _party_member.effects[_j]
						if(_effect.effect_counter <= 0)
						{
							
							array_delete(_party_member.effects, _j, 1);
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
						show_debug_message($"{_enemy.name} is currently affected by {_enemy.effects[_j]}");
					}
				}
			}
		
		current_state = TURN_STATE.PLAYER
		break;
		
	case TURN_STATE.PLAYER:
		if(_select)
			{
				var _current_option = current_menu[selected_option]
				
				
				if(selecting){
					if(friendly)
					{
						show_hero_selection_curve = false;
						var _hero = party[selected_hero];
						//enemy_hurt_animation_activation = true;
						_current_option.action(_hero)
						selected_hero = selecting_hero;
					}
					else
					{
					show_enemy_arrow = false;
					var _enemy = enemies[selected_enemy];
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
					selecting = true; 
					show_debug_message(_current_option)
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
		
		break;
	case TURN_STATE.ENEMY:
		if(!enemy_hurt_animation_activation)
		{
		var _current_turns_enemy = enemies[0];
		var _enemy_options = ["a", "d", "p"];
		randomize();
		var _random_enemy_option_idx = random_range(0, array_length(_enemy_options)-1);
		picked_hero = round(random_range(0, party_count-1))
		var _random_hero = party[picked_hero]
		
		//select_option
		switch(_enemy_options[_random_enemy_option_idx])
		{
			case "a":
				var _dmg = round(random_range(1, 2))
				_random_hero.current_hp -= _dmg;
				hero_damage_text = _dmg;
				hurt_hero = true;
				selected = false;
				
				break;
				
			case "d":
				_current_turns_enemy.current_defense += 5;
				selected = false;
				
				break;
				
			case "p":
				_random_hero.current_hp -= round(random_range(1, 2));
				selected = false;
				
				break;
			
		}
		
		current_state = TURN_STATE.END
		}
		break;
		
	case TURN_STATE.END:
		if(!hurt_hero)
		{
		selected = false;
		selecting = false;
		friendly = false;
		current_menu = battle_menu.main
		selected_option = 0;
		selected_hero += 1;
		if (selected_hero > party_count-1){selected_hero = 0};
		can_move = true;
		current_state = TURN_STATE.EFFECTS
		}
		break;
			
		
}
	
}




