if (ds_exists(ds_heroes, ds_type_list)){
	ds_list_destroy(ds_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_monstersPS, ds_type_list)){
	ds_list_destroy(ds_monstersPS);
	ds_monstersPS = -1;
}


if (ds_exists(ds_target_heroes, ds_type_list)){
	ds_list_destroy(ds_target_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_target_monstersPS, ds_type_list)){
	ds_list_destroy(ds_target_monstersPS);
	ds_monstersPS = -1;
}

if (ds_exists(ds_psi, ds_type_list)){
	ds_list_destroy(ds_psi);
	ds_psi = -1;
}


