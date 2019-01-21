/// @description Evade
image_speed = 0.8;

set_movement(rollDirection, rollSpeed);
move_movement_entity(false);

if (animation_hit_frame(image_number - 1)) {
    state = player.move;
}
