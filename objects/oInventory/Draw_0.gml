if open
{
	draw_self(); 
  
	for (var i = 0; i < inventory_size; i++) 
	{
      
		var item = global.items[i];
  
		if i % 2 == 0
		{
			extra += 25
		}
		if i % 4 == 0
		{
			extra = 0
		}
		var xx = x + (i mod 4) * grid_size +20 + extra;
		var yy = y + (i div 4) * grid_size +20;
  
		draw_sprite(sItem_ui,0,xx,yy)
  
		if (item != noone)
		{
			draw_sprite(item,0,xx+8,yy+8)
		}
	}
}