///@arg file_name
var file_name = argument0;
global.load = true;

if (!file_exists(file_name)) {
    exit;
}

// Open the INI file
ini_open(file_name);

// Load everything up
var room_name_ = ini_read_string("Level", "Room", ""); 
global.start_x = ini_read_real("Level", "Start x", 0);
global.start_y = ini_read_real("Level", "Start y", 0);

// Load player stats
global.playerHealth = ini_read_real("Player", "Health", 1);
global.playerMaxHealth = ini_read_real("Player", "Max Health", 1);
global.playerStamina = ini_read_real("Player", "Stamina", 1);
global.playerMaxStamina = ini_read_real("Player", "Max Stamina", 1);

// Load the inventory
global.inventory = ini_read_inventory("Player", "Inventory", []);

// Load Active Item
global.item = ini_read_inventory("Player", "Active Items", []);

// Load destroyed objects
global.destroyed = ini_read_string_array("World", "Destroyed Objects", []);

// Close the file after loading
ini_close();

if (room_name_ == "") {
    show_error("No Save Data", false);
}
var _room = asset_get_index(room_name_);


room_goto(_room);

