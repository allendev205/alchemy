if oEnemy_control.skill_count < oEnemy_control.skill_limit and skill_finish
{
	if instance_exists(oEnemy_Skill)
	{
		if oEnemy_Skill.sprite_index == sEnemy_Idle
		{
			with oEnemy_Skill
			{
				instance_destroy()
			}
		instance_create_layer(240,95,"enemy",oEnemy_Skill)
		skill_finish = false
		}
	}
}