click = mouse_check_button_pressed(mb_left)


if mouse_x > oYes.x and mouse_x < oYes.x + oYes.sprite_width
	and mouse_y > oYes.y and mouse_y < oYes.y + oYes.sprite_height
{
	x = 150
	y = 200
	draw_self()
	
	if not select
	{
		audio_play_sound(sdMainChange,1,false)
		select = true
	}
	
	if click
	{
		audio_play_sound(sdMainSelect,1,false)
		room_goto(Final)
	}
}

else if mouse_x > oNo.x and mouse_x < oNo.x + oNo.sprite_width
	and mouse_y > oNo.y and mouse_y < oNo.y + oNo.sprite_height
{
	x = 235
	y = 200
	draw_self()
	
	if not select
	{
		audio_play_sound(sdMainChange,1,false)
		select = true
	}
	
	if click
	{
		audio_play_sound(sdMainSelect,1,false)
		game_end()
	}
}
else
{
	select = false
}