timer--;
if (timer < 0)
{
	if (!instance_exists(fadeOutToNextLevelEffect))
	{
		instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffect);
	}
	instance_destroy();
}