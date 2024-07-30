if go_basement
{
	if oDoor.image_index == 1
	{
		if collision_rectangle(x,y,x+32,y+32,oCharacter,false,true)
		{
			oCharacter.y = y + 25
			oCharacter.x = x
			room_goto(target)
		}
	}
}
else
{
	if collision_rectangle(x,y,x+32,y+32,oCharacter,false,true)
	{
		oCharacter.y = y + 25
		oCharacter.x = x
		room_goto(target)
	}
}