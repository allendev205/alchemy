if Recipes(meterial1,meterial2)
{
	element = Recipes(meterial1,meterial2)
	if array_contains(global.items,element)
	{
		show_debug_message("you already have")
	}
	else
	{
		array_insert(global.items,0,element)
	}
}
else
{
	show_debug_message("you don't have the knowledge")
}