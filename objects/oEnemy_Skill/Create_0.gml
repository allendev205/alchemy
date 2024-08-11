randomize()

x = 240
y = 95

Air_dir = 1

var spell = choose("Fire","Water","Earth")

//wind
if oCharacterFinal.x < 96 or oCharacterFinal.x > room_width - 96
{
	spell = "Air"
	if oCharacterFinal.x > room_width - 96
	{
		Air_dir = -1
	}
}

switch (spell)
{
	case "Fire":
		sprite_index = sEnemy_Cast_Fire
		
		var form = choose("fire1","fire2")
		if form == "fire1"
		{
			instance_create_layer(0,130,"spell",oSkill_Fire1)
			instance_create_layer(91,130,"spell",oSkill_Fire1)
			instance_create_layer(191,130,"spell",oSkill_Fire1)
			instance_create_layer(291,130,"spell",oSkill_Fire1)
			instance_create_layer(391,130,"spell",oSkill_Fire1)
		}
		else
		{
			instance_create_layer(0,148,"spell",oSkill_Fire2)
		}
		
		break
		
	case "Water":
		sprite_index = sEnemy_Cast_Water
		
		dir = choose(1,-1)
		if dir == 1
		{
			X = 0
		}
		else
		{
			X = 480
		}
		water = instance_create_layer(X,145,"spell",oSkill_Water)
		
		water._dir = dir
		
		if dir != 1
		{
			water.image_xscale = -1
		}
		else
		{
			water.image_xscale = 1
		}
		
		
		
		break
		
	case "Air":
		sprite_index = sEnemy_Cast_Air
		
		if Air_dir == 1
		{
			instance_create_layer(0,116,"spell",oSkill_Air)
		}
		else
		{
			instance_create_layer(room_width,116,"spell",oSkill_Air)
		}
		
		
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