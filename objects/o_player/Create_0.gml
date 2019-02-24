initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();

alarm[1] = global.one_second;

image_speed = 0;
accelerationSpeed = 0.5;
maxSpeed = 1.5;

directionFacing = dir.right;
direction_ = 0

rollDirection = 0;
rollSpeed = 2;


enum item{
	sword,
	potion,
	spell,
	note
}

enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit // 6
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state = player.move;
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

// Evade lookup table
sprite_[player.evade, dir.right] = s_player_roll_right;
sprite_[player.evade, dir.up] = s_player_roll_up;
sprite_[player.evade, dir.down] = s_player_roll_down;
sprite_[player.evade, dir.left] = s_player_roll_right;

// Sprite hit state
sprite_[player.hit, dir.right] = s_player_run_right;
sprite_[player.hit, dir.up]    = s_player_run_up;
sprite_[player.hit, dir.down]  = s_player_run_down;
sprite_[player.hit, dir.left]  = s_player_run_right;

// Sprite bomb state
sprite_[player.bomb, dir.right] = s_player_run_right;
sprite_[player.bomb, dir.up]    = s_player_run_up;
sprite_[player.bomb, dir.down]  = s_player_run_down;
sprite_[player.bomb, dir.left]  = s_player_run_right;