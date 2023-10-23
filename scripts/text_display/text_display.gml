// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function text_display(_txt){
	var _txts = []
	
	if(string_length(_txt) > 25)
	{
		var _space_pos = string_pos_ext(" ", _txt, 25)
		_txts[0] = string_copy(_txt, 1, _space_pos)
		_txts[1] = string_copy(_txt, _space_pos, string_length(_txt))
		return _txts
	}
	
	
	return [_txt]

}