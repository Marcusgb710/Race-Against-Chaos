// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function choose_enemies(_enemy_battle_data){
	var _data;
	var _song;
	switch(room)
	{
		case WeakEnemy:
			_data = _enemy_battle_data._weak;
			_song = mus_Battle_Against_A_Weak_Enemy;
			break;
		case StrongEnemy:
			_data = _enemy_battle_data._strong;
			_song = mus_Battle_Against_A_Strong_Enemy;
			break;
		case PsycheEnemy:
			_data = _enemy_battle_data._psyche;
			_song = mus_Battle_Against_A_Psyche_Enemy;
			break;
		case MachEnemy:
			_data = _enemy_battle_data._machine;
			_song = mus_Battle_Against_A_Machine;
			break;
			
	}
	return [_data, _song]
}