if count >= 3 and not teleport
{
	sprite_index = sEnemy_Teleport
	teleport = true
}

if image_index == image_number
{
	if not teleport
	{
		count += 1
	}
	else
	{
		instance_change(oEnemy_Skill,true)
	}
}