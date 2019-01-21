depth = -y;

if (currentHealth <=0) && state != enemy.hit {
    instance_destroy();
}

if (state != noone) {
    event_user(state);
}