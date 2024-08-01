// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Synthesis(){
	if global.meterial_items[0] != noone and global.meterial_items[1] != noone
	{
		var meterial1 = global.meterial_items[0]
		var meterial2 = global.meterial_items[1]
		
		if Recipes(meterial1,meterial2)
		{
			element = Recipes(meterial1,meterial2)
			if array_contains(global.items,element) or array_contains(global.meterial_items,element)
			{
				ShowDialog(170,220,"you already have")
			}
			else
			{
				array_insert(global.items,0,element)
				
			}
		}
		else
		{
			ShowDialog(170,220,"you don't have the knowledge")
		}
	}
}