image_speed = 0;
movementSpeed = 2;
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
	action
}

enum dir {
	right,
	up,
	left,
	down
}

// Sprite move lookup table for movement
sprite_[player.move, dir.right] = s_player_run_right;
sprite_[player.move, dir.up] = s_player_run_up;
sprite_[player.move, dir.down] = s_player_run_down;
sprite_[player.move, dir.left] = s_player_run_right;
