// Inherit from parent
event_inherited(); // Runs all the code from parent first
initialize_movement_entity(0.5, 0.5, o_solid);

// Create states as enums
enum porcupine {
	hit,
	idle,
	move,
	attack,
	wait
}

startingState = porcupine.idle;
state = startingState;

image_index = 0;
image_xscale = choose(1, -1);

alarm[1] = random_range(0, 1) * global.one_second; // Alarm is set either 0 or 1 second. 