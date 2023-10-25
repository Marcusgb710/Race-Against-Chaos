// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_item(_inventory, _items, _item){
	var _inventory_size = array_length(_inventory)
	if(_inventory_size >= 10){show_debug_message("INVENTORY IS FULL CANNOT ADD ITEM") return}

	var __item = string_lower(string_letters(_item))
	if(variable_struct_exists(_items, __item))
	{
		array_push(_inventory, 	_items[$ __item]);
		return
	}
	show_debug_message("ITEM DOES NOT EXIST")
}

function remove_item(_inventory, _items, _item){
	var _inventory_size = array_length(_inventory)
	if(_inventory_size <= 0){show_debug_message("INVENTORY IS EMPTY CANNOT ADD ITEM") return}

	var __item = string_lower(string_letters(_item))
	if(variable_struct_exists(_items, __item))
	{
		for(var _i = 0; _i < _inventory_size; _i++){
			var _inv_item = _inventory[_i];	
			if(string_lower(string_letters(_inv_item.name)) == __item)
			{
				array_delete(_inventory, _i, 1)
				break;
			}
			
		}
		return
	}
	show_debug_message("ITEM DOES NOT EXIST")
	
	
}