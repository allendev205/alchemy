if collision_circle(x,y,18,oCharacter,false,true)
{
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
else
{
	trigger = false
	image_index = 0
	with oFkey
	{
		instance_destroy()
	}
}