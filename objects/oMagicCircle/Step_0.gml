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
			
			instance_create_layer(303,127,"meterial",oMeterial1)
			instance_create_layer(367,127,"meterial",oMeterial2)
			
			
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
	with oMeterial1
	{
		instance_destroy()
	}
	with oMeterial2
	{
		instance_destroy()
	}
}