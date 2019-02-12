/// @description Insert description here
// You can write your code in this editor

// Check to see if start position exists
if (instance_exists(global.player_start_position)) {
    // Set player persistence = false 
	if (instance_exists(o_player)) {
		o_player.persistent = false;
		o_player.x = global.player_start_position.x;
		o_player.y = global.player_start_position.y;
		
		// Gotta set player instance again, we need to make sure player is in the instances layer
		// Between room moves
		o_player.layer = layer_get_id("Instances")
		
	} else {
		instance_create_layer(
			global.player_start_position.x, 
			global.player_start_position.y,
			"Instances",
			o_player);
	}
	
	
	
	global.player_start_position = noone;
}


