// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kill(objectToKill){
	direction = other.direction;
	var theCorpse = instance_create_depth(objectToKill.x,objectToKill.y,depth,EnemyCorpse);
	with(theCorpse)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
		direction = other.direction;
	}
	for(var i=0; i<8; i++)
	{
		var theSplat = instance_create_depth(objectToKill.x+random(16)-8,objectToKill.y+random(16)-8,depth,bloodParticle);
		with(theCorpse)
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
	}
	
	for(var i=0; i<8; i++)
	{
		var theSplat = instance_create_depth(objectToKill.x+random(16)-8,objectToKill.y+random(16)-8,depth,bloodParticle);
		with(theCorpse)
		{
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
	}
	audio_play_sound(s_kill,1000,false);
	instance_destroy(objectToKill);
}