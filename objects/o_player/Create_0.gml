initialize_movement_entity(0.5, 1, o_solid);
image_speed = 0;
accelerationSpeed = 0.5;
maxSpeed = 1.5;


directionFacing = dir.right;
direction_ = 0

global.playerHealth = 4;

enum item{
	sword,
	potion,
	spell,
	note
}

enum player {
	move,
	sword
}

enum dir {
	right,
	up,
	left,
	down
}

state = player.move;


// Sprite move lookup table for movement
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.down] = s_player_run_down;
sprite_[player.move, dir.left] = s_player_run_right;

// Attack lookup table
sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.down] = s_player_attack_down;
sprite_[player.sword, dir.left] = s_player_attack_right;
