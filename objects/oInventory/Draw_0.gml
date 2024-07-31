//normal open
if open
{
	x = 143
	
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
//magic circle open
if room == Basement
{
	if oMagicCircle.trigger
	{	
		x = 20
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
				if MouseClick() and mouse_x > xx and mouse_x < xx + 32 and mouse_y > yy and mouse_y < yy + 32
				{
					if global.meterial_items[0] == noone or global.meterial_items[1] == noone
					{
						array_delete(global.items,i,1)
						array_insert(global.meterial_items,0,item)
					}
					else
					{
						show_debug_message("not enough space")
					}
					
					Synthesis()
					
				}
					draw_sprite(item,0,xx+8,yy+8)
				
			}
		}
	}
}