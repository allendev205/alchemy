left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
jump = keyboard_check_pressed(vk_space)

xspd = (right - left)

if jump and place_meeting(x, y+1, oCollision) {
    vspeed = -10
}

if place_meeting(x, y+1, oCollision) {
    gravity = 0
    vspeed = 0
} else {
    gravity = 0.5
}

if !place_meeting(x, y + vspeed, oCollision) {
    y += vspeed;
} else {
    vspeed = 0; 
}

x += xspd