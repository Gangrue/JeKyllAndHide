if (creator != noone && instance_exists(creator))
{
	x = creator.x;
	y = creator.y;
	image_xscale = creator.image_xscale;
	image_yscale = creator.image_yscale;
	image_angle = creator.direction;
}
else {
	instance_destroy();
}