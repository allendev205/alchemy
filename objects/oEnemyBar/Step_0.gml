if hp <= 150 and not under
{
	oEnemy_control.phase = 2
	audio_play_sound(sdChangePhase,1,false)
	under = true
}

if hp <= 0 and not dead
{
	if instance_exists(oEnemy)
	{
		with oEnemy
		{
			other.last_x = x
			other.last_y = y
			instance_destroy()
		}
	}
	if instance_exists(oEnemy_Attack)
	{
		with oEnemy_Attack
		{
			other.last_x = x
			other.last_y = y
			instance_destroy()
		}
	}
	instance_create_layer(last_x,last_y,"enemy",oEnemy_Dead)
	dead = true
	
}