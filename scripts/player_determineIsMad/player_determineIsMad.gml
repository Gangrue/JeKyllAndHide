// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_determineIsMad(){
	madTimer-=global.gameSpeed;
	if (madTimer <= 0)
	{
		isMad = !isMad;
		madTimer = (isMad) ? madTimerMax : saneTimerMax;
		boosted = false;
		if (isMad)
		{
			instance_create_depth(x,y,-room_height,ReddenedScreen);
		}
	}
}