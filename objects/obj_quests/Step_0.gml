
var grid = ds_quests;

var i = 0; repeat(ds_quests_num){
	switch(i){
		#region Find Cory
		case quest.find_cory:
		
			switch(grid[# 1, i]){
				case -1: break;
				
				case 0:
				
				grid[# 1, i] += 1;
				
				break;
				
			}
		
		break;
		#endregion
		
		#region Get Coffee For Cory
		case quest.get_coffee:
		
		break;
		#endregion
		
		#region Find Jon
		case quest.find_jon:
		
		break;
		#endregion
		
	}

	i++;
}