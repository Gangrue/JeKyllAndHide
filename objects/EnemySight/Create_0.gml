creator = noone;
image_xscale = 2;
image_yscale = 2;
depth = 199;

myLight = instance_create_depth(x,y,depth,LightFollower);
with(myLight)
{
	creator = other;
	sprite_index = spr_enemySight
}