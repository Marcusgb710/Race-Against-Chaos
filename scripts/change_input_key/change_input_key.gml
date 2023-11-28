// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function change_input_key(){
	if _element.select_key != vk_nokey {
		_element.key = _element.select_key
	}
}