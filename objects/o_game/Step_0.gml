if (paused) {
    var array_size = array_length_1d(global.inventory);
	if (o_input.right_pressed) {
	    item_index = min(item_index + 1, array_size - 1);
		audio_play_sound(a_menu_move, 1, false);
	}
		if (o_input.left_pressed) {
	    item_index = max(item_index - 1, 0);
		audio_play_sound(a_menu_move, 1, false);
	}
	
	if (o_input.action_one_pressed) {
	    global.item[0] = global.inventory[item_index];
		audio_play_sound(a_menu_select, 3, false);
	}
	
	if (o_input.action_two_pressed) {
	    global.item[1] = global.inventory[item_index];
		audio_play_sound(a_menu_select, 3, false);
	}

}


if (o_input.paused_pressed) {
	if (paused) {
	    paused = false;
		
		// If we have a paused sprite, make sure to destroy it so we don't end up with a memory leak. 
		if (sprite_exists(paused_sprite)) {
		    sprite_delete(paused_sprite);
		}
		
		
		instance_activate_all();
		audio_play_sound(a_unpause, 5, false);
	}
	else {
	    paused = true;

		// Take a screenshot of the current screen and point it to paused_sprite
		paused_sprite = sprite_create_from_surface(
			application_surface,
			0,
			0,
			view_wport[0], 
			view_hport[0], 
			false, false, 
			0,
			0);
		
		instance_deactivate_all(true);
		
		// Need to keep the o_input object active
		var array_size = array_length_1d(global.inventory);
		for (var i = 0; i < array_size; i++) {
		    instance_activate_object(global.inventory[i]);
		}

		instance_activate_object(o_input);
		audio_play_sound(a_pause, 5, false);
	}
}

