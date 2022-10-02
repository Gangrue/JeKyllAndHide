image_alpha-=0.025;
if (image_alpha < 0.03)
{
	global.gameSpeed = 1;
	instance_destroy();
}