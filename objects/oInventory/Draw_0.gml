//normal open
if open
{
	x = 143
	
	draw_self(); 
	
	if array_length(layer_get_all_elements("inventory_change")) < 1
	{
		instance_create_layer(326,94,"inventory_change",oInventory_change1)
		instance_create_layer(326,114,"inventory_change",oInventory_change2)
	}
	
	
	if slot_change
	{
		ShowItemName(0,0,"")
		slot_change = false
	}
	
	for (var i = 0; i < inventory_size/2; i++) 
	{
		if slot == 1
		{
			var item = global.items[i];
		}
		else if slot == 2
		{
			var item = global.items[i+(inventory_size/2)];
		}
		
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
			if  mouse_x > xx and mouse_x < xx + 32 and mouse_y > yy and mouse_y < yy + 32
			{
				var item_name = sprite_get_name(item)
				item_name = string_delete(item_name,1,1)
				ShowItemName(xx,yy-12,item_name)
			}
		
			draw_sprite(item,0,xx+8,yy+8)
		}
	}
}
else
{
	ShowItemName(0,0,"")
}
//magic circle open
if room == Basement
{
	if oMagicCircle.trigger
	{	
		x = 20
		draw_self(); 
		
		if array_length(layer_get_all_elements("inventory_change")) < 1
		{
			instance_create_layer(203,94,"inventory_change",oInventory_change1)
			instance_create_layer(203,114,"inventory_change",oInventory_change2)
		}
		
		if slot_change
		{
			ShowItemName(0,0,"")
			slot_change = false
		}
  
		for (var i = 0; i < inventory_size/2; i++) 
		{
      
			if slot == 1
			{
				var item = global.items[i];
			}
			else if slot == 2
			{
				var item = global.items[i+(inventory_size/2)];
			}
  
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
						
						if slot == 1
						{
							array_delete(global.items,i,1)
						}
						else if slot == 2
						{
							array_delete(global.items,i+(inventory_size/2),1)
						}
						
						array_insert(global.meterial_items,0,item)
						
						audio_play_sound(sdSelect,1,false)
					}
					else
					{
						show_debug_message("not enough space")
					}
					
					Synthesis()
					
				}
				else if  mouse_x > xx and mouse_x < xx + 32 and mouse_y > yy and mouse_y < yy + 32
				{
					var item_name = sprite_get_name(item)
					item_name = string_delete(item_name,1,1)
					ShowItemName(xx,yy-12,item_name)
				}
				
				draw_sprite(item,0,xx+8,yy+8)
				
			}
		}
	}
	
}