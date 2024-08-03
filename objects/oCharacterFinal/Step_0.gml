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
	}
}
else
{
	sprite_index = sCharacterFinalJump
}


show_debug_message(yspd)

x += xspd
y += yspd
