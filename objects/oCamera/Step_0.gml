// Update Camera

// Update Destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update Obj Position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

// Keep Camera in room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

// Screen shake

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(camera, x - viewWidthHalf, y - viewHeightHalf);