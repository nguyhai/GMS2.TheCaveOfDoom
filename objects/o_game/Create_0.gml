global.one_second = game_get_speed(gamespeed_fps);

// Create Input Object
instance_create_layer(0,0,"Instances", o_input);

global.playerMaxHealth = 5;
global.playerHealth = global.playerMaxHealth;
global.playerMaxStamina = 5;
global.playerStamina = global.playerMaxStamina;

// Create gems variable for gem collection
global.playerGems = 0;

// Set the very first start position to game start
global.player_start_position = i_game_start;

// Game BGM
audio_play_sound(a_bgm_budding_season, 10, true);
//audio_play_sound(a_music, 10, true);

// Set the resolution of the GUI layer. 
var view_width = camera_get_view_width(view_camera[0]);
var view_height = camera_get_view_height(view_camera[0]);

display_set_gui_size(view_width, view_height);

// Create a variables for pausing
paused = false;
paused_sprite = noone;
paused_sprite_scale = display_get_gui_width() /  view_wport[0];


// Set default font using sprite
var font_string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ.abcdefghijklmnopqrstuvwxyz1234567890>,!':-+";
global.font = font_add_sprite_ext(s_font, font_string, true, 1);
draw_set_font(global.font);

// Create an array for our selected items
global.item[0] = noone;
global.item[1] = noone;

// Create the inventory
item_index = 0;
inventory_create(6);
inventory_add_item(o_ring_item);
inventory_add_item(o_sword_item);
inventory_add_item(o_bomb_item);


// Destroyed Items - Save any objects that have been destroyed already
global.destroyed = [];