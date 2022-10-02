if (!instance_exists(fadeOutToNextLevelEffectText))
{
	instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffectText);
}
image_speed = 0;
image_index = image_number - 1;