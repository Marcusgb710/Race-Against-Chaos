if(_quests_[quest_index].completed){quest_index += 1}




current_quest = _quests_[quest_index];


switch(current_quest.meta.type){
	
	case "speech":
		speech_quest(current_quest.id)
		break;
		
	case "battle":
		
		break;
	
	case "room":
		room_quest(current_quest.id, current_quest.meta.room, current_quest.meta.leaving)
		break;
	
	
}





