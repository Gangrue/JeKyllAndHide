if (creator != noone && instance_exists(creator))
{
	x = creator.x;
	y = creator.y;
}
else {
	instance_destroy();
}