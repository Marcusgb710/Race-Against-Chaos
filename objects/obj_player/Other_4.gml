


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


if room == Jamesoak_West
{
rain = true;
sprite[RIGHT] = spr_MistyRainR;
sprite[UP] = spr_MistyRainU;
sprite[LEFT] = spr_MistyRainL;
sprite[DOWN] = spr_MistyRainD;
sprite[SURP] = spr_MistyRainSurprise;
} else {
rain = false;
}
