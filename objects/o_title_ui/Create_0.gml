// Create an array that has the different text for each option
// Draw it using a FOR loop
// Then use switch statement for running the logic for each option

enum options {
	continue_game,
	new_game,
	credits,
	quit
}

menu_color = make_color_rgb(185,248,216);// Yellowish
menu_dark_color = make_color_rgb(126,127,81);

option[options.continue_game] = "Continue";
option[options.new_game] = "New Game";
option[options.credits] = "Credits";
option[options.quit] = "Quit";

option_length = array_length_1d(option);

index = options.continue_game; // this index is our current selection