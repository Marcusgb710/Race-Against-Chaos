if state == "INIT"
{
	state = "READY"
}

if state == "READY"{
	if attack{
		if(y == startY) y += 2;
		
		attackanimationtimer++;
		
		if attackanimationtimer >= timetillattackanimationends{
			y = startY
			attackanimationtimer = 0;
			attack = false;
		}
	}
}