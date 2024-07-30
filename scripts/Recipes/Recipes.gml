// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Recipes(v1,v2){
	if (v1 == sFire and v2 == sEarth) or (v1 == sEarth and v2 == sFire)
	{
		return sLava
	}
	if (v1 == sLava and v2 == sAir) or (v1 == sAir and v2 == sLava)
	{
		return sStone
	}
	if (v1 == sFire and v2 == sStone) or (v1 == sStone and v2 == sFire)
	{
		return sMetal
	}
	if (v1 == sLava and v2 == sWater) or (v1 == sWater and v2 == sLava)
	{
		return sObsidian
	}
	if (v1 == sFire and v2 == sObsidian) or (v1 == sObsidian and v2 == sFire)
	{
		return sPortal
	}
	if (v1 == sEarth and v2 == sAir) or (v1 == sAir and v2 == sEarth)
	{
		return sDust
	}
	if (v1 == sFire and v2 == sDust) or (v1 == sDust and v2 == sFire)
	{
		return sGunpowder
	}
	if (v1 == sGunpowder and v2 == sMetal) or (v1 == sMetal and v2 == sGunpowder)
	{
		return sAmmo
	}
	if (v1 == sAmmo and v2 == sMetal) or (v1 == sMetal and v2 == sAmmo)
	{
		return sGun
	}
	
}