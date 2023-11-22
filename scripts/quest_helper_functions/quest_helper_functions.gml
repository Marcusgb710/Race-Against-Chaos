// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function complete_quest(_id){
	var _last_completed = false;
	if(_idx >= 1 && _game.quests[_idx-1].completed){_last_completed = true}
	if(!_game.quests[_idx].completed && _last_completed){_game.quests[_idx].completed = true}
	
}
function start_quest(_id){
	if(_game.quests[_idx].completed){_game.quests[_idx].completed = false}
	
}

function get_quest_by_id(_id){
	for(var _i=0; _i < array_length(_game.quests); _i++){
		var _quest = _game.quests[_i];
		if(_quest.id == _id){
			
			return _quest;
		}
	}
	
}
function get_current_quest(){
	show_debug_message(_game.quests[obj_quest.quest_index])
}

function room_quest(_id, _room, leaving=false){
	var _quest = get_quest_by_id(_id);
	
	if(leaving){ 
		if(_game.last_room_entered == _room)
		_quest.completed = true;
		return}
	
	if(_room == _game.room){_quest.completed = true;}
}

function speech_quest(_id){
	var _quest = get_quest_by_id(_id);
	
	if(_quest.meta.done){
		_quest.completed = true;
	}
}

function battle_quest(){
	
}