x = 240
y = 95

var spell = choose("Fire","Water","Air","Earth")

show_debug_message(spell)

switch (spell)
{
	case "Fire":
		sprite_index = sEnemy_Cast_Fire
		
		var form = choose("fire1","fire2")
		if form == "fire1"
		{
			instance_create_layer(x,y,"spell",oSkill_Fire1)
		}
		else
		{
			instance_create_layer(x,y,"spell",oSkill_Fire2)
		}
		
		break
		
	case "Water":
		sprite_index = sEnemy_Cast_Water
		
		instance_create_layer(x,y,"spell",oSkill_Water)
		
		break
		
	case "Air":
		sprite_index = sEnemy_Cast_Air
		
		instance_create_layer(x,y,"spell",oSkill_Air)
		
		break
		
	case "Earth":
		sprite_index = sEnemy_Cast_Earth
		
		instance_create_layer(x,y,"spell",oSkill_Earth)
		
		break
}