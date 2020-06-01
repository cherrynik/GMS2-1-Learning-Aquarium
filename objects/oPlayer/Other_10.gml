// Teleport it if it's out of the room scene
if (x > room_width + OBJ_SIZE) {
	x = -OBJ_SIZE
} else if (x < -OBJ_SIZE) {
	x = room_width + OBJ_SIZE
}

if (y > room_height + OBJ_SIZE) {
	y = -OBJ_SIZE
} else if (y < -OBJ_SIZE) {
	y = room_height + OBJ_SIZE
}

// Rotating by previous difference
image_angle += angle_difference(direction, image_angle) * SMOOTH