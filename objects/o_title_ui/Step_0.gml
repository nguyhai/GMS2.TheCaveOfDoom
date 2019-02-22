var last_index = index;


if (o_input.up_pressed) {
    index = max(--index, 0);
}

if (o_input.down_pressed) {
    index = min(++index, option_length-1);
}

// Play a sound when navigating menu
if (last_index != index) {
    audio_play_sound(a_menu_move, 1, false);
}

if (o_input.action_one_pressed) {
	audio_play_sound(a_menu_select, 1, false);
    switch (index) {
	    case options.continue_game:
	        //show_debug_message("Continue")
			ini_load("save_data.ini");
			
	        break;
	    case options.new_game:
	        room_goto(r_world);
	        break;			
	    case options.credits:
	        show_debug_message("Credits")
	        break;				
	    case options.quit:
	        game_end();
	        break;				
	    default:
	        // code here
	        break;
	}
}