if collision_circle(x+21,y+28,32,oCharacter,false,true) and x < 125
{
	pass = true
	
	if ShowKey() and count > count_max
	{
		x += 5
		count_max -= 1
		count = 0
	}
	else if press
	{
		count += 1
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
