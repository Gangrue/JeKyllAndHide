if (creator != noone && instance_exists(creator))
{
	x = creator.x;
	y = creator.y;
	direction = creator.direction;
	image_angle = direction;
}
else {
	instance_destroy();
}