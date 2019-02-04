/// @description Hit Logic
if (hurtbox_entity_can_be_hit_by(other)) {
	invincible = true;
	alarm[0] = global.one_second * 0.75;
	global.playerHealth -= other.damage;
	var direction_ = point_direction(other.x, other.y, x, y);
	set_movement(direction_, other.knockback);
	state = player.hit;
	//event_user(state); removes delay?
}