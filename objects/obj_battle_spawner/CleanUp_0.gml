if (ds_exists(ds_heroes, ds_type_list)){
	ds_list_destroy(ds_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_monsters, ds_type_list)){
	ds_list_destroy(ds_monsters);
	ds_monsters = -1;
}


if (ds_exists(ds_target_heroes, ds_type_list)){
	ds_list_destroy(ds_target_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_target_monsters, ds_type_list)){
	ds_list_destroy(ds_target_monsters);
	ds_monsters = -1;
}

if (ds_exists(ds_psi, ds_type_list)){
	ds_list_destroy(ds_psi);
	ds_psi = -1;
}


