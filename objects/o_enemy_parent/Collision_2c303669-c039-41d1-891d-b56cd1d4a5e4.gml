/// @description Soft Collision
// Make a direction that goes from enemy towareds us, basically away from the other.x. 
// This way, when it colldies, it will go opposite direction. 
var direction_ = point_direction(other.x, other.y, x, y);

add_movement_maxspeed(direction_, 0.1, 2);