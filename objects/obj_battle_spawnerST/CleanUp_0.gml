if (ds_exists(ds_heroes, ds_type_list)){
	ds_list_destroy(ds_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_monstersST, ds_type_list)){
	ds_list_destroy(ds_monstersST);
	ds_monstersST = -1;
}


if (ds_exists(ds_target_heroes, ds_type_list)){
	ds_list_destroy(ds_target_heroes);
	ds_heroes = -1;
}

if (ds_exists(ds_target_monstersST, ds_type_list)){
	ds_list_destroy(ds_target_monstersST);
	ds_monstersST = -1;
}

if (ds_exists(ds_psi, ds_type_list)){
	ds_list_destroy(ds_psi);
	ds_psi = -1;
}


