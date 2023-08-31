globalvar ga_party, ga_party1, ga_party2, ga_party3, ga_party4, ga_enemies, ga_enemiesST, ga_PSenemies, ga_MCHenemies, ga_bosses, ga_inv;

partycount = 0;

/*

ga_party[partycount, 0] = ""; //Name
ga_party[partycount, 1] = ; //Max HP
ga_party[partycount, 2] = ; //Current HP
ga_party[partycount, 3] = ; //Max PP
ga_party[partycount, 4] = ; //Current PP
ga_party[partycount, 5] = ; //Max Melee Damage
ga_party[partycount, 6] = ; //Knows Heal Spell
ga_party[partycount, 7] = ; //Knows Hurt Spell
ga_party[partycount, 8] = ; //Knows Stun
ga_party[partycount, 9] = ; //Knows Sleep

partycount ++;
*/

ga_party[partycount, 0] = "Misty"; //Name
ga_party[partycount, 1] = 104; //Max HP
ga_party[partycount, 2] = 104; //Current HP
ga_party[partycount, 3] = 25; //Max PP
ga_party[partycount, 4] = 25; //Current PP
ga_party[partycount, 5] = 10; //Max Melee Damage
ga_party[partycount, 6] = true; //Knows Heal Spell
ga_party[partycount, 7] = false; //Knows Hurt Spell
ga_party[partycount, 8] = false; //Knows Stun
ga_party[partycount, 9] = true; //Knows Sleep
ga_party[partycount, 10] = 1; //Level
ga_party[partycount, 11] = 0; //Exp
ga_party[partycount, 12] = 20; //Gold


ga_inv[partycount, 0] = "Tea";
ga_inv[partycount, 1] = "";
ga_inv[partycount, 2] = "";
partycount++;

ga_party[partycount, 0] = "Jon"; //Name
ga_party[partycount, 1] = 124; //Max HP
ga_party[partycount, 2] = 124; //Current HP
ga_party[partycount, 3] = 36; //Max PP
ga_party[partycount, 4] = 36; //Current PP
ga_party[partycount, 5] = 15; //Max Melee Damage
ga_party[partycount, 6] = false; //Knows Heal Spell
ga_party[partycount, 7] = true; //Knows Hurt Spell
ga_party[partycount, 8] = false; //Knows Stun
ga_party[partycount, 9] = true; //Knows Sleep

ga_inv[partycount, 0] = "Cookies";
ga_inv[partycount, 1] = "";
ga_inv[partycount, 2] = "";
partycount++;

ga_party[partycount, 0] = "Kelsi"; //Name
ga_party[partycount, 1] = 116; //Max HP
ga_party[partycount, 2] = 116; //Current HP
ga_party[partycount, 3] = 28; //Max PP
ga_party[partycount, 4] = 28; //Current PP
ga_party[partycount, 5] = 22; //Max Melee Damage
ga_party[partycount, 6] = false; //Knows Heal Spell
ga_party[partycount, 7] = true; //Knows Hurt Spell
ga_party[partycount, 8] = true; //Knows Stun
ga_party[partycount, 9] = true; //Knows Sleep

ga_inv[partycount, 0] = "ChocoBar";
ga_inv[partycount, 1] = "";
ga_inv[partycount, 2] = "";
partycount ++;

ga_party[partycount, 0] = "Cory"; //Name
ga_party[partycount, 1] = 100; //Max HP
ga_party[partycount, 2] = 100; //Current HP
ga_party[partycount, 3] = 20; //Max PP
ga_party[partycount, 4] = 20; //Current PP
ga_party[partycount, 5] = 24; //Max Melee Damage
ga_party[partycount, 6] = false; //Knows Heal Spell
ga_party[partycount, 7] = true; //Knows Hurt Spell
ga_party[partycount, 8] = true; //Knows Stun
ga_party[partycount, 9] = false; //Knows Sleep

ga_inv[partycount, 0] = "Coffee";
ga_inv[partycount, 1] = "";
ga_inv[partycount, 2] = "";
partycount ++;

#region BUNCH OF FIDGETING

party1count = 0;

