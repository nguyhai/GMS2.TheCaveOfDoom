// This step activates when every other step event has been moved. 
// Once everything has already moved, then we can move the camera to the player

if !(instance_exists(target)) {
    exit;
}

// Move the camera object toward the player
//x = target.x;
//y = target.y;
x = lerp(x, target.x, 0.1);
y = lerp(y, target.y - 8, 0.1);

// Fix jitteringusing rounding? I don't see it on my screen but whatever. 
x = round_n(x, 1/scale);
y = round_n(y, 1/scale);

// Add a clamp to prevent view from moving outside the room
x = clamp(x, width / 2, room_width - width / 2);
y = clamp(x, height / 2, room_height - height / 2);

camera_set_view_pos(view_camera[0], x-width/2, y-height/2);



