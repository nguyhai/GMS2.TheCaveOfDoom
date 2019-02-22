///@arg file_name
var file_name = argument0;

// Open the INI file
ini_open(file_name);
// Saving goes into here

// Saving the room's name that we are in
ini_write_string("Level", "Room", room_get_name(room)); 

// Saving the player's position
ini_write_real("Level", "Start x", global.player_start_position.x);
ini_write_real("Level", "Start y", global.player_start_position.y);


ini_close();