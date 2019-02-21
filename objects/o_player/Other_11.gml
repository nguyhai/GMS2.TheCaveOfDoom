/// @description Sword State
image_speed = 0.8;

if (animation_hit_frame(1)) {
	// Make local scope variables for readability
	var angle = directionFacing*90;
	var life = 3;
	var damage = 1;
	var knockback = 8;
	
	// Assigning our hitbox to a variable so we can make further modifications to it. 
	var hitbox = create_hitbox(s_sword_hitbox,x,y,angle, life, [o_enemy_parent, o_grass, o_bush], damage,knockback);
	
	// Add sound effect for sword swipe
	audio_play_sound(a_swipe, 7, false);
	
	
	switch directionFacing {
		case dir.up: 
			hitbox.y -=4;
			break;
		default: 
			hitbox.y -=8;
			break;
	}
}

if (animation_hit_frame(image_number - 1)) {
    state = player.move;
}
