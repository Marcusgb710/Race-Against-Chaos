state = "INIT";

randomize();
MAX_MONSTER_GROUPS = 1;
MAX_MONSTERS_PER_GROUP = 1;

a_monster_pos[0, 0] = 144; //Group X
a_monster_pos[0, 1] = 112; //Group Y

ds_heroes = -1;
ds_boss = -1;
ds_target_boss = -1;
ds_target_heroes = -1;
ds_psi = -1;

//Create Menu Array
a_menu[0] = "ATTACK";
a_menu[1] = "PSI";
a_menu[2] = "ITEM";
a_menu[3] = "DEFEND";

//Create Spell Text Array
a_spells_text[6] = "HEAL";
a_spells_text[7] = "HURT";
a_spells_text[8] = "STUN";
a_spells_text[9] = "SLEEP";

fade = 50;