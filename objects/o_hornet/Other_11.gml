/// @description Move State

add_movement_maxspeed(direction_, 0.05, 1); 
move_movement_entity(true);

// Set sprite direction
set_sprite_facing();

if (alarm[1] <= 0) {
    alarm[1] = global.one_second * random_range(1,3);
	direction_ = random(360);
}

if (alarm[2] <= 0) and (distance_to_object(o_player) <= range) {
    state = hornet.attack;
}

