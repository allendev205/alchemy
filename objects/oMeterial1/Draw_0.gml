draw_self()
if global.meterial_items[0] != noone
{
	var item = global.meterial_items[0]
	var xx = x + 8
	var yy = y + 8
	draw_sprite(item,0,xx,yy)
}