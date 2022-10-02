if (keyboard_check_pressed(vk_f4))
{
	window_set_fullscreen(!window_get_fullscreen());
}

if (keyboard_check_pressed(vk_escape))
{
	game_end();
}

if (keyboard_check_pressed(ord("R")))
{
	if (!instance_exists(fadeOutToNextLevelEffect))
	{
		var fadeOut = instance_create_depth(x,y,-room_height,fadeOutToNextLevelEffect);
		with(fadeOut)
		{
			target_room = room;
		}
	}
}

manageMusic();