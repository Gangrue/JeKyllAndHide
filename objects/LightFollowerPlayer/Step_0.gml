if (creator != noone && instance_exists(creator))
{
	x = creator.x;
	y = creator.y;
	image_xscale = 1;
	image_yscale = 1;
	image_angle = creator.direction;
}
else {
	instance_destroy();
}