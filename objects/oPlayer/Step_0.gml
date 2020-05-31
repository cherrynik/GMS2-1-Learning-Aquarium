if (x > room_width + 32) {
	x = -32
} else if (x < -32) {
	x = room_width + 32
}

if (y > room_height + 32) {
	y = -32
} else if (y < -32) {
	y = room_height + 32
}

image_angle += angle_difference(direction, image_angle) * .5