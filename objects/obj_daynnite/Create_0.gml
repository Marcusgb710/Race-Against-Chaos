/// @description Insert description here
// You can write your code in this editor
depth = -9998
opacity = 0

night_time = 0.6
night = false;
night_color = c_black

time_tick = 120


time_cycle = time_source_create(time_source_game, time_tick, time_source_units_seconds, function(obj){
	
	if(night_time > 0.6){
		night_time = 0.6;
	}
	if(opacity < 0 || opacity > night_time){
			night = !night;
		}
	if(night){
		
		opacity -= 0.05;
		return;
	}
	
	opacity += 0.05;}, [], -1, time_source_expire_after)

time_source_start(time_cycle)








