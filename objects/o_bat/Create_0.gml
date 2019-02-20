event_inherited();

initialize_movement_entity(.25,.5,o_solid);


enum bat{
	hit,
	move,
	attack
}

starting_state = bat.move;
state = starting_state;

alarm[1] = global.one_second * random_range(0,1);
range = 64;
image_index = 0;
image_xscale = choose(1, -1);
image_spee = 0.5;



