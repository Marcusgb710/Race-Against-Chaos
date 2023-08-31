if x < 0
{
	ga_pscr += 5;
	obj_PongEnemy.y = ystart;
	obj_PongPlayer.y = ystart;
	obj_ball.x = xstart;
	obj_ball.y = ystart;
	randomize();
	hspeed = choose(10, -10);
}
if x > 640
{
	ga_enscr += 5;
	obj_PongEnemy.y = ystart;
	obj_PongPlayer.y = ystart;
	obj_ball.x = xstart;
	obj_ball.y = ystart;
	randomize();
	hspeed = choose(10, -10);
}