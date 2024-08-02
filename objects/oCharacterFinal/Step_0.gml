left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)

xspd = (right - left) * 1.5
yspd += grav

if place_meeting(x + xspd, y, oCollision) {
    xspd = 0
}

if place_meeting(x, y + yspd,oCollision)
{
	yspd = 0
	if jump 
	{
		yspd = jspd
	}
}

x += xspd
y += yspd
