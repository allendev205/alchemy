if hp <= 100 and not under
{
	oEnemy_control.phase = 2
	audio_play_sound(sdChangePhase,1,false)
	under = true
}