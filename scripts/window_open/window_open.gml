// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function window_open(){
	return (obj_debug.show || obj_inventory.show || obj_shop.show)
}