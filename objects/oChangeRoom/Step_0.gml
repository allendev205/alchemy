if go_basement
{
	if oDoor.image_index == 1
	{
		if collision_rectangle(x-16,y-32,x+16,y,oCharacter,false,true)
		{
			oCharacter.y = y + 20
			oCharacter.x = x
			room_goto(target)
		}
	}
}
else if go_finalroom
{
	
	if collision_rectangle(x-16,y-32,x+16,y,oCharacter,false,true)
	{
		if array_contains(global.items,sGun) and array_contains(global.items,sPortal)
		{
			oCharacter.y = y + 20
			oCharacter.x = x
			room_goto(target)
		}
		else
		{
			ShowDialog(0,230,"It's too dangerous outside you need the weapon and the portal")
		}
	}
	else
	{
		ShowDialog(0,0,"")
	}
	
}
else
{
	if collision_rectangle(x-16,y-32,x+16,y,oCharacter,false,true)
	{
		oCharacter.y = y + 20
		oCharacter.x = x
		room_goto(target)
	}
}