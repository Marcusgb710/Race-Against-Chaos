timer++;

if timer >= timetill
{
 y--;
 alpha -= 0.25;
 timer = 0;
}

if alpha <= 0 instance_destroy();