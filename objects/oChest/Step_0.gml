if collision_circle(x,y,32,oCharacter,false,true) and not open
{
	pass = true
	if ShowKey()
	{
		open = true
		array_insert(global.items,0,sFire,sAir,sWater,sEarth)
	}
}
else if pass == true
{
	pass = false
	with oFkey
	{
		instance_destroy()
	}
}

if open
{
	image_speed = 1
	if image_index >= image_number
	{
		image_speed = 0
	}
}