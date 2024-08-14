up = keyboard_check_pressed(vk_up)
down = keyboard_check_pressed(vk_down)
trigger = keyboard_check_pressed(ord("F"))

if trigger
{
	audio_play_sound(sdMainSelect,1,false)
}

if select == 1 and down
{
	y += 33
	select = 2
	audio_play_sound(sdMainChange,1,false)
}
else if select = 2 and up
{
	y -= 33
	select = 1
	audio_play_sound(sdMainChange,1,false)
}