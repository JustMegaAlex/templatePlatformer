
scr_player_input()

up_free = place_empty(x, y - 1, obj_block)
down_free = place_empty(x, y + 1, obj_block)
left_free = place_empty(x - 1, y, obj_block)
right_free = place_empty(x + 1, y, obj_block)

move_h = key_right*right_free - key_left*left_free

// moving
hsp_to = move_h * hsp_max

hsp = scr_approach(hsp, hsp_to, acc)
vsp = scr_approach(vsp, vsp_max, grav)

if ((vsp < 0) and !up_free) {

	vsp = 0
}
else if !down_free {
	
	jumps = jumps_max
	
	if vsp > 0
		
		vsp = 0
}

if key_jump {
	
	var jumps_available = sign(jumps)
	
	vsp = jumps_available * jump_sp
	
	jumps -= jumps_available
}

if ((hsp > 0) and !right_free) or ((hsp < 0) and !left_free)

	hsp = 0

dir = point_direction(0, 0, hsp, vsp)

if abs(hsp) or abs(vsp)

	scr_move_coord_contact_obj(hsp, vsp, obj_block)

scr_camera_set_center(0, x, y)