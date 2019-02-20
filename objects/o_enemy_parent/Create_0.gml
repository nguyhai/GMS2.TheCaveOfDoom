initialize_movement_entity(1, 0.5, o_solid);
initialize_hurtbox_entity();

image_speed = 1;

maxHealth = 2;
currentHealth = maxHealth;
starting_state = noone;
state = starting_state;

enum enemy {
	hit
}