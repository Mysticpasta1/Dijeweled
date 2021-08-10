function read_gamepad_binds() {
	ini_open("binds.ini")
		global.GP_swapdown = ini_read_real("binds","GP_swapdown",gp_face1)
		global.GP_swapright = ini_read_real("binds","GP_swapright",gp_face2)
		global.GP_swapleft = ini_read_real("binds","GP_swapleft",gp_face3)
		global.GP_swapup = ini_read_real("binds","GP_swapup",gp_face4)
		global.GP_pass = ini_read_real("binds","GP_pass",gp_select)
		global.GP_replay = ini_read_real("binds","GP_replay",gp_shoulderr)
		global.GP_clockwise1 = ini_read_real("binds","GP_clockwise1",gp_face2)
		global.GP_clockwise2 = ini_read_real("binds","GP_clockwise2",gp_face1)
		global.GP_cclockwise1 = ini_read_real("binds","GP_cclockwise1",gp_face3)
		global.GP_cclockwise2 = ini_read_real("binds","GP_cclockwise2",gp_face4)
	ini_close()


}
