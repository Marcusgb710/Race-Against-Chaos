// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Commands() constructor{
	
	
	addparty = function(_member){
		
			var _party = _game.battle_party_data;
			
			var _new_party = [];
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				show_debug_message($"{_member} {_party_member.name}")
				if(!_party_member.in_party && string_lower(_party_member.name) == string_lower(_member)){
					_party_member.in_party = true;
					
					switch(_member){
						case "jon":
						addJon();
						break;	
					}
					
					return $"ADDED {string_upper(_member)}"	
				}
			}
			return "DID NOT ADD ANYONE"
	}
	addparty.arg_count = 1;
	delparty = function(_member){
		
			var _party = _game.battle_party_data;
	
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				if(_party_member.in_party && string_lower(_party_member.name) == string_lower(_member)){_party_member.in_party = false;
					
					switch(_member){
						case "jon":
						delJon();
						break;	
					}
					
					return $"REMOVED {string_upper(_member)}"	
					}
				
			}
			return $"NO ONE WAS REMOVED"
	}
	delparty.arg_count = 1;
	timetick = function(_time){
		
		var _day_cycle = obj_daynnite;
		if(instance_exists(_day_cycle)){
			
		with(obj_daynnite){
			time_source_reconfigure(time_cycle, real(_time), time_source_units_seconds, function(){
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
						
			}
			time_source_start(_day_cycle.time_cycle)
			return $"TIME TICK IS SET TO {_time}"	
	}
		
	return $"COULD NOT SET TIME TICK TO {_time}"	
		
	}
	timetick.arg_count = 1;	
	settime = function(_time){
		
		var _day_cycle = obj_daynnite;
		var _user_time_input = _time
		if(real(_time) > _day_cycle.opacity * 100){_time = _day_cycle.night_time*100 }
		if(instance_exists(_day_cycle)){
			time_source_pause(_day_cycle.time_cycle)
			_day_cycle.opacity = real(_time)*0.01;
			time_source_resume(_day_cycle.time_cycle)
			return $"TIME SET TO {_user_time_input}"
		}
		return "COULD NOT SET THE TIME"
	}
	settime.arg_count = 1;
	additem = function(_args){
			var _items = items();
			var _member = _args[0];
			var _item = _args[1];
			var _party = _game.battle_party_data;
			var _new_party = [];
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				show_debug_message($"{_member} {_party_member.name}")
				if(string_lower(_party_member.name) == string_lower(_member)){
					return add_item(_party_member.inventory, _items, _item) + $" TO {string_upper(_party_member.name)}"
						
				}
			}
		
	}
	additem.arg_count = 1;
	
	delitem = function(_args){
			var _items = items();
			var _member = _args[0];
			var _item = _args[1];
			var _party = _game.battle_party_data;
			var _new_party = [];
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				show_debug_message($"{_member} {_party_member.name}")
				if(string_lower(_party_member.name) == string_lower(_member)){
					return remove_item(_party_member.inventory, _items, _item) + $" FROM {string_upper(_party_member.name)}"
						
				}
			}
		
	}
	delitem.arg_count = 1
	
	resettime = function(){
		var _time_set = settime("0");
		var _tick_set = timetick("120");
		return _time_set + " and " + _tick_set;
	}
	resettime.arg_count = 0
	//function changeroom(_room){
		//switch(_room){
			//case "misty":
				
				//break;
			
		//}
		
	//}

}