ga_party1[party1count, 0] = "Misty"; //Name
ga_party1[party1count, 1] = 104; //Max HP
ga_party1[party1count, 2] = 104; //Current HP
ga_party1[party1count, 3] = 25; //Max PP
ga_party1[party1count, 4] = 25; //Current PP
ga_party1[party1count, 5] = 10; //Max Melee Damage
ga_party1[party1count, 6] = true; //Knows Heal Spell
ga_party1[party1count, 7] = false; //Knows Hurt Spell
ga_party1[party1count, 8] = false; //Knows Stun
ga_party1[party1count, 9] = true; //Knows Sleep

ga_inv[party1count, 0] = "Tea";
ga_inv[party1count, 1] = "";
ga_inv[party1count, 2] = "";

party2count = 0;

ga_party2[party2count, 0] = "Misty"; //Name
ga_party2[party2count, 1] = 104; //Max HP
ga_party2[party2count, 2] = 104; //Current HP
ga_party2[party2count, 3] = 25; //Max PP
ga_party2[party2count, 4] = 25; //Current PP
ga_party2[party2count, 5] = 10; //Max Melee Damage
ga_party2[party2count, 6] = true; //Knows Heal Spell
ga_party2[party2count, 7] = false; //Knows Hurt Spell
ga_party2[party2count, 8] = false; //Knows Stun
ga_party2[party2count, 9] = true; //Knows Sleep

ga_inv[party2count, 0] = "Tea";
ga_inv[party2count, 1] = "";
ga_inv[party2count, 2] = "";
party2count++;

ga_party2[party2count, 0] = "Jon"; //Name
ga_party2[party2count, 1] = 124; //Max HP
ga_party2[party2count, 2] = 124; //Current HP
ga_party2[party2count, 3] = 36; //Max PP
ga_party2[party2count, 4] = 36; //Current PP
ga_party2[party2count, 5] = 15; //Max Melee Damage
ga_party2[party2count, 6] = false; //Knows Heal Spell
ga_party2[party2count, 7] = true; //Knows Hurt Spell
ga_party2[party2count, 8] = true; //Knows Stun
ga_party2[party2count, 9] = false; //Knows Sleep

ga_inv[party2count, 0] = "Cookies";
ga_inv[party2count, 1] = "";
ga_inv[party2count, 2] = "";

party3count = 0;

ga_party3[party3count, 0] = "Misty"; //Name
ga_party3[party3count, 1] = 104; //Max HP
ga_party3[party3count, 2] = 104; //Current HP
ga_party3[party3count, 3] = 25; //Max PP
ga_party3[party3count, 4] = 25; //Current PP
ga_party3[party3count, 5] = 10; //Max Melee Damage
ga_party3[party3count, 6] = true; //Knows Heal Spell
ga_party3[party3count, 7] = false; //Knows Hurt Spell
ga_party3[party3count, 8] = false; //Knows Stun
ga_party3[party3count, 9] = true; //Knows Sleep
ga_party3[party3count, 10] = 1; //Level
ga_party3[party3count, 11] = 0; //Exp
ga_party3[party3count, 12] = 20; //Gold


ga_inv[party3count, 0] = "Tea";
ga_inv[party3count, 1] = "";
ga_inv[party3count, 2] = "";
party3count++;

ga_party3[party3count, 0] = "Jon"; //Name
ga_party3[party3count, 1] = 124; //Max HP
ga_party3[party3count, 2] = 124; //Current HP
ga_party3[party3count, 3] = 36; //Max PP
ga_party3[party3count, 4] = 36; //Current PP
ga_party3[party3count, 5] = 15; //Max Melee Damage
ga_party3[party3count, 6] = false; //Knows Heal Spell
ga_party3[party3count, 7] = true; //Knows Hurt Spell
ga_party3[party3count, 8] = false; //Knows Stun
ga_party3[party3count, 9] = true; //Knows Sleep

ga_inv[party3count, 0] = "Cookies";
ga_inv[party3count, 1] = "";
ga_inv[party3count, 2] = "";
party3count++;

ga_party3[party3count, 0] = "Kelsi"; //Name
ga_party3[party3count, 1] = 116; //Max HP
ga_party3[party3count, 2] = 116; //Current HP
ga_party3[party3count, 3] = 28; //Max PP
ga_party3[party3count, 4] = 28; //Current PP
ga_party3[party3count, 5] = 22; //Max Melee Damage
ga_party3[party3count, 6] = false; //Knows Heal Spell
ga_party3[party3count, 7] = true; //Knows Hurt Spell
ga_party3[party3count, 8] = true; //Knows Stun
ga_party3[party3count, 9] = true; //Knows Sleep

