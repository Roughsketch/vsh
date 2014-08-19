#if defined VSH_PLAYER_INC
    #endinput
#endif

#define VSH_PLAYER_INC

new Damage[MAXPLAYERS + 1];
new AirDamage[MAXPLAYERS + 1]; // Air Strike
new uberTarget[MAXPLAYERS + 1];
new PrimaryMaxAmmo[MAXPLAYERS + 1];
new SecondaryMaxAmmo[MAXPLAYERS + 1];
//new Handle:UberTimers[MAXPLAYERS + 1];
new Handle:VaccineTimers[MAXPLAYERS + 1] = INVALID_HANDLE;
new Handle:SandvichTimers[MAXPLAYERS + 1] = INVALID_HANDLE;