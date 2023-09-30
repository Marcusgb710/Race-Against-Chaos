// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_effects(){
		var _effects = {}
		///
		///TEST EFFECTS
		
		_effects.heal = new Effect("HEAL", BATTLE_MENU_STATE.ACTION, true, 4);
		_effects.heal.action = function(_target){_target.current_hp += 2};
		
		///
	
		_effects.lightning = new Effect("LIGTNING", BATTLE_MENU_STATE.ACTION, false, 3);
		_effects.lightning.action = function(_target){_target.current_hp -=3 if(id._effects.lightning.effect_counter <= 0){_target.turn = true return;}_target.turn = false};
	
		_effects.fire = new Effect("FIRE", BATTLE_MENU_STATE.ACTION, false, 2);
		_effects.fire.action = function(_target){_target.current_hp -= 5};
	
		_effects.ice = new Effect("ICE", BATTLE_MENU_STATE.ACTION, false, 1);
		_effects.ice.action = function(_target){_target.current_hp -=1};
		
		_effects.stun = new Effect("STUN", BATTLE_MENU_STATE.ACTION, false, 4)
		_effects.stun.action = function(_target){if(id._effects.stun.effect_counter <= 0){_target.turn = true return;}_target.turn = false};
		
		
		return _effects;
	
}