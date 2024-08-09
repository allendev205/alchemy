left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)
shoot = keyboard_check(ord("F"))

xspd = (right - left) * 1.5
yspd += grav

if xspd != 0
{
	sprite_index = sCharacterFinalRun
	image_xscale = sign(xspd)
}
else
{
	sprite_index = sCharacterFinal
}
if place_meeting(x + xspd, y, oCollision) {
    xspd = 0
}

if place_meeting(x, y + yspd,oCollision)
{
	yspd = 0
	if jump 
	{
		yspd = jspd
	}else if shoot
	{
		sprite_index = sCharacterFinalShoot
		if cooldown < 0
		{
			if oCharacterBar.ammo > 0
			{
				if image_xscale == 1
				{
					var ammo = instance_create_layer(x+30,y-35,"ammo",oShootingAmmo)
				}
				else
				{
					var ammo = instance_create_layer(x-30,y-35,"ammo",oShootingAmmo)
					ammo.image_xscale = image_xscale
				}
				ammo.dir = image_xscale
				audio_play_sound(sdShoot,1,false)
				
				oCharacterBar.ammo -= 1
			}
			else
			{
				if not audio_exists(sdReload)
				{
					if not reloading
					{
						audio_play_sound(sdReload,1,false)
						reloading = true
					}
					else
					{
						oCharacterBar.ammo = 8
					}
				}
			}
			
			cooldown = 20	
		}
		else
		{
			cooldown -= 1
		}
	}
}
else
{
	sprite_index = sCharacterFinalJump
}

if xspd != 0 and not audio_is_playing(sdWalkOnGrass)
{
	audio_play_sound(sdWalkOnGrass,1,true)
	audio_sound_pitch(sdWalkOnGrass,2)
}
else if xspd == 0 or yspd != 0
{
	audio_pause_sound(sdWalkOnGrass)
}
else if xspd != 0 and audio_is_paused(sdWalkOnGrass)
{
	audio_resume_sound(sdWalkOnGrass)
}

x += xspd
y += yspd
