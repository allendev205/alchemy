if place_meeting(x,y+vspeed,oCollision)
{
	gravity = 0
	vspeed = 0
}

if abs(x - oCharacterFinal.x) >= 250 and not Cast
{
	Cast = true
	CharacterX = oCharacterFinal.x
	CharacterY = oCharacterFinal.y
}

if Cast
{
	sprite_index = sEnemy_Cast
	
	if image_index == 5
	{
		instance_create_layer(CharacterX,CharacterY,"spell",oEnemy_Spell)
	}
	
	if image_index >= image_number -1
	{
		sprite_index = sEnemy_Idle
		Cast = false
	}
}

