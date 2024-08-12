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