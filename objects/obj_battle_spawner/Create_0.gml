state = "INIT";

randomize();
MAX_MONSTER_GROUPS = 3;
MAX_MONSTERS_PER_GROUP = 1;

a_monster_pos[0, 0] = 144; //Group X
a_monster_pos[0, 1] = 112; //Group Y

a_monster_pos[1, 0] = 48; //Group X
a_monster_pos[1, 1] = 112; //Group Y

a_monster_pos[2, 0] = 240; //Group X
a_monster_pos[2, 1] = 112; //Group Y

ds_heroes = -1;
ds_monsters = -1;
ds_target_monsters = -1;
ds_target_heroes = -1;
ds_psi = -1;

//Create Menu Array
a_menu[0] = "ATTACK";
a_menu[1] = "PSI";
a_menu[2] = "ITEM";
a_menu[3] = "DEFEND";
a_menu[4] = "FLEE";

//Create Spell Text Array
a_spells_text[6] = "HEAL";
a_spells_text[7] = "HURT";
a_spells_text[8] = "STUN";
a_spells_text[9] = "SLEEP";

	instance_destroy(obj_player);
	if instance_exists(obj_follower3)
	{
		instance_destroy(obj_follower3)
	}
	if instance_exists(obj_follower2)
	{
		instance_destroy(obj_follower2)
	}
	if instance_exists(obj_follower)
	{
		instance_destroy(obj_follower)
	}
