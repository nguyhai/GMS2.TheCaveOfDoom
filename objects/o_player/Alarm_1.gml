/// @description Stamina Alarm for Recharge

// Add one stamina per alarm run
global.playerStamina = min(global.playerStamina + 1, global.playerMaxStamina);

if (global.playerStamina < global.playerMaxStamina) {
    alarm[1] = global.one_second;
}