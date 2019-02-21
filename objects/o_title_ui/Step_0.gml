if (o_input.up_pressed) {
    index = max(--index, 0);
}

if (o_input.down_pressed) {
    index = min(++index, option_length-1);
}

if (o_input.action_one_pressed) {
    switch (index) {
	    case options.continue_game:
	        show_debug_message("Continue")
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