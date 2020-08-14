///@arg speed
///@arg dir
///@arg obj

x += lengthdir_x(argument0, argument1)
y += lengthdir_y(argument0, argument1)

//collision
var contact = instance_place(x, y, argument2)

if contact {
	
	// move out of an object
	while place_meeting(x, y, contact) {
		
        x -= lengthdir_x(1, argument1)
		
        y -= lengthdir_y(1, argument1)
	}
}