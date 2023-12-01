

if (control) || Cmove
{
if(can_move){
	right_key = keyboard_check(global.key_right) 
	up_key = keyboard_check(global.key_up) 
	left_key = keyboard_check(global.key_left) 
	down_key = keyboard_check(global.key_down) 
	interactkeypressed = keyboard_check_pressed(vk_space);
	var _m = move_spd
	if right_key+up_key+left_key+down_key == 2 {_m*=lengthdir_x(1, 45)}
	xspd = (right_key - left_key) * _m;
	yspd = (down_key - up_key) * _m;
}

//testing
if(keyboard_check_pressed(ord("L"))){
	//print(get_quest_by_id("q1"));
	
	//if(!is_undefined(_game.last_room_entered)){show_debug_message(room_get_name(_game.last_room_entered))}
}

//interact with push blocks
if interactkeypressed == true
{
	var _checkdir = face * 90;
	
	var _checkx = x + lengthdir_x(interactdist, _checkdir);
	var _checky = y + lengthdir_y(interactdist, _checkdir);
	var _pushblockinst = instance_place(_checkx, _checky, obj_pushblock);
	
	if instance_exists(_pushblockinst) && _pushblockinst.sliding == false
	{
		_pushblockinst.sliding = true;
		_pushblockinst.facedir = face;
	}
}




if place_meeting(x + xspd, y, obj_wall)
{
	xspd = 0;	
}
if place_meeting(x, y + yspd, obj_wall)
{
	yspd = 0;	
}
//Fidgeting

if place_meeting(x + xspd, y, obj_pushblock)
{
	xspd = 0;	
}
if place_meeting(x, y + yspd, obj_pushblock)
{
	yspd = 0;	
}

if place_meeting(x + xspd, y, obj_gate)
{
	xspd = 0;	
}
if place_meeting(x, y + yspd, obj_gate)
{
	yspd = 0;	
}


//set sprite
mask_index = sprite[DOWN];



if yspd == 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};	
	
sprite_index = sprite[face];




x += xspd;
y += yspd;

//animate
if (xspd == 0 && yspd == 0 && Cmove == false)
	{
	image_index = 0;
	}


//update recording
if (x != xprevious || y != yprevious){
	
	for (var i = array_size-1; i > 0; i--){
		
		pos_x[i] = pos_x[i-1];
		pos_y[i] = pos_y[i-1];
		
		torecordsprite[i] = torecordsprite[i-1];
		
		}
	pos_x[0] = x;
	pos_y[0] = y;
	torecordsprite[0] = sprite_index;
	}
	
	
if casual == false
{
sprite[RIGHT] = spr_MistyR;
sprite[UP] = spr_MistyU;
sprite[LEFT] = spr_MistyL;
sprite[DOWN] = spr_MistyD;
}


}
else{image_index = 0}
