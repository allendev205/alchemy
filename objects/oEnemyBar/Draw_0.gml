width = sprite_get_width(sEnemyHp) * (hp / maxhp)
height = sprite_get_height(sEnemyHp)
draw_sprite_part(sEnemyHp,0,0,0,width,height,x,y)

draw_self()