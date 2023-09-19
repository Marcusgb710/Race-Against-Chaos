// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_battle_menu(_page, _current_menu, _battle_menu, _selected_hero, _party, _selected_option, _selected){
	if(_page.type == BATTLE_MENU_STATE.TRANSFER && !_selected)
	{
			_selected_option = 0;
			switch(_page.goto)
			{
				case BATTLE_MENU_PAGE.PSI:
						_current_menu = _party[_selected_hero].known_spells
					break;
				
				case BATTLE_MENU_PAGE.INVENTORY:
						_current_menu = _party[_selected_hero].inventory
						// if inventory is empty the fill the inventory with EMPTY slots
						if(array_length(_current_menu) <= 0){
							for(var _i = 0; _i < 4; _i++)
							{
									array_push(_current_menu, {name: "EMPTY"})
							}
						}
					break;
			}
	}
	return [_current_menu, _selected_option]
}