// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spells(_effects){
	var _spells = {}
	///
	///TEST SPELLS
	_spells.flame = new GameSpell("FLAME", BATTLE_MENU_STATE.ACTION, false, 2)
	_spells.flame.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.flame.pp_cost; _target.current_hp -= 9; add_effect(_target, new Effect2(_effects.fire), _effects.fire.action); return -9}
	
	_spells.superheal = new GameSpell("SUPER HEAL", BATTLE_MENU_STATE.ACTION, true, 4)
	_spells.superheal.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.superheal.pp_cost; _target.current_hp += 12; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; add_effect(_target, new Effect2(_effects.heal), _effects.heal.action); return 12}
	
	_spells.freeze = new GameSpell("FREEZE", BATTLE_MENU_STATE.ACTION, false, 1)
	_spells.freeze.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.freeze.pp_cost; add_effect(_target, new Effect2(_effects.ice), _effects.ice.action); return 0}
	///
	_spells.hurt = new GameSpell("HURT", BATTLE_MENU_STATE.ACTION, false, 1)
	_spells.hurt.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.hurt.pp_cost; _target.current_hp -= 4; return -4}
	
	_spells.heal = new GameSpell("HEAL", BATTLE_MENU_STATE.ACTION, true, 2)
	_spells.heal.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.heal.pp_cost; _target.current_hp += 4; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; return 4}
	
	_spells.stun = new GameSpell("STUN", BATTLE_MENU_STATE.ACTION, false, 3)
	_spells.stun.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.stun.pp_cost; add_effect(_target, new Effect2(_effects.stun), _effects.stun.action); return 0}
	
	_spells.sleep = new GameSpell("SLEEP", BATTLE_MENU_STATE.ACTION, false, 1)
	_spells.sleep.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.sleep.pp_cost; add_effect(_target, new Effect2(_effects.stun), _effects.stun.action); return 0}
	
	_spells.drain = new GameSpell("DRAIN", BATTLE_MENU_STATE.ACTION, false, 4)
	_spells.drain.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.drain.pp_cost; _target.current_hp -= 2; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; _target.current_pp -= 1; return -2}
	
	
	
	return _spells;
}