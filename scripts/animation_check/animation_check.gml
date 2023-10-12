// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animation_check(_wait_after_animation, _hurt_hero, _hurt_enemy, _defense_enemy, text_animation){
	return !_wait_after_animation && !_hurt_enemy && !_hurt_hero && !_defense_enemy && !text_animation
}