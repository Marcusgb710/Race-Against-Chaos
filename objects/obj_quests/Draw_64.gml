
var str = "";

var i = 0; repeat(ds_quests_num){
	var stage = ds_quests[# 1, i];
	if(stage != -1){
		var array = ds_quests[# 2, i];
		str += "\n"+ds_quests[# 0, i] + ": " + array[stage];
	}
	
	i++;
}

draw_set_font(Gonzobo);
draw_set_color(c_white);
draw_text_transformed(0,0,str,-0.2,-0.2,image_angle);
