if place_meeting(x,y+vspeed,oCollision)
{
	gravity = 0
	vspeed = 0
}
xspd = -1


if xspd != 0
{
	sprite_index = sEnemy_Walk
}

x += xspd