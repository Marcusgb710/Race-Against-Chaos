// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_party_count(_party){
	var _party_count = 0;
	for(var _i=0; _i < array_length(_party); _i++){if(_party[_i].in_party){_party_count += 1}}
	return _party_count;
}