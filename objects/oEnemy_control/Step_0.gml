if skill_count >= 3
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