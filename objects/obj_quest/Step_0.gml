if(_quests_[quest_index].completed){quest_index += 1}



current_quest = _quests_[quest_index];

switch(quest_index){
	case 0:
		if(room != MistHouse){current_quest.completed = true;}
		break;
	case 1:
		if(room == Bar){current_quest.completed = true;}
	
}





