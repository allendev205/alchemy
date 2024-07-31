draw_self()
if global.meterial_items[0] != noone
{
	var item = global.meterial_items[0]
	var xx = x + 8
	var yy = y + 8
	
	if MouseClick() and mouse_x > xx and mouse_x < xx + 32 and mouse_y > yy and mouse_y < yy + 32
	{
		array_delete(global.meterial_items,0,1)
		array_insert(global.items,0,item)
	}

	
	draw_sprite(item,0,xx,yy)
}