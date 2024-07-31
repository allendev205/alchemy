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
else
{
	if collision_rectangle(x-16,y-32,x+16,y,oCharacter,false,true)
	{
		oCharacter.y = y + 20
		oCharacter.x = x
		room_goto(target)
	}
}