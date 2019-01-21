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
	set_movement(knockbackDirection, other.knockback);
}
