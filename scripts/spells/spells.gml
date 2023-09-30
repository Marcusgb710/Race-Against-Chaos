// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spells(_effects){
	var _spells = {}
	///
	///TEST SPELLS
	_spells.flame = new Action("FLAME", BATTLE_MENU_STATE.ACTION, false)
	_spells.flame.action = function(_target){_target.current_hp -= 9 array_push(_target.effects, _effects.fire)}
	
	_spells.superheal = new Action("SUPER HEAL", BATTLE_MENU_STATE.ACTION, true)
	_spells.superheal.action = function(_target){_target.current_hp += 12 array_push(_target.effects, _effects.heal)}
	
	///
	_spells.hurt = new Action("HURT", BATTLE_MENU_STATE.ACTION, false)
	_spells.hurt.action = function(_target){_target.current_hp -= 4}
	
	_spells.heal = new Action("HEAL", BATTLE_MENU_STATE.ACTION, true)
	_spells.heal.action = function(_target){_target.current_hp += 4}
	
	_spells.stun = new Action("STUN", BATTLE_MENU_STATE.ACTION, false)
	_spells.stun.action = function(_target){array_push(_target.effects, _effects.stun)}
	
	_spells.sleep = new Action("SLEEP", BATTLE_MENU_STATE.ACTION, false)
	_spells.sleep.action = function(_target){array_push(_target.effects, _effects.stun)}
	
	_spells.drain = new Action("DRAIN", BATTLE_MENU_STATE.ACTION, false)
	_spells.drain.action = function(_target){_target.current_hp -= 2 _target.current_pp -= 1}
	
	
	
	return _spells;
}