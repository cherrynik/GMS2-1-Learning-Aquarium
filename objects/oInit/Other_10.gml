Layer = "Fishes" // Layer name

Object = oPlayer // Object name
ObjectOffX = sprite_get_xoffset(sPlayer)
ObjectOffY = sprite_get_yoffset(sPlayer)

Collision = oCollision // Object in which we wont spawn fishes

isLeft = irandom_range(1, 6) // How many objects in the room

layer_create(10, Layer)

// Create fishes in room
while (isLeft != 0) {
	count = 0
	xx = irandom_range(0, room_width)
	yy = irandom_range(0, room_height)
	
	// FIXME: Random generating doesn't work correct
	with (Collision) {
		var
			_is_in_solid_x = (other.xx >= (x - sprite_width - other.ObjectOffX)) and (other.xx <= (x + sprite_width + other.ObjectOffX)),
			_is_in_solid_y = (other.yy >= (y - sprite_height - other.ObjectOffY)) and (other.yy <= (y + sprite_height + other.ObjectOffY))
		
		while ((_is_in_solid_x) and (_is_in_solid_y)) {
			other.xx = irandom_range(0, room_width)
			other.yy = irandom_range(0, room_height)
				
			_is_in_solid_x = (other.xx >= (x - sprite_width - other.ObjectOffX)) and (other.xx <= (x + sprite_width + other.ObjectOffX))
			_is_in_solid_y = (other.yy >= (y - sprite_height - other.ObjectOffY)) and (other.yy <= (y + sprite_height + other.ObjectOffY))

			other.count++
				
			if (other.count >= 100) {
				exit
			}
		}
	}
	
	if !(count >= 100) {
		instance_create_layer(xx, yy, Layer, Object)
	}
	isLeft--
}
