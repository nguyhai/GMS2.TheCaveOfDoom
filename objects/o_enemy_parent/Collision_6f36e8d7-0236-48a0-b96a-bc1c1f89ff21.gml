/// @description Collision with hitbox
if (currentHealth <= 0) {
    exit;
}

if hurtbox_entity_can_be_hit_by(other){
	invincible = true;
	alarm[0] = global.one_second
	var knockbackDirection = point_direction(other.x, other.y, x, y);
	currentHealth -= other.damage;
	state = enemy.hit;
	create_animation_effect(s_hit_effect,x,y-8,1,true);
	set_movement(knockbackDirection, other.knockback);
	audio_play_sound(a_hit, 7, false);
}
