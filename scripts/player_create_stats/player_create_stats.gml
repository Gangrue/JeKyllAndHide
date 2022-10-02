// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_create_stats(){
	isMad = false;
	isSeen = false;
	saneTimerMax = room_speed*5;
	madTimerMax = room_speed;
	madTimer = saneTimerMax;
	keys = 0;
	gotKeyTimerMax = 16;
	gotKeyTimer = 0;
	removeKeyTimerMax = 16;
	removeKeyTimer = 0;
}