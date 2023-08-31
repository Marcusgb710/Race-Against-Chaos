//inputs

move = keyboard_check(global.key_down) -  keyboard_check(global.key_up);	



y = y + (move * spd);

if ( bbox_bottom > room_height) y = room_height - (sprite_height);
if ( bbox_top < 0) y = 0;

