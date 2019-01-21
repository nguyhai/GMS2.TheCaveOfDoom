/// @description Collision with hitbox
if (currentHealth <= 0) {
    exit;
}

var knockbackDirection = point_direction(other.x, other.y, x, y);
currentHealth -= other.damage;
state = enemy.hit;

set_movement(knockbackDirection, other.knockback);