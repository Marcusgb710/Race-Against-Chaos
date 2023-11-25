// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function items(){
	var _items = {}
	_items.tea = new Item("TEA", BATTLE_MENU_STATE.ACTION, true, spr_tea, 200)
	_items.tea.action = function(_target, _caster=undefined){_target.current_hp += 25}
	
	_items.cookie = new Item("COOKIE", BATTLE_MENU_STATE.ACTION, true, spr_cookie, 100)
	_items.cookie.action = function(_target, _caster=undefined){_target.current_hp += 15}
	
	_items.chocobar = new Item("CHOCOBAR", BATTLE_MENU_STATE.ACTION, true, spr_chocobar, 150)
	_items.chocobar.action = function(_target, _caster=undefined){_target.current_hp += 20}
	
	_items.coffee = new Item("COFFEE", BATTLE_MENU_STATE.ACTION, true, spr_coffee, 200)
	_items.coffee.action = function(_target, _caster=undefined){_target.current_hp += 25}
	
	_items.popcorn = new Item("POPCORN", BATTLE_MENU_STATE.ACTION, true, spr_popcorn, 300)
	_items.popcorn.action = function(_target, _caster=undefined){_target.current_hp += 30}
	
	_items.bandage = new Item("BANDAGE", BATTLE_MENU_STATE.ACTION, true, spr_bandage, 50)
	_items.bandage.action = function(_target, _caster=undefined){_target.current_hp += 10}
	
	_items.muffin = new Item("MUFFIN", BATTLE_MENU_STATE.ACTION, true, spr_muffin, 200)
	_items.muffin.action = function(_target, _caster=undefined){_target.current_hp += 18}
	
	_items.cinnabun = new Item("CINNABUN", BATTLE_MENU_STATE.ACTION, true, spr_cinnabun, 400)
	_items.cinnabun.action = function(_target, _caster=undefined){_target.current_hp += 40}
	return _items;
}