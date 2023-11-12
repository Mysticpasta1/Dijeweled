room_speed = 60
Gamerule_1.time_allowed = true
Gamerule_1.autosave_allowed = false
Gamerule_1.replay_allowed = false
Gamerule_1.multiswap_allowed = true
Gamerule_1.blazingallowed = true
Gamerule_1.isQuest = false
Gamerule_1.geode_xplier = 5
DISCORD np_setpresence("Time set: " + convert_seconds_to_time(global.timer), global.DIS_name, "ico_512", "")

with(obj_levelbar)
{
	time_full = global.timer
	time_now = time_full
	alarm[2] = 80
}
with(obj_coal_control)
{
	CoalSpawnLevelMin = -1
}
with(obj_doom_control)
{
	DoomSpawnInstant = true
	
	DoomCounterLevelBased = false
	if Gamerule_1.Moves_Made == 0 DoomCounterDefault = 20 //The value to give to the newly spawned Doom
	if Gamerule_1.Moves_Made == 0 DoomCounter = DoomCounterDefault //The value to give to the newly spawned Doom
}
with(obj_bombcontrol)
{
	if Gamerule_1.Moves_Made == 0 TurnsToSpawnDefault = 8
	if Gamerule_1.Moves_Made == 0 TurnsToSpawn = TurnsToSpawnDefault; //After how many turns will a bomb spawn? This changes every level if it is level based.
	if Gamerule_1.Moves_Made == 0 TurnsToSpawnCur = TurnsToSpawn //This gets decreased every turn. after going to 0, it becomes TurnsToSpawn again.
	BombCounterLevelBased = true //Is the counter of the bombs a level based variable?
	if Gamerule_1.Moves_Made == 0 BombCounterLevelBasedEnd = 15 //After which level do we stop changing the bomb counter value?
	if Gamerule_1.Moves_Made == 0 BombCounterDefault = 20 //The value to give to the newly spawned bomb
	if Gamerule_1.Moves_Made == 0 BombCounter = BombCounterDefault //The value to give to the newly spawned bomb
	
	BombSpawnLevelMin = -1 //When do we start allowing bombs to spawn? (-1 = infinite)
	
	if Gamerule_1.Moves_Made == 0 BombMax = 3 //Max amount of bombs on screen
	BombExaggerate = -1
}
//draw_texture_flush()

// //RADIO\\
//
if global.timer <= 60*1 
{
obj_radio.music = mus_blitz1min
obj_radio.loop = true
}
else if global.timer <= 60*3
{
obj_radio.music = mus_blitz3min
obj_radio.loop = true	
}
else if global.timer <= 60*4
{
obj_radio.music = mus_blitz4min
obj_radio.loop = true
}
else
{
obj_radio.music = mus_blitz5min
obj_radio.loop = true	
}