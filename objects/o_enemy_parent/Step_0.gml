depth = -y;

if (currentHealth <= 0) && state != enemy.hit {
	audio_play_sound(a_porcupine_attack, 10, false);
    instance_destroy();
}


if (state != noone) {
    event_user(state);
}
