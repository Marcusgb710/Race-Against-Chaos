if (ds_exists(ds_heroes, ds_type_list)){
	ds_list_destroy(ds_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_boss, ds_type_list)){
	ds_list_destroy(ds_boss);
	ds_boss = -1;
}


if (ds_exists(ds_target_heroes, ds_type_list)){
	ds_list_destroy(ds_target_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_target_boss, ds_type_list)){
	ds_list_destroy(ds_target_boss);
	ds_boss = -1;
}

if (ds_exists(ds_psi, ds_type_list)){
	ds_list_destroy(ds_psi);
	ds_psi = -1;
}


