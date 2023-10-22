// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_effects(){
		var _effects = {}
		///
		///TEST EFFECTS
		_effects.heal = {
			name:"HEAL",
			type: BATTLE_MENU_STATE.ACTION,
			friendly: true,
			effect_counter: 4,
			effect_spr: spr_fire
		}
		//_effects.heal = new Effect("HEAL", BATTLE_MENU_STATE.ACTION, true, 4,4, spr_fire);
		_effects.heal.action = function(_target){_target.current_hp += 2};
		
		///
		_effects.lightning = {
			name:"LIGHTNING",
			type: BATTLE_MENU_STATE.ACTION,
			friendly: false,
			effect_counter: 2,
			effect_spr: spr_lightning
		}
		//.lightning = new Effect("LIGTNING", BATTLE_MENU_STATE.ACTION, false, 2,2, spr_lightning);
		_effects.lightning.action = function(_target){_target.current_hp -=3 if(id._effects.lightning.effect_counter <= 0){obj_battle_object_v2.enemy_damage_text = "-3" _target.turn = true return;}_target.turn = false};
	
		
		_effects.fire = {
			name:"FIRE",
			type: BATTLE_MENU_STATE.ACTION,
			friendly: false,
			effect_counter: 2,
			effect_spr: spr_fire
		}
		//_effects.fire = new Effect("FIRE", BATTLE_MENU_STATE.ACTION, false, 2,2, spr_fire);
		_effects.fire.action = function(_target){_target.current_hp -= 5 obj_battle_object_v2.enemy_damage_text = "-5"};
		
		_effects.ice = {
			name:"ICE",
			type: BATTLE_MENU_STATE.ACTION,
			friendly: false,
			effect_counter: 1,
			effect_spr: spr_ice
		}
		//_effects.ice = new Effect("ICE", BATTLE_MENU_STATE.ACTION, false, 1,1, spr_ice);
		_effects.ice.action = function(_target){_target.current_hp -=1 obj_battle_object_v2.enemy_damage_text = "-1"};
		
		_effects.stun = {
			name:"STUN",
			type: BATTLE_MENU_STATE.ACTION,
			friendly: false,
			effect_counter: 4,
			effect_spr: spr_stun
		}
		//_effects.stun = new Effect("STUN", BATTLE_MENU_STATE.ACTION, false, 4,4, spr_stun)
		_effects.stun.action = function(_target){if(id._effects.stun.effect_counter <= 0){_target.turn = true return;}_target.turn = false obj_battle_object_v2.enemy_damage_text = "STUNNED"};
		
		
		return _effects;
	
}