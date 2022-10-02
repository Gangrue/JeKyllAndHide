if (!instance_exists(fadeOutToNextLevelEffect))
{
	var fadeOut = instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffect);
	with(fadeOut)
	{
		target_room = RoomMain;
	}
}
image_speed = 0;
image_index = image_number -1;