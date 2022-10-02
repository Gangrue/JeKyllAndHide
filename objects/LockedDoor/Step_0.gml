if (distance_to_point(Player.x,Player.y) < unlockDistance)
{
	if (doorsAreAllLocked())
	{
		if (Player.keys > 0)
		{
			Player.keys--;
			audio_play_sound(s_openDoor,999,false);
			Player.removeKeyTimer = Player.removeKeyTimerMax;
			door_unlock();
		}
	}
}