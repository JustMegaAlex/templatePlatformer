
// controls
key_left = keyboard_check(vk_left)||keyboard_check(ord("A"))
key_right = keyboard_check(vk_right)||keyboard_check(ord("D"))
key_up = keyboard_check(vk_up)||keyboard_check(ord("W"))
key_down = keyboard_check(vk_down)||keyboard_check(ord("S"))
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z"))

if keyboard_check_pressed(ord("R"))

	room_restart()

up_free = place_empty(x, y - 1, obj_block)
down_free = place_empty(x, y + 1, obj_block)
//left_free = place_empty(x - 1, y, obj_block)
//right_free = place_empty(x + 1, y, obj_block)

//move_h = key_right*right_free - key_left*left_free
//move_v = key_right*right_free - key_left*left_free

move_h = key_right - key_left
move_v = key_right - key_left

// moving
hsp_to = move_h * hsp_max

hsp = scr_approach(hsp, hsp_to, acc)
vsp = scr_approach(vsp, vsp_max, grav)

vsp += key_jump * !down_free * jump_sp

if ((vsp > 0) and !down_free) or ((vsp < 0) and !up_free)

	vsp = 0

dir = point_direction(0, 0, hsp, vsp)

if abs(hsp) or abs(vsp)

	scr_move_coord_contact_obj(hsp, vsp, obj_block)