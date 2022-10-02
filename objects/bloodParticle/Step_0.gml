z += grav;
grav += grav_speed;
if (z > 0)
{
	var theSplat = instance_create_depth(x,y,depth,bloodSplat);
	with(theSplat)
	{
		direction = other.direction;
		image_angle = other.direction;
	}
	instance_destroy();
}