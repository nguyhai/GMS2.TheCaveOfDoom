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
		instance_activate_object(o_input);
		
		
		audio_play_sound(a_pause, 5, false);
	}
}

