// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_pathfindToLocation(xLoc, yLoc){
	isMoving = true;
	var mx = (xLoc div 32) * 32;
	var my = (yLoc div 32) * 32;
	if (mp_grid_path(global.grid, path, x, y, mx, my, 1))
	{
		path_start(path,moveSpd, path_action_stop, false);
	}
}