ga_inv[party3count, 0] = "ChocoBar";
ga_inv[party3count, 1] = "";
ga_inv[party3count, 2] = "";
//party3count++;


#endregion

enemycount = 0;

ga_enemies[enemycount, 0] = "Meeks"; //Name
ga_enemies[enemycount, 1] = 20; //Max HP
ga_enemies[enemycount, 2] = 20; //Current HP
ga_enemies[enemycount, 3] = 5; //Max PP
ga_enemies[enemycount, 4] = 5; //Current PP
ga_enemies[enemycount, 5] = 5; //Max Melee Damage
ga_enemies[enemycount, 6] = false; //Knows Heal Spell
ga_enemies[enemycount, 7] = false; //Knows Hurt Spell
ga_enemies[enemycount, 8] = true; //Knows Stun
ga_enemies[enemycount, 9] = true; //Knows Sleep
enemycount++;

ga_enemies[enemycount, 0] = "Tinizorpo"; //Name
ga_enemies[enemycount, 1] = 32; //Max HP
ga_enemies[enemycount, 2] = 32; //Current HP
ga_enemies[enemycount, 3] = 8; //Max PP
ga_enemies[enemycount, 4] = 8; //Current PP
ga_enemies[enemycount, 5] = 12; //Max Melee Damage
ga_enemies[enemycount, 6] = false; //Knows Heal Spell
ga_enemies[enemycount, 7] = true; //Knows Hurt Spell
ga_enemies[enemycount, 8] = true; //Knows Stun
ga_enemies[enemycount, 9] = false; //Knows Sleep
enemycount++;

ga_enemies[enemycount, 0] = "Bfishimp"; //Name
ga_enemies[enemycount, 1] = 55; //Max HP
ga_enemies[enemycount, 2] = 55; //Current HP
ga_enemies[enemycount, 3] = 0; //Max PP
ga_enemies[enemycount, 4] = 0; //Current PP
ga_enemies[enemycount, 5] = 15; //Max Melee Damage
ga_enemies[enemycount, 6] = false; //Knows Heal Spell
ga_enemies[enemycount, 7] = false; //Knows Hurt Spell
ga_enemies[enemycount, 8] = false; //Knows Stun
ga_enemies[enemycount, 9] = false; //Knows Sleep
enemycount++;

ga_enemies[enemycount, 0] = "DolphInAShell"; //Name
ga_enemies[enemycount, 1] = 55; //Max HP
ga_enemies[enemycount, 2] = 55; //Current HP
ga_enemies[enemycount, 3] = 2000; //Max PP
ga_enemies[enemycount, 4] = 2000; //Current PP
ga_enemies[enemycount, 5] = 5; //Max Melee Damage
ga_enemies[enemycount, 6] = false; //Knows Heal Spell
ga_enemies[enemycount, 7] = false; //Knows Hurt Spell
ga_enemies[enemycount, 8] = true; //Knows Stun
ga_enemies[enemycount, 9] = false; //Knows Sleep
enemycount++;



STenemycount = 0

ga_enemiesST[STenemycount, 0] = "Flora"; //Name
ga_enemiesST[STenemycount, 1] = 140; //Max HP
ga_enemiesST[STenemycount, 2] = 110; //Current HP
ga_enemiesST[STenemycount, 3] = 50; //Max PP
ga_enemiesST[STenemycount, 4] = 50; //Current PP
ga_enemiesST[STenemycount, 5] = 18; //Max Melee Damage
ga_enemiesST[STenemycount, 6] = false; //Knows Heal Spell
ga_enemiesST[STenemycount, 7] = false; //Knows Hurt Spell
ga_enemiesST[STenemycount, 8] = true; //Knows Stun
ga_enemiesST[STenemycount, 9] = true; //Knows Sleep
STenemycount++;

ga_enemiesST[STenemycount, 0] = "Gun"; //Name
ga_enemiesST[STenemycount, 1] = 75; //Max HP
ga_enemiesST[STenemycount, 2] = 75; //Current HP
ga_enemiesST[STenemycount, 3] = 75; //Max PP
ga_enemiesST[STenemycount, 4] = 75; //Current PP
ga_enemiesST[STenemycount, 5] = 75; //Max Melee Damage
ga_enemiesST[STenemycount, 6] = false; //Knows Heal Spell
ga_enemiesST[STenemycount, 7] = false; //Knows Hurt Spell
ga_enemiesST[STenemycount, 8] = true; //Knows Stun
ga_enemiesST[STenemycount, 9] = false; //Knows Sleep
STenemycount++;

