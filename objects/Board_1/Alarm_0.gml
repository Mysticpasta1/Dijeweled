/// @description Fade off
perc += FADE_OFF_SPEED 
x = lerp(xx,room_width + 32,1 - power(perc-1,2))
if perc < 1 alarm[0] = 1
else
{
	perc = 0
	instance_destroy(Gem_1,false)
	with(Gamerule_1) {
		delete_gem_lists()
		bar_be_full = false
	}
}