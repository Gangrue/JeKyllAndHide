// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function manageMusic(){
	if (room != RoomMain && room != RoomWin && !GameController.muteMusic)
	{
		audio_stop_sound(s_titleMusic);
		if (instance_exists(Player))
		{
			if (!Player.isMad)
			{
				if (!audio_is_playing(s_music))
				{
					audio_play_sound(s_music,0,true);
				}
				if (audio_is_paused(s_music))
				{
					audio_resume_sound(s_music);
				}
			
				if (audio_is_playing(s_manical))
				{
					audio_stop_sound(s_manical)
				}
			}
			else {
				if (!audio_is_paused(s_music))
				{
					audio_pause_sound(s_music);
				}
			
				if (!audio_is_playing(s_manical))
				{
					audio_play_sound(s_manical,0,true);
				}
				if (audio_is_paused(s_manical))
				{
					audio_resume_sound(s_manical);
				}
			}
		}
		else {
			audio_stop_all();
		}
	}
	else if (!GameController.muteMusic) {
		if (room == RoomMain)
		{
			if (!audio_is_playing(s_titleMusic))
			{
				audio_stop_all();
				audio_play_sound(s_titleMusic,1000,true);
			}
		}
	}
	else {
		audio_stop_sound(s_titleMusic);
		audio_stop_sound(s_music);
		audio_stop_sound(s_manical);
	}
	if (GameController.muteSFX)
	{
		audio_stop_all();
	}
}