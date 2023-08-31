//Resize Grid
var dg = ds_depth;
var in = instance_number(par_depthobject);
ds_grid_resize(dg,2,in);

//Add Instance Info to Grid
var yy = 0; with(par_depthobject){
	dg[# 0,yy] = id;
	dg[# 1,yy] = y;
	yy++;
}

//Sort grid in ascending order
ds_grid_sort(dg,1,true);

//Loop through grid and draw instances
var inst;
yy = 0; repeat(in){
	//pull out ID
	inst = dg[# 0, yy];
	//get instance to draw itself
	with(inst){
		event_perform(ev_draw,0);
	}
	
	yy++;
}