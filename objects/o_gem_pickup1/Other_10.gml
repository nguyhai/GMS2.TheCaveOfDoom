if (!can_pickup_) {
	exit;
}
instance_destroy();
global.playerGems += 1;
audio_play_sound(a_collect_item, 2, false);