if (!can_pickup_) {
	exit;
}
instance_destroy();
global.playerHealth += 1;

if (global.playerHealth > global.playerMaxHealth) {
	global.playerHealth = global.playerMaxHealth;
}

audio_play_sound(a_collect_item, 2, false);