if count >= 3 and not teleport
{
	audio_play_sound(sdTeleport,1,false)
	sprite_index = sEnemy_Teleport
	teleport = true
}


if image_index < 1 and not audio_is_playing(sdSlash) and sprite_index != sEnemy_Teleport
{
	audio_play_sound(sdSlash,1,false)
}

if oEnemy_control.phase == 1
{
	if image_index > 3 and image_index < 6 and not attacking and sprite_index == sEnemy_Attack1
	{
		hitbox = instance_create_layer(x,y,"enemy",oAttack1_hitbox)
		hitbox.image_xscale = image_xscale
		attacking = true
	}
	else if image_index > 6 and attacking
	{
		with hitbox 
		{
			instance_destroy()
		}
		attacking = false
	}
}