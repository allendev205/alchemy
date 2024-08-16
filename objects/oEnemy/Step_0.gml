if place_meeting(x,y+vspeed,oCollision)
{
	gravity = 0
	vspeed = 0
	while !place_meeting(x,y+1,oCollision)
	{
		y += 1
	}
}
if wait
{
	wait_time -= 1
	if wait_time < 0
	{
		wait = false
		wait_time = 180
	}
}
else
{
	if abs(x - oCharacterFinal.x) >= 250 and not Cast
	{
		Cast = true
		CharacterX = oCharacterFinal.x
		CharacterY = oCharacterFinal.y
	}
	else if abs(x - oCharacterFinal.x) <= 100 and not Teleport
	{
		audio_play_sound(sdTeleport,1,false)
		sprite_index = sEnemy_Teleport
		Teleport = true
	}
	else if abs(x - oCharacterFinal.x) <= 230 and not Teleport
	{
		sprite_index = sEnemy_Walk
		xspd = -1.5 * image_xscale
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

	if Teleport 
	{
		if image_index >= image_number -1
		{
			CharacterX = oCharacterFinal.x - 10
			CharacterY = oCharacterFinal.y
			image_xscale = -image_xscale
			instance_change(oEnemy_Attack,true)
		}
		xspd = 0
	}

	x += xspd
}