ga_enemiesST[STenemycount, 0] = "Sharky"; //Name
ga_enemiesST[STenemycount, 1] = 50; //Max HP
ga_enemiesST[STenemycount, 2] = 50; //Current HP
ga_enemiesST[STenemycount, 3] = 50; //Max PP
ga_enemiesST[STenemycount, 4] = 50; //Current PP
ga_enemiesST[STenemycount, 5] = 50; //Max Melee Damage
ga_enemiesST[STenemycount, 6] = false; //Knows Heal Spell
ga_enemiesST[STenemycount, 7] = false; //Knows Hurt Spell
ga_enemiesST[STenemycount, 8] = true; //Knows Stun
ga_enemiesST[STenemycount, 9] = false; //Knows Sleep
STenemycount++;

ga_enemiesST[STenemycount, 0] = "Moonplant"; //Name
ga_enemiesST[STenemycount, 1] = 150; //Max HP
ga_enemiesST[STenemycount, 2] = 150; //Current HP
ga_enemiesST[STenemycount, 3] = 50; //Max PP
ga_enemiesST[STenemycount, 4] = 50; //Current PP
ga_enemiesST[STenemycount, 5] = 25; //Max Melee Damage
ga_enemiesST[STenemycount, 6] = false; //Knows Heal Spell
ga_enemiesST[STenemycount, 7] = false; //Knows Hurt Spell
ga_enemiesST[STenemycount, 8] = true; //Knows Stun
ga_enemiesST[STenemycount, 9] = false; //Knows Sleep
//STenemycount++;


PSenemycount = 0;

ga_PSenemies[PSenemycount, 0] = "Haunted Pants"; //Name
ga_PSenemies[PSenemycount, 1] = 250; //Max HP
ga_PSenemies[PSenemycount, 2] = 250; //Current HP
ga_PSenemies[PSenemycount, 3] = 2000; //Max PP
ga_PSenemies[PSenemycount, 4] = 2000; //Current PP
ga_PSenemies[PSenemycount, 5] = 20; //Max Melee Damage
ga_PSenemies[PSenemycount, 6] = false; //Knows Heal Spell
ga_PSenemies[PSenemycount, 7] = false; //Knows Hurt Spell
ga_PSenemies[PSenemycount, 8] = false; //Knows Stun
ga_PSenemies[PSenemycount, 9] = true; //Knows Sleep
ga_PSenemies[PSenemycount, 10] = false; //Knows Drain
PSenemycount++;

ga_PSenemies[PSenemycount, 0] = "Haunted Suit"; //Name
ga_PSenemies[PSenemycount, 1] = 250; //Max HP
ga_PSenemies[PSenemycount, 2] = 250; //Current HP
ga_PSenemies[PSenemycount, 3] = 2000; //Max PP
ga_PSenemies[PSenemycount, 4] = 2000; //Current PP
ga_PSenemies[PSenemycount, 5] = 20; //Max Melee Damage
ga_PSenemies[PSenemycount, 6] = false; //Knows Heal Spell
ga_PSenemies[PSenemycount, 7] = false; //Knows Hurt Spell
ga_PSenemies[PSenemycount, 8] = true; //Knows Stun
ga_PSenemies[PSenemycount, 9] = true; //Knows Sleep
ga_PSenemies[PSenemycount, 10] = true; //Knows Drain
PSenemycount++;

ga_PSenemies[PSenemycount, 0] = "Crooked Wizard"; //Name
ga_PSenemies[PSenemycount, 1] = 270; //Max HP
ga_PSenemies[PSenemycount, 2] = 270; //Current HP
ga_PSenemies[PSenemycount, 3] = 2000; //Max PP
ga_PSenemies[PSenemycount, 4] = 2000; //Current PP
ga_PSenemies[PSenemycount, 5] = 16; //Max Melee Damage
ga_PSenemies[PSenemycount, 6] = false; //Knows Heal Spell
ga_PSenemies[PSenemycount, 7] = false; //Knows Hurt Spell
ga_PSenemies[PSenemycount, 8] = true; //Knows Stun
ga_PSenemies[PSenemycount, 9] = true; //Knows Sleep
ga_PSenemies[PSenemycount, 10] = true; //Knows Drain
//PSenemycount++;

