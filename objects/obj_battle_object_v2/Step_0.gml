/// @description Insert description here
// You can write your code in this editor
play_audio(song);
var _up = keyboard_check_pressed(global.key_up);
var _down = keyboard_check_pressed(global.key_down);
var _left = keyboard_check_pressed(global.key_left);
var _right = keyboard_check_pressed(global.key_right);
var _select = keyboard_check_pressed(global.key_enter);
if(can_move){
switch(current_state)
{

	case TURN_STATE.EFFECTS:
		for (var _i=0; _i < array_length(party); _i++)
			{
				var _party_member = party[_i];
				if(array_length(_party_member.effects) > 0)
				{
					for(var _j = 0; _j < array_length(_party_member.effects); _j++)
					{
						show_debug_message($"{_party_member.name} is currently affected by {_party_member.effects[_j]}");
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
		selected = false;
		selecting = false;
		current_state = TURN_STATE.PLAYER
		break;
		
	case TURN_STATE.PLAYER:
		
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
				selected_enemy -= 1;
				if(selected_enemy < 0){selected_enemy = enemy_amount-1}
			}
			if(_right)
			{
				selected_enemy += 1;
				if(selected_enemy > enemy_amount-1){selected_enemy = 0;}
			}
			}
		if(_select)
			{
				var _current_option = current_menu[selected_option]
				if(selecting){
					show_enemy_arrow = false;
					var _enemy = enemies[selected_enemy];
					enemy_hurt_animation_activation = true;
					_current_option.action(_enemy)
					
					current_state = TURN_STATE.ENEMY;
					return;
					}
					
				
				var _menu_data = change_battle_menu(_current_option, current_menu, battle_menu, selected_hero, party, selected_option, selecting);
				current_menu = _menu_data[0];
				selected_option = _menu_data[1];
				if((_current_option.type == BATTLE_MENU_STATE.ACTION || _current_option.type == ITEM.FOOD) && !selected){selecting = true; show_enemy_arrow = true;}
				
				
			}
		
		
		break;
	case TURN_STATE.ENEMY:
		if(!enemy_hurt_animation_activation)
		{
		var _current_turns_enemy = enemies[0];
		var _enemy_options = ["a", "d", "p"];
		randomize();
		var _random_enemy_option_idx = random_range(0, array_length(_enemy_options)-1);
		var _random_hero = party[random_range(0, array_length(party)-1)]
		
		//select_option
		switch(_enemy_options[_random_enemy_option_idx])
		{
			case "a":
				_random_hero.current_hp -= round(random_range(1, 2));
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
		
		selected = false;
		selecting = false;
		current_menu = battle_menu.main
		selected_option = 0;
		selected_hero += 1;
		if (selected_hero > party_count-1){selected_hero = 0};
		can_move = true;
		current_state = TURN_STATE.EFFECTS
		break;
			
		
}
	
}




