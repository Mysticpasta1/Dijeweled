/// @description Insert description here
// You can write your code in this editor
ini_open("settings.ini")
	var trans = ini_read_real("Settings","TransparentBoard",0)
	if trans = 0 image_alpha = 1
	else image_alpha = 0.8
ini_close()
default_skin = spr_board_default
default_index = 0
image_index = 0
alpha = 0
image_speed = 0
multi_alpha = 0
depth= 3
perc = 0
xx = x

if (os_type == os_android) { 
	if (!global.online && !global.bot1) {
		instance_create_depth(64 + 256/2, y + 512 + 64, -99, obj_button_pause)
	}
}