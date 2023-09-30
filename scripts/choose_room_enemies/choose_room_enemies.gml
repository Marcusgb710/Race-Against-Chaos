// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_room_enemies(_enemy_battle_data){
	var _data;
	var _song;
	switch(room)
	{
		case WeakEnemy:
			_data = _enemy_battle_data._weak;
			
			break;
		case StrongEnemy:
			_data = _enemy_battle_data._strong;
			break;
		case PsycheEnemy:
			_data = _enemy_battle_data._psyche;
			break;
		case MachEnemy:
			_data = _enemy_battle_data._machine;
			break;
			
	}
	return _data
}