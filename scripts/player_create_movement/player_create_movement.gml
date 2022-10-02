// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_create_movement(){
	isMoving = false;
	moveSpd = 4;
	runSpd = moveSpd*1.25;
	Direction = 0;
	canMove = true;
	
	stepTimerMax = 32;
	stepTimer = stepTimerMax;
	
	blurTrailTimerMax = 5;
	blurTrailTimer = blurTrailTimerMax;
}