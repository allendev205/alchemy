if finish
{
	oSkill_control.skill_finish = true
	instance_destroy()
}
if prepare
{
	audio_stop_sound(sdAirPrepare)
	audio_play_sound(sdAirBlow,1,false)
	
	sprite_index = sAir_Burst
	prepare = false
	finish = true
}