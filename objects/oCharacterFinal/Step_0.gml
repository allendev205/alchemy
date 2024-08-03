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


show_debug_message(yspd)

x += xspd
y += yspd
