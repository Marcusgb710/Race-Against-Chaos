// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Commands() constructor{
	
	function get_member(_member){
		var _party_member_to_get;
		switch(_member){
			case PARTY.MISTY:
				_party_member_to_get = "misty"
				break;
				
			case PARTY.JON:
				_party_member_to_get = "jon"
				break;
				
			case PARTY.KELSI:
				_party_member_to_get = "kelsi"
				break;
				
			case PARTY.CORY:
				_party_member_to_get = "cory"
				break;
		}
			return _party_member_to_get;
	}
	
	
	
	function addparty(_member){
		
			var _party = _game.battle_party_data;
			var _new_party = [];
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				show_debug_message($"{_member} {_party_member.name}")
				if(!_party_member.in_party && string_lower(_party_member.name) == string_lower(_member)){
					_party_member.in_party = true;
					return $"ADDED {_member}"	
				}
			}
			return "DID NOT ADD ANYONE"
	}
	
	function delparty(_member){
		
			var _party = _game.battle_party_data;
	
			for(var _i = 0; _i < array_length(_party); _i ++)
			{
				var _party_member = _party[_i];
				if(_party_member.in_party && string_lower(_party_member.name) == string_lower(_member)){_party_member.in_party = false;
					return $"REMOVED {_member}"	
					}
				
			}
			return $"NO ONE WAS REMOVED"
	}
	
	function timetick(_time){
		
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
		
		
		
	
	function settime(_time){
		
		var _day_cycle = obj_daynnite;
		if(real(_time) > _day_cycle.opacity * 100){_time = _day_cycle.night_time*100 }
		if(instance_exists(_day_cycle)){
			time_source_pause(_day_cycle.time_cycle)
			_day_cycle.opacity = real(_time)*0.01;
			time_source_resume(_day_cycle.time_cycle)
			return $"TIME SET TO {_time}"
		}
		return "COULD NOT SET THE TIME"
	}
	
	
	
}