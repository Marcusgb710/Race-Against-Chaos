
///@arg array
function create_ds_grid_from_array(arr){

var ds_grid;
var num_quests = array_length(arr);
var array_w = array_length(arr[0]);

ds_grid = ds_grid_create(array_w, num_quests);

var yy = 0; repeat(num_quests){
	var quest_array = arr[yy];
	
	var xx = 0; repeat(array_w){
		ds_grid[# xx, yy] = quest_array[xx];
		xx++;
	}
	
	yy++;
}

return ds_grid;

}