/// @description Idle State
image_speed = 0;
image_index = 0; // Start on the very first frame
if (alarm[1] <= 0) { // When the alarm goes off
    alarm[1] = random_range(2,4) * global.one_second; // Set the alarm again
	state = porcupine.move; // We set our state to move
	direction_ = random(360); // Choose a random direction
}

porcupine_attack();