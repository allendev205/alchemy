if collision_circle(x,y,18,oCharacter,false,true)
{
	pass = true
	if not trigger
	{
		if ShowKey()
		{
			image_index = 1
			with oFkey
			{
				instance_destroy()
			}
			trigger = true
		}
	}
}
else if pass == true
{
	pass = false
	trigger = false
	image_index = 0
	with oFkey
	{
		instance_destroy()
	}
}