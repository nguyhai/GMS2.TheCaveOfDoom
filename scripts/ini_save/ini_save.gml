///@arg file_name
var file_name = argument0;

// Clear out old save file first.
if (file_exists(file_name)) {
    file_delete(file_name);
}

// Open the INI file
ini_open(file_name);

// Saving goes into here

// Saving the room's name that we are in
ini_write_string("Level", "Room", room_get_name(room)); 

// Saving the player's position
ini_write_real("Level", "Start x", global.player_start_position.x);
ini_write_real("Level", "Start y", global.player_start_position.y);

// Save player stats, health, max health, stamina, max stamina
ini_write_real("Player", "Health",		global.playerHealth);
ini_write_real("Player", "Max Health",	global.playerMaxHealth);
ini_write_real("Player", "Stamina",		global.playerStamina);
ini_write_real("Player", "Max Stamina",	global.playerMaxStamina);

// Write inventory
ini_write_inventory("Player", "Inventory", global.inventory);

// Save active item
ini_write_inventory("Player", "Active Items", global.item);

// Save Destroyed Objects
ini_write_string_array("World", "Destroyed Objects", global.destroyed);

ini_close();