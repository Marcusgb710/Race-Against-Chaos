#region GLOBAL

function cutscene_end_action(){
	scene++;	
	if(scene > array_length(scene_info)-1){
		instance_destroy();
		exit;
	}
	
	event_perform(ev_other, ev_user0);
}

///@arg seconds
function cutscene_wait(sec){

timer++;

if(timer >= sec * room_speed)
	{
	timer = 0;
	cutscene_end_action();
	}

}

///@arg target_rm
function cutscene_spawn_battle(trm){

	save_game(2);
	var inst = instance_create_depth(0,0,-10000,obj_battransition);
	inst.target_rm = trm;
	cutscene_end_action();
	
}

///@arg object
///@arg variable
///@arg value
function cutscene_change_variable(obj_, var_, val){
	with (obj_)
	{
		variable_instance_set(id, var_, val)	
	}
	cutscene_end_action();
	
}

#endregion

#region SOUND

///@arg soundid
///@arg priority
///@arg loops
function cutscene_play_sound(sid, pri, loo){
	
	audio_play_sound(sid,pri,loo);
	cutscene_end_action();
	
}

///@arg soundid
function cutscene_stop_sound(sid){
	
	audio_stop_sound(sid);
	cutscene_end_action();
}
	
///@arg soundid
function cutscene_pause_sound(sid){
	audio_sound_gain(sid,0,100)
	if audio_sound_get_gain(sid) <= 0
	{
	audio_pause_sound(sid);
	cutscene_end_action();
	}
}

///@arg soundid
function cutscene_quick_pause(sid){
	audio_pause_sound(sid);
	cutscene_end_action();
}


///@arg soundid
function cutscene_resume_sound(sid){
	
	audio_resume_sound(sid);
	audio_sound_gain(sid,50,100)
	if audio_sound_get_gain(sid) >= 50
	{
	cutscene_end_action();
	}
}

///@arg soundid
function cutscene_quick_resume(sid){
	
	audio_resume_sound(sid);
	cutscene_end_action();
}

#endregion

#region INSTANCES

///@arg x
///@arg y
///@arg layer_id
///@arg obj
function cutscene_instance_create(xx,yy,lid,obj){
	
var inst = instance_create_layer(xx,yy,lid,obj);

cutscene_end_action();

return inst;
	
}
	
///@arg x
///@arg y
///@arg obj_id
function cutscene_instance_destroy(xx,yy,objid){
	
var inst = instance_nearest(xx,yy,objid);

instance_destroy(inst);

cutscene_end_action();
	
}
	
	
///@arg obj_id
///@arg image_xscale
function cutscene_change_xscale(objid, xsc = -objid.image_xscale){
	with(objid){
	image_xscale = xsc;
	}
	cutscene_end_action();
}
	
///@arg obj
///@arg x
///@arg y
///@arg relative?
///@arg spd
function cutscene_move_char(obj,xx,yy,rel,spd){
	
	if(x_dest == -1){
	if(!rel){
		x_dest = xx;
		y_dest = yy;	
	}else{
		x_dest = obj.x + xx;
		y_dest = obj.y + yy;
	}
		
	}
	
	var xd = x_dest;
	var yd = y_dest;
	
	with(obj){
		Cmove = true
		
		if(point_distance(x,y,xd,yd) >= spd){
		var dir = point_direction(x,y,xd,yd);
		var ldirx = lengthdir_x(spd, dir);
		var ldiry = lengthdir_y(spd, dir);
		
		x += ldirx;
		y += ldiry;
	}else{
		Cmove = false
		x = xd;
		y = yd;
		
		with(other){
			x_dest = -1;
			y_dest = -1;
			cutscene_end_action();
		}
	}
	}
	
	
}

///@arg obj
///@arg sprite
function cutscene_change_sprite_index(obj, spr){
	obj.sprite_index = spr
	cutscene_end_action();
}

///@arg obj
///@arg sprite_id
///@arg moving?
function cutscene_change_face(obj, sprid, mov = false){
	obj.face = sprid
	
	if mov == true
	{
	obj.Cmove = true;	
	}
	else
	{
	obj.Cmove = false;	
	}
	
	cutscene_end_action();
}
	
///@arg obj
///@arg img_spd
function cutscene_change_image_speed(obj, imgspd){
	obj.image_speed = imgspd
	cutscene_end_action();
}

#endregion

///@arg string
function cutscene_create_textbox(str){

text_id = str;

if global.dialoguerunning == false{
	create_textbox_v2(string_lower(text_id))
	//create_textbox(text_id);
	global.dialoguerunning = true;
	}
	
if !instance_exists(obj_textbox_v2){
	cutscene_end_action();
	global.dialoguerunning = false;
	}

}

//Debug purposes
function create_box_at_mouse(){
	
	if(mouse_check_button_pressed(mb_left)){
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_boombox);	
	cutscene_end_action();
		
	}
	
}

///@arg scene_info
function create_cutscene(scinfo){
	
	var inst = instance_create_layer(0,0,"Instances", obj_cutscene);
	with(inst){
		scene_info = scinfo;	
		event_perform(ev_other, ev_user0);
	}
}

