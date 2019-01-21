if  not instance_exists(o_player) {
    exit;
}

var distanceToPlayer= point_distance(x, y, o_player.x, o_player.y)


if (distanceToPlayer < 16) {
    state = porcupine.attack;
	image_index = 0;
	sprite_index = s_porcupine_attack;
}