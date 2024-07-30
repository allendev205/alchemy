if not oInventory.open
{
	up = keyboard_check(ord("W"))
	down = keyboard_check(ord("S"))
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))

	xspd = (right - left)
	yspd = (down - up)

	if place_meeting(x + xspd,y,oCollision)
	{
		xspd = 0
	}
	if place_meeting(x,y+yspd,oCollision)
	{
		yspd = 0
	}

	x += xspd
	y += yspd
}