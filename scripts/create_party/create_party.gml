// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_party(_party_list, _spells, _items){
	var _party = []
	
	for(var _i = 0; _i < array_length(_party_list); _i++)
	{
		var _hero = _party_list[_i]
		array_push(_party, new Party(_hero, _spells, _items))
	
	
	}
	return _party
}