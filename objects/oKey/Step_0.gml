if collision_circle(x+8,y+8,8,oCharacter,false,true)
{
	pass = true
	
	if ShowKey()
	{
		
		array_insert(global.items,0,sKey)
		
		instance_destroy()	
		with oFkey
		{
			instance_destroy()
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
