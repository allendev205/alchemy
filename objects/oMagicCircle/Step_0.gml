if collision_circle(x,y,18,oCharacter,false,true)
{
	pass = true
	if not trigger
	{
		if ShowKey()
		{
			image_index = 1
			
			audio_play_sound(sdMagicCircle,1,false)	
			
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
	if global.meterial_items[0] != noone and global.meterial_items[0] != undefined
	{	
		array_insert(global.items,0,global.meterial_items[0])
	}
	if global.meterial_items[1] != noone and global.meterial_items[1] != undefined
	{	
		array_insert(global.items,0,global.meterial_items[1])
	}
	global.meterial_items[0] = noone
	global.meterial_items[1] = noone
	ShowDialog(0,0,"")
}