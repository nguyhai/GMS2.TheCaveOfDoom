// Use this game object to draw all the GUI on the screen

var gui_height = display_get_gui_height();
var gui_width = display_get_gui_width();

// Draw our screenshot for the pause function
if (sprite_exists(paused_sprite)) {
    draw_sprite_ext(paused_sprite, 0, 0, 0, paused_sprite_scale, paused_sprite_scale, false, c_white, 1);
	// draw a rectangle too
	draw_set_alpha(0.6);
	draw_rectangle_color(0,0, gui_width, gui_height, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}


// Need health to stretch if player gets more health
var hud_right_edge = 3 + global.playerMaxHealth * 15;
draw_sprite_ext(s_hud, 0, 0, gui_height, hud_right_edge, 1, 0, c_white, 1);
draw_sprite(s_hud_edge, 0, hud_right_edge, gui_height);

// Draw the player's hearts.
for (var i = 0; i < global.playerMaxHealth; i++) {
    var filled = i < global.playerHealth;
	draw_sprite(s_heart_ui, filled, 4 + 15 * i, gui_height - 29);
}

// Draw the gems now. Converting our gem number to a string so we can print it on the screen
var gem_string = string(global.playerGems);
var text_width = string_width(gem_string);
var _x = gui_width - text_width + 4;
var _y = gui_height - 16 + 4;

// Draw the gem number
draw_sprite(s_gem, 0, _x - 16, _y + 7);
draw_text(_x - 8, _y - 1, gem_string);

// Draw inventory
inventory_draw(4, 36);

