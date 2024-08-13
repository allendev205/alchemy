if (mouse_x > x and mouse_x < x + sprite_get_width(sInventory_icon) and
    mouse_y > y and mouse_y < y + sprite_get_height(sInventory_icon))
{
	if (room == Basement and oMagicCircle.trigger == false) or room == House
	{
		if room == Basement and oMagicCircle.pass
		{
			//cant open inventory
		}
		else
		{
			click = mouse_check_button_pressed(mb_left)
			if click
			{
				oInventory.open = !oInventory.open
				if oInventory.open == true
				{
					audio_play_sound(sdOpenInventory,1,false)
				}
				else
				{
					audio_play_sound(sdCloseInventory,1,false)
				}
		
			}
		}
	}
}
