/// @description Attack State
if (!instance_exists(o_player)) {
    state = bat.move;
}

if (distance_to_object(o_player) <= range) {
    state = bat.move;
}

var direction_ = point_direction(x, y, o_player.x, o_player.y);
// Fix bounciness of the bat when it chases against a wall
var x_speed = lengthdir_x(speed_, direction_);
if x_speed != 0 {
	image_xscale = sign(x_speed);
}

add_movement_maxspeed(direction_, 0.123, 1);

// Need boucning so it can turn around corners
move_movement_entity(true);

var _player = instance_place(x,y,o_player);

if (_player) {
    create_hitbox(sprite_index,x,y,0,1,[o_player],1,5);
}