// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GameSpell(_name, _type, _friendly, _pp_cost, _effect): Action(_name, _type, _friendly) constructor{
	pp_cost = _pp_cost;
	effect = _effect;
}