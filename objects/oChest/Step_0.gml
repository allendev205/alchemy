if collision_circle(x,y,32,oCharacter,false,true) and not open
{
	pass = true
	if ShowKey()
	{
		open = true
		while image_index < image_number -1
		{
			image_index += 1
		}
		

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
