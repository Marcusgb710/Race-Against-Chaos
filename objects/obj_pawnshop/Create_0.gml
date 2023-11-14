/// @description Insert description here
// You can write your code in this editor

image_speed = 0;
true_x = obj_pawnshop.x-37
true_y = obj_pawnshop.y-48
instance_create_depth(0, 0, -99999999, obj_shop, {
	textbox_x:true_x ,
	textbox_y: true_y+sprite_height/2,
	_items: items()});


// Inherit the parent event
event_inherited();

