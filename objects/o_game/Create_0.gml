global.one_second = game_get_speed(gamespeed_fps);

// Create Input Object
instance_create_layer(0,0,"Instances", o_input);

global.playerMaxHealth = 4;
global.playerHealth = global.playerMaxHealth;
global.playerMaxStamina = 2;
global.playerStamina = global.playerMaxStamina;
global.playerGems = 0;

// Set the very first start position to game start
global.player_start_position = i_game_start;



//audio_play_sound(a_music, 10, true);
