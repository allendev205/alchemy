if finish
{
	oSkill_control.skill_finish = true
	instance_destroy()
}
if prepare
{
	sprite_index = sAir_Burst
	prepare = false
	finish = true
}