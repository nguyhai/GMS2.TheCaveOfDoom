draw_set_halign(fa_center);
for (i = 0; i < option_length; i++) {
	// check current option we are drawing to see if it is current to our index
	if (i == index) {
	    draw_set_color(menu_color);
	} else {
		draw_set_color(menu_dark_color);
	}
    draw_text(x, y + i * 12, option[i])
}

// Set color back to white
draw_set_color(c_white);

// Set back to left
draw_set_halign(fa_left);

