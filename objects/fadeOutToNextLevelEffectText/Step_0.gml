image_alpha+=0.025;
if (image_alpha > 0.95)
{
	instance_create_depth(x,y,depth,fadeInToNextLevelEffectText);
	if (target_room == undefined)
	{
		if (room_next(room) != -1)
		{
			room_goto_next();
		}
		else {
			room_goto(RoomWin);
		}
	}
	else {
		room_goto(target_room);
	}
	instance_destroy();
}