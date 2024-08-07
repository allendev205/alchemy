x = 240
y = 95

var spell = choose("Fire","Water","Air","Earth")
spell = "Earth"
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
		
		instance_create_layer(10,140,"spell",oSkill_Water)
		
		break
		
	case "Air":
		sprite_index = sEnemy_Cast_Air
		
		instance_create_layer(10,160,"spell",oSkill_Air)
		
		break
		
	case "Earth":
		sprite_index = sEnemy_Cast_Earth
		
		instance_create_layer(60,50,"spell",oSkill_Earth)
		instance_create_layer(140,50,"spell",oSkill_Earth)
		instance_create_layer(220,50,"spell",oSkill_Earth)
		instance_create_layer(300,50,"spell",oSkill_Earth)
		instance_create_layer(380,50,"spell",oSkill_Earth)
		
		break
}