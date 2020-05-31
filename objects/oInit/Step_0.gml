// Create fishes in room
while (isLeft != 0) {
	var
		_xx = irandom_range(64, room_width),
		_yy = irandom_range(64, room_height)
	
	instance_create_layer(_xx, _yy, Layer, Object)
	isLeft--
}