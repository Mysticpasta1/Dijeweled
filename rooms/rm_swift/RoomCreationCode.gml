room_speed = 60

//draw_texture_flush()
//RADIO\\
DISCORD np_setpresence("Level " + string(Gamerule_1.level), global.DIS_name, "ico_512", "")
with(Gamerule_1)
{
	isQuest = false
	multiswap_allowed = true
	blazingallowed = true
	wheel_spinner_allowed = true
	replay_allowed = false
}