MCHenemycount = 0;

ga_MCHenemies[MCHenemycount, 0] = "Moppy"; //Name
ga_MCHenemies[MCHenemycount, 1] = 300; //Max HP
ga_MCHenemies[MCHenemycount, 2] = 300; //Current HP
ga_MCHenemies[MCHenemycount, 3] = 2000; //Max PP
ga_MCHenemies[MCHenemycount, 4] = 2000; //Current PP
ga_MCHenemies[MCHenemycount, 5] = 40; //Max Melee Damage
ga_MCHenemies[MCHenemycount, 6] = false; //Knows Heal Spell
ga_MCHenemies[MCHenemycount, 7] = false; //Knows Hurt Spell
ga_MCHenemies[MCHenemycount, 8] = true; //Knows Stun
ga_MCHenemies[MCHenemycount, 9] = false; //Knows Sleep
ga_MCHenemies[MCHenemycount, 10] = false; //Knows Drain
MCHenemycount++;

ga_MCHenemies[MCHenemycount, 0] = "Roomba"; //Name
ga_MCHenemies[MCHenemycount, 1] = 320; //Max HP
ga_MCHenemies[MCHenemycount, 2] = 320; //Current HP
ga_MCHenemies[MCHenemycount, 3] = 2000; //Max PP
ga_MCHenemies[MCHenemycount, 4] = 2000; //Current PP
ga_MCHenemies[MCHenemycount, 5] = 40; //Max Melee Damage
ga_MCHenemies[MCHenemycount, 6] = false; //Knows Heal Spell
ga_MCHenemies[MCHenemycount, 7] = false; //Knows Hurt Spell
ga_MCHenemies[MCHenemycount, 8] = true; //Knows Stun
ga_MCHenemies[MCHenemycount, 9] = false; //Knows Sleep
ga_MCHenemies[MCHenemycount, 10] = true; //Knows Drain
MCHenemycount++;

ga_MCHenemies[MCHenemycount, 0] = "Washy"; //Name
ga_MCHenemies[MCHenemycount, 1] = 280; //Max HP
ga_MCHenemies[MCHenemycount, 2] = 280; //Current HP
ga_MCHenemies[MCHenemycount, 3] = 2000; //Max PP
ga_MCHenemies[MCHenemycount, 4] = 2000; //Current PP
ga_MCHenemies[MCHenemycount, 5] = 60; //Max Melee Damage
ga_MCHenemies[MCHenemycount, 6] = false; //Knows Heal Spell
ga_MCHenemies[MCHenemycount, 7] = false; //Knows Hurt Spell
ga_MCHenemies[MCHenemycount, 8] = true; //Knows Stun
ga_MCHenemies[MCHenemycount, 9] = false; //Knows Sleep
ga_MCHenemies[MCHenemycount, 10] = true; //Knows Drain
//MCHenemycount++;


bosscount = 0;

ga_bosses[bosscount, 0] = "Edgar"; //Name
ga_bosses[bosscount, 1] = 100; //Max HP
ga_bosses[bosscount, 2] = 100; //Current HP
ga_bosses[bosscount, 3] = 0; //Max PP
ga_bosses[bosscount, 4] = 0; //Current PP
ga_bosses[bosscount, 5] = 10; //Max Melee Damage
ga_bosses[bosscount, 6] = false; //Knows Heal Spell
ga_bosses[bosscount, 7] = false; //Knows Hurt Spell
ga_bosses[bosscount, 8] = false; //Knows Stun
ga_bosses[bosscount, 9] = false; //Knows Sleep
bosscount++;

ga_bosses[bosscount, 0] = "Edgar NEO"; //Name
ga_bosses[bosscount, 1] = 210; //Max HP
ga_bosses[bosscount, 2] = 210; //Current HP
ga_bosses[bosscount, 3] = 0; //Max PP
ga_bosses[bosscount, 4] = 0; //Current PP
ga_bosses[bosscount, 5] = 50; //Max Melee Damage
ga_bosses[bosscount, 6] = false; //Knows Heal Spell
ga_bosses[bosscount, 7] = false; //Knows Hurt Spell
ga_bosses[bosscount, 8] = true; //Knows Stun
ga_bosses[bosscount, 9] = false; //Knows Sleep
//bosscount++;

