// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function items(){
	var _items = {}
	_items.tea = new Item("TEA", BATTLE_MENU_STATE.ACTION, true)
	_items.tea.action = function(_target, _caster=undefined){_target.current_hp += 5}
	
	_items.cookie = new Item("COOKIE", BATTLE_MENU_STATE.ACTION, true)
	_items.cookie.action = function(_target, _caster=undefined){_target.current_hp += 7}
	
	_items.chocobar = new Item("CHOCOBAR", BATTLE_MENU_STATE.ACTION, true)
	_items.chocobar.action = function(_target, _caster=undefined){_target.current_hp += 6}
	
	_items.coffee = new Item("COFFEE", BATTLE_MENU_STATE.ACTION, true)
	_items.coffee.action = function(_target, _caster=undefined){_target.current_hp += 7}
	
	return _items;
}