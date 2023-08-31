// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function exit_game(){
if room == Premenu
{
room_goto_next()
}
else
{
game_end();
}
}