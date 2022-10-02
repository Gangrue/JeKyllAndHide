// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerLostScreen(theMessage){
	global.gameSpeed = 0.1;
	if (!instance_exists(screenText))
	{
		audio_play_sound(s_death,2000,false);
		with(instance_create_depth(Player.x,Player.y,-room_height,screenText))
		{
			text = theMessage;
		}
		
		instance_create_depth(Player.x,Player.y,-room_height, ButtonMainMenu);
		instance_create_depth(Player.x,Player.y,-room_height, ButtonRetry);
		instance_create_depth(Player.x,Player.y,-room_height, DarkenedScreen);
	}
}