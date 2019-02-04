depth = -y;

event_user(state);

// Set sprite index
sprite_index = sprite_[state, directionFacing];

// Death 

if (global.playerHealth <= 0) {
    instance_destroy();
}