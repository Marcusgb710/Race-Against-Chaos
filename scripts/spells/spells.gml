// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spells(_effects){
	var _spells = {}
	///
	///TEST SPELLS
	_spells.flame = new GameSpell("FLAME", BATTLE_MENU_STATE.ACTION, false, 2, _effects.fire)
	
	_spells.flame.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.flame.pp_cost; _target.current_hp -= 9; add_effect(_target, new Effect2(_spells.flame.effect), _spells.flame.effect.action); return -9}
	
	_spells.superheal = new GameSpell("SUPER HEAL", BATTLE_MENU_STATE.ACTION, true, 4, _effects.heal)
	_spells.superheal.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.superheal.pp_cost; _target.current_hp += 12; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; add_effect(_target, new Effect2(_spells.superheal.effect), _spells.superheal.effect.action); return 12}
	
	_spells.freeze = new GameSpell("FREEZE", BATTLE_MENU_STATE.ACTION, false, 1, _effects.stun)
	_spells.freeze.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.freeze.pp_cost;  add_effect(_target, new Effect2(_spells.ice.effect), _spells.ice.effect.action); return 0}
	///
	_spells.hurt = new GameSpell("HURT", BATTLE_MENU_STATE.ACTION, false, 1, undefined)
	_spells.hurt.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.hurt.pp_cost; _target.current_hp -= 4; return -4}
	
	_spells.heal = new GameSpell("HEAL", BATTLE_MENU_STATE.ACTION, true, 2, undefined)
	_spells.heal.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.heal.pp_cost; _target.current_hp += 4; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; return 4}
	
	_spells.stun = new GameSpell("STUN", BATTLE_MENU_STATE.ACTION, false, 3, _effects.stun)
	_spells.stun.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.stun.pp_cost; add_effect(_target, new Effect2(_spells.stun.effect), _spells.stun.effect.action); return 0}
	
	_spells.sleep = new GameSpell("SLEEP", BATTLE_MENU_STATE.ACTION, false, 1, _effects.stun)
	_spells.sleep.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.sleep.pp_cost; add_effect(_target, new Effect2(_spells.sleep.effect), _spells.sleep.effect.action); return 0}
	
	_spells.drain = new GameSpell("DRAIN", BATTLE_MENU_STATE.ACTION, false, 4, undefined)
	_spells.drain.action = function(_target, _caster=undefined){_caster.current_pp -= _spells.drain.pp_cost; _target.current_hp -= 2; if _target.current_hp > _target.max_hp {_target.current_hp=_target.max_hp}; _target.current_pp -= 1; return -2}
	
	
	
	
	return _spells;
}