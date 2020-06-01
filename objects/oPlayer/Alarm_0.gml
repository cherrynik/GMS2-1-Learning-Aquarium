direction = choose(0, 45, 90, 135, 180, 225, 270, 315)
speed = Speed

if (direction > 90 and direction < 270) {
	image_xscale = -1
	image_yscale = -1
} else if (direction <= 90 or direction >= 270) {
	image_xscale = -1
	image_yscale = 1
}

alarm[0] = irandom_range(60, 120)