if (!instance_exists(fadeOutToNextLevelEffect))
{
	instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffect);
}
image_speed = 0;
image_index = image_number - 1;