if (isDecay)
{
	decayTimer--;
	image_alpha = decayTimer/decayTimerMax;
	if (decayTimer < 0)
	{
		instance_destroy();
	}
}
else {
	persistent = false;
}