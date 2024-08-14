prepare = true
finish = false

image_xscale = 2
image_yscale = 2

audio_play_sound(sdAirPrepare,1,false)

if oEnemy_Skill.Air_dir == -1
{
	image_xscale = -image_xscale
}