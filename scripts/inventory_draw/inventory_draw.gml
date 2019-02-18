///@arg x
///@arg y

// Loop through our inventory, and if there is an item there, access it and draw it's sprite. 
// Empty box if there is nothing there. 

// If not paused, exit this script
if (!o_game.paused) {
    exit;
}

// Take arguments for positioning
var inventoryX = argument0;
var inventoryY = argument1;
var array_size = array_length_1d(global.inventory);

// Draw the inventory
for (var i = 0; i < array_size; i++) {
    var box_x = inventoryX + i * 32;
	var box_y = inventoryY;
	draw_sprite(s_inventory_box, 0, box_x, box_y);
	
	var item_ = global.inventory[i];
	if (instance_exists(item_)) {
	    draw_sprite(item_.sprite, 0, box_x + 16, box_y + 16);
	}
	
	if (i == item_index) {
	    draw_sprite(s_pause_cursor, image_index / 8, box_x, box_y);
		
		if (instance_exists(item_)) {
		    draw_text(inventoryX + 4, inventoryY + 36, item_.description);
			var description_height = string_height(item_.description);
			draw_text(inventoryX + 4, inventoryY + 48 + description_height, "Stamina Cost: " + string (item_.cost));
		}
	}
	
}

// Draw the equipped items boxes
draw_sprite(s_inventory_box, 0, 4, 4);
draw_sprite(s_inventory_box, 0, 36, 4);

if (instance_exists(global.item[0])) {
    draw_sprite(global.item[0].sprite, 0, 20, 20);
}

if (instance_exists(global.item[1])) {
    draw_sprite(global.item[1].sprite, 0, 52, 20);
}