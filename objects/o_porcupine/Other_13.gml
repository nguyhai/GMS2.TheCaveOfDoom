/// @description Attack State
image_speed = 0.35;

if (animation_hit_frame(1)) {
	var damage = 1;
	var knockback = 4;
	var life = 1;
	
    create_hitbox(s_porcupine_hitbox, x, y - 8, 0, life, [o_player], damage, knockback);
	audio_play_sound(a_porcupine_attack, 5, false);
}

// Exit attack state
if (animation_hit_frame(image_number - 1)) {
    state = porcupine.idle;
	sprite_index = s_porcupine_run;
	alarm[1] = 2 * global.one_second;
}
