/// @description Insert description here
draw_set_font(font0)
draw_self()
if (hover) draw_sprite(spr_lob_glow2,0,x,y)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
var c = LOB_twist.enabled ? c_gray : c_white
draw_text_transformed_color(x+16+margin,y+8,"Allow Matchless Swaps",0.5,0.5,0,c,c,c,c,1)


