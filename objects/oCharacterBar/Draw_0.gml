draw_self()

width = sprite_get_width(sHpvalue) * (hp / maxhp)
height = sprite_get_height(sHpvalue)
draw_sprite_part(sHpvalue,0,0,0,width,height,x,y)

width = sprite_get_width(sAmmovalue) * (ammo / maxammo)
height = sprite_get_height(sAmmovalue)
draw_sprite_part(sAmmovalue,0,0,0,width,height,x,y+14)

if pre_hp != hp
{
	audio_play_sound(sdGet_hit,1,false)
	get_hit = true
}

pre_hp = hp