// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy(_enemy) constructor{
	
	name= _enemy.name
	max_hp= _enemy.max_hp
	current_hp= _enemy.current_hp
	max_pp= _enemy.max_pp
	current_pp= _enemy.current_pp
	current_defense= _enemy.current_defense
	max_melee_damage= _enemy.max_melee_damage
	turn= _enemy.turn
	known_spells= _enemy.known_spells
	effects= _enemy.effects
	sprite= _enemy.sprite
}