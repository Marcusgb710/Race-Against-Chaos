// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spells(){
	var _spells = {}
	_spells.hurt = new Action("HURT", BATTLE_MENU_STATE.ACTION, false)
	_spells.hurt.action = function(_target){_target.current_hp -= 4}
	
	_spells.heal = new Action("HEAL", BATTLE_MENU_STATE.ACTION, true)
	_spells.heal.action = function(_target){_target.current_hp += 4}
	
	_spells.stun = new Action("STUN", BATTLE_MENU_STATE.ACTION, false)
	_spells.stun.action = function(_target){show_debug_message("STUNNED")}
	
	_spells.sleep = new Action("SLEEP", BATTLE_MENU_STATE.ACTION, false)
	_spells.sleep.action = function(_target){show_debug_message("SLEPT")}
	
	_spells.drain = new Action("DRAIN", BATTLE_MENU_STATE.ACTION, false)
	_spells.drain.action = function(_target){show_debug_message("DRAINED")}
	
	return _spells;
}