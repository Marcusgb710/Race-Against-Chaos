// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_effects(){
		var _effects = {}
	
		_effects.lightning = new Effect("LIGTNING", BATTLE_MENU_STATE.ACTION, false, 3);
		_effects.lightning.action = function(_target){_target.current_hp -=3};
	
		_effects.fire = new Effect("FIRE", BATTLE_MENU_STATE.ACTION, false, 2);
		_effects.fire.action = function(_target){_target.current_hp -= 5};
	
		_effects.ice = new Effect("ICE", BATTLE_MENU_STATE.ACTION, false, 1);
		_effects.ice.action = function(_target){_target.current_hp -=1};
		
		
		return _effects;
	
}