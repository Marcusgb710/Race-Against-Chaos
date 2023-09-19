// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function battle_controls(_up, _down, _left, _right, _select, _current_menu, _selected_option, _battle_menu, _party, _selected_hero, _selection){
if(!selecting){
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
	current_menu = change_battle_menu(_current_option, current_menu, battle_menu, selected_hero, party);
	
	if(_current_option.type == BATTLE_MENU_STATE.ACTION){selecting = !selecting}
	if(selecting)
	{
		switch(_current_option.name)
		{
			case "ATTACK":
				var _enemy = enemies[selected_enemy];
				_enemy.current_hp -= 2;
				
				selecting = false
				break;
				
			case "DEFEND":
			
				break;
			
			case "FLEE":
			
				break;
		}
		
	}
	
	
}



	return [current_menu, selected_option];
}