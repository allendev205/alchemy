if phase == 1
{
	skill_limit = 3
}
else
{
	skill_limit = 5
}

if skill_count >= skill_limit
{
	if oSkill_control.skill_finish
	{
		with oEnemy_Skill
		{
			instance_destroy()
		}
		instance_create_layer(240,95,"enemy",oEnemy)
		with oEnemy
		{
			wait = true
		}	
		skill_count = 0
	}
}