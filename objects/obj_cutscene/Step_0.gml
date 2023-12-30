
switch(len){
	
case 0: script_execute(current_scene[0]); break;
case 1: script_execute(current_scene[0], current_scene[1]); break;
case 2: script_execute(current_scene[0], current_scene[1], current_scene[2]); break;
case 3: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3]); break;
case 4: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3], current_scene[4]); break;
case 5: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3], current_scene[4], current_scene[5]); break;
case 6: script_execute(current_scene[0], current_scene[1], current_scene[2], current_scene[3], current_scene[4], current_scene[5], current_scene[6]); break;

}


if(current_scene == scene_info[_len(scene_info)-1]){
	print("penis", current_scene)
	if(!is_undefined(_battle)){
		cutscene_spawn_battle(_battle)
		_battle = undefined
	}
	
}