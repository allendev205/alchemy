if not opened
{
	if !instance_exists(oKey) and oFridge.x > 125
	{
		image_index = 1
		audio_play_sound(sdDoorOpen,1,false)
		opened = true
	}
}
