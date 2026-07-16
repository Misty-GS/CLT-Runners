d = keyboard_check_pressed(ord("D"))
a = keyboard_check_pressed(ord("A"))
seta_d = keyboard_check_pressed(vk_right)
seta_e = keyboard_check_pressed(vk_left)

if d or seta_d{
	image_xscale = -1
	x = 154
	y = 252
}else if a or seta_e{
	image_xscale = 1
	x = 26
	y = 252
}
