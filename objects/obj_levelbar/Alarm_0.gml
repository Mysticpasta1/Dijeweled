/// @description Fade off
perc += FADE_OFF_SPEED 
x = lerp(xx,room_width+16,1 - power(perc-1,2))
if perc < 1 alarm[0] = 1
else perc = 0