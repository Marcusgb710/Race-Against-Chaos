





instance_create_depth(0, 0, -9999, obj_inventory, {})
instance_create_depth(0, 0, -9999, obj_debug, {})
instance_create_depth(0, 0, -9888, obj_quest, {})


if room == MistHouse 
{
casual = true;
sprite[RIGHT] = spr_MistyCasualR;
sprite[UP] = spr_MistyCasualU;
sprite[LEFT] = spr_MistyCasualL;
sprite[DOWN] = spr_MistyCasualD;
} else {
casual = false;
}