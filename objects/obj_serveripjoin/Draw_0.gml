//draw_self()
draw_set_font(font0)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var ip_text = hide_ip ? field_converted : field
draw_text_outline(x,y,string_hash_to_newline(ip_text + blink),c_white,c_black)
//draw_text(room_width/2,16,keyboard_lastchar)
if (os_type != os_android) {
	draw_text_outline(room_width/2,room_height-20,"(Press Right Click to Paste)", c_white, c_black)
	draw_text_outline(room_width/2,room_height-48,"(Press Middle Click to hide IP)", c_white, c_black)
}