if not oInventory.open 
{
	instance_destroy()
}

if mouse_x > x and mouse_x < sprite_width + x and mouse_y > y and mouse_y < sprite_height + y
{
	if MouseClick()
	{
		oInventory.slot = 1
		oInventory.slot_change = true
		audio_play_sound(sdChangeInventory,1,false)
	}
}