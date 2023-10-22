// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spells(_effects){
	var _spells = {}
	///
	///TEST SPELLS
	_spells.flame = new Action("FLAME", BATTLE_MENU_STATE.ACTION, false)
	_spells.flame.action = function(_target){_target.current_hp -= 9 obj_battle_object_v2.enemy_damage_text = 9 add_effect(_target, new Effect2(_effects.fire), _effects.fire.action)}
	
	_spells.superheal = new Action("SUPER HEAL", BATTLE_MENU_STATE.ACTION, true)
	_spells.superheal.action = function(_target){_target.current_hp += 12 add_effect(_target, new Effect2(_effects.heal), _effects.heal.action)}
	
	_spells.freeze = new Action("FREEZE", BATTLE_MENU_STATE.ACTION, false)
	_spells.freeze.action = function(_target){add_effect(_target, new Effect2(_effects.ice), _effects.ice.action)}
	///
	_spells.hurt = new Action("HURT", BATTLE_MENU_STATE.ACTION, false)
	_spells.hurt.action = function(_target){_target.current_hp -= 4}
	
	_spells.heal = new Action("HEAL", BATTLE_MENU_STATE.ACTION, true)
	_spells.heal.action = function(_target){_target.current_hp += 4}
	
	_spells.stun = new Action("STUN", BATTLE_MENU_STATE.ACTION, false)
	_spells.stun.action = function(_target){add_effect(_target, new Effect2(_effects.stun), _effects.stun.action)}
	
	_spells.sleep = new Action("SLEEP", BATTLE_MENU_STATE.ACTION, false)
	_spells.sleep.action = function(_target){add_effect(_target, new Effect2(_effects.stun), _effects.stun.action)}
	
	_spells.drain = new Action("DRAIN", BATTLE_MENU_STATE.ACTION, false)
	_spells.drain.action = function(_target){_target.current_hp -= 2 _target.current_pp -= 1}
	
	
	
	return _spells;
}