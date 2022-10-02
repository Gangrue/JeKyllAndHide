depth = -y;
if (z > 0)
{
	z = 0;
	grav = 0;
	grav_speed = 0;
	image_index = 1;
	Speed = 0;
}
else {
	z+=grav;
	grav+=grav_speed;
	var xDist = lengthdir_x(Speed, direction);
	var yDist = lengthdir_y(Speed, direction);
	move(xDist,yDist);
}