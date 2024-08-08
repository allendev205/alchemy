if skill_finish and oEnemy_Skill.sprite_index == sEnemy_Idle
{
	with oEnemy_Skill
	{
		instance_destroy()
	}
	instance_create_layer(240,95,"enemy",oEnemy_Skill)
	skill_finish = false
}