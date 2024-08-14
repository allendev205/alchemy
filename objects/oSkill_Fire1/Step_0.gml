if image_index < 5
{
	image_speed = 0.75
}
else
{
	image_speed = 1
	if not audio_is_playing(sdFire1)
	{
		audio_play_sound(sdFire1,1,false)
	}
}