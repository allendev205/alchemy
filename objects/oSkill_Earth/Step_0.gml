if image_index == 6
{
	image_speed = 0
}
if not hitfloor and image_index >= 6
{
	yspd = 2
	xspd = sample_xspd
}
else
{
	yspd = 0
	xspd = 0
}

x += xspd
y += yspd