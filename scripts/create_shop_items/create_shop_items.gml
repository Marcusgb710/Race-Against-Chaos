// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_shop_items(item_name_list = ["chocobar", "tea", "bandage"]){
	var _items = items();
	var _shop_items = {}
	var _shop_items_names = struct_get_names(_shop_items);
		
	var _item_names = struct_get_names(_items);
	
	for(var _i=0; _i < array_length(item_name_list); _i++)
	{
		var _item_name = string_lower(item_name_list[_i]);
		
			var _item = _items[$ _item_name]
			
			
		
			if(is_undefined(_item)){
				
				
			randomize();
		
			var _item_index = random_range(0, array_length(_item_names)-1);
			var _random_item_name = _item_names[_item_index];
			_item = _items[$ _random_item_name];
			}
			struct_set(_shop_items, _item_name, _item);
		
		
	}
	
	return _shop_items
}