if finish
{
	instance_destroy()
}
if prepare
{
	sprite_index = sAir_Burst
	prepare = false
	finish = true
}