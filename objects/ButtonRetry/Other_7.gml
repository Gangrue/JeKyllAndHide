if (!instance_exists(fadeOutToNextLevelEffect))
{
	var fadeOut = instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffect);
	with(fadeOut)
	{
		global.gameSpeed = 1;
		
		target_room = room;
	}
}
image_speed = 0;
image_index = image_number -1;