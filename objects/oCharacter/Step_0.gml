var deltatime = delta_time / 18000;
if not oInventory.open
{
	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))

	xspd = (right - left)
	yspd = (down - up)

	if xspd != 0 or yspd != 0
	{
		sprite_index = sCharacter_Move
		if xspd != 0
		{
			image_xscale = sign(xspd)
		}
	}
	else
	{
		sprite_index = sCharacter_Idle
	}

	if place_meeting(x + xspd,y,oCollision)
	{
		xspd = 0
	}
	if place_meeting(x,y+yspd,oCollision)
	{
		yspd = 0
	}
	
	if (xspd != 0 or yspd != 0) and not audio_is_playing(sdWalk)
	{
		audio_play_sound(sdWalk,1,true)
		audio_sound_pitch(sdWalk,0.7)
	}
	else if xspd == 0 and yspd == 0
	{
		audio_stop_sound(sdWalk)
	}
	x += xspd * deltatime
	y += yspd * deltatime
}