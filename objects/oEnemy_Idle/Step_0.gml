if place_meeting(x,y+vspeed,oCollision)
{
	gravity = 0
	vspeed = 0
}
if abs(x - oCharacterFinal.x) > 200
{
	instance_change(oEnemy_Cast,false)
}