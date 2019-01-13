// Variables
image_speed = 0;
var animationSpeed = 0.6;
var xInput = keyboard_check(vk_right) - keyboard_check(vk_left); // 1-1
var yInput = keyboard_check(vk_down) - keyboard_check(vk_up); 
var inputDirection = point_direction(0,0,xInput, yInput);

// Movement system
if (xInput == 0) && (yInput == 0) { // If no keys are pressed, stand still
	// Set sprite to index zero
    image_index = 0;
	image_speed = 0;
	// Slow character to a stop
	apply_friction_to_movement_entity();
	
} else { // if a key is pressed, we are moving. 
	// Move the image
	image_speed = animationSpeed;
	
	// Need code so image faces left when pressing left
	if (xInput == -1) {
	    image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	// Gets the direction and accelerate to max speed. 
	get_direction_facing(inputDirection);
	add_movement_maxspeed(inputDirection, accelerationSpeed, maxSpeed);
}

// Set sprite index
sprite_index = sprite_[player.move, directionFacing];

// Call movement script - This script gets the parameters from initialize_movement_entity in create
move_movement_entity(false)