/*
 ===Versus Saxton Hale Mode===
 Created by Rainbolt Dash (formerly Dr.Eggman): programmer, model-maker, mapper.
 Notoriously famous for creating plugins with terrible code and then abandoning them
 
 FlaminSarge - He makes cool things. He improves on terrible things until they're good.
 Chdata - A Hale enthusiast with a good understanding of this mod's balance between all classes, and a coder.
 nergal - Added some very nice features to the plugin and fixed important bugs.
 
 New plugin thread on AlliedMods: https://forums.alliedmods.net/showthread.php?p=2167912
 
 TF2Data's Modified VSH


 prec - update: it does seem to delete maps on a listen server (if I join a map via Create New Game)
 which means, on a server noone can really join / isn't a dedicated server...
 on dedicated servers it just doesn't delete them
 check config.cfg


 bind i "sm_rcon sm plugins reload saxtonhale.smx
 ;sm_cvar hale_rage_damage 3500"


 fix goomba not locking control point

 Heavy: Can jump while revved up.

 TODO:

 ctf_facing_worlds_2011
 - 100 hp top of tower
 - 50 hp center
 - 25 hp corners of tower
 
 ----VSH----
 Make bosses only thriller taunt during Halloween, except for HHH who can year round.
 Damage gives killstreaks. 300 dmg per "kill".
 Fixed spawning random ammo/HP on maps that don't have any.

 ----Old Bosses----
 Lower Nue's max HP and make her gain rage more often. %age health based rage.
 Nue cannot stun people, but has no player clipping while invisible.
 Nue has instant cloak+decloak
 
 ----Weapons----
 Make vaccinator resist type not matter.
 Normal shotgun = minicrits airborne targets
 Sniper rifle - Headshots hit 450 regardless of charge.

 Engineers can now teleport in both directions.
 Fix regenerating sandvich after eating it to use the HUD.
 Make chocolate spin when thrown on the ground. 
 Make bazoka use runcmd instead of clienttimer.
 Bonk's spell knocks Hale away (during the 1 second of uber)
 Undo wrangler jump lowered accuracy from a distance.
 Airblast - Cooldown only after hitting Hale. Cooldown resets if melee or flare combo.

 Mittens - Become fluffy for 5 seconds on hit. Cannot attack again for 10 seconds after hit.

 Scouts cannot take teleporters.

 TF2 Backpack reloader. (probably not doing this one)
 While not equipped with weapons, they automatically reload themselves (timed based on the weapon)
 
 ----New Bosses----
 Gaben Newell
  - Valve Time
  - 4 second control delay
  - Lose connection to item server
 
 Painis Cupcake

 rage music https://www.youtube.com/watch?v=-G9ChcF8qcc

 Alternate Ability (Alt Fire): Eat

Right clicking on a highlighted corpse will cause Painis Cupcake to eat the body of the player, healing him for 50% of the damage they have dealt, up to a maximum of 250 Health healed. While eating, Painis is immune to backstabs. Dead Bodies are highlighted by 3 colours: Purple for Vampire bodies, Blue for players who have dealt under 250 damage, and green for players who have dealt over 500 damage.
Rage Ability: Hunger

When Painis Cupcake activates this rage, he will scare all nearby players. Scared players will move slower compared to the Headless Horseman's taunt. Painis MUST eat any players, dead or alive, that he touches. Vampires are an exception and Painis can charge right into them without eating them. The Rage even goes through any defense a player may have, such as three heads as a Demoman, or a deployed Ubercharge as a Medic. The Rage lasts about 15 seconds at 100% and around 30 at 200%. Painis and the sky glow red and special music begins when this initiates. For the duration of the Rage, he is granted invincibility and can use Super-Jump with no charge time.

The best time to eat players is during Sudden Death, as you lose a lot of health when it initiates, or during Last Man Standing if the Pyro can potentially kill you.
Heavies make great health boosts, especially if they had a medic buddy.
Sometimes eating people who have dealt less than 500 damage (blue) can be a waste of time as you lose more health while temporarily stunned. However, you can not be backstabed while doing so.
Gaining health through eating people will cause your rage meter to drop.
Eat people if they are seperated from the group, or if no one is watching. Do this, and whenever you rage, you won't have to eat bodies to get to your target.
Before eating, look for any sentries and heavies, as they can easily shed any gained health.

If Painis is chasing you, try run over dead bodies so he has to stop to eat them during his rage ability.
Spies , run from him and dodge while Hunger is active, he will eat you even if you are currently invisible or have the Dead Ringer out.
Keep an eye on Painis Cupcake's speed. If he's moving as fast as a scout, he probably has a rage ready to be deployed.
All players should take advantage of the short stun when Painis eats a player, Demoknights can get roughly 3 hits off the boss while other players can just take pot shots.
Snipers should take advantage of Painis's stun time while eating to land a few shots. A good sniper should be able to land at least two hits, which should remove at least half of the health Painis gains. A sniper using the Machina can actually erase all of it and do a little more besides, but Painis will likely target him as a result, so snipers must be cautious when attacking him.
As Engineer, place sentrys where there are alot of bodies, so that painis can not gain too much health while eating them.
As Heavy or Pyro, use your melee or secondary weapon taunt kill when he is stunned while eating somebody to keep him from gaining any health. Of course, it is extremely risky since Painis can see behind him when he's eating.
As Medic, do not deploy ubercharge while Painis is using Hunger, it is as deadly as Saxton Hale's death-touch.

 Demopan

 HHH can reap buildings in one hit.
 HHH can reap any player in one hit.
 HHH now starts out slower, but increases run speed based on heads, and gains health.
 Starts with less health, but his max health increases and he gains the amount of health his death victim had.
 
 ----Rage----
 The more people that are raged, the longer it lasts.
 Solo raging is a shorter rage.
 Sentry rage is the same as usual.
 
 Sentry damage builds rage faster than anything else.
 Everything else's rage building rate has been nerfed.

 Rage costs 10% current hp, minimum 5% of max hp.
 
 Rage normally gives 5 seconds of stun. 8 vs sentry
 
 1 player - 2s
 2 player - 3s
 
 caps at 6.5s
 
 stats: how many people raged at once
 
 32 players / 4 = 8 second stun
 
 
 
 
 
 ghostmode https://forums.alliedmods.net/showthread.php?t=207199
 spraybans https://forums.alliedmods.net/showthread.php?t=75480&highlight=Adminspray&page=91
 custom chat colors https://forums.alliedmods.net/showthread.php?t=186695
 
 @class
 @random
 @redbots
 @blubots
 @randomdead
 @randomalive
 @randomblu
 @randomred
 @randomdeadred
 @randomdeadblu
 @randomalivered
 @randomaliveblu
 @alive
 @dead
 
 add !rank to killstreak plugin
*/

#pragma semicolon 1
#include <sourcemod>
#include <sdkhooks>
#include <tf2_stocks>
#include <morecolors>
#include <nextmap>
#include <tf2items>
#include <tf2attributes>
#include <clientprefs>
//#undef REQUIRE_EXTENSIONS
#include <steamtools>
//#define REQUIRE_EXTENSIONS

#include "vsh_common"
#include "boss/boss"


//  Temporary fix: Enabled is used in panel and must be defined ahead of time
new bool:Enabled = false;
#include "panel"        //  Panel must be included after boss.inc

// Maps to enable trigger_hurt teleport to spawn
static const String:sTrigger_Teleport[][] = {
    "ctf_facing_worlds_2011",
    "arena_nucleus"
    //"koth_facing_worlds" // Map out of rotation
};

// true = Hale teleports to his own team's spawn on trigger_hurt
// false = Hale teleports to any spawn location
// Matched to the maps above
//static const bool:bTeam_Teleport[] = {
//    false,
//    true,
//    false     // koth_facing_worlds out of rotation
//};


new Float:iClassSpeeds[10] = {340.0, 400.0, 300.0, 240.0, 280.0, 320.0, 230.0, 300.0, 300.0, 300.0};
//new iClassBaseHP[10] = {300, 125, 125, 200, 175, 150, 300, 175, 125, 125};


#if defined _steamtools_included
new bool:steamtools = false;
#endif

new Damage[MAXPLAYERS + 1];
new AirDamage[MAXPLAYERS + 1]; // Air Strike
new uberTarget[MAXPLAYERS + 1];
new PrimaryMaxAmmo[MAXPLAYERS + 1];
new SecondaryMaxAmmo[MAXPLAYERS + 1];
//new Handle:UberTimers[MAXPLAYERS + 1];
new Handle:VaccineTimers[MAXPLAYERS + 1] = INVALID_HANDLE;
new Handle:SandvichTimers[MAXPLAYERS + 1] = INVALID_HANDLE;
//new Handle:hScheemic_Medibeam = INVALID_HANDLE;

//new g_LastSandvich[MAXPLAYERS+1] = {-1,...};
new bool:g_bBzFull[MAXPLAYERS + 1];
//new g_iTimerTime = 1;
new bool:PointReady;
new bool:bMedieval;                 //  UNUSED
new KSpreeCount = 1;                //  UNUSED
new Float:circuitStun = 0.0;        //  UNUSED

new Handle:cvarVersion;
new Handle:cvarHaleSpeed;
new Handle:cvarPointDelay;
new Handle:cvarRageDMG;
new Handle:cvarRageDist;
new Handle:cvarAnnounce;
new Handle:cvarSpecials;
new Handle:cvarEnabled;
new Handle:cvarAliveToEnable;
new Handle:cvarPointType;
new Handle:cvarCrits;
new Handle:cvarRageSentry;
new Handle:cvarFirstRound;
new Handle:cvarCircuitStun;
new Handle:cvarForceSpecToHale;
new Handle:cvarForceHaleTeam;
new Handle:cvarDebugMessages;

new PointType = 0;
new PointDelay = 6;
new AliveToEnable;
new Float:Announce = 120.0;
new bool:newRageSentry = true;

new bool:checkdoors = false;
new Handle:doorchecktimer;
new Handle:jumpHUD;
new Handle:rageHUD;
new Handle:healthHUD;
new Handle:MusicTimer;
new Handle:hCapResetDMG;

new bool:g_bIsCapEnabled = false;
new bool:bTenSecStart[2] = {false, false};
new TeamRoundCounter;
new String:g_sCurrentMap[99];
new tf_arena_use_queue;
new mp_teams_unbalance_limit;
new tf_arena_first_blood;
new mp_forcecamera;
new Float:tf_scout_hype_pep_max;
new defaulttakedamagetype;

new bool:Direct[MAXPLAYERS + 1];            //True = last shot was a direct shot, False = was not
new Float:DirectTime[MAXPLAYERS + 1];       //Game frame the hit was occured
new g_iJumpMax = 2;
new g_iJumps[MAXPLAYERS + 1] = 0;

//new _:g_iAirDashCount[MAXPLAYERS + 1] = 0;
//#define NueMaxAirDash 2

new bool:g_bClientRJFlag[MAXPLAYERS+1] = { false, ... };
new bool:bBazaarHit[MAXPLAYERS + 1] = { false, ... };
//new bool:g_bClientAirBlastFlag[MAXPLAYERS+1] = { false, ... };

new Handle:OnHaleJump;
new Handle:OnHaleRage;
new Handle:OnHaleWeighdown;
new Handle:OnMusic;

//new Handle:hEquipWearable;
new Handle:hSetAmmoVelocity;

//new bool:ACH_Enabled;
public Plugin:myinfo = {
    name = "VSH:Data",
    author = "Chdata",
    description = "Hexy.",
    version = PLUGIN_VERSION,
    url = "http://forums.alliedmods.net/showthread.php?t=146884",
};

public APLRes:AskPluginLoad2(Handle:myself, bool:late, String:error[], err_max)
{
    MarkNativeAsOptional("GetUserMessageType");
    MarkNativeAsOptional("PbSetInt");
    MarkNativeAsOptional("PbSetBool");
    MarkNativeAsOptional("PbSetString");
    MarkNativeAsOptional("PbAddString");

    CreateNative("VSH_IsNueRaging", Nue_Native_IsRageActive);
    CreateNative("VSH_IsCapEnabled", Native_IsCapEnabled);
    CreateNative("VSH_IsSaxtonHaleModeMap", Native_IsVSHMap);
    CreateNative("VSH_IsSaxtonHaleModeEnabled", Native_IsEnabled);
    CreateNative("VSH_GetSaxtonHaleUserId", Native_GetHale);
    CreateNative("VSH_GetSaxtonHaleTeam", Native_GetTeam);
    CreateNative("VSH_GetSpecialRoundIndex", Native_GetSpecial);
    CreateNative("VSH_GetSaxtonHaleHealth", Native_GetHealth);
    CreateNative("VSH_GetSaxtonHaleHealthMax", Native_GetHealthMax);
    CreateNative("VSH_GetClientDamage", Native_GetDamage);
    CreateNative("VSH_GetRoundState", Native_GetRoundState);
    OnHaleJump = CreateGlobalForward("VSH_OnDoJump", ET_Hook, Param_CellByRef);
    OnHaleRage = CreateGlobalForward("VSH_OnDoRage", ET_Hook, Param_FloatByRef);
    OnHaleWeighdown = CreateGlobalForward("VSH_OnDoWeighdown", ET_Hook);
    OnMusic = CreateGlobalForward("VSH_OnMusic", ET_Hook, Param_String, Param_FloatByRef);
    RegPluginLibrary("saxtonhale");
#if defined _steamtools_included
    MarkNativeAsOptional("Steam_SetGameDescription");
#endif
    return APLRes_Success;
}

InitGamedata()
{
#if defined EASTER_BUNNY_ON
    new Handle:hGameConf = LoadGameConfigFile("saxtonhale");

    if (hGameConf == INVALID_HANDLE)
    {
        SetFailState("[VSH] Unable to load gamedata file 'saxtonhale.txt'");
        return;
    }
    /*  StartPrepSDKCall(SDKCall_Player);
    PrepSDKCall_SetFromConf(hGameConf, SDKConf_Virtual, "CTFPlayer::EquipWearable");
    PrepSDKCall_AddParameter(SDKType_CBaseEntity, SDKPass_Pointer);
    hEquipWearable = EndPrepSDKCall();
    if (hEquipWearable == INVALID_HANDLE)
    {
    SetFailState("[VSH] Failed to initialize call to CTFPlayer::EquipWearable");
    return;
    }*/
    StartPrepSDKCall(SDKCall_Entity);
    PrepSDKCall_SetFromConf(hGameConf, SDKConf_Signature, "CTFAmmoPack::SetInitialVelocity");
    PrepSDKCall_AddParameter(SDKType_Vector, SDKPass_Pointer);
    hSetAmmoVelocity = EndPrepSDKCall();

    if (hSetAmmoVelocity == INVALID_HANDLE)
    {
        SetFailState("[VSH] Failed to initialize call to CTFAmmoPack::SetInitialVelocity");
        CloseHandle(hGameConf);
        return;
    }

    CloseHandle(hGameConf);
#endif
}

public OnPluginStart()
{
    decl String:sLatestTitle[100];
    Common_GetLatestTitle(sLatestTitle, 100);

    InitGamedata();
    LogMessage("===Versus Saxton Hale Initializing - %s===", sLatestTitle);
    cvarVersion = CreateConVar("hale_version", sLatestTitle, "VS Saxton Hale Version", FCVAR_NOTIFY | FCVAR_PLUGIN | FCVAR_SPONLY | FCVAR_DONTRECORD);
    cvarHaleSpeed = CreateConVar("hale_speed", "340.0", "Speed of Saxton Hale", FCVAR_PLUGIN);
    cvarPointType = CreateConVar("hale_point_type", "0", "Select condition to enable point (0 - alive players, 1 - time)", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarPointDelay = CreateConVar("hale_point_delay", "6", "Addition (for each player) delay before point's activation.", FCVAR_PLUGIN);
    cvarAliveToEnable = CreateConVar("hale_point_alive", "5", "Enable control points when there are X people left alive.", FCVAR_PLUGIN);
    cvarRageDMG = CreateConVar("hale_rage_damage", "1900", "Damage required for Hale to gain rage", FCVAR_PLUGIN, true, 0.0);
    cvarRageDist = CreateConVar("hale_rage_dist", "800.0", "Distance to stun in Hale's rage. Vagineer and CBS are /3 (/2 for sentries)", FCVAR_PLUGIN, true, 0.0);
    cvarAnnounce = CreateConVar("hale_announce", "120.0", "Info about mode will show every X seconds. Must be greater than 1.0 to show.", FCVAR_PLUGIN, true, 0.0);
    cvarSpecials = CreateConVar("hale_specials", "1", "Enable Special Rounds (Vagineer, HHH, CBS)", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarEnabled = CreateConVar("hale_enabled", "1", "Do you really want set it to 0?", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarCrits = CreateConVar("hale_crits", "1", "Can Hale get crits?", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarRageSentry = CreateConVar("hale_ragesentrydamagemode", "1", "If 0, to repair a sentry that has been damaged by rage, the Engineer must pick it up and put it back down.", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarFirstRound = CreateConVar("hale_first_round", "0", "Disable(0) or Enable(1) VSH in 1st round.", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarCircuitStun = CreateConVar("hale_circuit_stun", "0", "0 to disable Short Circuit stun, >0 to make it stun Hale for x seconds", FCVAR_PLUGIN, true, 0.0);
    cvarForceSpecToHale = CreateConVar("hale_spec_force_boss", "0", "1- if a spectator is up next, will force them to Hale + spectators will gain queue points, else spectators are ignored by plugin", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    //cvarEnableEurekaEffect = CreateConVar("hale_enable_eureka", "0", "1- allow Eureka Effect, else disallow", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    cvarForceHaleTeam = CreateConVar("hale_force_team", "0", "0- Use plugin logic, 1- random team, 2- red, 3- blue", FCVAR_PLUGIN, true, 0.0, true, 3.0);
    cvarDebugMessages = CreateConVar("data_debug", "1", "1 = msg on 0 = msg off", FCVAR_PLUGIN, true, 0.0, true, 1.0);
    HookEvent("teamplay_round_start", event_round_start);
    HookEvent("teamplay_round_win", event_round_end);
    HookEvent("player_changeclass", event_changeclass);
    HookEvent("player_spawn", event_player_spawn);
    HookEvent("player_death", event_player_death, EventHookMode_Pre);
    HookEvent("player_chargedeployed", event_uberdeployed);
    HookEvent("player_hurt", event_hurt, EventHookMode_Pre);
    HookEvent("object_destroyed", event_destroy, EventHookMode_Pre);
    HookEvent("object_deflected", event_deflect, EventHookMode_Pre);

    HookEvent( "rocket_jump", OnHookedEvent );
    HookEvent( "rocket_jump_landed", OnHookedEvent );
    HookEvent( "player_death", OnHookedEvent );

    HookEvent("post_inventory_application", evEquipped);

    //HookEvent( "player_death", event_player_death_backstab );
    //HookEvent( "player_death", event_player_death_backstab, EventHookMode_Post );

    //HookEvent( "object_deflected", OnHookedEvent );

    HookUserMessage(GetUserMessageId("PlayerJarated"), event_jarate);
    HookConVarChange(cvarEnabled, CvarChange);
    HookConVarChange(cvarHaleSpeed, CvarChange);
    HookConVarChange(cvarRageDMG, CvarChange);
    HookConVarChange(cvarRageDist, CvarChange);
    HookConVarChange(cvarAnnounce, CvarChange);
    HookConVarChange(cvarSpecials, CvarChange);
    HookConVarChange(cvarPointType, CvarChange);
    HookConVarChange(cvarPointDelay, CvarChange);
    HookConVarChange(cvarAliveToEnable, CvarChange);
    HookConVarChange(cvarCrits, CvarChange);
    HookConVarChange(cvarRageSentry, CvarChange);
    HookConVarChange(cvarCircuitStun, CvarChange);
    HookConVarChange(cvarDebugMessages, CvarChange);
    RegConsoleCmd("sm_hale", HalePanel);
    RegConsoleCmd("sm_halemenu", HalePanel);
    RegConsoleCmd("sm_menu", HalePanel);
    RegConsoleCmd("sm_hale_hp", Command_GetHPCmd);
    RegConsoleCmd("sm_halehp", Command_GetHPCmd);
    RegConsoleCmd("sm_hale_next", QueuePanelCmd);
    RegConsoleCmd("sm_halenext", QueuePanelCmd);
    RegConsoleCmd("sm_hale_help", HelpPanelCmd);
    RegConsoleCmd("sm_halehelp", HelpPanelCmd);
    RegConsoleCmd("sm_hale_class", HelpPanel2Cmd);
    RegConsoleCmd("sm_haleclass", HelpPanel2Cmd);
    RegConsoleCmd("sm_hale_classinfotoggle", ClasshelpinfoCmd);
    RegConsoleCmd("sm_haleclassinfotoggle", ClasshelpinfoCmd);
    RegConsoleCmd("sm_infotoggle", ClasshelpinfoCmd);
    RegConsoleCmd("sm_hale_new", NewPanelCmd);
    RegConsoleCmd("sm_halenew", NewPanelCmd);
    RegConsoleCmd("sm_halenue", NewPanelCmd);
    RegConsoleCmd("sm_hale_nue", NewPanelCmd);
    //  RegConsoleCmd("hale_me", SkipHalePanelCmd);
    //  RegConsoleCmd("haleme", SkipHalePanelCmd);
    RegConsoleCmd("sm_halemusic", MusicTogglePanelCmd);
    RegConsoleCmd("sm_hale_music", MusicTogglePanelCmd);
    RegConsoleCmd("sm_halevoice", VoiceTogglePanelCmd);
    RegConsoleCmd("sm_hale_voice", VoiceTogglePanelCmd);
    RegConsoleCmd("sm_haletoggle", NeverHaleMe);
    RegConsoleCmd("sm_hale_toggle", NeverHaleMe);
    RegConsoleCmd("sm_toggle", NeverHaleMe);
    RegConsoleCmd("sm_halemode", SetDifficultyCmd);
    RegConsoleCmd("sm_hale_mode", SetDifficultyCmd);
    RegConsoleCmd("sm_difficulty", SetDifficultyCmd);
    RegConsoleCmd("sm_sethale", Command_SetHale);  
    RegConsoleCmd("sm_setboss", Command_SetHale);  
    RegConsoleCmd("sm_haleboss", Command_SetHale);  
    /*RegAdminCmd("sethale", Command_SetHale, ADMFLAG_RESERVATION, "set your hale");
    RegAdminCmd("setboss", Command_SetHale, ADMFLAG_RESERVATION, "set your hale");
    RegAdminCmd("haleboss", Command_SetHale, ADMFLAG_RESERVATION, "set your hale");*/
    RegAdminCmd("sm_hale_resetqueuepoints", ResetQueuePointsCmd, 0);
    RegAdminCmd("sm_hale_resetq", ResetQueuePointsCmd, 0);
    RegAdminCmd("sm_halereset", ResetQueuePointsCmd, 0);
    RegAdminCmd("sm_resetq", ResetQueuePointsCmd, 0);
    AddCommandListener(DoTaunt, "taunt");
    AddCommandListener(DoTaunt, "+taunt");
    AddCommandListener(cdVoiceMenu, "voicemenu");
    AddCommandListener(cdEureka, "eureka_teleport");
    AddCommandListener(DoSuicide, "explode");
    AddCommandListener(DoSuicide, "kill");
    AddCommandListener(DoSuicide2, "jointeam");
    //AddCommandListener(HHHaAttack, "+attack");
    AddCommandListener(Destroy, "destroy");
    RegAdminCmd("sm_sethp", Command_HaleSetHP, ADMFLAG_CHEATS, "sethp <amount> - Set boss current health");
    RegAdminCmd("sm_sethealth", Command_HaleSetHP, ADMFLAG_CHEATS, "sethp <amount> - Set boss current health");
    RegAdminCmd("sm_setmaxhp", Command_HaleSetMaxHP, ADMFLAG_CHEATS, "setmaxhp <amount> - Set boss max health");
    RegAdminCmd("sm_setmaxhealth", Command_HaleSetMaxHP, ADMFLAG_CHEATS, "setmaxhp <amount> - Set boss max health");
    RegAdminCmd("sm_sethpmax", Command_HaleSetMaxHP, ADMFLAG_CHEATS, "setmaxhp <amount> - Set boss max health");
    RegAdminCmd("sm_sethealthmax", Command_HaleSetMaxHP, ADMFLAG_CHEATS, "setmaxhp <amount> - Set boss max health");
    RegAdminCmd("sm_setmax", Command_HaleSetMaxHP, ADMFLAG_CHEATS, "setmaxhp <amount> - Set boss max health");
    RegAdminCmd("sm_hale_select", Command_HaleSelect, ADMFLAG_CHEATS, "hale_select <target> - Select a player to be next boss");
    RegAdminCmd("sm_hale_special", Command_MakeNextSpecial, ADMFLAG_CHEATS, "Call a special to next round.");
    RegAdminCmd("sm_hale_addpoints", Command_Points, ADMFLAG_CHEATS, "hale_addpoints <target> <points> - Add queue points to user.");
    RegAdminCmd("sm_hale_point_enable", Command_Point_Enable, ADMFLAG_CHEATS, "Enable CP. Only with hale_point_type = 0");
    RegAdminCmd("sm_hale_point_disable", Command_Point_Disable, ADMFLAG_CHEATS, "Disable CP. Only with hale_point_type = 0");
    RegAdminCmd("sm_hale_cap_enable", Command_Point_Enable, ADMFLAG_CHEATS, "Enable CP. Only with hale_point_type = 0");
    RegAdminCmd("sm_hale_cap_disable", Command_Point_Disable, ADMFLAG_CHEATS, "Disable CP. Only with hale_point_type = 0");
    RegAdminCmd("sm_hale_stop_music", Command_StopMusic, ADMFLAG_CHEATS, "Stop any currently playing Boss music.");
    AutoExecConfig(true, "SaxtonHale");

    Panel_InitCookies();

    jumpHUD = CreateHudSynchronizer();
    rageHUD = CreateHudSynchronizer();
    healthHUD = CreateHudSynchronizer();

    AddCommandListener(Hook_CommandSay, "say");
    AddCommandListener(Hook_CommandSay, "say_team");
    AddCommandListener(Hook_CommandSay, "voicemenu");

    LoadTranslations("saxtonhale.phrases");
#if defined EASTER_BUNNY_ON
    LoadTranslations("saxtonhale_bunny.phrases");
#endif
    LoadTranslations("common.phrases");
    for (new client = 0; client <= MaxClients; client++)
    {
        Direct[client] = false;
        //DirectTime[client] = -1.0;
        VSHFlags[client] = 0;
        Damage[client] = 0;
        AirDamage[client] = 0;
        uberTarget[client] = -1;
        if (IsValidClient(client))
        {
            SDKHook(client, SDKHook_OnTakeDamage, OnTakeDamage);

            if (IsPlayerAlive(client))
            {
                TF2Attrib_RemoveByName(client, "damage force reduction");
                TF2Attrib_RemoveByName(client, "self dmg push force increased");

                if (IsClientChdata(client)) CPrintToChdata("reset attributes on reload");

                if (TF2Attrib_RemoveByName(client, "max health additive bonus"))
                {
                    SetEntProp(client, Prop_Send, "m_iHealth", GetClientSpawnHealth(client));
                }
            }
        }
    }
    AddNormalSoundHook(HookSound);
#if defined _steamtools_included
    steamtools = LibraryExists("SteamTools");
#endif
    AddMultiTargetFilter("@hale", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!hale", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@boss", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!boss", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@nue", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!nue", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@cave", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!cave", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@cbs", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!cbs", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@hhh", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!hhh", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@vag", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!vag", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@vag", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!vag", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@bunny", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!bunny", HaleTargetFilter, "all non-boss players", false);

    AddMultiTargetFilter("@astro", HaleTargetFilter, "the current boss", false);
    AddMultiTargetFilter("@!astro", HaleTargetFilter, "all non-boss players", false);
}

public bool:HaleTargetFilter(const String:pattern[], Handle:clients)
{
    new bool:non = pattern[1] == '!'; // StrContains(pattern, "!", false) != -1;
    for (new client = 1; client <= MaxClients; client++)
    {
        if (IsValidClient(client) && FindValueInArray(clients, client) == -1)
        {
            if (Enabled && Boss_IsClientHale(client))
            {
                if (!non)
                {
                    PushArrayCell(clients, client);
                }
            }
            else if (non)
            {
                PushArrayCell(clients, client);
            }
        }
    }

    return true;
}

public OnLibraryAdded(const String:name[])
{
#if defined _steamtools_included
    if (strcmp(name, "SteamTools", false) == 0)
        steamtools = true;
#endif
    //  if (strcmp(name, "hale_achievements", false) == 0)
    //      ACH_Enabled = true;
}

public OnLibraryRemoved(const String:name[])
{
#if defined _steamtools_included
    if (strcmp(name, "SteamTools", false) == 0)
        steamtools = false;
#endif
    //  if (strcmp(name, "hale_achievements", false) == 0)
    //      ACH_Enabled = false;
}

public OnConfigsExecuted()
{
    decl String:oldversion[64];
    GetConVarString(cvarVersion, oldversion, sizeof(oldversion));

    decl String:sLatestTitle[100];
    Common_GetLatestTitle(sLatestTitle, 100);

    if (strcmp(oldversion, sLatestTitle, false) != 0)
    {
        LogError("[VS Saxton Hale] Warning: your config may be outdated. Back up your tf/cfg/sourcemod/SaxtonHale.cfg file and delete it, and this plugin will generate a new one that you can then modify to your original values.");
    }

    SetConVarString(FindConVar("hale_version"), sLatestTitle);
    Boss_SetSpeed(GetConVarFloat(cvarHaleSpeed));
    Boss_SetRageDamage(GetConVarInt(cvarRageDMG));
    Boss_SetRageDistance(GetConVarFloat(cvarRageDist));
    Announce = GetConVarFloat(cvarAnnounce);
    bSpecials = GetConVarBool(cvarSpecials);
    PointType = GetConVarInt(cvarPointType);
    PointDelay = GetConVarInt(cvarPointDelay);

    if (PointDelay < 0)
    {
        PointDelay *= -1;
    }

    AliveToEnable = GetConVarInt(cvarAliveToEnable);
    Boss_SetCritMode(GetConVarBool(cvarCrits));
    newRageSentry = GetConVarBool(cvarRageSentry);
    circuitStun = GetConVarFloat(cvarCircuitStun);

    if (IsSaxtonHaleMap() && GetConVarBool(cvarEnabled))
    {
        tf_arena_use_queue = GetConVarInt(FindConVar("tf_arena_use_queue"));
        mp_teams_unbalance_limit = GetConVarInt(FindConVar("mp_teams_unbalance_limit"));
        tf_arena_first_blood = GetConVarInt(FindConVar("tf_arena_first_blood"));
        mp_forcecamera = GetConVarInt(FindConVar("mp_forcecamera"));
        tf_scout_hype_pep_max = GetConVarFloat(FindConVar("tf_scout_hype_pep_max"));
        SetConVarInt(FindConVar("tf_arena_use_queue"), 0);
        SetConVarInt(FindConVar("mp_teams_unbalance_limit"), GetConVarBool(cvarFirstRound)?0:1);
        SetConVarInt(FindConVar("tf_arena_first_blood"), 0);
        SetConVarInt(FindConVar("mp_forcecamera"), 0);
        SetConVarFloat(FindConVar("tf_scout_hype_pep_max"), 100.0);

        bMedieval = FindEntityByClassname(-1, "tf_logic_medieval") != -1 || bool:GetConVarInt(FindConVar("tf_medieval"));
        if (bMedieval)
        {
            SetConVarInt(FindConVar("mp_timelimit"), 25);

            SetConVarInt(FindConVar("sm_classrestrict_blu_demomen"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_engineers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_heavies"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_medics"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_pyros"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_scouts"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_snipers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_soldiers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_blu_spies"), 6);

            SetConVarInt(FindConVar("sm_classrestrict_red_demomen"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_engineers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_heavies"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_medics"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_pyros"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_scouts"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_snipers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_soldiers"), 6);
            SetConVarInt(FindConVar("sm_classrestrict_red_spies"), 6);
        }

#if defined _steamtools_included
        if (steamtools)
        {
            decl String:gameDesc[64];
            Format(gameDesc, sizeof(gameDesc), "VS Saxton Hale (%s)", sLatestTitle);
            Steam_SetGameDescription(gameDesc);
        }
#endif

        Enabled = true;
        Panel_SetEnabled(true);

        if (Announce > 1.0)
        {
            CreateTimer(Announce, Timer_Announce, _, TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
        }
    }
    else
    {
        Panel_SetEnabled(false);
        Enabled = false;
    }
}

public OnMapStart()
{
    //g_bCanFog = InitFogs();
    Guardian_Initialize();

    HPLastChecked = 0.0;
    KSpreeTimer = 0.0;
    MusicTimer = INVALID_HANDLE;
    
    //LemonRageTimer = INVALID_HANDLE;
    //CaveKillTimer = INVALID_HANDLE;
    CaveJohnson_ResetTimers();

    TeamRoundCounter = 0;
    doorchecktimer = INVALID_HANDLE;
    Boss_SetBossClient(-1);
    for (new i = 1; i <= MaxClients; i++)
    {
        VSHFlags[i] = 0;
        VaccineTimers[i] = INVALID_HANDLE;
        SandvichTimers[i] = INVALID_HANDLE;
    }
    if (IsSaxtonHaleMap(true))
    {
        AddToDownload();
        //IsDecemberHoliday(true);
        IsDate(0, 0, _, _, true);
        MapHasMusic(true);
        CheckToChangeMapDoors();
    }
    RoundCount = 0;
}

public OnMapEnd()
{
    if (Panel_Enabled() || Enabled)
    {
        SetConVarInt(FindConVar("tf_arena_use_queue"), tf_arena_use_queue);
        SetConVarInt(FindConVar("mp_teams_unbalance_limit"), mp_teams_unbalance_limit);
        SetConVarInt(FindConVar("tf_arena_first_blood"), tf_arena_first_blood);
        SetConVarInt(FindConVar("mp_forcecamera"), mp_forcecamera);
        SetConVarFloat(FindConVar("tf_scout_hype_pep_max"), tf_scout_hype_pep_max);
#if defined _steamtools_included
        if (steamtools)
        {
            Steam_SetGameDescription("Team Fortress");
        }
#endif
    }
    if (MusicTimer != INVALID_HANDLE)
    {
        KillTimer(MusicTimer);
        MusicTimer = INVALID_HANDLE;
    }
}

public OnPluginEnd()
{
    OnMapEnd();
}

public AddToDownload()
{
    decl String:s[PLATFORM_MAX_PATH];
    new String:extensions[][] = { ".mdl", ".dx80.vtx", ".dx90.vtx", ".sw.vtx", ".vvd", ".phy" };
    new String:extensionsb[][] = { ".vtf", ".vmt" };
    decl i;

    for (i = 0; i < sizeof(extensions); i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s%s", HaleModelPrefix, extensions[i]);
        if (FileExists(s, true))
        {
            AddFileToDownloadsTable(s);
        }

        if (bSpecials)
        {

#if defined VAGINEER_ON
            Format(s, PLATFORM_MAX_PATH, "%s%s", VagineerModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined HHH_ON

            Format(s, PLATFORM_MAX_PATH, "%s%s", HHHModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined CBS_ON

            Format(s, PLATFORM_MAX_PATH, "%s%s", CBSModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined NUE_HOUJUU_ON

            Format(s, PLATFORM_MAX_PATH, "%s%s", NueModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined ASTRONAUT_ON

            Format(s, PLATFORM_MAX_PATH, "%s%s", AstroModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined CAVE_JOHNSON_ON

            Format(s, PLATFORM_MAX_PATH, "%s%s", CaveModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
            Format(s, PLATFORM_MAX_PATH, "%s%s", LemonModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
#endif
#if defined EASTER_BUNNY_ON
            Format(s, PLATFORM_MAX_PATH, "%s%s", BunnyModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
            Format(s, PLATFORM_MAX_PATH, "%s%s", EggModelPrefix, extensions[i]);
            if (FileExists(s, true))
            {
                AddFileToDownloadsTable(s);
            }
            //          Format(s, PLATFORM_MAX_PATH, "%s%s", ReloadEggModelPrefix, extensions[i]);
            //          if (FileExists(s, true)) AddFileToDownloadsTable(s);
#endif
        }
    }
    PrecacheModel(HaleModel, true);

    PrecacheModel("models/items/plate_steak.mdl", true);
    PrecacheModel("models/weapons/c_models/c_chocolate/c_chocolate.mdl", true);
    PrecacheModel("models/weapons/c_models/c_fishcake/c_fishcake.mdl", true);

    if (bSpecials)
    {

#if defined VAGINEER_ON
        Vagineer_AddToDownloads();
#endif

#if defined HHH_ON
        HHH_AddToDownloads();
#endif

#if defined CBS_ON
        CBS_AddToDownloads();
#endif

#if defined NUE_HOUJUU_ON
        Nue_AddToDownloads();
#endif

#if defined ASTRONAUT_ON
        Astronaut_AddToDownloads();
#endif

#if defined CAVE_JOHNSON_ON
        CaveJohnson_AddToDownloads();
#endif

#if defined GUARDIAN_ON
        Guardian_AddToDownloads();
#endif

#if defined EASTER_BUNNY_ON
        EasterBunny_AddToDownloads();
#endif
    }

    for (i = 0; i < sizeof(extensionsb); i++)
    {
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/eye%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/hale_head%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/hale_body%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/hale_misc%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/sniper_red%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "materials/models/player/saxton_hale/sniper_lens%s", extensionsb[i]);
        AddFileToDownloadsTable(s);
    }


    AddFileToDownloadsTable("materials/models/player/saxton_hale/sniper_head.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/sniper_head_red.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_misc_normal.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_body_normal.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/eyeball_l.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/eyeball_r.vmt");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_egg.vtf");
    AddFileToDownloadsTable("materials/models/player/saxton_hale/hale_egg.vmt");


    PrecacheSound(HaleComicArmsFallSound, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleComicArmsFallSound);
    AddFileToDownloadsTable(s);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKSpree);
    PrecacheSound(HaleKSpree, true);
    AddFileToDownloadsTable(s);
    PrecacheSound("saxton_hale/9000.wav", true);
    AddFileToDownloadsTable("sound/saxton_hale/9000.wav");

    for (i = 1; i <= 4; i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HaleLastB, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HHHLaught, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HHHAttack, i);
        PrecacheSound(s, true);
    }

    PrecacheSound(HaleKillMedic, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillMedic);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillSniper1, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillSniper1);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillSniper2, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillSniper2);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillSpy1, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillSpy1);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillSpy2, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillSpy2);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillEngie1, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillEngie1);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillEngie2, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillEngie2);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillDemo132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillDemo132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillHeavy132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillHeavy132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillScout132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillScout132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillSpy132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillSpy132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillPyro132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillPyro132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleSappinMahSentry132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleSappinMahSentry132);
    AddFileToDownloadsTable(s);
    PrecacheSound(HaleKillLast132, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", HaleKillLast132);
    AddFileToDownloadsTable(s);
    PrecacheSound("vo/announcer_am_capincite01.wav", true);
    PrecacheSound("vo/announcer_am_capincite03.wav", true);
    PrecacheSound("vo/announcer_am_capenabled02.wav", true);

    for (i = 1; i <= 5; i++)
    {
        if (i <= 2)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleJump, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);

            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleWin, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleJump132, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillEngie132, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillKSpree132, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
        }

        if (i <= 3)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleFail, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
        }

        if (i <= 4)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRageSound, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
            Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStubbed132, i);
            PrecacheSound(s, true);
            Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
            AddFileToDownloadsTable(s);
        }

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRoundStart, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
        AddFileToDownloadsTable(s);

        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKSpreeNew, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleLastMan, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
        AddFileToDownloadsTable(s);
        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStart132, i);
        PrecacheSound(s, true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", s);
        AddFileToDownloadsTable(s);
    }

    PrecacheSound("vo/engineer_no01.wav", true);
    PrecacheSound("vo/engineer_jeers02.wav", true);
    PrecacheSound("vo/sniper_dominationspy04.wav", true);
    PrecacheSound("vo/halloween_boss/knight_pain01.wav", true);
    PrecacheSound("vo/halloween_boss/knight_pain02.wav", true);
    PrecacheSound("vo/halloween_boss/knight_pain03.wav", true);
    PrecacheSound("vo/halloween_boss/knight_death01.wav", true);
    PrecacheSound("vo/halloween_boss/knight_death02.wav", true);
    PrecacheSound("misc/halloween/spell_teleport.wav", true);
    PrecacheSound("misc/halloween/spell_overheal.wav", true);
    PrecacheSound("weapons/barret_arm_zap.wav", true);
    PrecacheSound("player/doubledonk.wav", true);
    PrecacheSound("items/ammo_pickup.wav", true);
    PrecacheSound("weapons/dispenser_generate_metal.wav", true);
    //PrecacheSound("weapons/weapons/wrench_hit_build_success1.wav", true);
    //PrecacheSound("weapons/weapons/wrench_hit_build_success2.wav", true);
}

public CvarChange(Handle:convar, const String:oldValue[], const String:newValue[])
{
    if (convar == cvarHaleSpeed)
    {
        Boss_SetSpeed(GetConVarFloat(convar));
    }
    else if (convar == cvarPointDelay)
    {
        PointDelay = GetConVarInt(convar);
        if (PointDelay < 0)
        {
            PointDelay *= -1;
        }
    }
    else if (convar == cvarRageDMG)
    {
        Boss_SetRageDamage(GetConVarInt(convar));
    }
    else if (convar == cvarRageDist)
    {
        Boss_SetRageDistance(GetConVarFloat(convar));
    }
    else if (convar == cvarAnnounce)
    {
        Announce = GetConVarFloat(convar);
    }
    else if (convar == cvarSpecials)
    {
        bSpecials = GetConVarBool(convar);
    }
    else if (convar == cvarPointType)
    {
        PointType = GetConVarInt(convar);
    }
    else if (convar == cvarAliveToEnable)
    {
        AliveToEnable = GetConVarInt(convar);
    }
    else if (convar == cvarCrits)
    {
        Boss_SetCritMode(GetConVarBool(convar));
    }
    else if (convar == cvarRageSentry)
    {
        newRageSentry = GetConVarBool(convar);
    }
    else if (convar == cvarCircuitStun)
    {
        circuitStun = GetConVarFloat(convar);
    }
    else if (convar == cvarEnabled)
    {
        if (GetConVarBool(convar) && IsSaxtonHaleMap())
        {
            Panel_SetEnabled(true);
#if defined _steamtools_included
            if (steamtools)
            {
                decl String:gameDesc[64];
                decl String:sLatestTitle[100];
                Common_GetLatestTitle(sLatestTitle, 100);

                Format(gameDesc, sizeof(gameDesc), "VS Saxton Hale (%s)", sLatestTitle);
                Steam_SetGameDescription(gameDesc);
            }
#endif
        }
    }
}

public Action:Timer_Announce(Handle:hTimer)
{
    static announcecount = -1;
    announcecount++;

    decl String:sLatestTitle[100];
    decl String:sLatestDate[100];
    Common_GetLatestTitle(sLatestTitle, 100);
    Common_GetLatestDate(sLatestDate, 100);

    if (Announce > 1.0 && Panel_Enabled())
    {
        switch (announcecount)
        {
            case 1:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Join the group:\n{lightblue}http://steamcommunity.com/groups/tf2data");
            }
            case 2:
            {
                CPrintToChatAll("{olive}[VSH]{default} VSH:Data {olive}v%s{default} brought to you by {olive}TF2Data{default}.", sLatestTitle);
            }
            case 3:
            {
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_last_update", sLatestTitle, sLatestDate);
            }
            case 4:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Want someone muted? Tired of annoying chat binds?\n Use \"{lightgreen}!ignore{linen}\" to silence them!");
            }
            case 5:
            {
                 CPrintToChatAll("{lightsteelblue}[DATA] {linen}Type \"{lightgreen}!stats{linen}\" in chat to see this server's stats!");
            }
            case 6:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Keep arguments to PM.");
            }
            case 7:
            {
                CPrintToChatAll("{olive}[VSH]{default} {mediumaquamarine}Heavies{default} never seem to die? They're tanks! Shotguns {axis}heal{default} them for the damage they deal.");
            }
            case 8:
            {
                CPrintToChatAll("{olive}[VSH]{default} Do NOT suicide as Hale. Reset your queue instead.");
            }
            case 9:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Having problems? Download more RAM here:\n{lightblue}http://downloadmoreram.com");
            }
            case 10:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}If the server crashes, it should restart automatically. If that happens, please \"{lightgreen}!join{linen}\" and report what happened.");
            }
            case 11:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Special thanks to {alliedmods}Alliedmodders{linen}, {saxtonhell}Saxton Hell{linen}, and {lethalzone}Lethal Zone{linen}.");
            }
            case 12:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Don't do anything that'll result in a kickban.");
            }
            case 13:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Add us to your favorites ;p");
            }
            case 14:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Type \"{lightgreen}!rules{linen}\" in chat to read the rules.");
            }
            case 15:
            {
                CPrintToChatAll("{olive}[VSH]{default} Beware! HHH can climb walls when he hits them!");
            }
            case 16:
            {
                CPrintToChatAll("{olive}[VSH]{default} Remember to read {olive}/halenew{default} and {olive}/haleclass{default} to see the various changes to classes.");
            }
            case 17:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}If you like the server, search \"{lightsteelblue}data{linen}\" in your server tags to find us easier!");
            }
            case 18:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}If you stall too much you will be slayed.");
            }
            case 19:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Type \"{lightgreen}!join{linen}\" in chat to open our group page and join!");
            }
            case 20:
            {
                CPrintToChatAll("{olive}[VSH]{default} Use \"{lightgreen}!halemusic{default}\" to turn off music!");
            }
            case 21:
            {
                CPrintToChatAll("{olive}[VSH]{default} Hale too easy for you? Try Hard and Lunatic mode. \"{lightgreen}!halemode{default}\" to change.");
            }
            case 22:
            {
                CPrintToChatAll("{olive}[VSH]{default} Feel free to ghost people who are being useless.\n Ghosting for any other reason, however, will get you silenced.");
            }
            case 23:
            {
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}Don't waste an admin's time.");
            }
            case 24:
            {
                CPrintToChatAll("{olive}[VSH]{default} Don't friendly the enemy.");
            }
            case 25:
            {
                announcecount = 0;
                CPrintToChatAll("{lightsteelblue}[DATA] {linen}ONE OF US: Wear the {lightsteelblue}[DATA]{linen} tag!\n Or {lightsteelblue}digitalize{linen} your name!");
            }
            default:
            {
//              if (ACH_Enabled)
//                  CPrintToChatAll("{olive}[VSH]{default} %t\n%t (experimental)", "vsh_open_menu", "vsh_open_ach");
//              else
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_open_menu");
            }
        }
    }
    return Plugin_Continue;
}

public Action:event_round_start(Handle:event, const String:name[], bool:dontBroadcast)
{
    new Hale = Boss_GetBossClient();

    if (!GetConVarBool(cvarEnabled))
    {
/*#if defined _steamtools_included
        if (Panel_Enabled() && steamtools)
        {
            Steam_SetGameDescription("Team Fortress");
        }
#endif*/
        Panel_SetEnabled(false);
    }

    Enabled = Panel_Enabled();

    if (CheckNextSpecial() && !Enabled)
    { //QueuePanelH(Handle:0, MenuAction:0, 9001, 0) is HaleEnabled
        return Plugin_Continue;
    }

    if (FileExists("bNextMapToHale"))
    {
        DeleteFile("bNextMapToHale");
    }

    if (MusicTimer != INVALID_HANDLE)
    {
        KillTimer(MusicTimer);
        MusicTimer = INVALID_HANDLE;
    }

    if (CaveJohnson_GetRageTimer() != INVALID_HANDLE)
    {
        CaveJohnson_ResetRageTimer();
    }

    if (CaveJohnson_GetKillTimer() != INVALID_HANDLE)
    {
        CaveJohnson_ResetKillTimer();
    }

    if (hCapResetDMG != INVALID_HANDLE)
    {
        KillTimer(hCapResetDMG);
        hCapResetDMG = INVALID_HANDLE;
    }

    if (HHH_GetTeleTimer() != INVALID_HANDLE)
    {
        HHH_ResetTeleTimer();
    }

    /*if (hScheemic_Medibeam != INVALID_HANDLE)
    {
        KillTimer(hScheemic_Medibeam);
        hScheemic_Medibeam = INVALID_HANDLE;
    }*/

    KSpreeCount = 0;

    CheckArena();
    GetCurrentMap(g_sCurrentMap, sizeof(g_sCurrentMap));

    new bool:bBluHale;
    new convarsetting = GetConVarInt(cvarForceHaleTeam);

    switch (convarsetting)
    {
        case 3:
            bBluHale = true;
        case 2:
            bBluHale = false;
        case 1:
            bBluHale = GetRandomInt(0, 1) == 1;
        default:
        {
            if (strncmp(g_sCurrentMap, "vsh_", 4, false) == 0 || strncmp(g_sCurrentMap, "ctf_", 4, false) == 0 || strncmp(g_sCurrentMap, "mvm_", 4, false) == 0)
            {
                bBluHale = true;
            }
            else if (TeamRoundCounter >= 3 && GetRandomInt(0, 1))
            {
                bBluHale = (HaleTeam != 3);
                TeamRoundCounter = 0;
            }
            else
            {
                bBluHale = (HaleTeam == 3);
            }
        }
    }

    if (bBluHale)
    {
        new score1 = GetTeamScore(OtherTeam);
        new score2 = GetTeamScore(HaleTeam);

        SetTeamScore(2, score1);
        SetTeamScore(3, score2);

        OtherTeam = 2;
        HaleTeam = 3;
        bBluHale = false;
    }
    else
    {
        new score1 = GetTeamScore(HaleTeam);
        new score2 = GetTeamScore(OtherTeam);

        SetTeamScore(2, score1);
        SetTeamScore(3, score2);

        HaleTeam = 2;
        OtherTeam = 3;
        bBluHale = true;
    }

    playing = 0;

    for (new ionplay = 1; ionplay <= MaxClients; ionplay++)
    {
        Damage[ionplay] = 0;
        AirDamage[ionplay] = 0;
        uberTarget[ionplay] = -1;
        bBazaarHit[ionplay] = false;

        if (IsValidClient(ionplay))
        {
            if (IsPlayerAlive(ionplay))
            {
                Direct[ionplay] = false;
                TF2Attrib_RemoveByName(ionplay, "damage force reduction");
                if (!IsValidEntity(FindPlayerBack(ionplay, { 444 }, 1))) TF2Attrib_RemoveByName(ionplay, "self dmg push force increased");
                if (IsClientChdata(ionplay)) CPrintToChdata("reset attribs on round start");
                if (TF2Attrib_RemoveByName(ionplay, "max health additive bonus"))
                {
                    SetEntProp(ionplay, Prop_Send, "m_iHealth", GetClientSpawnHealth(ionplay));
                }
                //DirectTime[ionplay] = -1.0;
                SetEntityGravity(ionplay, 1.0);
                SetEntityRenderMode(ionplay, RENDER_NORMAL);
                SetEntityRenderColor(ionplay);
                SetClientListeningFlags(ionplay, VOICE_NORMAL);
            }

            StopHaleMusic(ionplay);
            if (GetClientTeam(ionplay) > _:TFTeam_Spectator)
            {
                playing++;
            }
        }
    }

    if (GetClientCount() <= 1 || playing < 2)
    {
        CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_needmoreplayers");
        Enabled = false;
        Boss_SetRoundState(ROUNDSTATE_DISABLED);
        SetControlPoint(true);
        return Plugin_Continue;
    }
    else if (RoundCount >= 0 && GetConVarBool(cvarFirstRound)) // This line was breaking the first round sometimes
    {
        Enabled = true;
    }
    else if (RoundCount <= 0)
    {
        CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_first_round");

        Enabled = false;
        Boss_SetRoundState(ROUNDSTATE_DISABLED);
        SetArenaCapEnableTime(60.0);

        SearchForItemPacks();
        SetConVarInt(FindConVar("mp_teams_unbalance_limit"), 1);

        CreateTimer(71.0, Timer_EnableCap, _, TIMER_FLAG_NO_MAPCHANGE);

        return Plugin_Continue;
    }

    SetConVarInt(FindConVar("mp_teams_unbalance_limit"), 0);

    if (GetTeamPlayerCount(TFTeam_Blue) <= 0 || GetTeamPlayerCount(TFTeam_Red) <= 0)
    {
        if (IsValidClient(Hale))
        {
            if (GetClientTeam(Hale) != HaleTeam)
            {
                SetEntProp(Hale, Prop_Send, "m_lifeState", 2);
                ChangeClientTeam(Hale, HaleTeam);
                SetEntProp(Hale, Prop_Send, "m_lifeState", 0);
                TF2_RespawnPlayer(Hale);
            }
        }

        for (new i = 1; i <= MaxClients; i++)
        {
            if (IsValidClient(i) && !Boss_IsClientHale(i) && GetClientTeam(i) != _:TFTeam_Spectator && GetClientTeam(i) != _:TFTeam_Unassigned)
            {
                if (GetClientTeam(i) != OtherTeam)
                {
                    SetEntProp(i, Prop_Send, "m_lifeState", 2);
                    ChangeClientTeam(i, OtherTeam);
                    SetEntProp(i, Prop_Send, "m_lifeState", 0);
                    TF2_RespawnPlayer(i);
                    TF2_RegeneratePlayer(i);
                }
            }
        }
        return Plugin_Continue;
    }

    for (new i = 1; i <= MaxClients; i++)
    {
        if (!IsValidClient(i) || !IsPlayerAlive(i))
        {
            continue;
        }

        if (!(VSHFlags[i] & VSHFLAG_HASONGIVED))
        {
            TF2_RespawnPlayer(i);
        }
    }

    new bool:see[MAXPLAYERS + 1];
    new tHale = NextHaleTogglers(see) ? RandomNextHale(see, false) : FindNextHale(see);

    if (tHale == -1)
    {
        CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_needmoreplayers");

        Enabled = false;
        Boss_SetRoundState(ROUNDSTATE_DISABLED);
        SetControlPoint(true);

        return Plugin_Continue;
    }

    if (NextHale > 0)
    {
        Boss_SetBossClient(NextHale);
        NextHale = -1;
    }
    else
    {
        Boss_SetBossClient(tHale);
    }

    bTenSecStart[0] = true;
    bTenSecStart[1] = true;
    CreateTimer(29.1, tTenSecStart, 0);
    CreateTimer(60.0, tTenSecStart, 1);
    CreateTimer(9.1, StartHaleTimer);
    CreateTimer(3.5, StartResponceTimer);
    CreateTimer(9.6, MessageTimer, 9001);

    NoTaunt = false;
    HaleRage = 0;
    Stabbed = 0.0;
    Marketed = 0.0;
    //g_iTimerTime = 1;
    HHH_SetClimbCount(0);
    PointReady = false;
    CaveJohnson_SetLemonRage(false);
    Nue_SetRageActive(false);
    Nue_SetBackstabbed(false);
    g_bIsCapEnabled = false;
    HaleSuperJumpStatus = false;

    new ent;

    DOWHILE_ENTFOUND(ent, "func_regenerate")
    {
        AcceptEntityInput(ent, "Disable");
    }

    DOWHILE_ENTFOUND(ent, "func_respawnroomvisualizer")
    {
        AcceptEntityInput(ent, "Disable");
    }

    DOWHILE_ENTFOUND(ent, "func_upgradestation")
    {
        AcceptEntityInput(ent, "Disable");
    }

    DOWHILE_ENTFOUND(ent, "obj_dispenser")
    {
        SetVariantInt(OtherTeam);
        AcceptEntityInput(ent, "SetTeam");
        AcceptEntityInput(ent, "skin");
        SetEntProp(ent, Prop_Send, "m_nSkin", OtherTeam - 2);
    }

    DOWHILE_ENTFOUND(ent, "obj_sentrygun")
    {
        SetVariantInt(OtherTeam);
        AcceptEntityInput(ent, "SetTeam");
        AcceptEntityInput(ent, "skin");
        SetEntProp(ent, Prop_Send, "m_nSkin", OtherTeam - 2);
    }

    DOWHILE_ENTFOUND(ent, "mapobj_cart_dispenser")
    {
        SetVariantInt(OtherTeam);
        AcceptEntityInput(ent, "SetTeam");
        //AcceptEntityInput(ent, "skin");
    }

    SearchForItemPacks();

    /*ent = -1; //If area_time_to_cap is less than 15 seconds, make it 15 seconds.

    while ((ent = FindEntityByClassname2(ent, "trigger_capture_area")) != -1)  
    {
        if (ent > MaxClients && IsValidEdict(ent))
        {
            new Float:flCapTime = GetEntPropFloat(ent, Prop_Data, "m_flCapTime");
            if (flCapTime < 15.0) DispatchKeyValueFloat(ent, "area_time_to_cap", 50.0); //SetEntDataFloat(ent, offset, 15.0);
        }
    }*/

    CreateTimer(0.3, MakeHale);

    healthcheckused = 0;
    Boss_SetRoundState(ROUNDSTATE_WAITING);

    return Plugin_Continue;
}

public Action:Timer_EnableCap(Handle:timer)
{
    if (Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        SetControlPoint(true);

        if (checkdoors)
        {
            new ent;
            DOWHILE_ENTFOUND(ent, "func_door")
            {
                AcceptEntityInput(ent, "Open");
                AcceptEntityInput(ent, "Unlock");
            }

            if (doorchecktimer == INVALID_HANDLE)
            {
                doorchecktimer = CreateTimer(5.0, Timer_CheckDoors, _, TIMER_FLAG_NO_MAPCHANGE | TIMER_REPEAT);
            }
        }
    }
}

public Action:Timer_CheckDoors(Handle:hTimer)
{
    if (!checkdoors)
    {
        doorchecktimer = INVALID_HANDLE;
        return Plugin_Stop;
    }

    if ((!Enabled && !Boss_IsRoundState(ROUNDSTATE_DISABLED)) || (Enabled && !Boss_IsRoundState(ROUNDSTATE_ACTIVE)))
    {
        return Plugin_Continue;
    }

    new ent;
    DOWHILE_ENTFOUND(ent, "func_door")
    {
        AcceptEntityInput(ent, "Open");
        AcceptEntityInput(ent, "Unlock");
    }

    return Plugin_Continue;
}

public CheckArena()
{
    if (PointType)
    {
        SetArenaCapEnableTime(float(45 + PointDelay * (playing - 1)));
    }
    else
    {
        SetArenaCapEnableTime(0.0);
        SetControlPoint(false);
    }
}

public numHaleKills = 0;    //See if the Hale was boosting his buddies or afk

public Action:event_round_end(Handle:event, const String:name[], bool:dontBroadcast)
{
    Nue_SetRageActive(false);
    //bNue_Is_Scout = false;

    new Hale = Boss_GetBossClient();
    new String:s[265];
    decl String:s2[265];
    new bool:see = false;

    GetNextMap(s, 64);

    if (!strncmp(s, "Hale ", 5, false))
    {
        see = true;
        strcopy(s2, sizeof(s2), s[5]);
    }
    else if (!strncmp(s, "(Hale) ", 7, false))
    {
        see = true;
        strcopy(s2, sizeof(s2), s[7]);
    }
    else if (!strncmp(s, "(Hale)", 6, false))
    {
        see = true;
        strcopy(s2, sizeof(s2), s[6]);
    }

    if (see)
    {
        new Handle:fileh = OpenFile("bNextMapToHale", "w");
        WriteFileString(fileh, s2, false);
        CloseHandle(fileh);
        SetNextMap(s2);
        CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_nextmap", s2);
    }

    RoundCount++;

    if (!Enabled) return Plugin_Continue;

    Boss_SetRoundState(ROUNDSTATE_END);
    TeamRoundCounter++;

    if (GetEventInt(event, "team") == HaleTeam)
    {
        switch (Special)
        {
            case VSHSpecial_Guard:
            {
                EmitSoundToAll(GuardianWin, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, GuardianWin, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Hale:
            {
                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleWin, GetRandomInt(1, 2));
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Vagineer:
            {
                Vagineer_RandomTaunt(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Bunny:
            {
                EasterBunny_RandomWin(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Cave:
            {
                strcopy(s, PLATFORM_MAX_PATH, CaveWin); //[GetRandomInt(0, sizeof(CaveWin)-1)]
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Nue:
            {
                strcopy(s, PLATFORM_MAX_PATH, NueWin);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Astro:
            {
                strcopy(s, PLATFORM_MAX_PATH, AstroWin); //[GetRandomInt(0, sizeof(CaveWin)-1)]
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, _, NULL_VECTOR, false, 0.0);
            }
        }
    }

    for (new i = 1; i <= MaxClients; i++)
    {
        VSHFlags[i] &= ~(VSHFLAG_HASONGIVED|VSHFLAG_EQUIPMSG);

        if (!IsValidClient(i))
        {
            continue;
        }
        StopHaleMusic(i);
    }

    if (MusicTimer != INVALID_HANDLE)
    {
        KillTimer(MusicTimer);
        MusicTimer = INVALID_HANDLE;
    }

    if (IsValidClient(Hale))
    {
        SetEntProp(Hale, Prop_Send, "m_bGlowEnabled", 0);
        GlowTimer = 0.0;

        if (IsPlayerAlive(Hale))
        {
            decl String:translation[32];
            switch (Special)
            {
                case VSHSpecial_Guard:
                    strcopy(translation, sizeof(translation), "vsh_guardian_is_alive");
                case VSHSpecial_Astro:
                    strcopy(translation, sizeof(translation), "vsh_astro_is_alive");
                case VSHSpecial_Nue:
                    strcopy(translation, sizeof(translation), "vsh_nue_is_alive");
                case VSHSpecial_Cave:
                    strcopy(translation, sizeof(translation), "vsh_cave_is_alive");
                case VSHSpecial_Bunny:
                    strcopy(translation, sizeof(translation), "vsh_bunny_is_alive");
                case VSHSpecial_Vagineer:
                    strcopy(translation, sizeof(translation), "vsh_vagineer_is_alive");
                case VSHSpecial_HHH:
                    strcopy(translation, sizeof(translation), "vsh_hhh_is_alive");
                case VSHSpecial_CBS:
                    strcopy(translation, sizeof(translation), "vsh_cbs_is_alive");
                default:
                    strcopy(translation, sizeof(translation), "vsh_hale_is_alive");
            }

            if (Special == VSHSpecial_Guard)
            {
                CPrintToChatAll("{olive}[VSH]{default} %t", translation, Hale);
            }
            else
            {
                CPrintToChatAll("{olive}[VSH]{default} %t", translation, Hale, HaleHealth, Boss_GetMaxHP());
            }

            SetHudTextParams(-1.0, 0.2, 10.0, 255, 255, 255, 255);

            for (new i = 1; i <= MaxClients; i++)
            {
                if (IsValidClient(i) && !(GetClientButtons(i) & IN_SCORE))
                {
                    if (Special == VSHSpecial_Guard)
                    {
                        ShowHudText(i, -1, "%T", translation, Hale);
                    }
                    else
                    {
                        ShowHudText(i, -1, "%T", translation, i, Hale, HaleHealth, Boss_GetMaxHP());
                    }
                }
            }
        }
        else
        {
            if (GetClientTeam(Hale) != HaleTeam)
            {
                SetEntProp(Hale, Prop_Send, "m_lifeState", 2);
                ChangeClientTeam(Hale, HaleTeam);
                SetEntProp(Hale, Prop_Send, "m_lifeState", 0);
                TF2_RespawnPlayer(Hale);
            }
        }

        if (Special == VSHSpecial_Guard)
        {
            CreateTimer(3.0, Timer_CalcScores, _, TIMER_FLAG_NO_MAPCHANGE);
            return Plugin_Continue;
        }

        new top[3];
        Damage[0] = 0;

        for (new i = 0; i <= MaxClients; i++)
        {
            if (Damage[i] >= Damage[top[0]])
            {
                top[2] = top[1];
                top[1] = top[0];
                top[0] = i;
            }
            else if (Damage[i] >= Damage[top[1]])
            {
                top[2] = top[1];
                top[1] = i;
            }
            else if (Damage[i] >= Damage[top[2]])
            {
                top[2] = i;
            }
        }

        if (Damage[top[0]] > 9000)
        {
            CreateTimer(1.0, Timer_NineThousand, _, TIMER_FLAG_NO_MAPCHANGE);
        }

        decl String:s1[80];

        if (IsValidClient(top[0]) && (GetClientTeam(top[0]) >= 1))
        {
            GetClientName(top[0], s, 80);
        }
        else
        {
            Format(s, 80, "---");
            top[0] = 0;
        }

        if (IsValidClient(top[1]) && (GetClientTeam(top[1]) >= 1))
        {
            GetClientName(top[1], s1, 80);
        }
        else
        {
            Format(s1, 80, "---");
            top[1] = 0;
        }

        if (IsValidClient(top[2]) && (GetClientTeam(top[2]) >= 1))
        {
            GetClientName(top[2], s2, 80);
        }
        else
        {
            Format(s2, 80, "---");
            top[2] = 0;
        }

        SetHudTextParams(-1.0, 0.3, 10.0, 255, 255, 255, 255);
        PrintCenterTextAll(""); //Should clear center text

        for (new i = 1; i <= MaxClients; i++)
        {
            if (IsValidClient(i) && !(GetClientButtons(i) & IN_SCORE))
            {
                SetGlobalTransTarget(i);
                ShowHudText(i, -1, "%t\n1)%i - %s\n2)%i - %s\n3)%i - %s\n\n%t %i\n%t %i", "vsh_top_3", Damage[top[0]], s, Damage[top[1]], s1, Damage[top[2]], s2, "vsh_damage_fx", Damage[i], "vsh_scores", RoundFloat(Damage[i] / 600.0));
            }
        }
    }

    CreateTimer(3.0, Timer_CalcScores, _, TIMER_FLAG_NO_MAPCHANGE);     //CalcScores();

    return Plugin_Continue;
}

public Action:Timer_NineThousand(Handle:timer)
{
    EmitSoundToAll("saxton_hale/9000.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 1.0, 100, _, _, NULL_VECTOR, false, 0.0);
    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, "saxton_hale/9000.wav", _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, 1.0, 100, _, _, NULL_VECTOR, false, 0.0);
    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, "saxton_hale/9000.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 1.0, 100, _, _, NULL_VECTOR, false, 0.0);
}

public Action:Timer_CalcScores(Handle:timer)
{
    CalcScores();
}

public Action:StartResponceTimer(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    decl String:s[PLATFORM_MAX_PATH];
    decl Float:pos[3];

    if (Special == VSHSpecial_Guard)
    {
        return Plugin_Continue;
    }

    switch (Special)
    {
        case VSHSpecial_Astro:
        {
            strcopy(s, PLATFORM_MAX_PATH, AstroStart);
        }
        case VSHSpecial_Nue:
        {
            strcopy(s, PLATFORM_MAX_PATH, NueStart);
        }
        case VSHSpecial_Cave:
        {
            CaveJohnson_RandomStart(s, PLATFORM_MAX_PATH);
        }
        case VSHSpecial_Bunny:
        {
            EasterBunny_RandomStart(s, PLATFORM_MAX_PATH);
        }
        case VSHSpecial_Vagineer:
        {
            if (!GetRandomInt(0, 1))
                strcopy(s, PLATFORM_MAX_PATH, VagineerStart);
            else
                strcopy(s, PLATFORM_MAX_PATH, VagineerRoundStart);
        }
        case VSHSpecial_HHH:
            Format(s, PLATFORM_MAX_PATH, "ui/halloween_boss_summoned_fx.wav");
        case VSHSpecial_CBS:
            strcopy(s, PLATFORM_MAX_PATH, CBS0);
        default:
        {
            if (!GetRandomInt(0, 1))
                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRoundStart, GetRandomInt(1, 5));
            else
                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStart132, GetRandomInt(1, 5));
        }
    }

    EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, false, 0.0);
    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, false, 0.0);

    if (Special == VSHSpecial_CBS)
    {
        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);
        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);
    }

    return Plugin_Continue;
}

public Action:tTenSecStart(Handle:hTimer, any:ofs)
{
    bTenSecStart[ofs] = false;
}

public Action:StartHaleTimer(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    CreateTimer(0.1, GottamTimer);

    if (!IsValidClient(Hale))
    {
        Boss_SetRoundState(ROUNDSTATE_END);
        return Plugin_Continue;
    }

    if (!IsPlayerAlive(Hale))
    {
        TF2_RespawnPlayer(Hale);
    }

    playing = 0; // nergal's FRoG fix

    for (new client = 1; client <= MaxClients; client++)
    {
        if (!IsClientInGame(client) || !IsPlayerAlive(client) || Boss_IsClientHale(client)) continue;
        playing++;
        CreateTimer(0.2, MakeNoHale, GetClientUserId(client));
    }

    // ((760.8 + p) * (p-1))^1.0341 + 2048

    new HaleHealthMax = RoundFloat(Pow(((760.8 + playing)*(playing - 1)), 1.0341)) + 2048 + ((playing == 3) ? 87 : (playing == 5) ? -7 : 0);
    Boss_SetMaxHP(HaleHealthMax);

    if (HaleHealthMax < 0)
    {
        HaleHealthMax = 2048;
    }

    if (bMedieval)
    {
        HaleHealthMax = RoundFloat(HaleHealthMax/2.6); //3.6
    }

    if (Special == VSHSpecial_Guard)
    {
        HaleHealthMax = 125;
    }

    new iHaleMode = CheckClientDifficulty(Hale);
    Boss_SetDifficulty(iHaleMode);

    if (iHaleMode == VSHMODE_NORMAL)
    {
        CPrintToChat(Hale, "{olive}[VSH]{default} You are now playing Normal Mode. \"{lightgreen}!halemode{default}\" to change.");
    }
    else if (iHaleMode == VSHMODE_HARD)
    {
        CPrintToChatAll("{olive}[VSH]{default} Warning! Time for a Hard Mode round!");
        CPrintToChat(Hale, "{olive}[VSH]{default} You are now playing Hard Mode. \"{lightgreen}!halemode{default}\" to change.");
    }
    else if (iHaleMode == VSHMODE_LUNATIC)
    {
        CPrintToChatAll("{olive}[VSH]{default} Warning! We have an incoming LUNATIC!");
        CPrintToChat(Hale, "{olive}[VSH]{default} You are now playing Lunatic Mode. \"{lightgreen}!halemode{default}\" to change.");
    }

    HaleHealthMax = RoundFloat(float(HaleHealthMax) * ((iHaleMode == VSHMODE_HARD) ? 0.6 : (iHaleMode == VSHMODE_LUNATIC) ? 0.35 : 1.0));

    TF2Attrib_SetByName(Hale, "max health additive bonus", float(HaleHealthMax-GetClassBaseHP(Hale)));
    SetEntityHealth(Hale, HaleHealthMax);

    SetEntProp(Hale, Prop_Data, "m_iMaxHealth", HaleHealthMax);

    HaleHealth = HaleHealthMax;
    //HaleHealth = RoundFloat(float(HaleHealth) * ((iHaleMode == VSHMODE_HARD) ? 0.6 : (iHaleMode == VSHMODE_LUNATIC) ? 0.35 : 1.0));

    /*
     Hard mode rage uses:

    Total player count:
     3 = 0 uses
     4-11 = 1
     12-19 = 2
     20-27 = 3
     28-32 = 4

    Enemies:
     2 = 0      *1.22   <-- Higher this number, the less usages
     3-10 = 1   *0.60  1.0 * 
     11-18 = 2  *0.44  0.5 * 
     19-26 = 3  *0.26  0.33 * 
     27-31 = 4  *0.22  0.25 * 0.85

    (1.22-((float(playing + 1)/8.0))/4.0))

    1/

    */
    if (iHaleMode == VSHMODE_HARD)
    {
        if (playing <= 2)
        {
            Boss_SetRageDamage(HaleHealthMax); // Disable raging
        }
        else
        {
            Boss_SetRageDamage(RoundFloat(float(HaleHealthMax) * 0.85 * (1.0/(float(playing + 1)/8.0))));
        }
    }
    else
    {
        Boss_SetRageDamage(GetConVarInt(cvarRageDMG));
    }

    SetHaleHealthFix(Hale, HaleHealth);
    HaleHealthLast = HaleHealth;

    CreateTimer(0.2, CheckAlivePlayers);
    CreateTimer(0.2, HaleTimer, _, TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
    CreateTimer(0.2, StartRound);
    CreateTimer(0.2, ClientTimer, _, TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);

    if (!PointType && playing > GetConVarInt(cvarAliveToEnable))
    {
        SetControlPoint(false);
    }

    if (Special == VSHSpecial_Cave && playing <= 2)
    {
        return Plugin_Continue;
    }

    if (Boss_IsRoundState(ROUNDSTATE_WAITING))
    {
        CreateTimer(2.0, Timer_MusicPlay, _, TIMER_FLAG_NO_MAPCHANGE);
    }

    return Plugin_Continue;
}

public Action:Timer_MusicPlay(Handle:timer)
{
    if (!Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        return Plugin_Stop;
    }

    new String:sound[PLATFORM_MAX_PATH] = "";
    new Float:time = -1.0;

    if (MusicTimer != INVALID_HANDLE)
    {
        KillTimer(MusicTimer);
        MusicTimer = INVALID_HANDLE;
    }

    if (MapHasMusic())
    {
        strcopy(sound, sizeof(sound), "");
        time = -1.0;
    }
    else
    {
        switch (Special)
        {
            case VSHSpecial_CBS:
            {
                strcopy(sound, sizeof(sound), CBSTheme);
                time = 137.0;
            }
            case VSHSpecial_HHH:
            {
                strcopy(sound, sizeof(sound), HHHTheme);
                time = 87.0;
            }
            case VSHSpecial_Cave:
            {
                switch (RedAlivePlayers)
                {
                    case 2:
                    {
                        strcopy(sound, sizeof(sound), PortalMusicDuo);
                        time = 73.0;
                    }
                    case 1:
                    {
                        strcopy(sound, sizeof(sound), PortalMusicFinal);
                        time = 28.0;
                    }
                    default:
                    {
                        strcopy(sound, sizeof(sound), PortalMusic);
                        time = 170.0;
                    }
                }

            }
            case VSHSpecial_Nue:
            {
                strcopy(sound, sizeof(sound), NueMusic);
                time = 207.0;
            }
            case VSHSpecial_Astro:
            {
                strcopy(sound, sizeof(sound), AstroMusic);
                time = 178.0;
            }
        }
    }

    new Action:act = Plugin_Continue;

    Call_StartForward(OnMusic);

    decl String:sound2[PLATFORM_MAX_PATH];
    new Float:time2 = time;

    strcopy(sound2, PLATFORM_MAX_PATH, sound);

    Call_PushStringEx(sound2, PLATFORM_MAX_PATH, 0, SM_PARAM_COPYBACK);
    Call_PushFloatRef(time2);
    Call_Finish(act);

    switch (act)
    {
        case Plugin_Stop, Plugin_Handled:
        {
            strcopy(sound, sizeof(sound), "");
            time = -1.0;
        }
        case Plugin_Changed:
        {
            strcopy(sound, PLATFORM_MAX_PATH, sound2);
            time = time2;
        }
    }

    if (sound[0] != '\0')
    {
        //      Format(sound, sizeof(sound), "#%s", sound);
        EmitSoundToAllExcept(SOUNDEXCEPT_MUSIC, sound, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, NULL_VECTOR, NULL_VECTOR, false, 0.0);
    }

    if (time != -1.0)
    {
        new Handle:pack;

        MusicTimer = CreateDataTimer(time, Timer_MusicTheme, pack, TIMER_FLAG_NO_MAPCHANGE | TIMER_REPEAT);
        WritePackString(pack, sound);
        WritePackFloat(pack, time);
    }

    return Plugin_Continue;
}

public Action:Timer_MusicTheme(Handle:timer, any:pack)
{
    decl String:sound[PLATFORM_MAX_PATH];
    ResetPack(pack);
    ReadPackString(pack, sound, sizeof(sound));
    new Float:time = ReadPackFloat(pack);

    if (Enabled && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        /*      new String:sound[PLATFORM_MAX_PATH] = "";
        switch (Special)
        {
        case VSHSpecial_CBS:
        strcopy(sound, sizeof(sound), CBSTheme);
        case VSHSpecial_HHH:
        strcopy(sound, sizeof(sound), HHHTheme);
        }*/

        new Action:act = Plugin_Continue;
        Call_StartForward(OnMusic);
        decl String:sound2[PLATFORM_MAX_PATH];
        new Float:time2 = time;
        strcopy(sound2, PLATFORM_MAX_PATH, sound);
        Call_PushStringEx(sound2, PLATFORM_MAX_PATH, 0, SM_PARAM_COPYBACK);
        Call_PushFloatRef(time2);
        Call_Finish(act);

        switch (act)
        {
            case Plugin_Stop, Plugin_Handled:
            {
                strcopy(sound, sizeof(sound), "");
                time = -1.0;
                MusicTimer = INVALID_HANDLE;
                return Plugin_Stop;
            }
            case Plugin_Changed:
            {
                strcopy(sound, PLATFORM_MAX_PATH, sound2);
                if (time2 != time)
                {
                    time = time2;
                    if (MusicTimer != INVALID_HANDLE)
                    {
                        KillTimer(MusicTimer);
                        MusicTimer = INVALID_HANDLE;
                    }
                    if (time != -1.0)
                    {
                        new Handle:datapack;
                        MusicTimer = CreateDataTimer(time, Timer_MusicTheme, datapack, TIMER_FLAG_NO_MAPCHANGE | TIMER_REPEAT);
                        WritePackString(datapack, sound);
                        WritePackFloat(datapack, time);
                    }
                }
            }
        }

        if (sound[0] != '\0')
        {
            //          Format(sound, sizeof(sound), "#%s", sound);
            EmitSoundToAllExcept(SOUNDEXCEPT_MUSIC, sound, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, NULL_VECTOR, NULL_VECTOR, false, 0.0);
        }
    }
    else
    {
        MusicTimer = INVALID_HANDLE;
        return Plugin_Stop;
    }

    return Plugin_Continue;
}

public Action:GottamTimer(Handle:hTimer)
{
    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && IsPlayerAlive(i))
        {
            SetEntityMoveType(i, MOVETYPE_WALK);
        }
    }
}

public Action:StartRound(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    Boss_SetRoundState(ROUNDSTATE_ACTIVE);

    if (IsValidClient(Hale))
    {
        if (!IsPlayerAlive(Hale) && TFTeam:GetClientTeam(Hale) != TFTeam_Spectator && TFTeam:GetClientTeam(Hale) != TFTeam_Unassigned)
        {
            TF2_RespawnPlayer(Hale);
        }

        if (GetClientTeam(Hale) != HaleTeam)
        {
            SetEntProp(Hale, Prop_Send, "m_lifeState", 2);
            ChangeClientTeam(Hale, HaleTeam);
            SetEntProp(Hale, Prop_Send, "m_lifeState", 0);
            TF2_RespawnPlayer(Hale);
        }

        if (GetClientTeam(Hale) == HaleTeam)
        {
            new bool:pri = IsValidEntity(GetPlayerWeaponSlot(Hale, TFWeaponSlot_Primary));
            new bool:sec = IsValidEntity(GetPlayerWeaponSlot(Hale, TFWeaponSlot_Secondary));
            new bool:mel = IsValidEntity(GetPlayerWeaponSlot(Hale, TFWeaponSlot_Melee));

            TF2_RemovePlayerDisguise(Hale);

            if (pri || sec || !mel)
            {
                CreateTimer(0.05, Timer_ReEquipSaxton, _, TIMER_FLAG_NO_MAPCHANGE);
            }
            //EquipSaxton(Hale);
        }
    }

    CreateTimer(10.0, Timer_SkipHalePanel);

    return Plugin_Continue;
}

public Action:Timer_ReEquipSaxton(Handle:timer)
{
    new Hale = Boss_GetBossClient();
    if (IsValidClient(Hale))
    {
        EquipSaxton(Hale);
    }
}

public Action:Timer_SkipHalePanel(Handle:hTimer)
{
    new bool:added[MAXPLAYERS + 1];
    new i, j;
    new Hale = Boss_GetBossClient();
    new client = Hale;

    do
    {
        client = FindNextHale(added);

        if (client >= 0)
        {
            added[client] = true;
        }

        if (IsValidClient(client) && !Boss_IsClientHale(client) && !CheckHaleToggle(client))
        {
            if (!IsFakeClient(client))
            {
                CPrintToChat(client, "{olive}[VSH]{default} %t", "vsh_to0_near");

                if (i == 0)
                {
                    SkipHalePanelNotify(client);
                }
            }

            i++;
        }

        j++;
    }
    while (i < 3 && j < MAXPLAYERS + 1);
}

public Action:EnableSG(Handle:hTimer, any:iid)
{
    new i = EntRefToEntIndex(iid);
    if (Boss_IsRoundState(ROUNDSTATE_ACTIVE) && IsValidEdict(i) && i > MaxClients)
    {
        decl String:s[64];
        GetEdictClassname(i, s, 64);

        if (StrEqual(s, "obj_sentrygun"))
        {
            SetEntProp(i, Prop_Send, "m_bDisabled", 0);

            for (new ent = MaxClients + 1; ent < ME; ent++)
            {
                if (IsValidEdict(ent))
                {
                    new String:s2[64];

                    GetEdictClassname(ent, s2, 64);

                    if (StrEqual(s2, "info_particle_system") && (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == i))
                    {
                        AcceptEntityInput(ent, "Kill");
                    }
                }
            }
        }
    }

    return Plugin_Continue;
}

public Action:RemoveEnt(Handle:timer, any:entid)
{
    new ent = EntRefToEntIndex(entid);

    if (ent > 0 && IsValidEntity(ent))
    {
        AcceptEntityInput(ent, "Kill");
    }

    return Plugin_Continue;
}

public Action:MessageTimer(Handle:hTimer, any:client)
{
    new Hale = Boss_GetBossClient();

    if (!IsValidClient(Hale) || ((client != 9001) && !IsValidClient(client)))
    {
        return Plugin_Continue;
    }

    if (checkdoors)
    {
        new ent = -1;

        while ((ent = FindEntityByClassname2(ent, "func_door")) != -1)
        {
            AcceptEntityInput(ent, "Open");
            AcceptEntityInput(ent, "Unlock");
        }

        if (doorchecktimer == INVALID_HANDLE)
        {
            doorchecktimer = CreateTimer(5.0, Timer_CheckDoors, _, TIMER_FLAG_NO_MAPCHANGE | TIMER_REPEAT);
        }
    }

    decl String:translation[32];

    switch (Special)
    {
        case VSHSpecial_Guard:
            strcopy(translation, sizeof(translation), "vsh_start_guardian");
        case VSHSpecial_Astro:
            strcopy(translation, sizeof(translation), "vsh_start_astro");
        case VSHSpecial_Nue:
            strcopy(translation, sizeof(translation), "vsh_start_nue");
        case VSHSpecial_Cave:
            strcopy(translation, sizeof(translation), "vsh_start_cave");
        case VSHSpecial_Bunny:
            strcopy(translation, sizeof(translation), "vsh_start_bunny");
        case VSHSpecial_Vagineer:
            strcopy(translation, sizeof(translation), "vsh_start_vagineer");
        case VSHSpecial_HHH:
            strcopy(translation, sizeof(translation), "vsh_start_hhh");
        case VSHSpecial_CBS:
            strcopy(translation, sizeof(translation), "vsh_start_cbs");
        default:
            strcopy(translation, sizeof(translation), "vsh_start_hale");
    }

    SetHudTextParams(-1.0, 0.2, 10.0, 255, 255, 255, 255);

    if ( (client != 9001) && !(GetClientButtons(client) & IN_SCORE) )
    {
        ShowHudText(client, -1, "%T", translation, client, Hale, Boss_GetMaxHP());
    }
    else
    {
        for (new i = 1; i <= MaxClients; i++)
        {
            if ( IsValidClient(i) && !(GetClientButtons(i) & IN_SCORE) )
            {
                ShowHudText(i, -1, "%T", translation, i, Hale, Boss_GetMaxHP());
            }
        }
    }

    return Plugin_Continue;
}

public Action:MakeModelTimer(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();

    if (!IsValidClient(Hale) || !IsPlayerAlive(Hale) || Boss_IsRoundState(ROUNDSTATE_END))
    {
        return Plugin_Stop;
    }

    new body = 0;

    switch (Special)
    {
        case VSHSpecial_Guard:
        {
            SetVariantString("");
        }
        case VSHSpecial_Astro:
        {
            SetVariantString(AstroModel);
        }
        case VSHSpecial_Nue:
        {
            SetVariantString(NueModel);
        }
        case VSHSpecial_Cave:
        {
            SetVariantString(CaveModel);
        }
        case VSHSpecial_Bunny:
        {
            SetVariantString(BunnyModel);
        }
        case VSHSpecial_Vagineer:
        {
            SetVariantString(VagineerModel);
            //          SetEntProp(Hale, Prop_Send, "m_nSkin", GetClientTeam(Hale)-2);
        }
        case VSHSpecial_HHH:
            SetVariantString(HHHModel);
        case VSHSpecial_CBS:
            SetVariantString(CBSModel);
        default:
        {
            SetVariantString(HaleModel);
            //          decl String:steamid[32];
            //          GetClientAuthString(Hale, steamid, sizeof(steamid));
            if (GetUserFlagBits(Hale) & ADMFLAG_CUSTOM1)
            {
                body = (1 << 0) | (1 << 1);
            }
        }
    }
    //  DispatchKeyValue(Hale, "targetname", "hale");
    AcceptEntityInput(Hale, "SetCustomModel");

    SetEntProp(Hale, Prop_Send, "m_bUseClassAnimations", 1);
    SetEntProp(Hale, Prop_Send, "m_nBody", body);

    return Plugin_Continue;
}

EquipSaxton(client)
{
    CaveJohnson_SetLemonRage(false);
    Nue_SetRageActive(false);
    //bNue_Is_Scout = false;
    bEnableSuperDuperJump = false;
    new SaxtonWeapon;

    TF2_RemoveAllWeapons2(client);
    HaleCharge = 0;

    switch (Special)
    {
        case VSHSpecial_Guard:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_knife", 638, 64, 5, "68 ; -3 ; 2 ; 10.0 ; 259 ; 1.0 ; 275 ; 1");
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
        case VSHSpecial_Astro:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_wrench", 197, 64, 5, "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0");
            SetEntProp(SaxtonWeapon, Prop_Send, "m_iWorldModelIndex", -1);
            SetEntProp(SaxtonWeapon, Prop_Send, "m_nModelIndexOverrides", -1, _, 0);
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
        case VSHSpecial_Nue:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_knife", 4, 64, 5, "68 ; 2.0 ; 410 ; 5.05 ; 259 ; 1.0 ; 252 ; 0.75 ; 137 ; 2.0");
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
            SpawnWeapon(client, "tf_weapon_invis", 297, 64, 5, "421 ; 1 ; 50 ; 0.4 ; 253 ; -1 ; 221 ; -2 ; 160 ; 1");
            SetEntPropFloat(client, Prop_Send, "m_flCloakMeter", -100.0);
        }
        case VSHSpecial_Cave:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_grenadelauncher", 19, 64, 5, "37 ; 0.0 ; 68 ; 2.0 ; 259 ; 1.0 ; 318 ; 0.5 ; 207 ; 0.0 ; 208 ; 1 ; 252 ; 0.7 ; 1 ; 0.9 ; 3 ; 0.75 ; 5 ; 1.1 ; 22 ; 1 ; 527 ; 1");
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
        case VSHSpecial_Bunny:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_bottle", 1, 64, 5, "68 ; 2.0 ; 2 ; 3.0 ; 259 ; 1.0 ; 326 ; 1.3 ; 252 ; 0.6");
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
        case VSHSpecial_Vagineer:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_wrench", 197, 64, 5, "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0 ; 436 ; 1.0 ; 330 ; 9");
            SetEntProp(SaxtonWeapon, Prop_Send, "m_iWorldModelIndex", -1);
            SetEntProp(SaxtonWeapon, Prop_Send, "m_nModelIndexOverrides", -1, _, 0);
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
        case VSHSpecial_HHH:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_sword", 266, 64, 5, "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0 ; 252 ; 0.6 ; 551 ; 1");
            SetEntProp(SaxtonWeapon, Prop_Send, "m_iWorldModelIndex", -1);
            SetEntProp(SaxtonWeapon, Prop_Send, "m_nModelIndexOverrides", -1, _, 0);
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
            HaleCharge = -1000;
        }
        case VSHSpecial_CBS:
        {
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_club", 171, 64, 5, "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0");
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
            SetEntProp(client, Prop_Send, "m_nBody", 0);
            SetEntProp(SaxtonWeapon, Prop_Send, "m_nModelIndexOverrides", GetEntProp(SaxtonWeapon, Prop_Send, "m_iWorldModelIndex"), _, 0);
        }
        default:
        {
            decl String:attribs[64];
            Format(attribs, sizeof(attribs), "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0 ; 252 ; 0.6 ; 214 ; %d", GetRandomInt(9999, 99999));
            SaxtonWeapon = SpawnWeapon(client, "tf_weapon_shovel", 5, 64, 11, attribs);
            SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
        }
    }
}

public Action:MakeHale(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();

    if (!IsValidClient(Hale))
    {
        return Plugin_Continue;
    }

    switch (Special)
    {
        case VSHSpecial_Hale:
            TF2_SetPlayerClass(Hale, TFClass_Soldier, _, false);
        case VSHSpecial_Vagineer, VSHSpecial_Astro:
            TF2_SetPlayerClass(Hale, TFClass_Engineer, _, false);
        case VSHSpecial_HHH, VSHSpecial_Bunny, VSHSpecial_Cave:
            TF2_SetPlayerClass(Hale, TFClass_DemoMan, _, false);
        case VSHSpecial_CBS:
            TF2_SetPlayerClass(Hale, TFClass_Sniper, _, false);
        case VSHSpecial_Nue, VSHSpecial_Guard:
            TF2_SetPlayerClass(Hale, TFClass_Spy, _, false);
    }

    TF2_RemovePlayerDisguise(Hale);

    if (GetClientTeam(Hale) != HaleTeam)
    {
        SetEntProp(Hale, Prop_Send, "m_lifeState", 2);
        ChangeClientTeam(Hale, HaleTeam);
        SetEntProp(Hale, Prop_Send, "m_lifeState", 0);
        TF2_RespawnPlayer(Hale);
    }

    if (Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        return Plugin_Continue;
    }

    if (!IsPlayerAlive(Hale))
    {
        if (Boss_IsRoundState(ROUNDSTATE_WAITING))
        {
            TF2_RespawnPlayer(Hale);
        }
        else
        {
            return Plugin_Continue;
        }
    }

    if (Special == VSHSpecial_Astro)
    {
        SetEntityGravity(Hale, 0.4);
    }

    if (Special == VSHSpecial_Guard)
    {
        Guardian_FogScreen(Hale, "fog_data");
        SetEntityRenderMode(Hale, RENDER_TRANSTEXTURE);
        SetEntityRenderColor(Hale, 20, 20, 20, 150);
        SetClientListeningFlags(Hale, VOICE_MUTED);
    }

    new iFlags = GetCommandFlags("r_screenoverlay");

    SetCommandFlags("r_screenoverlay", iFlags & ~FCVAR_CHEAT);
    ClientCommand(Hale, "r_screenoverlay \"\"");
    SetCommandFlags("r_screenoverlay", iFlags);
    CreateTimer(0.2, MakeModelTimer, _);
    CreateTimer(20.0, MakeModelTimer, _, TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);

    new ent = -1;

    while ((ent = FindEntityByClassname2(ent, "tf_wearable")) != -1)
    {
        if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == Hale)
        {
            new index = GetEntProp(ent, Prop_Send, "m_iItemDefinitionIndex");
/*
438, 463, 167, 477, 493, 233, 234, 241, 280, 281, 282, 283, 284, 286, 288, 362, 364, 365, 536, 542, 577, 599, 673, 729, 791, 839, 1015, 5607:

438 Director's Vision
463 Schadenfreude
167 High Five
477 Meet the Medic
493 Promotional Noise Maker - Fireworks
233
234
241 Duel MiniGame
280 Halloween Noise Maker - Black Cat
281 Halloween Noise Maker - Gremlin
282 Halloween Noise Maker - Werewolf
283 Halloween Noise Maker - Witch
284 Halloween Noise Maker - Banshee
286 Halloween Noise Maker - Crazy Laugh
288 Halloween Noise Maker - Stabby
362 Charity Noise Maker - Bell
364 Charity Noise Maker - Gong
365 Charity Noise Maker - Koto
536 Noise Maker - Birthday
542 Noise Maker - Vuvuzela
673 Noise Maker - Winter 2011
791 - What's in the Companion Square Box? (open for Genuine The Friends Forever Companion Square Badge)
1015    The Shred Alert


*/
            switch (index)
            {
                case 438, 463, 167, 477, 493, 233, 234, 241, 280, 281, 282, 283, 284, 286, 288, 362, 364, 365, 536, 542, 577, 599, 673, 729, 791, 839, 1015, 5607:{}
                default:
                    AcceptEntityInput(ent, "kill");
            }
        }
    }

    ent = -1;

    while ((ent = FindEntityByClassname2(ent, "tf_powerup_bottle")) != -1)
    {
        if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == Hale)
        {
            new index = GetEntProp(ent, Prop_Send, "m_iItemDefinitionIndex");

            switch (index)
            {
                case 438, 463, 167, 477, 493, 233, 234, 241, 280, 281, 282, 283, 284, 286, 288, 362, 364, 365, 536, 542, 577, 599, 673, 729, 791, 839, 1015, 5607:{}
                default:
                    AcceptEntityInput(ent, "kill");
            }
        }
    }

    ent = -1;

    while ((ent = FindEntityByClassname2(ent, "tf_wearable_demoshield")) != -1)
    {
        if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == Hale)
        {
            TF2_RemoveWearable(Hale, ent);
        }
    }

    EquipSaxton(Hale);

    if (!Boss_IsRoundState(ROUNDSTATE_DISABLED) && GetClientClasshelpinfoCookie(Hale))
    {
        HintPanel(Hale);
    }

    return Plugin_Continue;
}

public Action:TF2Items_OnGiveNamedItem(client, String:classname[], iItemDefinitionIndex, &Handle:hItem)
{
    // Doesn't work on first round
    //if (!Enabled) return Plugin_Continue;

    //  if (Boss_IsClientHale(client)) return Plugin_Continue;
    //  if (hItem != INVALID_HANDLE) return Plugin_Continue;

    /*new bChanged = false;

    if (Special == VSHSpecial_Nue)
    {
        new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "407 ; 1"); //Crit vs disguised players

        if (hItemOverride != INVALID_HANDLE)
        {
            hItem = hItemOverride;

            bChanged = true;
        }
    }*/

    switch (iItemDefinitionIndex)
    {
        /*case 474:
        {
            if (TF2_GetPlayerClass(client) == TFClass_DemoMan)  //Conscientious Objector is an eyelander
            {
                new Handle:hItemOverride = PrepareItemHandle(hItem, "tf_weapon_sword", _, "15 ; 0 ; 125 ; -25 ; 219 ; 1 ; 551 ; 1", true); //"tf_weapon_sword"

                if (hItemOverride != INVALID_HANDLE)
                {
                    hItem = hItemOverride;

                    return Plugin_Changed;
                }
            }
        }*/
        case 39, 351, 1081: //Megadetonator
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "25 ; 0.5 ; 207 ; 1.33 ; 144 ; 1.0 ; 58 ; 3.2", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 40: // Backburner
        {
           new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "165 ; 1; 256 ; 1.8");

           if (hItemOverride != INVALID_HANDLE)
           {
               hItem = hItemOverride;

               return Plugin_Changed;
           }
        }
        case 21, 208, 215, 659, 741, 798, 807, 887, 896, 905, 914, 963, 972: // Airblasting has a cooldown of 1.35 instead of 0.75
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "256 ; 1.8");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 648: //Wrap Assassin
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "279 ; 2.0");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 231: // Darwin's Danger Shield
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "26 ; 25 ; 2029 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 752: // Hitman's Heatmaker
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "390 ; 3 ; 91 ; 0.0 ; 219 ; 1", true); // 392 ; 0.33

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 526: // Machina
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "390 ; 1.33");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 61, 1006: // Ambassador
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "390 ; 2.5");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 441: // Cow mangler
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "527 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 224: // Letranger
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "166 ; 15 ; 1 ; 0.8", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 225, 574: // YER
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "155 ; 1", true); //160 ; 1

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 30, 212, 59, 297, 947: // If not the cloak n dagger, set silent cloak if using YER
        {
            new knife = GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee);
            if (knife == 225 || knife == 574)
            {
                new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "160 ; 1");

                if (hItemOverride != INVALID_HANDLE)
                {
                    hItem = hItemOverride;

                    return Plugin_Changed;
                }
            }
        }
        case 60: // CnD becomes "The Phase Shift" - Instant cloak/decloak. 4x cloak drain, 8x cloak regen regen.
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "160 ; 1 ; 33 ; 1 ; 253 ; -1 ; 34 ; 5.0 ; 35 ; 9.0", true); //"253 ; -1 ; 34 ; 3.0 ; 35 ; 17.0"

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG) && (!Boss_IsClientHale(client)))
                {
                    CPrintToChat(client, "{olive}[VSH]{default} Equipped The Phase Shift instead of The Cloak N' Dagger.");
                    VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                }

                return Plugin_Changed;
            }
        }
        case 311: // Heavy steak - acts like normal sandvich 42, 863, 1002,
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "144 ; 0 ; 551 ; 1 ; 2029 ; 1"); // 2 for buffalo steak sandvich

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 159, 433: // Heavy chocolate acts like normal sandvich
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "144 ; 2 ; 551 ; 1 ; 2029 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 404: // Persian Persuader
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "140 ; 30 ; 76 ; 2.0 ; 78 ; 2.0");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 1103: // Back Scatter
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        /*case 589: // Eureka Effect - Changed penalty to cannot carry buildings
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "352 ; 1 ; 353 ; 1 ; 551 ; 1", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }*/
        /*
    recon_ping.wav
    rescue_ranger_charge_01.wav
    rescue_ranger_charge_02.wav
    rescue_ranger_fire.wav
    rescue_ranger_fire_crit.wav
    rescue_ranger_teleport_receive_01.wav
    rescue_ranger_teleport_receive_02.wav
    rescue_ranger_teleport_send_01.wav
    rescue_ranger_teleport_send_02.wav
        */
        case 997: // Rescue Ranger - Telegrab cost is 100, no mark for death when carrying buildings
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "469 ; 100 ; 474 ; 75 ; 280 ; 18 ; 77 ; 0.5 ; 3 ; 0.66", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 327: // Claidheamohmor
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "15 ; 0 ; 140 ; 30 ; 202 ; 1 ; 639 ; 50 ; 248 ; 4 ; 551 ; 1 ; 247 ; 1", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 357: // Zatoichi
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "140 ; 30");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 405, 608: // Demoboots
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "259 ; 1 ; 252 ; 0.25");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 11, 199, 425: //Heavy shotgun nerf
        {
            if (TF2_GetPlayerClass(client) == TFClass_Heavy)
            {
                new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "65 ; 2.0 ; 61 ; 2.0");

                if (hItemOverride != INVALID_HANDLE)
                {
                    hItem = hItemOverride;

                    return Plugin_Changed;
                }
            }
        }
        /*case 265: // Sticky Jumper == The Quick Launcher
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, 20, "6 ; 0.5 ; 126 ; 0.4 ; 1 ; 0.8 ; 3 ; 0.25 ; 100 ; 0.8 ; 207 ; 2.0 ; 89 ; -6", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }*/
        case 998: // Vaccinator
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "178 ; 0.75");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 36: // Blutsauger
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "16 ; 9 ; 17 ; 0.02 ; 144 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 411: // Quick Fix - Removed overheal penalty, but overheal is still only 1.5x. Overheal does not decay.
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "105 ; 0.5 ; 178 ; 0.75 ; 14 ; 99999.0 ; 144 ; 2 ; 8 ; 1.4 ; 10 ; 1.25 ; 292 ; 1 ; 293 ; 2 ; 231 ; 2", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        /*
         Various "healed by medic" bonus attributes
         232 ; 15 ; 233 ; 1.25 ; 239 ; 1.25

        Minicrits 15 sec on medic death
        1.1x damage while healed
        Medic healing you generates uber 25% faster

        */
        case 15, 202, 298, 654, 793, 802, 882, 891, 900, 909, 958, 967: // Miniguns
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "87 ; 0.5 ; 178 ; 0.75 ; 232 ; 15 ; 233 ; 1.25 ; 239 ; 1.25");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        /*case 424: // Tomislav
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "75 ; 3.0 ; 431 ; 6 ; 5 ; 1.2 ; 1 ; 0.75 ; 87 ; 0.40 ; 178 ; 0.75 ; 232 ; 15 ; 233 ; 1.25 ; 239 ; 1.25", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }*/
        case 312: // Brass Beast
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "69 ; 0.25 ; 109 ; 0.25");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 811, 832: // Huo long Heatmaker
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "431 ; 3 ; 87 ; 0.5 ; 178 ; 0.75 ; 208 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 331: // Fists of Steel
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "128 ; 1 ; 205 ; 2.0 ; 206 ; 0.6 ; 54 ; 0.7");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        /*case 528: // Short Circuit
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "15 ; 0 ; 5 ; 3.0 ; 298 ; 32 ; 300 ; 1 ; 301 ; 1 ; 303 ; -1 ; 307 ; 1 ; 312 ; 1", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }*/
        case 232: // Bushwacka
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "236 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 401: // Shahanshah
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "236 ; 1 ; 224 ; 1.66");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 173, 304: //Amputator / Vita-Saw
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "17 ; 0.25 ; 5 ; 1.2 ; 200 ; 1 ; 125 ; 0 ; 551 ; 1", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 448: // Soda Popper
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 220: // Shortstop (Removed shortstop reload penalty I guess? Makes it act like scattergun...)
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "328 ; 1.0", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 226: // The Battalion's Backup
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "252 ; 0.25"); //125 ; -10

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 356: // Kunai
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "125 ; -60");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 305, 1079: // Medic crossbow
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "17 ; 0.16 ; 2 ; 1.45"); //1.7

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 772: // BFB - reset if inventory gets refreshed by infinite ammo plugin
        {
            new Handle:hItemOverride;

            if (Special != VSHSpecial_HHH)
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 0.25");
            }
            else
            {
                hItemOverride = PrepareItemHandle(hItem, _, _, "49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 1");
            }

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 56, 1005, 1092: // Huntsman
        {
             new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "2 ; 1.5 ; 76 ; 2.0");

             if (hItemOverride != INVALID_HANDLE)
             {
                 hItem = hItemOverride;

                 return Plugin_Changed;
             }
        }
        case 730:   //Setting true sets the weapon back to a default weapon with no attributes again basically (at least it's supposed to)
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "394 ; 0.3 ; 241 ; 1.3 ; 424 ; 0.75 ; 413 ; 1 ; 411 ; 3 ; 417 ; 1 ; 421 ; 0", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 128, 775: // Equalizer / Escape Plan
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "115 ; 1 ; 235 ; 1 ; 414 ; 0 ; 236 ; 1", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 239, 1084, 1100: //GRU 412 ; 1.25
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "107 ; 1.5 ; 1 ; 0.5 ; 128 ; 1 ; 129 ; -7", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 415: // Reserve Shooter
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "179 ; 1 ; 265 ; 99999.0 ; 178 ; 0.6 ; 2 ; 1.1 ; 3 ; 0.5", true);

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }
        case 19, 206, 308, 1007, 996: // Nades
        {
            /*if (iItemDefinitionIndex == 206 && IsClientChdata(client))
            {
                new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "128 ; 1 ; 68 ; 2.0 ; 259 ; 1.0 ; 318 ; 0.5 ; 181 ; 1 ; 208 ; 1 ; 252 ; 0.7 ; 1 ; 0.9 ; 3 ; 0.75 ; 5 ; 1.1 ; 22 ; 1 ; 527 ; 1");
            
                if (hItemOverride != INVALID_HANDLE)
                {
                    hItem = hItemOverride;

                    return Plugin_Changed;
                }
            }
            else
            {*/
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "128 ; 1 ; 207 ; 0.52 ; 265 ; 99999.0");
        
            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
            //}
        }
        /*case 20, 207, 130, 661, 797, 806, 886, 895, 904, 913, 962, 971: // Sticky launchers
        {
            new Handle:hItemOverride = PrepareItemHandle(hItem, _, _, "265 ; 99999.0");

            if (hItemOverride != INVALID_HANDLE)
            {
                hItem = hItemOverride;

                return Plugin_Changed;
            }
        }*/
    }

    if (TF2_GetPlayerClass(client) == TFClass_Soldier && (strncmp(classname, "tf_weapon_rocketlauncher", 24, false) == 0 || strncmp(classname, "tf_weapon_shotgun", 17, false) == 0))
    {
        new Handle:hItemOverride;

        if (iItemDefinitionIndex == 127)
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "265 ; 99999.0 ; 179 ; 1.0"); //488 ; 4
        }
        else
        {
            hItemOverride = PrepareItemHandle(hItem, _, _, "265 ; 99999.0");
        }

        if (hItemOverride != INVALID_HANDLE)
        {
            hItem = hItemOverride;

            return Plugin_Changed;
        }
    }

    return Plugin_Continue;
}

/*public TF2Items_OnGiveNamedItem_Post(client, String:classname[], itemDefinitionIndex, itemLevel, itemQuality, entityIndex)
{
    PrimaryMaxAmmo[client] = GetAmmo(client, TFWeaponSlot_Primary);
    SecondaryMaxAmmo[client] = GetAmmo(client, TFWeaponSlot_Secondary);

    CPrintToChdata("%N gived item and colleceted ammo %i %i idx %i", client, PrimaryMaxAmmo[client], SecondaryMaxAmmo[client], itemDefinitionIndex);
}*/


/*
On spawn, see if we need to replace a weapon for another one

*/
public Action:evEquipped(Handle:hEvent, const String:sName[], bool:bDontBroadcast)
{
    new client = GetClientOfUserId(GetEventInt(hEvent, "userid"));
    
    if (GetClientTeam(client) != TEAM_BLU && GetClientTeam(client) != TEAM_RED)
        return Plugin_Continue;

    if (!Boss_IsClientHale(client))
    {
        ReplaceList(client);

        PrimaryMaxAmmo[client] = GetAmmo(client, TFWeaponSlot_Primary);
        SecondaryMaxAmmo[client] = GetAmmo(client, TFWeaponSlot_Secondary);

        CPrintToChdata("%N equipped and collcted ammo %i %i", client, PrimaryMaxAmmo[client], SecondaryMaxAmmo[client]);
    } 

    return Plugin_Continue;
}

public Action:MakeNoHale(Handle:hTimer, any:clientid)
{
    new client = GetClientOfUserId(clientid);

    if (!IsValidClient(client) || !IsPlayerAlive(client) || Boss_IsRoundState(ROUNDSTATE_END) || Boss_IsClientHale(client))
    {
        return Plugin_Continue;
    }

    //  SetVariantString("");
    //  AcceptEntityInput(client, "SetCustomModel");

    if (GetClientTeam(client) != OtherTeam)
    {
        SetEntProp(client, Prop_Send, "m_lifeState", 2);
        ChangeClientTeam(client, OtherTeam);
        SetEntProp(client, Prop_Send, "m_lifeState", 0);
        TF2_RespawnPlayer(client);
        TF2_RegeneratePlayer(client);   // Added fix by Chdata to correct team colors
        if (IsClientChdata(client)) CPrintToChdata("Regenerated non-hale");
    }

    if (Special == VSHSpecial_Guard)
    {
        Guardian_FogScreen(client, "fog_data");

        RestrictToMelee(client);

        SetClientListeningFlags(client, VOICE_MUTED);

        return Plugin_Continue;
    }

    //  SetEntityRenderColor(client, 255, 255, 255, 255);

    if (!Boss_IsRoundState(ROUNDSTATE_WAITING) && GetClientClasshelpinfoCookie(client) && !(VSHFlags[client] & VSHFLAG_CLASSHELPED))
    {
        HelpPanel2(client);
    }

    //new weapon = GetPlayerWeaponSlot(client, 4);

    /*if (weapon > MaxClients && IsValidEdict(weapon) && GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex") == 60)
    {
        TF2_RemoveWeaponSlot2(client, 4);
        weapon = SpawnWeapon(client, "tf_weapon_invis", 30, 1, 0, "1");
    }*/

    // ReplaceList(client)

    return Plugin_Continue;
}

public Action:Timer_NoHonorBound(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);

    if (IsValidClient(client) && IsPlayerAlive(client))
    {
        new weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Melee);
        //new index = ((IsValidEntity(weapon) && weapon > MaxClients) ? GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex"):-1);
        //new active = GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");
        //new String:classname[64];

        /*if (IsValidEdict(active))
        {
            GetEdictClassname(active, classname, sizeof(classname));
        }*/

        if (IsIndexActive(client, 357)) // && strcmp(classname, "tf_weapon_katana", false) == 0
        {
            SetEntProp(weapon, Prop_Send, "m_bIsBloody", 1);

            if (GetEntProp(client, Prop_Send, "m_iKillCountSinceLastDeploy") < 1)
            {
                SetEntProp(client, Prop_Send, "m_iKillCountSinceLastDeploy", 1);
            }
        }
    }
}

public Action:event_destroy(Handle:event, const String:name[], bool:dontBroadcast)
{
    new Hale = Boss_GetBossClient();

    if (Enabled)
    {
        new attacker = GetClientOfUserId(GetEventInt(event, "attacker"));
        new customkill = GetEventInt(event, "customkill");

        if (Boss_IsClientHale(attacker)) /* || (attacker == Companion)*/
        {
            if (Special == VSHSpecial_Hale)
            {
                if (customkill != TF_CUSTOM_BOOTS_STOMP)
                {
                    SetEventString(event, "weapon", "fists");
                }

                if (!GetRandomInt(0, 4))
                {
                    decl String:s[PLATFORM_MAX_PATH];
                    strcopy(s, PLATFORM_MAX_PATH, HaleSappinMahSentry132);

                    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                }
            }
        }
    }

    return Plugin_Continue;
}

public Action:event_changeclass(Handle:event, const String:name[], bool:dontBroadcast)
{
    if (!Enabled)
    {
        return Plugin_Continue;
    }

    new client = GetClientOfUserId(GetEventInt(event, "userid"));

    if (Boss_IsClientHale(client))
    {
        switch (Special)
        {
            case VSHSpecial_Hale:
                if (TF2_GetPlayerClass(client) != TFClass_Soldier)
                {
                    TF2_SetPlayerClass(client, TFClass_Soldier, _, false);
                }
            case VSHSpecial_Vagineer, VSHSpecial_Astro:
                if (TF2_GetPlayerClass(client) != TFClass_Engineer)
                {
                    TF2_SetPlayerClass(client, TFClass_Engineer, _, false);
                }
            case VSHSpecial_HHH, VSHSpecial_Bunny, VSHSpecial_Cave:
                if (TF2_GetPlayerClass(client) != TFClass_DemoMan)
                {
                    TF2_SetPlayerClass(client, TFClass_DemoMan, _, false);
                }
            case VSHSpecial_CBS:
                if (TF2_GetPlayerClass(client) != TFClass_Sniper)
                {
                    TF2_SetPlayerClass(client, TFClass_Sniper, _, false);
                }
            case VSHSpecial_Nue, VSHSpecial_Guard:
                if (TF2_GetPlayerClass(client) != TFClass_Spy)
                {
                    TF2_SetPlayerClass(client, TFClass_Spy, _, false);
                }
        }

        TF2_RemovePlayerDisguise(client);
    }

    return Plugin_Continue;
}

public Action:event_uberdeployed(Handle:event, const String:name[], bool:dontBroadcast)
{
    if (!Enabled)
    {
        return Plugin_Continue;
    }

    new client = GetClientOfUserId(GetEventInt(event, "userid"));
    new String:s[64];

    if (IsValidClient(client) && IsPlayerAlive(client))
    {
        new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);
        new wepindie = (medigun > MaxClients && IsValidEdict(medigun) ? GetEntProp(medigun, Prop_Send, "m_iItemDefinitionIndex"):-1);

        if (IsValidEntity(medigun)) //(wepindie != 998)
        {
            GetEdictClassname(medigun, s, sizeof(s));

            if (strcmp(s, "tf_weapon_medigun", false) == 0)
            {
                TF2_AddCondition(client, TFCond_HalloweenCritCandy, 0.5, client);

                new target = GetHealingTarget(client);

                if (IsValidClient(target) && IsPlayerAlive(target))
                {
                    TF2_AddCondition(target, TFCond_HalloweenCritCandy, 0.5, client);
                    uberTarget[client] = target;
                }
                else
                {
                    uberTarget[client] = -1;
                }

                if (wepindie != 998) SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", 1.50);
                CreateTimer(0.4, Timer_Lazor, EntIndexToEntRef(medigun), TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
                if (wepindie == 998)
                {
                    if (VaccineTimers[client] != INVALID_HANDLE) 
                    {
                        KillTimer(VaccineTimers[client]);
                    }
                    VaccineTimers[client] = CreateTimer(1.0, Timer_Vaccine, EntIndexToEntRef(medigun), TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
                }
            }
        }
    }
    return Plugin_Continue;
}

public Action:Timer_Vaccine(Handle:hTimer, any:medigunid) //10hp/s 20%ammo/s 40metal/5s 8metal/s 5%cloak/s
{
    new medigun = EntRefToEntIndex(medigunid);

    if (!IsValidEntity(medigun) || !medigun)
    {
        return Plugin_Stop;
    }

    new client = GetEntPropEnt(medigun, Prop_Send, "m_hOwnerEntity");

    if (!IsVacUber(client))
    {
        VaccineTimers[client] = INVALID_HANDLE;
        return Plugin_Stop;
    }

    static vacsecs = 0;
    vacsecs = !vacsecs;

    if (!Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        if (IsValidClient(client) && IsPlayerAlive(client) && GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon") == medigun)
        {
            new target = GetHealingTarget(client);

            if (IsVacUber(client))
            {
                /*new health = GetClientHealth(target);
                new max = GetEntProp(target, Prop_Data, "m_iMaxHealth");
                new newhealth = health + 10;

                if (health < max)
                {
                    if (newhealth > max) newhealth = max;

                    SetEntProp(target, Prop_Data, "m_iHealth", newhealth);
                    SetEntProp(target, Prop_Send, "m_iHealth", newhealth);
                }*/

                //Give the medic more ammo
                //new iPrim = GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary);
                //PrimaryMaxAmmo[client] = (iPrim == 305 || iPrim == 1079) ? 38 : 150;

                new prammo = GetAmmo(client, TFWeaponSlot_Primary) + RoundFloat(float(PrimaryMaxAmmo[client]) * 0.2);
                if (prammo > PrimaryMaxAmmo[client]) prammo = PrimaryMaxAmmo[client];
                CPrintToChdata("%N Vacc prim ammo %i newammo %i gain %i", client, GetAmmo(client, TFWeaponSlot_Primary), prammo, RoundFloat(float(PrimaryMaxAmmo[client]) * 0.2));
                SetAmmo(client, TFWeaponSlot_Primary, prammo);

                if (IsValidClient(target) && IsPlayerAlive(target))
                {
                    /*if (TF2_GetPlayerClass(target) == TFClass_Medic)
                    {
                        iPrim = GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary);
                        PrimaryMaxAmmo[client] = (iPrim == 305 || iPrim == 1079) ? 38 : 150;
                    }*/

                    if (GetIndexOfWeaponSlot(target, TFWeaponSlot_Melee) == 404) // Persian persuader only gets health
                    {
                        new health = GetClientHealth(target);
                        new max = GetEntProp(target, Prop_Data, "m_iMaxHealth");
                        new newhealth = health + RoundFloat(float(max)*0.25);

                        CPrintToChdata("%N patient health %i maxhp %i newhp %i gain %i", target, health, max, newhealth, RoundFloat(float(max)*0.25));

                        if (health < max)
                        {
                            if (newhealth > max) newhealth = max;

                            SetEntProp(target, Prop_Data, "m_iHealth", newhealth);
                            SetEntProp(target, Prop_Send, "m_iHealth", newhealth);
                        }
                    }
                    else
                    {
                        prammo = GetAmmo(target, TFWeaponSlot_Primary) + RoundFloat(float(PrimaryMaxAmmo[target]) * 0.2);

                        CPrintToChdata("%N pati pri ammo %i new %i max %i gain %i", target, GetAmmo(target, TFWeaponSlot_Primary), prammo, PrimaryMaxAmmo[target], RoundFloat(float(PrimaryMaxAmmo[target]) * 0.2));

                        new seammo = GetAmmo(target, TFWeaponSlot_Secondary) + RoundFloat(float(SecondaryMaxAmmo[target]) * 0.2);

                        CPrintToChdata("%N pati sec ammo %i new %i max %i gain %i", target, GetAmmo(target, TFWeaponSlot_Secondary), seammo, SecondaryMaxAmmo[target], RoundFloat(float(SecondaryMaxAmmo[target]) * 0.2));

                        if (prammo > PrimaryMaxAmmo[target]) prammo = PrimaryMaxAmmo[target];
                        if (seammo > SecondaryMaxAmmo[target]) seammo = SecondaryMaxAmmo[target];

                        SetAmmo(target, TFWeaponSlot_Primary, prammo);
                        SetAmmo(target, TFWeaponSlot_Secondary, seammo);

                        new TFClassType:class = TF2_GetPlayerClass(target);

                        if (class == TFClass_Engineer)
                        {
                            new metal = GetEntProp(target, Prop_Data, "m_iAmmo", _, 3) + 8;
                            if (metal > 200) metal = 200;
                            SetEntProp(target, Prop_Data, "m_iAmmo", metal, 4, 3);
                            CPrintToChdata("%N patient metal ammo %i newammo %i gain 8", target, GetEntProp(target, Prop_Data, "m_iAmmo", _, 3), metal);
                        }
                        else if (class == TFClass_Spy)
                        {
                            new Float:cloak = GetEntPropFloat(target, Prop_Send, "m_flCloakMeter") + 5.0;
                            if (cloak > 100.0) cloak = 100.0;
                            SetEntPropFloat(target, Prop_Send, "m_flCloakMeter", cloak);
                            CPrintToChdata("%N patient cloak ammo %1.0f newammo %1.0f gain 5.0", target, GetEntPropFloat(target, Prop_Send, "m_flCloakMeter"), cloak);
                        }

                        EmitSoundToClient(target, "items/ammo_pickup.wav");
                    }
                }

                if (vacsecs) EmitSoundToClient(client, "weapons/dispenser_generate_metal.wav"); //weapons/dispenser_generate_metal.wav
            }
        }
    }
    else return Plugin_Stop;

    return Plugin_Continue;
}

public Action:Timer_Lazor(Handle:hTimer, any:medigunid)
{
    new medigun = EntRefToEntIndex(medigunid);

    if (medigun && IsValidEntity(medigun) && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        new client = GetEntPropEnt(medigun, Prop_Send, "m_hOwnerEntity");
        new Float:charge = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel");
        new wepindie = (medigun > MaxClients && IsValidEdict(medigun) ? GetEntProp(medigun, Prop_Send, "m_iItemDefinitionIndex"):-1);

        if (IsValidClient(client) && IsPlayerAlive(client) && GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon") == medigun)
        {
            new target = GetHealingTarget(client);

            if (charge > 0.05)
            {
                if (wepindie == 998)
                {
                    if (IsVacUber(client))
                    {
                        TF2_AddCondition(client, TFCond_HalloweenCritCandy, 0.5);

                        if (IsValidClient(target) && IsPlayerAlive(target))
                        {
                            TF2_AddCondition(target, TFCond_HalloweenCritCandy, 0.5);
                            uberTarget[client] = target;
                        }
                        else
                        {
                            uberTarget[client] = -1;
                        }
                    }
                }
                else if (wepindie == 411)
                {
                    TF2_AddCondition(client, TFCond_Buffed, 0.5);

                    if (IsValidClient(target) && IsPlayerAlive(target))
                    {
                        TF2_AddCondition(target, TFCond_Buffed, 0.5);
                        uberTarget[client] = target;
                    }
                    else
                    {
                        uberTarget[client] = -1;
                    }
                }
                else
                {
                    TF2_AddCondition(client, TFCond_HalloweenCritCandy, 0.5);

                    if (IsValidClient(target) && IsPlayerAlive(target))
                    {
                        TF2_AddCondition(target, TFCond_HalloweenCritCandy, 0.5);
                        uberTarget[client] = target;
                    }
                    else
                    {
                        uberTarget[client] = -1;
                    }
                }
            }
        }

        if (charge <= 0.05)
        {
            CreateTimer(3.0, Timer_Lazor2, EntIndexToEntRef(medigun));
            VSHFlags[client] &= ~VSHFLAG_UBERREADY;

            return Plugin_Stop;
        }
    }
    else return Plugin_Stop;

    return Plugin_Continue;
}

public Action:Timer_Lazor2(Handle:hTimer, any:medigunid)
{
    new medigun = EntRefToEntIndex(medigunid);
    new wepindie = (medigun > MaxClients && IsValidEdict(medigun) ? GetEntProp(medigun, Prop_Send, "m_iItemDefinitionIndex"):-1);

    if (IsValidEntity(medigun) && (wepindie != 998)) SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel") + 0.32);

    return Plugin_Continue;
}

public Action:Command_GetHPCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    Command_GetHP(client);

    return Plugin_Handled;
}

public Action:Command_GetHP(client)
{
    if (!Enabled || !Boss_IsRoundState(ROUNDSTATE_ACTIVE) || Special == VSHSpecial_Guard)
    {
        return Plugin_Continue;
    }

    new HaleHealthMax = Boss_GetMaxHP();

    if (Boss_IsClientHale(client))
    {
        switch (Special)
        {
            case VSHSpecial_Astro:
                PrintCenterTextAll("%t", "vsh_astro_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Nue:
                PrintCenterTextAll("%t", "vsh_nue_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Cave:
                PrintCenterTextAll("%t", "vsh_cave_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Bunny:
                PrintCenterTextAll("%t", "vsh_bunny_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Vagineer:
                PrintCenterTextAll("%t", "vsh_vagineer_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_HHH:
                PrintCenterTextAll("%t", "vsh_hhh_show_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_CBS:
                PrintCenterTextAll("%t", "vsh_cbs_show_hp", HaleHealth, HaleHealthMax);
            default:
                PrintCenterTextAll("%t", "vsh_hale_show_hp", HaleHealth, HaleHealthMax);
        }

        HaleHealthLast = HaleHealth;

        return Plugin_Continue;
    }

    if (GetGameTime() >= HPLastChecked)
    {
        healthcheckused++;

        switch (Special)
        {
            case VSHSpecial_Astro:
            {
                PrintCenterTextAll("%t", "vsh_astro_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_astro_hp", HaleHealth, HaleHealthMax);
            }
            case VSHSpecial_Nue:
            {
                if (!Nue_IsRageActive())
                {
                    PrintCenterTextAll("%t", "vsh_nue_hp", HaleHealth, HaleHealthMax);
                    CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_nue_hp", HaleHealth, HaleHealthMax);
                }
                else
                {
                    PrintCenterTextAll("Nue Houjuu's current health is: ---- of %d", HaleHealthMax);
                    CPrintToChatAll("{olive}[VSH]{default} Nue Houjuu's current health is: ---- of %d", HaleHealthMax);
                }
            }
            case VSHSpecial_Cave:
            {
                PrintCenterTextAll("%t", "vsh_cave_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_cave_hp", HaleHealth, HaleHealthMax);
            }
            case VSHSpecial_Bunny:
            {
                PrintCenterTextAll("%t", "vsh_bunny_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_bunny_hp", HaleHealth, HaleHealthMax);
            }
            case VSHSpecial_Vagineer:
            {
                PrintCenterTextAll("%t", "vsh_vagineer_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_vagineer_hp", HaleHealth, HaleHealthMax);
            }
            case VSHSpecial_HHH:
            {
                PrintCenterTextAll("%t", "vsh_hhh_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_hhh_hp", HaleHealth, HaleHealthMax);
            }
            case VSHSpecial_CBS:
            {
                PrintCenterTextAll("%t", "vsh_cbs_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_cbs_hp", HaleHealth, HaleHealthMax);
            }
            default:
            {
                PrintCenterTextAll("%t", "vsh_hale_hp", HaleHealth, HaleHealthMax);
                CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_hale_hp", HaleHealth, HaleHealthMax);
            }
        }

        HaleHealthLast = HaleHealth;
        HPLastChecked = GetGameTime() + (healthcheckused < 3 ? 20.0:80.0);

    }
    else if (RedAlivePlayers == 1)
    {
        CPrintToChat(client, "{olive}[VSH]{default} %t", (Special == VSHSpecial_Nue) ? "vsh_already_see_her" : "vsh_already_see");
    }
    else
    {
        if (!Nue_IsRageActive())
        {
            CPrintToChat(client, "{olive}[VSH]{default} %t", (Special == VSHSpecial_Nue) ? "vsh_wait_her_hp" : "vsh_wait_hp", RoundFloat(HPLastChecked - GetGameTime()), HaleHealthLast);
        }
        else
        {
            CPrintToChat(client, "{olive}[VSH]{default} You cannot see her HP now (wait %i seconds). Last known health was ----.", RoundFloat(HPLastChecked - GetGameTime()));
        }
    }

    return Plugin_Continue;
}

public Action:Command_MakeNextSpecial(client, args)
{
    decl String:arg[32];
    decl String:name[64];

    if (!bSpecials)
    {
        ReplyToCommand(client, "[VSH] This server isn't set up to use special bosses! Set the cvar hale_specials 1 in the VSH config to enable on next map!");
        return Plugin_Handled;
    }

    if (args < 1)
    {
        ReplyToCommand(client, "[VSH] Usage: hale_special <hale, vag, hhh, cbs, cave, nue, bunny, astro, guardian>");
        return Plugin_Handled;
    }

    GetCmdArgString(arg, sizeof(arg));

    if (StrContains(arg, "hal", false) != -1)
    {
        Incoming = VSHSpecial_Hale;
        name = "Saxton Hale";
    }
    else if (StrContains(arg, "cav", false) != -1)
    {
        Incoming = VSHSpecial_Cave;
        name = "Cave Johnson";
    }
    else if (StrContains(arg, "nue", false) != -1 || StrContains(arg, "hou", false) != -1)
    {
        Incoming = VSHSpecial_Nue;
        name = "Nue Houjuu";
    }
    else if (StrContains(arg, "ast", false) != -1 || StrContains(arg, "naut", false) != -1)
    {
        Incoming = VSHSpecial_Astro;
        name = "the Astronaut";
    }
    else if (StrContains(arg, "vag", false) != -1)
    {
        Incoming = VSHSpecial_Vagineer;
        name = "the Vagineer";
    }
    else if (StrContains(arg, "hhh", false) != -1)
    {
        Incoming = VSHSpecial_HHH;
        name = "the Horseless Headless Horsemann Jr.";
    }
    else if (StrContains(arg, "chr", false) != -1 || StrContains(arg, "cbs", false) != -1)
    {
        Incoming = VSHSpecial_CBS;
        name = "the Christian Brutal Sniper";
    }
#if defined EASTER_BUNNY_ON
    else if (StrContains(arg, "bun", false) != -1 || StrContains(arg, "eas", false) != -1)
    {
        Incoming = VSHSpecial_Bunny;
        name = "the Easter Bunny";
    }
#endif
    else if (StrContains(arg, "gua", false) != -1 || StrContains(arg, "sha", false) != -1)
    {
        Incoming = Guardian_CanFog() ? VSHSpecial_Guard : VSHSpecial_Guard;
        name = Guardian_CanFog() ? "the Guardian" : "Saxton Hale";
    }
    else
    {
        ReplyToCommand(client, "[VSH] Usage: hale_special <hale, vag, hhh, cbs, cave, nue, bunny, astro, guardian>");
        return Plugin_Handled;
    }

    ReplyToCommand(client, "[VSH] Set the next Special to %s.", name);

    return Plugin_Handled;
}

public Action:Command_NextHale(client, args)
{
    if (Enabled)
    {
        CreateTimer(0.2, MessageTimer);
    }

    return Plugin_Continue;
}

public Action:Command_HaleSelect(client, args)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    if (args < 1)
    {
        ReplyToCommand(client, "[VSH] Usage: hale_select <target> [\"hidden\"]");

        return Plugin_Handled;
    }

    decl String:s2[80];
    decl String:targetname[32];

    GetCmdArg(1, targetname, sizeof(targetname));
    GetCmdArg(2, s2, sizeof(s2));

    if (strcmp(targetname, "@me", false) == 0 && IsValidClient(client))
    {
        ForceHale(client, client, StrContains(s2, "hidden", false) > 0);
    }
    else
    {
        new target = FindTarget(client, targetname);

        if (IsValidClient(target))
        {
            ForceHale(client, target, StrContains(s2, "hidden", false) >= 0);
        }
    }

    return Plugin_Handled;
}

public Action:Command_Points(client, args)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    if (args != 2)
    {
        ReplyToCommand(client, "[VSH] Usage: hale_addpoints <target> <points>");

        return Plugin_Handled;
    }

    decl String:s2[80];
    decl String:targetname[PLATFORM_MAX_PATH];

    GetCmdArg(1, targetname, sizeof(targetname));
    GetCmdArg(2, s2, sizeof(s2));

    new points = StringToInt(s2);
    /**
    * target_name - stores the noun identifying the target(s)
    * target_list - array to store clients
    * target_count - variable to store number of clients
    * tn_is_ml - stores whether the noun must be translated
    */
    new String:target_name[MAX_TARGET_LENGTH];
    new target_list[MAXPLAYERS], target_count;
    new bool:tn_is_ml;

    if ((target_count = ProcessTargetString(
        targetname,
        client,
        target_list,
        MAXPLAYERS,
        0,
        target_name,
        sizeof(target_name),
        tn_is_ml)) <= 0)
    {
        /* This function replies to the admin with a failure message */
        ReplyToTargetError(client, target_count);

        return Plugin_Handled;
    }

    for (new i = 0; i < target_count; i++)
    {
        SetClientQueuePoints(target_list[i], GetClientQueuePoints(target_list[i]) + points);
        LogAction(client, target_list[i], "\"%L\" added %d VSH queue points to \"%L\"", client, points, target_list[i]);
    }

    ReplyToCommand(client, "[VSH] Added %d queue points to %s", points, target_name);

    return Plugin_Handled;
}

public Action:Command_HaleSetHP(client, args)
{
    if (!Enabled || !Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        ReplyToCommand(client, "[VSH] Cannot set boss health yet.");
        return Plugin_Continue;
    }

    if (args != 1)
    {
        ReplyToCommand(client, "[VSH] Usage: sm_sethp <amount>");

        return Plugin_Handled;
    }

    decl String:s2[80];
    GetCmdArg(1, s2, sizeof(s2));

    new health = StringToInt(s2);

    if (health > Boss_GetMaxHP())
    {
        health = Boss_GetMaxHP();
    }
    else if (health <= 0)
    {
        health = 1;
    }

    HaleHealth = health;

    ReplyToCommand(client, "[VSH] Set boss current health to %i", health);

    return Plugin_Handled;
}

public Action:Command_HaleSetMaxHP(client, args)
{
    new Hale = Boss_GetBossClient();

    if (!Enabled || !Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        ReplyToCommand(client, "[VSH] Cannot set boss health yet.");
        return Plugin_Continue;
    }

    if (args != 1)
    {
        ReplyToCommand(client, "[VSH] Usage: sm_setmaxhp <amount>");

        return Plugin_Handled;
    }

    decl String:s2[80];
    GetCmdArg(1, s2, sizeof(s2));

    new health = StringToInt(s2);

    if (health <= 0)
    {
        health = 1;
    }

    Boss_SetMaxHP(health);
    HaleHealth = health;

    //new HP = GetClientHealth(Hale);
    TF2Attrib_SetByName(Hale, "max health additive bonus", float(health));
    SetEntityHealth(Hale, health);

    //if (HaleHealth > HaleHealthMax)
    //{
    //    HaleHealth = HaleHealthMax;
    //}

    ReplyToCommand(client, "[VSH] Set boss max health to %i", health);

    return Plugin_Handled;
}

public Action:Command_StopMusic(client, args)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    for (new i = 1; i <= MaxClients; i++)
    {
        if (!IsValidClient(i))
        {
            continue;
        }

        StopHaleMusic(i);
    }

    ReplyToCommand(client, "[VSH] Stopped boss music.");

    return Plugin_Handled;
}

public Action:Command_Point_Disable(client, args)
{
    if (Enabled)
    {
        SetControlPoint(false);
    }

    return Plugin_Handled;
}

public Action:Command_Point_Enable(client, args)
{
    if (Enabled)
    {
        SetControlPoint(true);
    }

    return Plugin_Handled;
}

public OnClientPostAdminCheck(client) // OnClientPutInServer
{
    VSHFlags[client] = 0;
    //  MusicDisabled[client] = false;
    //  VoiceDisabled[client] = false;
    SDKHook(client, SDKHook_OnTakeDamage, OnTakeDamage);
    //SDKHook(client, SDKHook_PreThinkPost, OnPreThinkPost);
    //bSkipNextHale[client] = false;
    Damage[client] = 0;
    AirDamage[client] = 0;
    uberTarget[client] = -1;
    SetRJFlag(client, false);
    Direct[client] = false;
    //DirectTime[client] = -1.0;
    //SetAirBlastFlag(client, false);

    if (!GetAdminFlag(GetUserAdmin(client), Admin_Reservation))
        SetBossCookie(client, VSHSpecial_None);
}

public OnClientDisconnect(client)
{
    SetRJFlag(client, false);
    Direct[client] = false;
    //DirectTime[client] = -1.0;
    //SetAirBlastFlag(client, false);

    new Hale = Boss_GetBossClient();
    Damage[client] = 0;
    AirDamage[client] = 0;
    uberTarget[client] = -1;
    VSHFlags[client] = 0;

    if (Enabled)
    {
        if (Boss_IsClientHale(client))
        {
            if (Boss_IsRoundState(ROUNDSTATE_ACTIVE) || Boss_IsRoundState(ROUNDSTATE_END))
            {
                decl String:authid[32];
                GetClientAuthString(client, authid, sizeof(authid));

                new Handle:pack;

                CreateDataTimer(3.0, Timer_SetDisconQueuePoints, pack, TIMER_FLAG_NO_MAPCHANGE);
                WritePackString(pack, authid);

                new bool:see[MAXPLAYERS + 1];

                see[Hale] = true;

                new tHale = NextHaleTogglers(see) ? RandomNextHale(see) : FindNextHale(see);

                if (NextHale > 0)
                {
                    tHale = NextHale;
                }

                if (IsValidClient(tHale))
                {
                    if (GetClientTeam(tHale) != HaleTeam)
                    {
                        SetEntProp(tHale, Prop_Send, "m_lifeState", 2);
                        ChangeClientTeam(tHale, HaleTeam);
                        SetEntProp(tHale, Prop_Send, "m_lifeState", 0);
                        TF2_RespawnPlayer(tHale);
                    }
                }
            }

            if (Boss_IsRoundState(ROUNDSTATE_ACTIVE))
            {
                ForceTeamWin(OtherTeam);
            }

            if (Boss_IsRoundState(ROUNDSTATE_WAITING))
            {
                new bool:see[MAXPLAYERS + 1];
                see[Hale] = true;
                new tHale = NextHaleTogglers(see) ? RandomNextHale(see) : FindNextHale(see);

                if (NextHale > 0)
                {
                    tHale = NextHale;
                    NextHale = -1;
                }

                if (IsValidClient(tHale))
                {
                    Boss_SetBossClient(tHale);

                    if (GetClientTeam(Hale) != HaleTeam)
                    {
                        SetEntProp(Hale, Prop_Send, "m_lifeState", 2);
                        ChangeClientTeam(Hale, HaleTeam);
                        SetEntProp(Hale, Prop_Send, "m_lifeState", 0);
                        TF2_RespawnPlayer(Hale);
                    }

                    CreateTimer(0.1, MakeHale);
                    CPrintToChat(Hale, "{olive}[VSH]{default} Surprise! You're on NOW!");
                }
            }
            CPrintToChatAll("{olive}[VSH]{default} %t", "vsh_hale_disconnected");
        }
        else
        {
            if (IsClientInGame(client))
            {
                if (IsPlayerAlive(client))
                {
                    CreateTimer(0.0, CheckAlivePlayers);
                }

                if (client == FindNextHaleEx())
                {
                    CreateTimer(1.0, Timer_SkipHalePanel, _, TIMER_FLAG_NO_MAPCHANGE);
                }
            }

            if (client == NextHale)
            {
                NextHale = -1;
            }
        }
    }
}

public OnHookedEvent(Handle:hEvent, const String:strEventName[], bool:bHidden)
{
    SetRJFlag(GetClientOfUserId(GetEventInt(hEvent, "userid")), StrEqual(strEventName, "rocket_jump", false));

/*    //new deflector = GetClientOfUserId(GetEventInt(hEvent, "userid"));
    new owner = GetClientOfUserId(GetEventInt(hEvent, "ownerid"));
    new weaponid = GetEventInt(hEvent, "weaponid");
    //new iPos = GetEntityFlags(owner);
    new bool:bBlast = (StrEqual(strEventName, "object_deflected", false) && weaponid == 0) ? true : false;

    SetAirBlastFlag(owner, bBlast);*/
}

public Action:Timer_SetDisconQueuePoints(Handle:timer, Handle:pack)
{
    ResetPack(pack);
    decl String:authid[32];
    ReadPackString(pack, authid, sizeof(authid));
    SetAuthIdQueuePoints(authid, 0);
}

/*public Action:Timer_RegenPlayer(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);
    if (client > 0 && client <= MaxClients && IsClientInGame(client) && IsPlayerAlive(client))
    {
        TF2_RegeneratePlayer(client);
    }
}*/

public Action:event_player_spawn(Handle:event, const String:name[], bool:dontBroadcast)
{
    new client = GetClientOfUserId(GetEventInt(event, "userid"));

    if (!IsValidClient(client) || !Enabled)
    {
        return Plugin_Continue;
    }

    SetVariantString("");
    AcceptEntityInput(client, "SetCustomModel");

    if (Boss_IsClientHale(client) && !Boss_IsRoundState(ROUNDSTATE_END) && !Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        CreateTimer(0.1, MakeHale);
    }

    // nergal's FRoG fix
    if (!Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        CreateTimer(0.2, MakeNoHale, GetClientUserId(client));
        if (!(VSHFlags[client] & VSHFLAG_HASONGIVED))
        {
            VSHFlags[client] |= VSHFLAG_HASONGIVED;
            RemovePlayerBack(client, { 57, 133, 231, 405, 444, 608, 642 }, 7);
            RemovePlayerTarge(client);
            TF2_RemoveAllWeapons2(client);
            TF2_RegeneratePlayer(client);
            //CreateTimer(0.1, Timer_RegenPlayer, GetClientUserId(client), TIMER_FLAG_NO_MAPCHANGE);
        }
    }

    if (!(VSHFlags[client] & VSHFLAG_HELPED))
    {
        HelpPanel(client);
        VSHFlags[client] |= VSHFLAG_HELPED;
    }

    VSHFlags[client] &= ~VSHFLAG_UBERREADY;
    VSHFlags[client] &= ~VSHFLAG_CLASSHELPED;

    if (TF2_GetPlayerClass(client) == TFClass_Spy)
    {
        SDKHook(client, SDKHook_PreThinkPost, OnPreThinkPost);
    }

    return Plugin_Continue;
}

/* Scheemic backstab
    decl Float:vecOriginC[3], Float:vecOriginA[3], Float:vecAnglesA[3], Float:vecAnglesC[3];
    GetClientEyePosition(client, vecOriginC);
    GetClientEyePosition(attacker, vecOriginA);
    SubtractVectors(vecOriginC, vecOriginA, vecAnglesA);
    NormalizeVector(vecAnglesA, vecAnglesA);
    GetVectorAngles(vecAnglesA, vecAnglesA);
    GetClientEyeAngles(client, vecAnglesC);
    new Float:angles = FloatAbs(vecAnglesA[1]-vecAnglesC[1]);
    while(angles>360.0)
        angles -= 360.0;
    if(angles<=70.0 || angles>=(360-70.0))
    {
        //backstab
    }
    CPrintChatToAll("%f", angles);
*/

public Action:OnPlayerRunCmd(client, &buttons, &impulse, Float:vel[3], Float:angles[3], &weapon)
{
    /*if (Enabled && IsClientChdata(client) && IsValidClient(Hale) && IsPlayerAlive(Hale) && IsPlayerAlive(client) && TF2_GetPlayerClass(client) == TFClass_Medic)
    {
        static bool:bDataPressed[MAXPLAYERS + 1] = false;

        if (buttons & IN_ATTACK2)
        {
            if (!bDataPressed[client])
            {
                bDataPressed[client] = true;

                new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);
                //new index = GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary);

                //new targetaim = GetClientAimTarget(client);

                if (GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon") == medigun && !bNueRageActive) // && targetaim == Hale
                {
                    decl Float:pos[3];
                    decl Float:pos2[3];
                    decl Float:distance;

                    GetEntPropVector(client, Prop_Send, "m_vecOrigin", pos);

                    GetEntPropVector(Hale, Prop_Send, "m_vecOrigin", pos2);
                    distance = GetVectorDistance(pos, pos2);

                    if (distance <= 475.0) //Literally the distance that mediguns can start healing from //0.6 for quick fix
                    {
                        if (hScheemic_Medibeam != INVALID_HANDLE) KillTimer(hScheemic_Medibeam);
                        hScheemic_Medibeam = CreateTimer(1.0, Timer_Scheemic_Medibeam, GetClientUserId(client), TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);

                        SetEntPropEnt(medigun, Prop_Send, "m_hHealingTarget", Hale);
                        SetEntProp(medigun, Prop_Send, "m_bHealing", 1);
                    }
                }
            }
        }
        else
        {
            bDataPressed[client] = false;
        }
    }*/
    new Hale = Boss_GetBossClient();    

    if (!Enabled || !IsPlayerAlive(client))
    {
        return Plugin_Continue;
    }

    static bool:bPressed[MAXPLAYERS + 1] = false;

    if (!Boss_IsClientHale(client))
    {
        if ((buttons & IN_ATTACK2) && GetClientCloakIndex(client) == 60 && GetEntProp(client, Prop_Send, "m_bFeignDeathReady") == 1)
        {
            //GetEntPropFloat(client, Prop_Send, "m_flCloakMeter") == 100.0
            TF2_AddCondition(client, TFCond_DeadRingered, -1.0);
        }

        if (IsIndexActive(client, 730))
        {
            if (GetRJFlag(client)) //If the client is rocket jumping
            {
                TF2_AddCondition(client, TFCond_Buffed, 0.3);
            }

            if (GetEntProp(GetPlayerWeaponSlot(client, TFWeaponSlot_Primary), Prop_Data, "m_iClip1") == 3 && (buttons & IN_ATTACK))
            {
                g_bBzFull[client] = true;
            }
            else //if (!bIsAttacking)
            {
                g_bBzFull[client] = false;
            }
        }
        else
        {
            g_bBzFull[client] = false;
        }

        if (TF2_IsPlayerInCondition(client, TFCond_CritHype) && TF2_GetPlayerClass(client) == TFClass_Scout)
        {
            if (GetEntityFlags(client) & FL_ONGROUND)
            {
                g_iJumps[client] = 0;
                bPressed[client] = false;
            }
            else
                if (buttons & IN_JUMP)
                {
                    if (!bPressed[client])
                    {
                        if (g_iJumps[client] > 1)
                        {
                            SetEntProp(client, Prop_Send, "m_iAirDash", 9);
                            g_iJumps[client]++;
                        }
                    }
                    bPressed[client] = true;
                }
                else
                {
                    bPressed[client] = false;
                }

            return Plugin_Continue;
        }
        else if (Special == VSHSpecial_Guard)
        {
            SetEntProp(client, Prop_Send, "m_iAirDash", 9); // Nonzero means no double jump
            return Plugin_Continue;
        }
    }
    else if (Boss_IsClientHale(client))
    {
        new hWeapon = GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");

        if (Special == VSHSpecial_HHH)
        {
            if (VSHFlags[client] & VSHFLAG_NEEDSTODUCK)
            {
                buttons |= IN_DUCK;
            }

            if (HaleCharge >= 47 && (buttons & IN_ATTACK))
            {
                SetEntPropFloat(Hale, Prop_Send, "m_flNextAttack", GetGameTime() + 0.5); //Set their next attack to the next frame, disallowing it on this one
                buttons &= ~IN_ATTACK;
            }
            return Plugin_Changed;
        }
        else if (Special == VSHSpecial_Bunny)
        {
            if (GetPlayerWeaponSlot(client, TFWeaponSlot_Primary) == hWeapon)
            {
                buttons &= ~IN_ATTACK;

                return Plugin_Changed;
            }
        }
        else if (Special == VSHSpecial_Guard)
        {
            if (GetEntityFlags(client) & FL_ONGROUND)
            {
                g_iJumps[client] = 0;
                bPressed[client] = false;
            }
            else
            {
                if (buttons & IN_JUMP)
                {
                    if (!bPressed[client])
                    {
                        if (1 <= g_iJumps[client]++ < 3) //If our jumps are less than max and it's our second+ jump
                        {
                            DoubleJump(client, _, false);
                        }
                    }
                    bPressed[client] = true;
                }
                else
                {
                    bPressed[client] = false;   
                }
            }
        }
        else if (Special == VSHSpecial_Nue && !HaleSuperJumpStatus && !TF2_IsPlayerInCondition(client, TFCond_Cloaked))
        {
            new TFClassType:iNueDisguise = TFClassType:GetEntProp(client, Prop_Send, "m_nDisguiseClass");

            if (iNueDisguise == TFClass_Scout)
            {
                new disguisetarget = GetEntProp(client, Prop_Send, "m_iDisguiseTargetIndex");

                if (!IsValidClient(disguisetarget))
                {
                    return Plugin_Continue;
                }

                new disguiseweapon = GetEntPropEnt(disguisetarget, Prop_Send, "m_hActiveWeapon"); //Check for current disguise weapon index

                decl String:wepclassname[32];

                if (disguiseweapon <= MaxClients || !IsValidEntity(disguiseweapon) || !GetEdictClassname(disguiseweapon, wepclassname, sizeof(wepclassname)))
                {
                    strcopy(wepclassname, sizeof(wepclassname), "");
                }

                new bool:validwep = (strncmp(wepclassname, "tf_wea", 6, false) == 0);
                new index = (validwep ? GetEntProp(disguiseweapon, Prop_Send, "m_iItemDefinitionIndex"):-1);

                new disguisemelee = GetPlayerWeaponSlot(disguisetarget, TFWeaponSlot_Melee);
                decl String:melclassname[32];

                /*new bFiveJump = false;
                if (TF2_IsPlayerInCondition(disguisetarget, SodaPopper))
                {
                    bFiveJump = true;
                }*/

                if (disguisemelee <= MaxClients || !IsValidEntity(disguisemelee) || !GetEdictClassname(disguisemelee, melclassname, sizeof(melclassname)))
                {
                    strcopy(melclassname, sizeof(melclassname), "");
                }

                new bool:validmel = (strncmp(melclassname, "tf_wea", 6, false) == 0);
                new melee = (validmel ? GetEntProp(disguisemelee, Prop_Send, "m_iItemDefinitionIndex"):-1);

                new bool:bWinger = (index == 449);
                new bool:bAtom = (melee == 450);
            
                if (GetEntityFlags(client) & FL_ONGROUND)
                {
                    g_iJumps[client] = 0;
                    bPressed[client] = false;
                }
                else
                {
                    if (buttons & IN_JUMP)
                    {
                        if (!bPressed[client])
                        {
                            if (1 <= g_iJumps[client] < (bAtom ? 3 : g_iJumpMax)) //If our jumps are less than max and it's our second+ jump
                            {
                                DoubleJump(client, bWinger ? 350.0 : 280.0);
                                g_iJumps[client]++;
                            }
                        }

                        bPressed[client] = true;
                    }
                    else
                    {
                        bPressed[client] = false;
                    }
                }
            }
        }
    }
    return Plugin_Continue;
}

/*public Action:Timer_Scheemic_Medibeam(Handle:timer, any:userid)
{
    //static iTimerTime = 1; //First tick starts in one second

    new client = GetClientOfUserId(userid);
    new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

    if (GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon") == medigun)
    {
        new index = GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary);

        new target = GetEntPropEnt(medigun, Prop_Send, "m_hHealingTarget");

        if (!IsValidClient(target) || !IsPlayerAlive(target) || !Boss_IsClientHale(target) || bNueRageActive)
        {
            g_iTimerTime = 1;

            hScheemic_Medibeam = INVALID_HANDLE;
            return Plugin_Stop;
        }

        decl Float:vPos[3];
        GetEntPropVector(target, Prop_Send, "m_vecOrigin", vPos);

        new Float:flTimerTime = float(g_iTimerTime); // 31) ? 78.0 // 30) ? 72.0

        new Float:damage = (g_iTimerTime <= 10) ? 24.0 : (g_iTimerTime >= 31) ? 78.0 : float(RoundFloat( ((flTimerTime - 11.0)*0.08 + 1.0)*(flTimerTime-10.0) + 24.0 ));

        g_iTimerTime++;

        new bool:ministatus = (TF2_IsPlayerInCondition(client, TFCond_CritCola) || TF2_IsPlayerInCondition(client, TFCond_Buffed) || TF2_IsPlayerInCondition(client, TFCond_CritHype));

        if ((TF2_IsPlayerCritBuffed(client) || ministatus)) damage /= 1.35;

        SDKHooks_TakeDamage(target, index, client, damage, DMG_BLAST, index, _, vPos);
    }

    return Plugin_Continue;
}*/

/*doublejump_puff
doublejump_puff_alt
doublejump_smoke
doublejump_smoke_alt
doublejump_trail
doublejump_trail_alt
rocketjump_flame
rocketjump_flash
rocketjump_smoke*/

/*stock CleanupClientDirection(client, buttons, &Float:x, &Float:y, &Float:z, Float:fl_Boost)
{
    buttons = buttons & (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT);

    if ((buttons & (IN_FORWARD|IN_BACK)) == (IN_FORWARD|IN_BACK))
    {
        buttons &= ~IN_FORWARD;
        buttons &= ~IN_BACK;
    }
    if ((buttons & (IN_MOVELEFT|IN_MOVERIGHT)) == (IN_MOVELEFT|IN_MOVERIGHT))
    {
        buttons &= ~IN_MOVELEFT;
        buttons &= ~IN_MOVERIGHT;
    }
    if ((buttons & (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT)) == 0)
    {
        decl Float:vVel[3];
        GetEntPropVector(client, Prop_Data, "m_vecVelocity", vVel);  // get current speeds
        x = vVel[0];
        y = vVel[1];
        z = fl_Boost;
        return;
    }
    decl Float:clientEyeAngle[3];
    GetClientEyeAngles(client, clientEyeAngle);
    clientEyeAngle[0] = 0.0;
    clientEyeAngle[2] = 0.0;
    switch (buttons)
    {
        case (IN_FORWARD|IN_MOVELEFT): clientEyeAngle[1] += 45.0;
        case (IN_FORWARD|IN_MOVERIGHT): clientEyeAngle[1] -= 45.0;
        case (IN_BACK|IN_MOVELEFT): clientEyeAngle[1] += 135.0;
        case (IN_BACK|IN_MOVERIGHT): clientEyeAngle[1] -= 135.0;
        case (IN_MOVELEFT): clientEyeAngle[1] += 90.0;
        case (IN_BACK): clientEyeAngle[1] += 179.9;
        case (IN_MOVERIGHT): clientEyeAngle[1] -= 90.0;
        default: {}
    }
    if (clientEyeAngle[1] <= -180.0) clientEyeAngle[1] += 360.0;
    if (clientEyeAngle[1] > 180.0) clientEyeAngle[1] -= 360.0;

    GetAngleVectors(clientEyeAngle, clientEyeAngle, NULL_VECTOR, NULL_VECTOR);

    NormalizeVector(clientEyeAngle, clientEyeAngle);

    x = clientEyeAngle[0];
    y = clientEyeAngle[1];
    z = clientEyeAngle[2];
}*/

public Action:ClientTimer(Handle:hTimer)
{
    if (Boss_IsRoundState(ROUNDSTATE_END) || Boss_IsRoundState(ROUNDSTATE_DISABLED))
    {
        return Plugin_Stop;
    }

    new Hale = Boss_GetBossClient();
    decl String:wepclassname[32];
    new i = -1;

    for (new client = 1; client <= MaxClients; client++)
    {
        if (IsValidClient(client) && !Boss_IsClientHale(client) && GetClientTeam(client) == OtherTeam)
        {
            if (Special == VSHSpecial_Guard)
            {
                if (IsPlayerAlive(client))
                {
                    SetEntPropFloat(client, Prop_Send, "m_flNextAttack", GetGameTime() + 2.0);
                    SetEntPropFloat(client, Prop_Send, "m_flMaxspeed", 190.0);
                }

                return Plugin_Continue;
            }

            /*if (IsPlayerAlive(client) && IsClientChdata(client) && TF2_GetPlayerClass(client) == TFClass_Medic)
            {
                new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

                decl Float:pos[3];
                decl Float:pos2[3];
                decl Float:distance;

                GetEntPropVector(client, Prop_Send, "m_vecOrigin", pos);

                if (IsValidClient(Hale))
                {
                    GetEntPropVector(Hale, Prop_Send, "m_vecOrigin", pos2);
                    distance = GetVectorDistance(pos, pos2);

                    new HealTarget = GetHealingTarget(client);

                    //570.0 is literally the max distance mediguns can continue to latch on
                    if ((distance >= 570.0 || !IsPlayerAlive(Hale) || bNueRageActive) && HealTarget == Hale && !GetEntProp(medigun, Prop_Send, "m_bAttacking"))
                    {
                        SetEntProp(medigun, Prop_Send, "m_bAttacking", 1);
                        g_iTimerTime = 1;
                    }
                }
            }*/

            SetHudTextParams(-1.0, 0.88, 0.35, 90, 255, 90, 255, 0, 0.35, 0.0, 0.1);

            if (!IsPlayerAlive(client))
            {
                new obstarget = GetEntPropEnt(client, Prop_Send, "m_hObserverTarget");

                if (IsValidClient(obstarget) && !Boss_IsClientHale(obstarget) && obstarget != client)
                {
                    if (!(GetClientButtons(client) & IN_SCORE))
                    {
                        if (!Nue_IsRageActive())
                        {
                            ShowSyncHudText(client, rageHUD, "Damage: %d - %N's Damage: %d", Damage[client], obstarget, Damage[obstarget]);
                        }
                        else
                        {
                            ShowSyncHudText(client, rageHUD, "Damage: %d - %N's Damage: ----", Damage[client], obstarget);
                        }
                    }
                }
                else
                {
                    if (!(GetClientButtons(client) & IN_SCORE))
                    {
                        ShowSyncHudText(client, rageHUD, "Damage: %d", Damage[client]);
                    }
                }
                continue;
            }

            if (!(GetClientButtons(client) & IN_SCORE))
            {
                if (!Nue_IsRageActive())
                {
                    ShowSyncHudText(client, rageHUD, "Damage: %d", Damage[client]);
                }
                else
                {
                    ShowSyncHudText(client, rageHUD, "Damage: ----");
                }
            }

            new TFClassType:class = TF2_GetPlayerClass(client);
            new weapon = GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");

            if (weapon <= MaxClients || !IsValidEntity(weapon) || !GetEdictClassname(weapon, wepclassname, sizeof(wepclassname)))
            {
                strcopy(wepclassname, sizeof(wepclassname), "");
            }

            new bool:validwep = (strncmp(wepclassname, "tf_wea", 6, false) == 0);
            new index = (validwep ? GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex"):-1);

            if (TF2_IsPlayerInCondition(client, TFCond_Cloaked) && GetClientCloakIndex(client) != 60)
            {
                //if (GetClientCloakIndex(client) == 59)
                //{
                //    //if (TF2_IsPlayerInCondition(client, TFCond_DeadRingered)) TF2_RemoveCondition(client, TFCond_DeadRingered);
                //}
                //else
                //{
                TF2_AddCondition(client, TFCond_DeadRingered, 0.3);
                //}
            }

            //if (class == TFClass_Soldier && IsClientChdata(client)) SetEntProp(client, Prop_Send, "m_iKillStreak", 64);

            /*if (class == TFClass_Heavy) // Tomislav (Maxine / Natascha) has speed bonus while revved up 424
            {
                if (weapon == GetPlayerWeaponSlot(client, TFWeaponSlot_Primary) && index == 41)
                {
                    if (GetEntProp(weapon, Prop_Send, "m_iWeaponState") >= 2)
                    {
                        SetEntPropFloat(client, Prop_Send, "m_flMaxspeed", (GetAmmo(client, TFWeaponSlot_Primary) > 0) ? (TF2_IsPlayerInCondition(client, TFCond_CritCola) ? 325.0 : 300.0) : 230.0);
                    }
                }
            }*/

            if (class == TFClass_Medic)
            {
                new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);  //The Vaccinator
                if (weapon == medigun && index == 998)
                {
                    new resistype = GetEntProp(weapon, Prop_Send, "m_nChargeResistType");
                    decl String:s[16];

                    if (Special != VSHSpecial_Cave && Special != VSHSpecial_CBS)
                    {
                        if (resistype == 0 || resistype == 2)
                        {
                            if (resistype == 0) Format(s, 16, "Bullet");
                            else Format(s, 16, "Fire");

                            decl String:mediclassname[64];

                            if (IsValidEdict(medigun) && GetEdictClassname(medigun, mediclassname, sizeof(mediclassname)) && strcmp(mediclassname, "tf_weapon_medigun", false) == 0)
                            {
                                SetHudTextParams(-1.0, 0.83, 0.35, 255, 64, 64, 255, 0, 0.0, 0.0, 0.0);

                                if (!(GetClientButtons(client) & IN_SCORE)) ShowSyncHudText(client, jumpHUD, "%s resistance won't protect anyone from the explosive power of Hale's fists!", s);
                            }
                        }
                    }
                    else if (Special == VSHSpecial_Cave && resistype == 0)
                    {
                        Format(s, 16, "Bullet");

                        decl String:mediclassname[64];

                        if (IsValidEdict(medigun) && GetEdictClassname(medigun, mediclassname, sizeof(mediclassname)) && strcmp(mediclassname, "tf_weapon_medigun", false) == 0)
                        {
                            SetHudTextParams(-1.0, 0.83, 0.35, 255, 64, 64, 255, 0, 0.0, 0.0, 0.0);

                            if (!(GetClientButtons(client) & IN_SCORE)) ShowSyncHudText(client, jumpHUD, "%s resistance won't protect anyone from lemons!", s);
                        }
                    }
                    else if (Special == VSHSpecial_CBS && resistype == 2)
                    {
                        Format(s, 16, "Fire");

                        decl String:mediclassname[64];

                        if (IsValidEdict(medigun) && GetEdictClassname(medigun, mediclassname, sizeof(mediclassname)) && strcmp(mediclassname, "tf_weapon_medigun", false) == 0)
                        {
                            SetHudTextParams(-1.0, 0.83, 0.35, 255, 64, 64, 255, 0, 0.0, 0.0, 0.0);

                            if (!(GetClientButtons(client) & IN_SCORE)) ShowSyncHudText(client, jumpHUD, "%s resistance won't protect anyone from CBS or his arrows!", s);
                        }
                    }
                }

                if (index != 998)
                {
                    decl String:mediclassname[64];

                    if (IsValidEdict(medigun) && GetEdictClassname(medigun, mediclassname, sizeof(mediclassname)) && strcmp(mediclassname, "tf_weapon_medigun", false) == 0)
                    {
                        SetHudTextParams(-1.0, 0.83, 0.35, 255, 255, 255, 255, 0, 0.2, 0.0, 0.1);

                        new charge = RoundToFloor(GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel") * 100);

                        if (!(GetClientButtons(client) & IN_SCORE))
                        {
                            ShowSyncHudText(client, jumpHUD, "%T: %i", "vsh_uber-charge", client, charge);
                        }

                        if (charge == 100 && !(VSHFlags[client] & VSHFLAG_UBERREADY))
                        {
                            FakeClientCommandEx(client, "voicemenu 1 7");
                            VSHFlags[client] |= VSHFLAG_UBERREADY;
                        }
                    }
                }

                if (weapon == GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary))
                {
                    new healtarget = GetHealingTarget(client);

                    if (IsValidClient(healtarget) && TF2_GetPlayerClass(healtarget) == TFClass_Scout) //|| healtarget == Hale)
                    {
                        TF2_AddCondition(client, TFCond_SpeedBuffAlly, 0.3);
                    }
                }
            }

            /*if (TF2_GetPlayerClass(client) == TFClass_Scout)
            {
                if (TF2_IsPlayerInCondition(client, TFCond_HalloweenQuickHeal) && TF2_IsPlayerInCondition(client, TFCond_Dazed))
                {
                    TF2_RemoveCondition(client, TFCond_Dazed); // Remove rage
                }
            }*/

            if (TF2_GetPlayerClass(client) == TFClass_Spy)
            {
                //new pda = GetPlayerWeaponSlot(client, 4);
                //new watch = GetEntProp(pda, Prop_Send, "m_iItemDefinitionIndex");
                //if (watch == 59)

                if (GetClientCloakIndex(client) == 59)
                {
                    new drstatus = TF2_IsPlayerInCondition(client, TFCond_Cloaked) ? 2 : GetEntProp(client, Prop_Send, "m_bFeignDeathReady") ? 1 : 0;

                    decl String:s[32];

                    switch (drstatus)
                    {
                        case 1:
                        {
                            SetHudTextParams(-1.0, 0.83, 0.35, 90, 255, 90, 255, 0, 0.0, 0.0, 0.0);
                            Format(s, sizeof(s), "Status: Feign Death Ready");
                        }
                        case 2:
                        {
                            SetHudTextParams(-1.0, 0.83, 0.35, 255, 64, 64, 255, 0, 0.0, 0.0, 0.0);
                            Format(s, sizeof(s), "Status: Deadringed");
                        }
                        default:
                        {
                            SetHudTextParams(-1.0, 0.83, 0.35, 255, 255, 255, 255, 0, 0.0, 0.0, 0.0);
                            Format(s, sizeof(s), "Status: Inactive");
                        }
                    }

                    if (!(GetClientButtons(client) & IN_SCORE))
                    {
                        ShowSyncHudText(client, jumpHUD, "%s", s);
                    }
                }
            }

            new primary = GetPlayerWeaponSlot(client, TFWeaponSlot_Primary);

            if (class == TFClass_Soldier)
            {
                if (StrEqual(wepclassname, "tf_weapon_particle_cannon", false))
                {
                    if (IsMediUber(client) || IsVacUber(client)) // Don't check quick-fix because it already grants minicrits
                    {
                        TF2_AddCondition(client, TFCond_Buffed, 0.3);
                    }

                    if (TF2_IsPlayerInCondition(client, TFCond_OnFire))
                    {
                        TF2_RemoveCondition(client, TFCond_OnFire);
                    }
                }
                else if (GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary) == 1104)
                {
                    SetHudTextParams(-1.0, 0.83, 0.35, 255, 255, 255, 255, 0, 0.2, 0.0, 0.1);

                    if (!(GetClientButtons(client) & IN_SCORE))
                    {
                        ShowSyncHudText(client, jumpHUD, "Air Strike Damage: %i", AirDamage[client]);
                    }
                }
            }

            if (RedAlivePlayers == 1 && !TF2_IsPlayerInCondition(client, TFCond_Cloaked))
            {
                TF2_AddCondition(client, TFCond_HalloweenCritCandy, 0.3);

                if (class == TFClass_Engineer && weapon == primary && StrEqual(wepclassname, "tf_weapon_sentry_revenge", false))
                {
                    SetEntProp(client, Prop_Send, "m_iRevengeCrits", 3);
                }

                TF2_AddCondition(client, TFCond_Buffed, 0.3);

                continue;
            }

            if (RedAlivePlayers == 2 && !TF2_IsPlayerInCondition(client, TFCond_Cloaked))
            {
                TF2_AddCondition(client, TFCond_Buffed, 0.3);
            }

            new TFCond:cond = TFCond_HalloweenCritCandy;

            if (TF2_IsPlayerInCondition(client, TFCond_CritCola) && (class == TFClass_Scout))
            {
                TF2_AddCondition(client, cond, 0.3);

                continue;
            }

            new bool:addmini = false;

            for (i = 1; i <= MaxClients; i++)
            {
                if (IsValidClient(i) && IsPlayerAlive(i) && GetHealingTarget(i) == client)
                {
                    addmini = true;

                    break;
                }
            }

            new bool:addthecrit = false;

            if (validwep && weapon == GetPlayerWeaponSlot(client, TFWeaponSlot_Melee))  //&& index != 4 && index != 194 && index != 225 && index != 356 && index != 461 && index != 574) addthecrit = true; //class != TFClass_Spy
            {
                //slightly longer check but makes sure that any weapon that can backstab will not crit (e.g. Saxxy)
                if ((strcmp(wepclassname, "tf_weapon_knife", false) != 0) && index != 43 && index != 416) addthecrit = true;
            }

            switch (index)
            {
                case 305, 1079, 1081, 56, 16, 203, 58, 1083, 1105, 1100, 1005, 1092, 812, 833, 997, 39, 351, 740, 588, 595: //Critlist
                {
                    if (TF2_GetPlayerClass(client) == TFClass_Pyro && GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary) == 594) // Phlogistinator
                        addthecrit = false;
                    else
                        addthecrit = true;
                }
                case 22, 23, 160, 209, 294, 449, 773: // Scout pistol minicrits
                {
                    addthecrit = true;
                    if (class == TFClass_Scout && cond == TFCond_HalloweenCritCandy) cond = TFCond_Buffed;
                }
                case 656: // Holiday punch always crits
                {
                    addthecrit = true;
                    cond = TFCond_Buffed;
                }
            }

            if (index == 16 && addthecrit && IsValidEntity(FindPlayerBack(client, { 642, 231 }, 2)))
            {
                addthecrit = false;
            }

            if (class == TFClass_DemoMan && !IsValidEntity(GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary)))
            {
                addthecrit = true;

                if (IsWeaponSlotActive(client, TFWeaponSlot_Primary))
                {
                    cond = TFCond_Buffed;
                }
            }

            if (addthecrit)
            {
                TF2_AddCondition(client, cond, 0.3);

                if (addmini && cond != TFCond_Buffed)
                {
                    TF2_AddCondition(client, TFCond_Buffed, 0.3);
                }
            }

            if (class == TFClass_Spy && validwep && weapon == GetPlayerWeaponSlot(client, TFWeaponSlot_Primary))
            {
                if (!TF2_IsPlayerCritBuffed(client) && !TF2_IsPlayerInCondition(client, TFCond_Buffed) && !TF2_IsPlayerInCondition(client, TFCond_Cloaked) && !TF2_IsPlayerInCondition(client, TFCond_Disguised) && !GetEntProp(client, Prop_Send, "m_bFeignDeathReady"))
                {
                    TF2_AddCondition(client, TFCond_CritCola, 0.3);
                }
            }

            if (class == TFClass_Engineer && weapon == GetPlayerWeaponSlot(client, TFWeaponSlot_Primary) && StrEqual(wepclassname, "tf_weapon_sentry_revenge", false))
            {
                new sentry = FindSentry(client);

                if (IsValidEntity(sentry) && GetEntPropEnt(sentry, Prop_Send, "m_hEnemy") == Hale)
                {
                    SetEntProp(client, Prop_Send, "m_iRevengeCrits", 3);
                    TF2_AddCondition(client, TFCond_Kritzkrieged, 0.3);
                }
                else
                {
                    if (GetEntProp(client, Prop_Send, "m_iRevengeCrits"))
                    {
                        SetEntProp(client, Prop_Send, "m_iRevengeCrits", 0);
                    }
                    else if (TF2_IsPlayerInCondition(client, TFCond_Kritzkrieged) && !TF2_IsPlayerInCondition(client, TFCond_Healing))
                    {
                        TF2_RemoveCondition(client, TFCond_Kritzkrieged);
                    }
                }
            }
        }
    }

    return Plugin_Continue;
}

/*
Runs every frame for clients

*/
public OnPreThinkPost(client)
{
    /*if (IsClientChdata(client) && frog != GetClientHealth(client))
    {
        CPrintToChdata("hp changed %f by %i", GetGameTime(), GetClientHealth(client) - frog);
        frog = GetClientHealth(client);
    }*/

    if (IsNearSpencer(client) && TF2_IsPlayerInCondition(client, TFCond_Cloaked))
    {
        // 5 10 15 cloak per second
        new Float:cloak = GetEntPropFloat(client, Prop_Send, "m_flCloakMeter") - 0.5;

        if (cloak < 0.0)
        {
            cloak = 0.0;
        }

        SetEntPropFloat(client, Prop_Send, "m_flCloakMeter", cloak);
    }
}

public Action:HaleTimer(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    new HaleHealthMax = Boss_GetMaxHP();

    if (Boss_IsRoundState(ROUNDSTATE_END))
    {
        if (IsValidClient(Hale) && IsPlayerAlive(Hale))
        {
            TF2_AddCondition(Hale, TFCond_SpeedBuffAlly, 14.0);
        }

        return Plugin_Stop;
    }

    if (!IsValidClient(Hale))
    {
        return Plugin_Continue;
    }

    if (TF2_IsPlayerInCondition(Hale, TFCond_Jarated))
    {
        TF2_RemoveCondition(Hale, TFCond_Jarated);
    }

    if (TF2_IsPlayerInCondition(Hale, TFCond_MarkedForDeath))
    {
        TF2_RemoveCondition(Hale, TFCond_MarkedForDeath);
    }

    if (!Nue_IsRageActive() && TF2_IsPlayerInCondition(Hale, TFCond_Disguised))
    {
        TF2_RemoveCondition(Hale, TFCond_Disguised);
    }

    if (TF2_IsPlayerInCondition(Hale, TFCond:42) && TF2_IsPlayerInCondition(Hale, TFCond_Dazed))
    {
        TF2_RemoveCondition(Hale, TFCond_Dazed);
    }

    // Everything after this controls jumping as Hale mostly
    if (Special == VSHSpecial_Guard)
    {
        /*
        Eventually we use this for blood sense
        While last player alive doesn't get extreme blood sense

        */
        SetEntPropFloat(Hale, Prop_Send, "m_flMaxspeed", 210.0);
        return Plugin_Continue;
    }

    if (Special == VSHSpecial_Nue)
    {
        if (!Nue_IsRageActive())
        {
            SetEntPropFloat(Hale, Prop_Send, "m_flCloakMeter", -100.0);
            
            /*if (GetEntProp(Hale, Prop_Send, "m_CollisionGroup") != 5)
            {
                SetEntProp(Hale, Prop_Send, "m_CollisionGroup", 5); //Fix Nue's clipping.
            }*/
        }
        else
        {
            if (TF2_IsPlayerInCondition(Hale, TFCond_Cloaked))
            {
                if (TF2_IsPlayerInCondition(Hale, TFCond_OnFire))
                {
                    TF2_RemoveCondition(Hale, TFCond_OnFire);
                }

                if (TF2_IsPlayerInCondition(Hale, TFCond_Milked))
                {
                    TF2_RemoveCondition(Hale, TFCond_Milked);
                }

                if (TF2_IsPlayerInCondition(Hale, TFCond_Dazed))
                {
                    TF2_RemoveCondition(Hale, TFCond_Dazed);
                }

                if (TF2_IsPlayerInCondition(Hale, TFCond_Bonked))
                {
                    TF2_RemoveCondition(Hale, TFCond_Bonked);
                }
            }
            else
            {
                SetEntPropFloat(Hale, Prop_Send, "m_flCloakMeter", -100.0);

                /*if (GetEntProp(Hale, Prop_Send, "m_CollisionGroup") != 5)
                {
                    SetEntProp(Hale, Prop_Send, "m_CollisionGroup", 5); //Fix Nue's clipping.
                }*/
            }
            
            SetEntProp(Hale, Prop_Send, "m_bGlowEnabled", 0);
            GlowTimer = 0.0;
        }
    }

    if ((GetEntityFlags(Hale) & (FL_INWATER | FL_ONGROUND)))
    {
        HaleSuperJumpStatus = false;
    }

    new Float:speed = Boss_GetSpeed() + 0.7 * (100 - HaleHealth * 100 / HaleHealthMax);

    if (Special == VSHSpecial_Cave && CaveJohnson_GetLemonRage()) speed = 80.0; ///= 3.0; 80.0 is sniper scope / cow mangler speed

    if (Special == VSHSpecial_Nue && Nue_IsRageActive() && TF2_IsPlayerInCondition(Hale, TFCond_Disguised) && !TF2_IsPlayerInCondition(Hale, TFCond_Cloaked))
    {
        new TFClassType:iNueDisguise = TFClassType:GetEntProp(Hale, Prop_Send, "m_nDisguiseClass");

        speed = iClassSpeeds[iNueDisguise];
        new Float:speed2 = 0.0;

        new NueIsDisGuy = GetEntProp(Hale, Prop_Send, "m_iDisguiseTargetIndex");
        if (IsPlayerAlive(NueIsDisGuy))
        {
            speed2 = GetEntPropFloat(NueIsDisGuy, Prop_Send, "m_flMaxspeed");
            /*new health = GetClientHealth(NueIsDisGuy);
            if (health <= 0) health = 60;
            SetEntProp(Hale, Prop_Send, "m_iDisguiseHealth", health);*/

            //new disguiseweapon = GetEntPropEnt(NueIsDisGuy, Prop_Send, "m_hActiveWeapon"); //Check for current disguise weapon index
        }

        if (speed2 > speed) speed = speed2;
    }

    SetEntPropFloat(Hale, Prop_Send, "m_flMaxspeed", speed);

    if (!PointType && (RedAlivePlayers > GetConVarInt(cvarAliveToEnable)) && g_bIsCapEnabled) SetControlPoint(false);

    //  SetEntProp(Hale, Prop_Data, "m_iHealth", HaleHealth);
    //  SetEntProp(Hale, Prop_Send, "m_iHealth", HaleHealth);
    if (HaleHealth <= 0 && IsPlayerAlive(Hale))
    {
        HaleHealth = 1;
    }

    SetHaleHealthFix(Hale, HaleHealth);
    SetHudTextParams(-1.0, (Boss_GetDifficulty() == VSHMODE_LUNATIC && Special != VSHSpecial_Nue) ? 0.83:0.77, 0.35, 255, 255, 255, 255);
    SetGlobalTransTarget(Hale);
    if (!(GetClientButtons(Hale) & IN_SCORE))
    {
        ShowSyncHudText(Hale, healthHUD, "%t", "vsh_health", HaleHealth, HaleHealthMax);
    }

    new RageDMG = Boss_GetRageDamage();

    if (Boss_GetDifficulty() != VSHMODE_LUNATIC || Special == VSHSpecial_Nue)
    {
        if (Special == VSHSpecial_Nue)
        {
            new Float:rage = 0.0005 * RageDMG;
            HaleRage += RoundToCeil(rage);

            if (HaleRage > RageDMG)
            {
                HaleRage = RageDMG;
            }
        }
        
        if (HaleRage / RageDMG >= 1)
        {
            if (IsFakeClient(Hale) && !(VSHFlags[Hale] & VSHFLAG_BOTRAGE))
            {
                CreateTimer(1.0, Timer_BotRage, _, TIMER_FLAG_NO_MAPCHANGE);
                VSHFlags[Hale] |= VSHFLAG_BOTRAGE;
            }
            else if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                SetHudTextParams(-1.0, 0.83, 0.35, 255, 64, 64, 255);
                if (TF2_IsPlayerInCondition(Hale, TFCond_Cloaked))
                {
                    ShowSyncHudText(Hale, rageHUD, "%t", "vsh_cloak_rage");
                }
                else if (TF2_IsPlayerInCondition(Hale, TFCond_Disguised))
                {
                    ShowSyncHudText(Hale, rageHUD, "%t", "vsh_disguise_rage");
                }
                else
                {
                    ShowSyncHudText(Hale, rageHUD, "%t", "vsh_do_rage");
                }
            }
        }
        else
        {
            SetHudTextParams(-1.0, 0.83, 0.35, 255, 255, 255, 255);
            if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                ShowSyncHudText(Hale, rageHUD, "%t", "vsh_rage_meter", HaleRage * 100 / RageDMG);
            }
        }
    }

    SetHudTextParams(-1.0, 0.88, 0.35, 255, 255, 255, 255);

    if (GlowTimer <= 0.0)
    {
        SetEntProp(Hale, Prop_Send, "m_bGlowEnabled", 0);
        GlowTimer = 0.0;
    }
    else
    {
        GlowTimer -= 0.2;
    }

    if (bEnableSuperDuperJump)
    {
        SetHudTextParams(-1.0, 0.88, 0.35, 255, 64, 64, 255);
    }

    if (Special == VSHSpecial_Cave)
    {
        SetAmmo(Hale, TFWeaponSlot_Primary, 999); //bLemonRageActivated ? 0 : 
    }

    new buttons = GetClientButtons(Hale);
    if (((buttons & IN_DUCK) || (buttons & IN_ATTACK2)) && (HaleCharge >= 0)) //&& !(buttons & IN_JUMP))
    {
        if (Special == VSHSpecial_HHH)
        {
            if (HaleCharge + 5 < HALEHHH_TELEPORTCHARGE)
            {
                HaleCharge += 5;
            }
            else
            {
                HaleCharge = HALEHHH_TELEPORTCHARGE;
            }

            if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                if (bEnableSuperDuperJump)
                {
                    ShowSyncHudText(Hale, jumpHUD, "%t", "vsh_super_duper_jump");
                }
                else
                {
                    ShowSyncHudText(Hale, jumpHUD, "%t", "vsh_teleport_status", HaleCharge * 2);
                }
            }
        }
        else
        {
            if (HaleCharge + 5 < HALE_JUMPCHARGE)
            {
                HaleCharge += 5;
            }
            else
            {
                HaleCharge = HALE_JUMPCHARGE;
            }

            if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                if (bEnableSuperDuperJump)
                {
                    ShowSyncHudText(Hale, jumpHUD, "%t", "vsh_super_duper_jump");
                }
                else
                {
                    ShowSyncHudText(Hale, jumpHUD, "%t", "vsh_jump_status", HaleCharge * 4);
                }

            }
        }
    }
    else if (HaleCharge < 0)
    {
        HaleCharge += 5;

        if (Special == VSHSpecial_HHH)
        {
            if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                ShowSyncHudText(Hale, jumpHUD, "%t %i", "vsh_teleport_status_2", -HaleCharge / 20);
            }
        }
        else
        {
            if (!(GetClientButtons(Hale) & IN_SCORE))
            {
                ShowSyncHudText(Hale, jumpHUD, "%t %i", "vsh_jump_status_2", -HaleCharge / 20);
            }
        }
    }
    else
    {
        decl Float:ang[3];
        GetClientEyeAngles(Hale, ang);

        if ((ang[0] < -45.0) && (HaleCharge > 1))
        {
            new Action:act = Plugin_Continue;
            new bool:super = bEnableSuperDuperJump;

            Call_StartForward(OnHaleJump);
            Call_PushCellRef(super);
            Call_Finish(act);

            if (act != Plugin_Continue && act != Plugin_Changed)
            {
                return Plugin_Continue;
            }

            if (act == Plugin_Changed)
            {
                bEnableSuperDuperJump = super;
            }

            decl Float:pos[3];

            if (Special == VSHSpecial_HHH && (HaleCharge == HALEHHH_TELEPORTCHARGE || bEnableSuperDuperJump))
            {
                decl target;
                
                do
                {
                    target = GetRandomInt(1, MaxClients);
                }
                while ((RedAlivePlayers > 0) && (!IsValidClient(target) || (Boss_IsClientHale(target)) || !IsPlayerAlive(target) || GetClientTeam(target) != OtherTeam));

                if (IsValidClient(target))
                {
                    if (TF2_GetPlayerClass(target) != TFClass_Scout && TF2_GetPlayerClass(target) != TFClass_Soldier)
                    {
                        SetEntProp(Hale, Prop_Send, "m_CollisionGroup", 2); //Makes HHH clipping go away for player and some projectiles
                        HHH_StartTeleTimer();
                    }

                    GetClientAbsOrigin(target, pos);
                    SetEntPropFloat(Hale, Prop_Send, "m_flNextAttack", GetGameTime() + (bEnableSuperDuperJump ? 4.0:2.0));

                    if (GetEntProp(target, Prop_Send, "m_bDucked"))
                    {
                        VSHFlags[Hale] |= VSHFLAG_NEEDSTODUCK;
                        decl Float:collisionvec[3];

                        collisionvec[0] = 24.0;
                        collisionvec[1] = 24.0;
                        collisionvec[2] = 62.0;

                        SetEntPropVector(Hale, Prop_Send, "m_vecMaxs", collisionvec);
                        SetEntProp(Hale, Prop_Send, "m_bDucked", 1);
                        SetEntityFlags(Hale, GetEntityFlags(Hale) | FL_DUCKING);

                        new Handle:timerpack;

                        CreateDataTimer(0.2, HHH_TimerStun, timerpack, TIMER_FLAG_NO_MAPCHANGE);
                        WritePackCell(timerpack, bEnableSuperDuperJump);
                        WritePackCell(timerpack, GetClientUserId(target));
                    }
                    else
                    {
                        TF2_StunPlayer(Hale, (bEnableSuperDuperJump ? 4.0:2.0), 0.0, TF_STUNFLAGS_GHOSTSCARE | TF_STUNFLAG_NOSOUNDOREFFECT, target);
                    }

                    TeleportEntity(Hale, pos, NULL_VECTOR, NULL_VECTOR);

                    SetEntProp(Hale, Prop_Send, "m_bGlowEnabled", 0);
                    GlowTimer = 0.0;

                    CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(Hale, "ghost_appearation")));
                    CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(Hale, "ghost_appearation", _, false)));

                    decl Float:vPos[3];
                    GetEntPropVector(target, Prop_Send, "m_vecOrigin", vPos);

                    EmitSoundToClient(Hale, "misc/halloween/spell_teleport.wav", _, _, SNDLEVEL_GUNFIRE, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, vPos, NULL_VECTOR, false, 0.0);
                    EmitSoundToClient(target, "misc/halloween/spell_teleport.wav", _, _, SNDLEVEL_GUNFIRE, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, vPos, NULL_VECTOR, false, 0.0);

                    PrintCenterText(target, "You've been teleported to!");

                    HaleCharge = -1100;
                }

                if (bEnableSuperDuperJump)
                {
                    bEnableSuperDuperJump = false;
                }
            }
            else if (Special != VSHSpecial_HHH)
            {
                HaleSuperJumpStatus = true;     //Hale is in the air as a result of super jumping.

                decl Float:vel[3];
                GetEntPropVector(Hale, Prop_Data, "m_vecVelocity", vel);

                if (bEnableSuperDuperJump)
                {
                    vel[2] = 750 + HaleCharge * 13.0 + 2000;
                    bEnableSuperDuperJump = false;
                }
                else
                {
                    vel[2] = 750 + HaleCharge * 13.0;
                }

                SetEntProp(Hale, Prop_Send, "m_bJumping", 1);

                vel[0] *= (1 + Sine(float(HaleCharge) * FLOAT_PI / 50));
                vel[1] *= (1 + Sine(float(HaleCharge) * FLOAT_PI / 50));

                TeleportEntity(Hale, NULL_VECTOR, NULL_VECTOR, vel);

                HaleCharge = (Special == VSHSpecial_Astro) ? -220 : -120;

                new String:s[PLATFORM_MAX_PATH];

                switch (Special)
                {
                    case VSHSpecial_Astro:
                        strcopy(s, PLATFORM_MAX_PATH, AstroJump);
                    case VSHSpecial_Nue:
                        Nue_RandomJump(s, PLATFORM_MAX_PATH);
                    case VSHSpecial_Vagineer:
                        Vagineer_RandomJump(s, PLATFORM_MAX_PATH);
                    case VSHSpecial_CBS:
                        strcopy(s, PLATFORM_MAX_PATH, CBSJump1);
                    case VSHSpecial_Bunny:
                        EasterBunny_RandomJump(s, PLATFORM_MAX_PATH);
                    case VSHSpecial_Hale:
                    {
                        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", GetRandomInt(0, 1) ? HaleJump:HaleJump132, GetRandomInt(1, 2));
                    }
                }

                LogMessage("Value is: %s", s);

                if (s[0] != '\0')
                {
                    GetEntPropVector(Hale, Prop_Send, "m_vecOrigin", pos);
                    EmitSoundToAll(s, Hale, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, true, 0.0);
                    EmitSoundToAll(s, Hale, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, true, 0.0);

                    for (new i = 1; i <= MaxClients; i++)
                    {
                        if (IsValidClient(i) && (!Boss_IsClientHale(i)))
                        {
                            EmitSoundToClient(i, s, Hale, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, true, 0.0);
                            EmitSoundToClient(i, s, Hale, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, true, 0.0);
                        }
                    }
                }
            }
        }
        else
        {
            HaleCharge = 0;
        }
    }

    if (RedAlivePlayers == 1)
    {
        switch (Special)
        {
            case VSHSpecial_Astro:
                PrintCenterTextAll("%t", "vsh_astro_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Nue:
            {
                if (!Nue_IsRageActive())
                {
                    PrintCenterTextAll("%t", "vsh_nue_hp", HaleHealth, HaleHealthMax);
                }
                else
                {
                    PrintCenterTextAll("Nue Houjuu's current health is: ---- of %d", HaleHealthMax);
                }
            }
            case VSHSpecial_Cave:
                PrintCenterTextAll("%t", "vsh_cave_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Bunny:
                PrintCenterTextAll("%t", "vsh_bunny_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_Vagineer:
                PrintCenterTextAll("%t", "vsh_vagineer_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_HHH:
                PrintCenterTextAll("%t", "vsh_hhh_hp", HaleHealth, HaleHealthMax);
            case VSHSpecial_CBS:
                PrintCenterTextAll("%t", "vsh_cbs_hp", HaleHealth, HaleHealthMax);
            default:
                PrintCenterTextAll("%t", "vsh_hale_hp", HaleHealth, HaleHealthMax);
        }
    }

    if (OnlyScoutsLeft())
    {
        new Float:rage = 0.001*RageDMG;
        HaleRage += RoundToCeil(rage);

        if (HaleRage > RageDMG)
        {
            HaleRage = RageDMG;
        }
    }

    if (!(GetEntityFlags(Hale) & FL_ONGROUND) && !CaveJohnson_GetLemonRage())
    {
        WeighDownTimer += 0.2;
    }
    else
    {
        HHH_SetClimbCount(0);
        WeighDownTimer = 0.0;
    }

    new Float:flWTime = (Special == VSHSpecial_Astro) ? 2.0 : 4.0;

    if (WeighDownTimer >= flWTime && buttons & IN_DUCK && GetEntityGravity(Hale) != 6.0)
    {
        decl Float:ang[3];
        GetClientEyeAngles(Hale, ang);

        if ((ang[0] > 60.0))
        {
            new Action:act = Plugin_Continue;

            Call_StartForward(OnHaleWeighdown);
            Call_Finish(act);

            if (act != Plugin_Continue)
            {
                return Plugin_Continue;
            }

            new Float:fVelocity[3];

            GetEntPropVector(Hale, Prop_Data, "m_vecVelocity", fVelocity);
            fVelocity[2] = -1000.0;
            TeleportEntity(Hale, NULL_VECTOR, NULL_VECTOR, fVelocity);
            SetEntityGravity(Hale, 6.0);
            CreateTimer(2.0, Timer_GravityCat, GetClientUserId(Hale), TIMER_FLAG_NO_MAPCHANGE);
            CPrintToChat(Hale, "{olive}[VSH]{default} %t", "vsh_used_weighdown");
            WeighDownTimer = 0.0;
        }
    }

    return Plugin_Continue;
}

public Action:Timer_BotRage(Handle:timer)
{
    new Hale = Boss_GetBossClient();

    if (!IsValidClient(Hale))
    {
        return;
    }

    if (!TF2_IsPlayerInCondition(Hale, TFCond_Taunting))
    {
        FakeClientCommandEx(Hale, "taunt");
    }
}

public Action:Timer_GravityCat(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);

    if (IsValidClient(client))
    {
        if (Special != VSHSpecial_Astro)
        {
            SetEntityGravity(client, 1.0);
        }
        else
        {
            SetEntityGravity(client, 0.4);
        }
    }
}

public Action:Destroy(client, const String:command[], argc)
{
    if (!Enabled || Boss_IsClientHale(client))
    {
        return Plugin_Continue;
    }

    if (IsValidClient(client) && TF2_GetPlayerClass(client) == TFClass_Engineer && TF2_IsPlayerInCondition(client, TFCond_Taunting) && GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee) == 589)
    {
        return Plugin_Handled;
    }

    return Plugin_Continue;
}

public TF2_OnConditionAdded(client, TFCond:cond)
{
    /*if (cond == TFCond_RestrictToMelee && TF2_GetPlayerClass(client) == TFClass_Heavy)
    {
        // Buffalo steak sandvich doesn't restrict to melee
        // But still gives minicrits
        TF2_RemoveCondition(client, TFCond_RestrictToMelee);

        // This is reapplied every 1 second after the initial taunt happened.

        return;
    }*/

    if (!Enabled)
    {
        return;
    }

    if (cond == TFCond_Cloaked && GetClientCloakIndex(client) == 60)
    {
        new knife = GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee);
        if (knife != 225 && knife != 574)
        {
            EmitSoundToAll(NueGone, client);
            EmitSoundToAll(NueGone, client);
            EmitSoundToClient(client, NueGone);
        }
        else
        {
            EmitSoundToAll(NueGone, client, _, _, SND_CHANGEVOL, SNDVOL_NORMAL*0.5);
        }

        CPrintToChdata("cloaked %f", GetGameTime());
    }

    if (TF2_GetPlayerClass(client) == TFClass_Scout)
    {
        if (cond == TFCond_Bonked)
        {
            TF2_RemoveCondition(client, TFCond_Bonked);

            new team = GetClientTeam(client);

            if (team == 2) // TEAM_RED
            {
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_overheal_red")));
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_cast_wheel_red")));
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_cast_wheel_text_red")));
            }
            else // TEAM_BLU
            {
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_overheal_blue")));
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_cast_wheel_blue")));
                CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "spell_cast_wheel_text_blue")));
            }

            EmitSoundToAll("misc/halloween/spell_overheal.wav", client);
            //EmitSoundToAll("misc/halloween/spell_overheal.wav", client);
            //EmitSoundToClient(client, "misc/halloween/spell_overheal.wav");

            decl Float:pos[3], Float:pos2[3];
            GetEntPropVector(client, Prop_Send, "m_vecOrigin", pos);

            for (new i = 1; i <= MaxClients; i++)
            {
                if (IsClientInGame(i) && IsPlayerAlive(i))
                {
                    GetEntPropVector(i, Prop_Send, "m_vecOrigin", pos2);

                    if (GetVectorDistance(pos, pos2) <= 275.0)
                    {
                        if (GetClientTeam(i) == team)
                        {
                            // All of the 'Healing Aura' effects
                            //TF2_AddCondition(i, TFCond_MegaHeal, 0.015);
                            TF2_AddCondition(i, TFCond_Healing, 3.0);
                            TF2_AddCondition(i, TFCond_HalloweenQuickHeal, 3.0);
                            TF2_AddCondition(i, TFCond_UberchargedCanteen, 1.0);
                        }
                        //else // If it's an enemy, knock him away
                        //{
                        //}
                    }
                }
            }
        }

        if (cond == TFCond_CritHype)
        {
            //TF2_RemoveCondition(client, TFCond_CritHype);
            TF2_AddCondition(client, TFCond_Buffed, 10.0); //10.0
        }
    }

    if (cond == TFCond_Taunting && IsWeaponSlotActive(client, TFWeaponSlot_Secondary))
    {
        // Just taunted with their secondary (food?)

        //new iMaxBuff = GetEntProp(client, Prop_Send, "m_iMaxHealth");

        //CPrintToChdata("max hp %i", iMaxBuff);

        switch (GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary))
        {
            case 42, 863, 1002, 311, 159, 433: // Heavy food
            {
                // m_flHypeMeter
                // m_flEnergyDrinkMeter
                // m_flChargeMeter
                // m_flRageMeter
                // m_bRageDraining
                // m_flNextRageEarnTime
                // 
                //SetEntPropFloat(client, Prop_Send, "m_flRageMeter", 0.0);
                //SetEntPropFloat(client, Prop_Send, "m_flNextRageEarnTime", GetGameTime()+30.0);
                CreateTimer(1.0, tChocoSteak, GetClientUserId(client), TIMER_FLAG_NO_MAPCHANGE);
            }
        }
    }
}

public Action:tChocoSteak(Handle:hTimer, any:ref) //|TIMER_REPEAT
{
    new iClient = GetClientOfUserId(ref);

    if (IsClientInGame(iClient) && IsPlayerAlive(iClient))
    {
        TF2_AddCondition(iClient, TFCond_CritCola, 15.0);

        TF2Attrib_SetByName( iClient, "max health additive bonus", 150.0);

        new iFood = GetPlayerWeaponSlot(iClient, TFWeaponSlot_Secondary);

        // So you can't infinitely eat for minicrits at full HP. Normally, this would've been removed as soon as you taunt
        new iAmmoType = GetEntProp(iFood, Prop_Send, "m_iPrimaryAmmoType");
        if (iAmmoType != -1) SetEntProp(iClient, Prop_Data, "m_iAmmo", 0, _, iAmmoType);

        SetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon", GetPlayerWeaponSlot(iClient, TFWeaponSlot_Melee));

        new maxhp = GetClientSpawnHealth(iClient) + 150;
        new health = GetClientHealth(iClient) + RoundToCeil(float(maxhp) / 4.0) - 75;
        if (health > maxhp) health = maxhp;
        SetEntProp(iClient, Prop_Data, "m_iHealth", health);
        SetEntProp(iClient, Prop_Send, "m_iHealth", health);
        SetEntProp(iClient, Prop_Data, "m_iMaxHealth", maxhp);
        SandvichTimers[iClient] = CreateTimer(1.0, tSandvichHeal, GetClientUserId(iClient), TIMER_FLAG_NO_MAPCHANGE|TIMER_REPEAT);

        CreateTimer(30.0, tRefreshFood, GetClientUserId(iClient), TIMER_FLAG_NO_MAPCHANGE);
    }
}

public Action:tSandvichHeal(Handle:hTimer, any:ref)
{
    new iClient = GetClientOfUserId(ref);

    static timer = 0;

    new maxhp = GetClientSpawnHealth(iClient) + 150;
    new health = GetClientHealth(iClient) + RoundToCeil(float(maxhp) / 4.0) - 75;

    if (health > maxhp) health = maxhp;

    SetEntProp(iClient, Prop_Data, "m_iHealth", health);
    SetEntProp(iClient, Prop_Send, "m_iHealth", health);

    CPrintToChdata("healed");

    if (++timer >= 3)
    {
        timer = 0;
        SandvichTimers[iClient] = INVALID_HANDLE;
        return Plugin_Stop;
    }

    return Plugin_Continue;
}

public TF2_OnConditionRemoved(client, TFCond:cond)
{
    /*new iFood = GetEntPropEnt(client, Prop_Send, "m_hActiveWeapon");

    if (cond == TFCond_Taunting && GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary) == iFood)
    {
        switch (GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary))
        {
            case 42, 863, 1002, 311, 159, 433: // Heavy food
            {
                return;
            }
        }
    }*/

    if (!Enabled)
    {
        return;
    }

    if (cond == TFCond_Cloaked)
    {
        CPrintToChdata("decloaked %f", GetGameTime());
    }

    if (cond == TFCond_CritCola && TF2_GetPlayerClass(client) == TFClass_Heavy)
    {
        TF2Attrib_RemoveByName(client, "max health additive bonus");
        SetEntProp(client, Prop_Data, "m_iMaxHealth", GetClientSpawnHealth(client));
    }

    if (cond == TFCond_Cloaked && GetClientCloakIndex(client) == 60)
    {
        new knife = GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee);
        if (knife != 225 && knife != 574)
        {
            EmitSoundToAll(NueGone, client);
            EmitSoundToAll(NueGone, client);
            EmitSoundToClient(client, NueGone);
        }
        else
        {
            EmitSoundToAll(NueGone, client, _, _, SND_CHANGEVOL, SNDVOL_NORMAL*0.5);
        }

        SetEntPropFloat(client, Prop_Send, "m_flCloakMeter", 0.0);
        SetEntPropFloat(client, Prop_Send, "m_flInvisChangeCompleteTime", GetGameTime());
        
        new wepon = GetPlayerWeaponSlot(client, TFWeaponSlot_Melee);
        SetEntPropFloat(client, Prop_Send, "m_flStealthNoAttackExpire", GetGameTime());
        SetEntPropFloat(wepon, Prop_Send, "m_flNextPrimaryAttack", GetGameTime());
        SetEntPropFloat(client, Prop_Send, "m_flNextAttack", GetGameTime());
    }
    
    /*if (TF2_GetPlayerClass(client) == TFClass_Scout && cond == TFCond_CritHype)
    {
        TF2_AddCondition(client, TFCond_SpeedBuffAlly, 0.01);   //recalc their speed
    }*/
}

public Action:tRefreshFood(Handle:hTimer, any:ref) //|TIMER_REPEAT
{
    new iClient = GetClientOfUserId(ref);

    //TF2_RemoveWeaponSlot2(iClient, TFWeaponSlot_Secondary);

    //SpawnWeapon(iClient, String:name[], index, level, qual, String:att[])

    new iFood = GetPlayerWeaponSlot(iClient, TFWeaponSlot_Secondary);

    if (IsClientInGame(iClient) && IsPlayerAlive(iClient))
    {
        new iAmmoType = GetEntProp(iFood, Prop_Send, "m_iPrimaryAmmoType");
        if (iAmmoType != -1) SetEntProp(iClient, Prop_Data, "m_iAmmo", 1, _, iAmmoType);
    }
}

public Action:cdEureka(iClient, const String:sCommand[], iArgc)
{
    if (iArgc > 1) return Plugin_Handled;

    new metal = GetEntProp(iClient, Prop_Data, "m_iAmmo", _, 3);
    if (metal < 130)
    {
        CPrintToChat(iClient, "{olive}[VSH]{default} At least 130 ammo is required to Eureka Teleport.");
        ClientCommand(iClient, "playgamesound \"%s\"", "common\\wpn_denyselect.wav");
        return Plugin_Handled;
    }

    ClientCommand(iClient, "playgamesound \"%s\"", "buttons\\button3.wav");

    metal -= 130;
    if (metal < 0) metal = 0;

    new Handle:hAmmoPack;
    CreateDataTimer(3.0, tEatAmmo, hAmmoPack, TIMER_FLAG_NO_MAPCHANGE);
    WritePackCell(hAmmoPack, metal);
    WritePackCell(hAmmoPack, GetClientUserId(iClient));

    decl String:sCmd1[8];
    
    GetCmdArg(1, sCmd1, sizeof(sCmd1));
    
    // On teleport to exit instead of spawn...
    if (sCmd1[0] == '1' && IsPlayerAlive(iClient))
    {
        new ent, owner;

        DOWHILE_ENTFOUND(ent, "obj_teleporter")
        {
            owner = GetEntPropEnt(ent, Prop_Send, "m_hBuilder");

            if (IsValidClient(owner) && owner == iClient)
            {
                CreateTimer(3.0, tDestroyTele, EntIndexToEntRef(ent), TIMER_FLAG_NO_MAPCHANGE);
            }
        }
    }

    return Plugin_Continue;
}

public Action:tEatAmmo(Handle:timer, Handle:pack)
{
    ResetPack(pack);

    new metal = ReadPackCell(pack);
    new iClient = GetClientOfUserId(ReadPackCell(pack));

    if (IsValidClient(iClient))
    {
        SetEntProp(iClient, Prop_Data, "m_iAmmo", metal, 4, 3);
    }
}

public Action:tDestroyTele(Handle:timer, any:entid)
{
    new ent = EntRefToEntIndex(entid);

    if (ent > 0 && IsValidEntity(ent))
    {
        SetVariantInt(9001);
        AcceptEntityInput(ent, "RemoveHealth");
    }

    return Plugin_Continue;
}

public Action:cdVoiceMenu(iClient, const String:sCommand[], iArgc)
{
    if (iArgc < 2) return Plugin_Handled;

    decl String:sCmd1[8], String:sCmd2[8];
    
    GetCmdArg(1, sCmd1, sizeof(sCmd1));
    GetCmdArg(2, sCmd2, sizeof(sCmd2));
    
    // Capture call for medic commands (represented by "voicemenu 0 0")

    if (sCmd1[0] == '0' && sCmd2[0] == '0' && IsPlayerAlive(iClient) && Boss_IsClientHale(iClient))
    {
        if (!Nue_IsRageActive() && (HaleRage / Boss_GetRageDamage() >= 1))
        {
            DoTaunt(iClient, "", 0);
            return Plugin_Handled;
        }
        else if (Special != VSHSpecial_CBS && Special != VSHSpecial_Bunny)
        {
            return Plugin_Handled;
        }
    }
    
    return Plugin_Continue;
}

public Action:DoTaunt(client, const String:command[], argc)
{
    new Hale = Boss_GetBossClient();

    if (!Enabled || !Boss_IsClientHale(client) || TF2_IsPlayerInCondition(Hale, TFCond_Cloaked) ||
        TF2_IsPlayerInCondition(Hale, TFCond_Disguised) || Special == VSHSpecial_Guard ||
        (Boss_GetDifficulty() == VSHMODE_LUNATIC && Special != VSHSpecial_Nue))
    {
        return Plugin_Continue;   
    }

    if (NoTaunt)
    {
        CPrintToChdata("Prevented Hale taunting");

        //TF2_RemoveCondition(Hale, TFCond_Taunting);
        //MakeModelTimer(INVALID_HANDLE); // should reset Hale's animation

        return Plugin_Handled;
    }

    decl String:s[PLATFORM_MAX_PATH];

    if (HaleRage / Boss_GetRageDamage() >= 1)
    {
        decl Float:pos[3];

        GetEntPropVector(client, Prop_Send, "m_vecOrigin", pos);

        pos[2] += 20.0;

        new Action:act = Plugin_Continue;

        Call_StartForward(OnHaleRage);

        new Float:RageDist = Boss_GetRageDistance();
        new Float:dist;
        new Float:newdist;

        switch (Special)
        {
            case VSHSpecial_Astro:
                dist = RageDist * (2.0); // 1600.0
            case VSHSpecial_Vagineer:
                dist = RageDist / (1.5);
            case VSHSpecial_Nue, VSHSpecial_CBS, VSHSpecial_Bunny:
                dist = RageDist / (2.0);
            case VSHSpecial_Cave:
                dist = RageDist / (2.5);
            default:
                dist = RageDist;
        }

        newdist = dist;

        Call_PushFloatRef(newdist);
        Call_Finish(act);

        if (act != Plugin_Continue && act != Plugin_Changed) return Plugin_Continue;

        if (act == Plugin_Changed) dist = newdist;

        if (Special != VSHSpecial_Nue) TF2_AddCondition(Hale, TFCond:42, 4.0);

        switch (Special)
        {
            case VSHSpecial_Nue:
            {
                Nue_RandomRage(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);

                strcopy(s, PLATFORM_MAX_PATH, NueGone);
                EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);

                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Melee);
                SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SpawnWeapon(client, "tf_weapon_knife", 574, 64, 5, "68 ; 2.0 ; 410 ; 5.05 ; 259 ; 1.0 ; 252 ; 0.75 ; 154 ; 1 ; 155 ; 1 ; 156 ; 1 ; 144 ; 1 ; 167 ; 0.4 ; 137 ; 2.0 ; 527 ; 1"));

                if (!TF2_IsPlayerInCondition(client, TFCond_Cloaked))
                {
                    TF2_AddCondition(client, TFCond_Cloaked, -1.0);
                    CreateTimer(3.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "ghost_appearation")));
                }

                SetEntPropFloat(client, Prop_Send, "m_flCloakMeter", 100.0);

                if (TF2_IsPlayerInCondition(client, TFCond_OnFire))
                {
                    TF2_RemoveCondition(client, TFCond_OnFire);
                }

                if (TF2_IsPlayerInCondition(Hale, TFCond_Milked))
                {
                    TF2_RemoveCondition(Hale, TFCond_Milked);
                }

                SetEntProp(Hale, Prop_Send, "m_bGlowEnabled", 0);
                GlowTimer = 0.0;

                //SetEntProp(Hale, Prop_Send, "m_CollisionGroup", 10); //Makes Nue clipping go away for 2 = player/projectiles | 10 += bullets

                DisguiseNue(client);
                Nue_SetRageActive(true);

                CreateTimer(0.0, UseRage, dist);
            }
            case VSHSpecial_Cave:
            {
                Format(s, PLATFORM_MAX_PATH, "%s", CaveRage);
                CreateTimer(0.6, UseRage, dist);

                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                new SaxtonWeapon = SpawnWeapon(client, "tf_weapon_grenadelauncher", 19, 64, 5, "59 ; 0 ; 280 ; 2 ; 37 ; 0 ; 424 ; 0 ; 259 ; 1 ; 318 ; 0.5 ; 181 ; 2 ; 208 ; 1 ; 252 ; 0.7 ; 22 ; 1 ; 527 ; 1 ; 6 ; 0.25 ; 103 ; 2 ; 1 ; 0.3 ; 209 ; 1");
                SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon); //54 ; 0.6 //4 ; 7.5
                //SpawnWeapon(client, "tf_weapon_rocketlauncher", 18, 64, 5, "37 ; 0.0 ; 68 ; 2.0 ; 259 ; 1.0 ; 318 ; 0.5 ; 181 ; 1 ; 208 ; 1 ; 252 ; 0.7 ; 4 ; 8.0 ; 22 ; 1 ; 527 ; 1 ; 6 ; 0.25 ; 103 ; 2.0 ; 1 ; 0.4 ; 209 ; 1")
                SetEntProp(SaxtonWeapon, Prop_Data, "m_iClip1", 99);
                CaveJohnson_SetLemonRage(true);
            }
            case VSHSpecial_Vagineer:
            {
                if (GetRandomInt(0, 2))
                {
                    strcopy(s, PLATFORM_MAX_PATH, VagineerRageSound);
                }
                else
                {
                    Vagineer_RandomRage(s, PLATFORM_MAX_PATH);
                }

                TF2_AddCondition(Hale, TFCond_Ubercharged, 99.0);
                UberRageCount = 0.0;

                CreateTimer(0.6, UseRage, dist);
                CreateTimer(0.1, UseUberRage, _, TIMER_REPEAT | TIMER_FLAG_NO_MAPCHANGE);
            }
            case VSHSpecial_Astro:
            {
                Format(s, PLATFORM_MAX_PATH, "%s", AstroRage);
                CreateTimer(0.6, UseRage, dist);
            }
            case VSHSpecial_HHH:
            {
                Format(s, PLATFORM_MAX_PATH, "%s", HHHRage2);
                CreateTimer(0.6, UseRage, dist);
            }
            case VSHSpecial_Bunny:
            {
                EasterBunny_RandomRage(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                new weapon = SpawnWeapon(client, "tf_weapon_grenadelauncher", 19, 64, 5, "1 ; 0.6 ; 6 ; 0.1 ; 411 ; 150.0 ; 413 ; 1.0 ; 37 ; 0.0 ; 280 ; 17 ; 477 ; 1.0 ; 467 ; 1.0 ; 181 ; 2.0 ; 252 ; 0.6");
                SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", weapon);
                SetEntProp(weapon, Prop_Send, "m_iClip1", 50);
                SetAmmo(client, TFWeaponSlot_Primary, 0);
                CreateTimer(0.6, UseRage, dist);
            }
            case VSHSpecial_CBS:
            {
                if (GetRandomInt(0, 1))
                    Format(s, PLATFORM_MAX_PATH, "%s", CBS1);
                else
                    Format(s, PLATFORM_MAX_PATH, "%s", CBS3);
                EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SpawnWeapon(client, "tf_weapon_compound_bow", 56, 64, 5, "2 ; 3.0 ; 6 ; 0.5 ; 37 ; 0.0 ; 280 ; 19 ; 551 ; 1"));
                SetAmmo(client, TFWeaponSlot_Primary, (RedAlivePlayers <= 2) ? 2 : (RedAlivePlayers >= 6) ? 6 : RedAlivePlayers);
                CreateTimer(0.6, UseRage, dist);
                CreateTimer(0.1, UseBowRage);
            }
            default:
            {
                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleRageSound, GetRandomInt(1, 4));
                CreateTimer(0.6, UseRage, dist);
            }
        }

        EmitSoundToAll(s, client, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, pos, NULL_VECTOR, true, 0.0);
        EmitSoundToAll(s, client, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, pos, NULL_VECTOR, true, 0.0);

        for (new i = 1; i <= MaxClients; i++)
        {
            if (IsValidClient(i) && !Boss_IsClientHale(i))
            {
                EmitSoundToClient(i, s, client, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, pos, NULL_VECTOR, true, 0.0);
                EmitSoundToClient(i, s, client, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, pos, NULL_VECTOR, true, 0.0);
            }
        }

        HaleRage = 0;
        VSHFlags[Hale] &= ~VSHFLAG_BOTRAGE;
    }

    NoTaunt = true;
    CreateTimer(1.5, Timer_NoTaunting, _, TIMER_FLAG_NO_MAPCHANGE);

    return Plugin_Continue;
}

public Action:Timer_NoTaunting(Handle:timer)
{
    NoTaunt = false;
}

public Action:DoSuicide(client, const String:command[], argc)
{
    if (Enabled && (Boss_IsRoundState(ROUNDSTATE_WAITING) || Boss_IsRoundState(ROUNDSTATE_ACTIVE)))
    {
        if (Boss_IsClientHale(client) && bTenSecStart[0])
        {
            CPrintToChat(client, "Do not suicide as Hale. !hale_resetq or !haletoggle instead.");
            return Plugin_Handled;
            //KickClient(client, "Next time, please remember to !hale_resetq or !haletoggle");
            //if (Boss_IsRoundState(ROUNDSTATE_WAITING)) return Plugin_Handled;
        }
    }
    return Plugin_Continue;
}

public Action:DoSuicide2(client, const String:command[], argc)
{
    if (Enabled && Boss_IsClientHale(client) && bTenSecStart[0])
    {
        CPrintToChat(client, "You can't change teams this early.");
        return Plugin_Handled;
    }
    return Plugin_Continue;
}

public Action:UseRage(Handle:hTimer, any:dist)
{
    new Hale = Boss_GetBossClient();
    new Float:RageDist = Boss_GetRageDistance();

    decl Float:pos[3];
    decl Float:pos2[3];
    decl i;
    decl Float:distance;

    if (!IsValidClient(Hale)) return Plugin_Continue;

    if (!GetEntProp(Hale, Prop_Send, "m_bIsReadyToHighFive") && !IsValidEntity(GetEntPropEnt(Hale, Prop_Send, "m_hHighFivePartner")))
    {
        TF2_RemoveCondition(Hale, TFCond_Taunting);
        MakeModelTimer(INVALID_HANDLE); // should reset Hale's animation
    }

    GetEntPropVector(Hale, Prop_Send, "m_vecOrigin", pos);

    for (i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && IsPlayerAlive(i) && (!Boss_IsClientHale(i)))
        {
            GetEntPropVector(i, Prop_Send, "m_vecOrigin", pos2);
            distance = GetVectorDistance(pos, pos2);

            if (!IsAnyUber(i) && distance < dist)
            {
                new flags = TF_STUNFLAGS_GHOSTSCARE;

                if (Special != VSHSpecial_HHH)
                {
                    flags |= TF_STUNFLAG_NOSOUNDOREFFECT;
                    CreateTimer(5.0, RemoveEnt, EntIndexToEntRef(AttachParticle(i, "yikes_fx", 75.0)));
                }

                // TFCond_UberchargedCanteen = 1s instead of 3s
                if ( TF2_GetPlayerClass(i) == TFClass_Scout && GetIndexOfWeaponSlot(i, TFWeaponSlot_Secondary) == 46)
                {
                    if (IsIndexActive(i, 46) && TF2_IsPlayerInCondition(i, TFCond_Taunting))
                    {
                        continue; // Don't rage stun if the scout is drinking bonk
                    }
                    else if (TF2_IsPlayerInCondition(i, TFCond_HalloweenQuickHeal) && (GetEntPropFloat(i, Prop_Send, "m_flEnergyDrinkMeter") < 100.0))
                    {
                        continue; // Don't rage stun if the scout has used bonk and is still under its effects
                    }
                }

                if (Boss_IsRoundState(ROUNDSTATE_ACTIVE)) TF2_StunPlayer(i, 5.0, _, flags, (Special == VSHSpecial_HHH ? 0:Hale));
            }
        }
    }

    i = -1;

    while ((i = FindEntityByClassname2(i, "obj_sentrygun")) != -1)
    {
        GetEntPropVector(i, Prop_Send, "m_vecOrigin", pos2);
        distance = GetVectorDistance(pos, pos2);

        if (dist <= RageDist / 3) dist = RageDist / 2;

        if (distance < dist)    //(!mode && (distance < RageDist)) || (mode && (distance < RageDist/2)))
        {
            SetEntProp(i, Prop_Send, "m_bDisabled", 1);
            AttachParticle(i, "yikes_fx", 75.0);

            if (newRageSentry)
            {
                SetVariantInt(GetEntProp(i, Prop_Send, "m_iHealth") / 2);
                AcceptEntityInput(i, "RemoveHealth");
            }
            else
            {
                SetEntProp(i, Prop_Send, "m_iHealth", GetEntProp(i, Prop_Send, "m_iHealth") / 2);
            }

            CreateTimer(8.0, EnableSG, EntIndexToEntRef(i));
        }
    }

    i = -1;

    while ((i = FindEntityByClassname2(i, "obj_dispenser")) != -1)
    {
        GetEntPropVector(i, Prop_Send, "m_vecOrigin", pos2);
        distance = GetVectorDistance(pos, pos2);

        if (dist <= RageDist / 3)
        {
            dist = RageDist / 2;
        }

        if (distance < dist)    //(!mode && (distance < RageDist)) || (mode && (distance < RageDist/2)))
        {
            SetVariantInt(1);
            AcceptEntityInput(i, "RemoveHealth");
        }
    }

    i = -1;

    while ((i = FindEntityByClassname2(i, "obj_teleporter")) != -1)
    {
        GetEntPropVector(i, Prop_Send, "m_vecOrigin", pos2);
        distance = GetVectorDistance(pos, pos2);

        if (dist <= RageDist / 3)
        {
            dist = RageDist / 2;
        }

        if (distance < dist)    //(!mode && (distance < RageDist)) || (mode && (distance < RageDist/2)))
        {
            SetVariantInt(1);
            AcceptEntityInput(i, "RemoveHealth");
        }
    }

    return Plugin_Continue;
}

public Action:UseUberRage(Handle:hTimer, any:param)
{
    new Hale = Boss_GetBossClient();

    if (!IsValidClient(Hale))
    {
        return Plugin_Stop;
    }

    if (UberRageCount == 1)
    {
        if (!GetEntProp(Hale, Prop_Send, "m_bIsReadyToHighFive") && !IsValidEntity(GetEntPropEnt(Hale, Prop_Send, "m_hHighFivePartner")))
        {
            TF2_RemoveCondition(Hale, TFCond_Taunting);
            MakeModelTimer(INVALID_HANDLE); // should reset Hale's animation
        }
        //      TF2_StunPlayer(Hale, 0.0, _, TF_STUNFLAG_NOSOUNDOREFFECT);
    }
    else if (UberRageCount >= 100)
    {
        if (defaulttakedamagetype == 0) defaulttakedamagetype = 2;

        SetEntProp(Hale, Prop_Data, "m_takedamage", defaulttakedamagetype);
        defaulttakedamagetype = 0;
        TF2_RemoveCondition(Hale, TFCond_Ubercharged);

        return Plugin_Stop;
    }
    else if (UberRageCount >= 85 && !TF2_IsPlayerInCondition(Hale, TFCond_UberchargeFading))
    {
        TF2_AddCondition(Hale, TFCond_UberchargeFading, 3.0);
    }

    if (!defaulttakedamagetype)
    {
        defaulttakedamagetype = GetEntProp(Hale, Prop_Data, "m_takedamage");

        if (defaulttakedamagetype == 0) defaulttakedamagetype = 2;
    }

    SetEntProp(Hale, Prop_Data, "m_takedamage", 0);
    UberRageCount += 1.0;

    return Plugin_Continue;
}

public Action:UseBowRage(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();

    if (!GetEntProp(Hale, Prop_Send, "m_bIsReadyToHighFive") && !IsValidEntity(GetEntPropEnt(Hale, Prop_Send, "m_hHighFivePartner")))
    {
        TF2_RemoveCondition(Hale, TFCond_Taunting);
        MakeModelTimer(INVALID_HANDLE); // should reset Hale's animation
    }

    //  TF2_StunPlayer(Hale, 0.0, _, TF_STUNFLAG_NOSOUNDOREFFECT);
    //  UberRageCount = 9.0;

    SetAmmo(Hale, 0, (RedAlivePlayers <= 2) ? 2 : (RedAlivePlayers >= 6) ? 6 : RedAlivePlayers);

    return Plugin_Continue;
}


/*public Action:event_player_death_backstab(Handle:event, const String:name[], bool:dontBroadcast)
{
    new attacker = GetClientOfUserId(GetEventInt(event, "attacker"));

    if (Enabled && Boss_IsClientHale(attacker) && bNueRageActive)
    {
        SetEventBool(event, "silentkill", true);

        return Plugin_Changed;
    }

    return Plugin_Continue;
}*/

public Action:event_player_death(Handle:event, const String:name[], bool:dontBroadcast)
{
    new Hale = Boss_GetBossClient();
    decl String:s[PLATFORM_MAX_PATH];

    if (!Enabled)
    {
        return Plugin_Continue;
    }

    new client = GetClientOfUserId(GetEventInt(event, "userid"));

    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    new attacker = GetClientOfUserId(GetEventInt(event, "attacker"));
    new deathflags = GetEventInt(event, "death_flags");
    new customkill = GetEventInt(event, "customkill");

    if (TF2_GetPlayerClass(client) == TFClass_Spy)
    {
        SDKUnhook(client, SDKHook_PreThinkPost, OnPreThinkPost);
    }

    if (Boss_IsClientHale(client))
    {
        Nue_SetRageActive(false);
    }

    if (Boss_IsClientHale(attacker) && Special == VSHSpecial_Bunny && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        SpawnManyAmmoPacks(client, EggModel, 1, 5, 120.0);
    }

    if (Boss_IsClientHale(attacker) && Boss_IsRoundState(ROUNDSTATE_ACTIVE) && (deathflags & TF_DEATHFLAG_DEADRINGER))
    {
        numHaleKills++;

        if (customkill != TF_CUSTOM_BOOTS_STOMP)
        {
            if (Special == VSHSpecial_Hale)
            {
                SetEventString(event, "weapon", "fists");
            }
        }

        return Plugin_Continue;
    }

    if (GetClientHealth(client) > 0)
    {
        return Plugin_Continue;
    }

    if (Special == VSHSpecial_Nue && (Boss_IsRoundState(ROUNDSTATE_ACTIVE) || Boss_IsRoundState(ROUNDSTATE_END)) && !Nue_IsRageActive() && Nue_GetLastKillTime() != GetGameTime())
    {
        decl Float:vPos[3];
        GetEntPropVector(client, Prop_Send, "m_vecOrigin", vPos);

        strcopy(s, PLATFORM_MAX_PATH, Death2hu);
        EmitSoundToAll(s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, vPos, NULL_VECTOR, false, 0.0);

        Nue_SetLastKillTime(GetGameTime()); // Don't play the sound more than once when slaying multiple players at the same time
    }

    /*if (bNueRageActive && Boss_IsClientHale(attacker))
    {
        decl String:weapon[64];
        GetEventString(event, "weapon", weapon, sizeof(weapon));

        if (!StrEqual(weapon, "backstab"))
        {
            if (customkill != TF_CUSTOM_BOOTS_STOMP)
            {
                SetEventString(event, "weapon", "backstab");
            }

            //SetEventBroadcast(event, true);
            SetEventBool(event, "silent_kill", true);
            SetEventInt(event, "customkill", 2);
        }
    }*/

    CreateTimer(0.1, CheckAlivePlayers);

    if (!Boss_IsClientHale(client) && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        CreateTimer(1.0, Timer_Damage, GetClientUserId(client));
    }

    if (Boss_IsClientHale(client) && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        switch (Special)
        {
            case VSHSpecial_Astro:
            {
                strcopy(s, PLATFORM_MAX_PATH, AstroFail);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Nue:
            {
                strcopy(s, PLATFORM_MAX_PATH, NueFail);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_HOME, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Cave:
            {
                strcopy(s, PLATFORM_MAX_PATH, CaveFail);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_HHH:
            {
                Format(s, PLATFORM_MAX_PATH, "vo/halloween_boss/knight_death0%d.wav", GetRandomInt(1, 2));
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAll("ui/halloween_boss_defeated_fx.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                //CreateTimer(0.1, Timer_ChangeRagdoll, any:GetEventInt(event, "userid"));
            }
            case VSHSpecial_Hale:
            {
                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleFail, GetRandomInt(1, 3));
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                //CreateTimer(0.1, Timer_ChangeRagdoll, any:GetEventInt(event, "userid"));
            }
            case VSHSpecial_Vagineer:
            {
                Vagineer_RandomFail(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                //CreateTimer(0.1, Timer_ChangeRagdoll, any:GetEventInt(event, "userid"));
            }
            case VSHSpecial_Bunny:
            {
                EasterBunny_RandomFail(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, client, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                //CreateTimer(0.1, Timer_ChangeRagdoll, any:GetEventInt(event, "userid"));
                SpawnManyAmmoPacks(client, EggModel, 1);
            }
        }

        if (HaleHealth < 0)
        {
            HaleHealth = 0;
        }

        ForceTeamWin(OtherTeam);

        return Plugin_Continue;
    }

    if (Boss_IsClientHale(attacker) && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        numHaleKills++;

        switch (Special)
        {
            case VSHSpecial_Hale:
            {
                if (customkill != TF_CUSTOM_BOOTS_STOMP)
                {
                    SetEventString(event, "weapon", "fists");
                }

                if (!GetRandomInt(0, 2) && RedAlivePlayers != 1)
                {
                    strcopy(s, PLATFORM_MAX_PATH, "");
                    new TFClassType:playerclass = TF2_GetPlayerClass(client);

                    switch (playerclass)
                    {
                        case TFClass_Scout:
                            strcopy(s, PLATFORM_MAX_PATH, HaleKillScout132);
                        case TFClass_Pyro:
                            strcopy(s, PLATFORM_MAX_PATH, HaleKillPyro132);
                        case TFClass_DemoMan:
                            strcopy(s, PLATFORM_MAX_PATH, HaleKillDemo132);
                        case TFClass_Heavy:
                            strcopy(s, PLATFORM_MAX_PATH, HaleKillHeavy132);
                        case TFClass_Medic:
                            strcopy(s, PLATFORM_MAX_PATH, HaleKillMedic);
                        case TFClass_Sniper:
                        {
                            if (GetRandomInt(0, 1))
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillSniper1);
                            }
                            else
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillSniper2);
                            }
                        }
                        case TFClass_Spy:
                        {
                            new see = GetRandomInt(0, 2);

                            if (!see)
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillSpy1);
                            }
                            else if (see == 1)
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillSpy2);
                            }
                            else
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillSpy132);
                            }
                        }
                        case TFClass_Engineer:
                        {
                            new see = GetRandomInt(0, 3);

                            if (!see)
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillEngie1);
                            }
                            else if (see == 1)
                            {
                                strcopy(s, PLATFORM_MAX_PATH, HaleKillEngie2);
                            }
                            else
                            {
                                Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillEngie132, GetRandomInt(1, 2));
                            }
                        }
                    }
                    if (s[0] != 0) //!StrEqual(s, "")
                    {
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                }
            }
            case VSHSpecial_Vagineer:
            {
                strcopy(s, PLATFORM_MAX_PATH, VagineerHit);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                //              CreateTimer(0.1, Timer_DissolveRagdoll, any:GetEventInt(event, "userid"));
            }
            case VSHSpecial_HHH:
            {
                Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HHHAttack, GetRandomInt(1, 4));
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Bunny:
            {
                EasterBunny_RandomKill(s, PLATFORM_MAX_PATH);
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }
            case VSHSpecial_Nue:
            {
                if (!Nue_IsRageActive())
                {
                    Nue_RandomKill(s, PLATFORM_MAX_PATH);
                    EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                }
            }
            case VSHSpecial_Cave:
            {
                if (customkill != TF_CUSTOM_BOOTS_STOMP)
                {
                    SetEventString(event, "weapon", "firedeath");
                }

                if (!CaveJohnson_GetKillVoice() && RedAlivePlayers > 2)
                {
                    new iVoice = CaveJohnson_RandomSpree(s, PLATFORM_MAX_PATH);
                    EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    CaveJohnson_SetKillVoice(true);
                    CaveJohnson_SetKillTimer(CreateTimer(iVoice == 1 ? 12.0 : 6.0, CaveJohnson_EndCaveKillTimer, TIMER_FLAG_NO_MAPCHANGE));
                    //iVoice == 0 ? 5.0 : iVoice == 1 ? 11.0 : ? iVoice == 2 : 2.0 : 3.0
                }
            }
            case VSHSpecial_CBS:
            {
                if (!GetRandomInt(0, 3) && RedAlivePlayers != 1)
                {
                    new TFClassType:playerclass = TF2_GetPlayerClass(client);

                    switch (playerclass)
                    {
                        case TFClass_Spy:
                        {
                            strcopy(s, PLATFORM_MAX_PATH, "vo/sniper_dominationspy04.wav");
                            EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                            EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, attacker, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        }
                    }
                }

                new weapon = GetEntPropEnt(Hale, Prop_Send, "m_hActiveWeapon");

                if (weapon == GetPlayerWeaponSlot(Hale, TFWeaponSlot_Melee))
                {
                    TF2_RemoveWeaponSlot2(Hale, TFWeaponSlot_Melee);

                    new clubindex, wepswitch = GetRandomInt(0, 3);

                    switch (wepswitch)
                    {
                        case 0:
                            clubindex = 171;
                        case 1:
                            clubindex = 3;
                        case 2:
                            clubindex = 232;
                        case 3:
                            clubindex = 401;
                    }

                    weapon = SpawnWeapon(Hale, "tf_weapon_club", clubindex, 64, 5, "68 ; 2.0 ; 2 ; 3.1 ; 259 ; 1.0");
                    SetEntPropEnt(Hale, Prop_Send, "m_hActiveWeapon", weapon);
                    SetEntProp(weapon, Prop_Send, "m_nModelIndexOverrides", GetEntProp(weapon, Prop_Send, "m_iWorldModelIndex"), _, 0);
                }
            }
        }

        if (GetGameTime() <= KSpreeTimer)
        {
            KSpreeCount++;
        }
        else
        {
            KSpreeCount = 1;
        }

        if (KSpreeCount == 3 && RedAlivePlayers != 1)
        {
            switch (Special)
            {
                case VSHSpecial_Hale:
                {
                    new see = GetRandomInt(0, 7);

                    if (!see || see == 1)
                    {
                        strcopy(s, PLATFORM_MAX_PATH, HaleKSpree);
                    }
                    else if (see < 5)
                    {
                        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKSpreeNew, GetRandomInt(1, 5));
                    }
                    else
                    {
                        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleKillKSpree132, GetRandomInt(1, 2));
                    }
                }
                case VSHSpecial_Vagineer:
                {
                    if (GetRandomInt(0, 4) == 1)
                    {
                        strcopy(s, PLATFORM_MAX_PATH, VagineerKSpree);
                    }
                    else if (GetRandomInt(0, 3) == 1)
                    {
                        strcopy(s, PLATFORM_MAX_PATH, VagineerKSpree2);
                    }
                    else
                    {
                        Vagineer_RandomTaunt(s, PLATFORM_MAX_PATH);
                    }
                }
                case VSHSpecial_HHH:
                    Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HHHLaught, GetRandomInt(1, 4));
                case VSHSpecial_CBS:
                {
                    if (!GetRandomInt(0, 3))
                    {
                        Format(s, PLATFORM_MAX_PATH, CBS0);
                    }
                    else if (!GetRandomInt(0, 3))
                    {
                        Format(s, PLATFORM_MAX_PATH, CBS1);
                    }
                    else
                    {
                        Format(s, PLATFORM_MAX_PATH, "%s%02i.wav", CBS2, GetRandomInt(1, 9));
                    }

                    EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                }
                case VSHSpecial_Bunny:
                {
                    EasterBunny_RandomSpree(s, PLATFORM_MAX_PATH);
                }
            }

            if (Special != VSHSpecial_Nue && Special != VSHSpecial_Cave && Special != VSHSpecial_Astro && Special != VSHSpecial_Guard)
            {
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
            }

            KSpreeCount = 0;
        }
        else
        {
            KSpreeTimer = GetGameTime() + 5.0;
        }
    }

    if ((TF2_GetPlayerClass(client) == TFClass_Engineer) && !(deathflags & TF_DEATHFLAG_DEADRINGER))
    {
        for (new ent = MaxClients + 1; ent < ME; ent++)
        {
            if (IsValidEdict(ent))
            {
                if (GetEdictClassname(ent, s, sizeof(s)) && !strcmp(s, "obj_sentrygun", false) && GetEntPropEnt(ent, Prop_Send, "m_hBuilder") == client)
                {
                    //SDKHooks_TakeDamage(ent, Hale, Hale, Float:(GetEntProp(ent, Prop_Send, "m_iMaxHealth")+8), DMG_CLUB);
                    SetVariantInt(GetEntProp(ent, Prop_Send, "m_iMaxHealth") + 8);
                    AcceptEntityInput(ent, "RemoveHealth");
                }
            }
        }
    }

    return Plugin_Continue;
}

public Action:Timer_Damage(Handle:hTimer, any:id)
{
    new client = GetClientOfUserId(id);

    if (IsValidClient(client))
    {
        CPrintToChat(client, "{olive}[VSH]{default} %t. %t {olive}%i{default}", "vsh_damage", Damage[client], "vsh_scores", RoundFloat(Damage[client] / 600.0));
    }

    return Plugin_Continue;
}

public Action:event_deflect(Handle:event, const String:name[], bool:dontBroadcast)
{
    if (!Enabled)
    {
        return Plugin_Continue;
    }

    new deflector = GetClientOfUserId(GetEventInt(event, "userid"));
    new owner = GetClientOfUserId(GetEventInt(event, "ownerid"));
    new weaponid = GetEventInt(event, "weaponid");

    if (!Boss_IsClientHale(owner))
    {
        return Plugin_Continue;
    }

    if (weaponid != 0)
    {
        return Plugin_Continue;
    }

    new RageDMG = Boss_GetRageDamage();
    new Float:rage = 0.04 * RageDMG;
    HaleRage += RoundToCeil(rage);

    if (HaleRage > RageDMG)
    {
        HaleRage = RageDMG;
    }

    if (Special != VSHSpecial_Vagineer)
    {
        return Plugin_Continue;
    }

    if (!IsMediUber(owner))
    {
        return Plugin_Continue;
    }

    if (UberRageCount > 11)
    {
        UberRageCount -= 10;
    }

    new newammo = GetAmmo(deflector, 0) - 5;

    SetAmmo(deflector, 0, newammo <= 0 ? 0:newammo);

    return Plugin_Continue;
}

public Action:event_jarate(UserMsg:msg_id, Handle:bf, const players[], playersNum, bool:reliable, bool:init)
{
    new Hale = Boss_GetBossClient();
    new client = BfReadByte(bf);
    new victim = BfReadByte(bf);

    if (!Boss_IsClientHale(victim))
    {
        return Plugin_Continue;
    }

    new jar = GetPlayerWeaponSlot(client, 1);

    new jindex = GetEntProp(jar, Prop_Send, "m_iItemDefinitionIndex");

    if (jar != -1 && (jindex == 58 || jindex == 1083) && GetEntProp(jar, Prop_Send, "m_iEntityLevel") != -122)    //-122 is the Jar of Ants and should not be used in this
    {
        new Float:rage = 0.08 * Boss_GetRageDamage();

        HaleRage -= RoundToFloor(rage);

        if (HaleRage < 0)
        {
            HaleRage = 0;
        }

        if (Special == VSHSpecial_Vagineer && IsMediUber(victim) && UberRageCount < 99)
        {
            UberRageCount += 7.0;

            if (UberRageCount > 99)
            {
                UberRageCount = 99.0;
            }
        }

        new ammo = GetAmmo(Hale, 0);

        if (Special == VSHSpecial_CBS && ammo > 0)
        {
            SetAmmo(Hale, 0, ammo - 1);
        }
    }

    return Plugin_Continue;
}

public Action:CheckAlivePlayers(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();

    if (!Boss_IsRoundState(ROUNDSTATE_ACTIVE)) //(Boss_IsRoundState(ROUNDSTATE_END) || VSHRoundState == -1)
    {
        return Plugin_Continue;
    }

    RedAlivePlayers = 0;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && IsPlayerAlive(i) && (GetClientTeam(i) == OtherTeam))
        {
            RedAlivePlayers++;
        }
    }

    if (Special == VSHSpecial_CBS && GetAmmo(Hale, 0) > RedAlivePlayers && RedAlivePlayers != 0)
    {
        SetAmmo(Hale, 0, RedAlivePlayers);
    }

    if (RedAlivePlayers == 0)
    {
        ForceTeamWin(HaleTeam);
    }
    else if (RedAlivePlayers == 2 && IsValidClient(Hale) && Boss_IsRoundState(ROUNDSTATE_ACTIVE) && Special == VSHSpecial_Cave)
    {
        for (new i = 1; i <= MaxClients; i++)
        {
            StopHaleMusic(i);
        }
        CreateTimer(1.0, Timer_MusicPlay, _, TIMER_FLAG_NO_MAPCHANGE);
    }
    else if (RedAlivePlayers == 1 && IsValidClient(Hale) && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        decl Float:pos[3];
        decl String:s[PLATFORM_MAX_PATH];

        GetEntPropVector(Hale, Prop_Send, "m_vecOrigin", pos);

        if (Special != VSHSpecial_HHH)
        {
            if (Special == VSHSpecial_Cave)
            {
                for (new i = 1; i <= MaxClients; i++)
                {
                    StopHaleMusic(i);
                }
                CreateTimer(1.0, Timer_MusicPlay, _, TIMER_FLAG_NO_MAPCHANGE);
            }
            if (Special == VSHSpecial_CBS)
            {
                if (!GetRandomInt(0, 2))
                {
                    Format(s, PLATFORM_MAX_PATH, "%s", CBS0);
                }
                else
                {
                    Format(s, PLATFORM_MAX_PATH, "%s%02i.wav", CBS4, GetRandomInt(1, 25));
                }

                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);
            }
            else if (Special == VSHSpecial_Bunny)
            {
                EasterBunny_RandomLast(s, PLATFORM_MAX_PATH);
            }
            else if (Special == VSHSpecial_Astro)
            {
                strcopy(s, PLATFORM_MAX_PATH, AstroLast);
            }
            else if (Special == VSHSpecial_Vagineer)
            {
                strcopy(s, PLATFORM_MAX_PATH, VagineerLastA);
            }
            else
            {
                new see = GetRandomInt(0, 5);

                switch (see)
                {
                    case 0:
                        strcopy(s, PLATFORM_MAX_PATH, HaleComicArmsFallSound);
                    case 1:
                        Format(s, PLATFORM_MAX_PATH, "%s0%i.wav", HaleLastB, GetRandomInt(1, 4));
                    case 2:
                        strcopy(s, PLATFORM_MAX_PATH, HaleKillLast132);
                    default:
                        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleLastMan, GetRandomInt(1, 5));
                }
            }

            if (Special != VSHSpecial_Cave && Special != VSHSpecial_Nue && Special != VSHSpecial_Guard)
            {
                EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, false, 0.0);
                EmitSoundToAll(s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, pos, NULL_VECTOR, false, 0.0);
            }
        }
    }

    if (!PointType && (RedAlivePlayers <= (AliveToEnable = GetConVarInt(cvarAliveToEnable))) && !PointReady)
    {
        if (RedAlivePlayers > 1)
            PrintHintTextToAll("%t", "vsh_point_enable", RedAlivePlayers);
        else
            PrintHintTextToAll("%t", "vsh_point_enable_alone");

        if (RedAlivePlayers == AliveToEnable)
        {
            EmitSoundToAll("vo/announcer_am_capenabled02.wav");
        }
        else if (RedAlivePlayers < AliveToEnable)
        {
            decl String:s[PLATFORM_MAX_PATH];

            Format(s, PLATFORM_MAX_PATH, "vo/announcer_am_capincite0%i.wav", GetRandomInt(0, 1) ? 1:3);
            EmitSoundToAll(s);
        }

        SetControlPoint(true);
        PointReady = true;
    }

    return Plugin_Continue;
}

public Action:event_hurt(Handle:event, const String:name[], bool:dontBroadcast)
{
    if (!Enabled) return Plugin_Continue;

    new client = GetClientOfUserId(GetEventInt(event, "userid"));
    new attacker = GetClientOfUserId(GetEventInt(event, "attacker"));
    new damage = GetEventInt(event, "damageamount");
    new custom = GetEventInt(event, "custom");
    new weapon = GetEventInt(event, "weaponid");
    new bool:bIsCrit = GetEventBool(event, "crit");
    new bool:bIsMini = GetEventBool(event, "minicrit");

    if (!Boss_IsClientHale(client) || !IsValidClient(attacker) || !IsValidClient(client) || client == attacker) // || custom == TF_CUSTOM_BACKSTAB)
    {
        return Plugin_Continue;
    }

    if (custom == TF_CUSTOM_TELEFRAG) damage = (IsPlayerAlive(attacker) ? 9001:1);

    if (bIsMini && GetEventBool(event, "allseecrit"))
    {
        SetEventBool(event, "allseecrit", false);
    }

    if (weapon == TF_WEAPON_SHOTGUN_HWG || custom == TF_CUSTOM_TAUNT_HIGH_NOON)         //Vampire/Ignition Shotguns
    {
        new health = GetClientHealth(attacker);
        new max = GetEntProp(attacker, Prop_Data, "m_iMaxHealth") + 1200;
        new newhealth = health + damage;

        if (health < max)
        {
            if (newhealth > max)
            {
                newhealth = max;
            }

            SetEntProp(attacker, Prop_Data, "m_iHealth", newhealth);
            SetEntProp(attacker, Prop_Send, "m_iHealth", newhealth);
        }
    }

    // Tank Goodness
    if (IsIndexActive(attacker, 850))
    {
        new health = GetClientHealth(attacker);
        new max = GetEntProp(attacker, Prop_Data, "m_iMaxHealth");
        new newhealth = health + RoundFloat(float(damage)/2.0);

        if (health < max)
        {
            if (newhealth > max)
            {
                newhealth = max;
            }

            SetEntProp(attacker, Prop_Data, "m_iHealth", newhealth);
            SetEntProp(attacker, Prop_Send, "m_iHealth", newhealth);
        }
    }

    if (weapon == TF_WEAPON_SHOTGUN_PYRO && (((bIsCrit || bIsMini) && damage >= 64) || (!bIsCrit && !bIsMini && damage >= 50))) TF2_IgnitePlayer(client, attacker);

    if ((RedAlivePlayers == 1 || IsAnyUber(attacker)) && TF2_GetPlayerClass(attacker) == TFClass_Soldier && custom == TF_CUSTOM_PLASMA && damage >= 10) TF2_IgnitePlayer(client, attacker);

    if (GetEventBool(event, "minicrit") && GetEventBool(event, "allseecrit"))
    {
        SetEventBool(event, "allseecrit", false);
    }

    HaleHealth -= damage;
    HaleRage += damage;

    if (custom == TF_CUSTOM_TELEFRAG) SetEventInt(event, "damageamount", damage);

    Damage[attacker] += damage;

    if (TF2_GetPlayerClass(attacker) == TFClass_Soldier && GetIndexOfWeaponSlot(attacker, TFWeaponSlot_Primary) == 1104)
    {
        if (weapon == TF_WEAPON_ROCKETLAUNCHER)
        {
            AirDamage[attacker] += damage;
        }

        SetEntProp(attacker, Prop_Send, "m_iDecapitations", AirDamage[attacker]/200);
    }

    new healers[MAXPLAYERS];
    new healercount = 0;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && IsPlayerAlive(i) && (GetHealingTarget(i) == attacker))
        {
            healers[healercount] = i;
            healercount++;
        }
    }

    for (new i = 0; i < healercount; i++)
    {
        if (IsValidClient(healers[i]) && IsPlayerAlive(healers[i]))
        {
            if (damage < 10 || uberTarget[healers[i]] == attacker)
            {
                Damage[healers[i]] += damage;
            }
            else
            {
                Damage[healers[i]] += damage/(healercount+1);
            }
        }
    }

    if (HaleRage > Boss_GetRageDamage())
    {
        HaleRage = Boss_GetRageDamage();
    }

    return Plugin_Continue;
}

public Action:CapResetDMG(Handle:timer)
{
    SetControlPoint(true);
    hCapResetDMG = INVALID_HANDLE;
}

public Action:OnTakeDamage(iVictim, &iAtker, &iInflictor, &Float:flDamage, &iDmgType, &iWeapon, Float:vDmgForce[3], Float:vDmgPos[3], iDmgCustom)
{
    if (!Enabled || !IsValidEdict(iAtker) || !IsValidClient(iVictim) || IsMediUber(iVictim) || TF2_IsPlayerInCondition(iVictim, TFCond_UberchargedCanteen) || TF2_IsPlayerInCondition(iVictim, TFCond_Bonked))
    {
        if (IsMediUber(iVictim))
        {
            CPrintToChdata("player was uber ontakedamge");
        }
        else if (TF2_IsPlayerInCondition(iVictim, TFCond_Bonked))
        {
            CPrintToChdata("player was bonk ontakedamge");
        }
        return Plugin_Continue;
    }

    if ((iAtker < 0) && (Boss_IsClientHale(iVictim)))
    {
        CPrintToChdata("iAtker < 0 versus hale");
        return Plugin_Continue;
    }

    if (iAtker == 0 && (iDmgType & DMG_FALL) && Boss_IsClientHale(iVictim))
    {
        flDamage = (HaleHealth>32)?1.0:32.0;
        return Plugin_Changed;
    }  

    // Noone can hurt each other during round start
    if (Boss_IsRoundState(ROUNDSTATE_WAITING) && iVictim != iAtker)
    {
        flDamage = 0.0;

        return Plugin_Changed;
    }

    //Reset cap point and lock it for 5 seconds if anyone hurts anyone (but themselves)
    if (iAtker > 0 && iAtker <= MaxClients && iAtker != iVictim)
    {
        AliveToEnable = GetConVarInt(cvarAliveToEnable);

        if (!PointType && (RedAlivePlayers <= AliveToEnable) && hCapResetDMG == INVALID_HANDLE)
        {
            SetControlPoint(false);

            hCapResetDMG = CreateTimer(5.0, CapResetDMG, TIMER_FLAG_NO_MAPCHANGE);
        }
        else if (RedAlivePlayers > AliveToEnable)
        {
            SetControlPoint(false);
        }
    }

    decl Float:vPos[3];
    GetEntPropVector(iAtker, Prop_Send, "m_vecOrigin", vPos);

    // Set up return
    new Action:aReturn = Plugin_Continue;

    if (Boss_IsClientHale(iAtker) && !Boss_IsClientHale(iVictim))
    {
        // When Hale attacks a player
        aReturn = ActionApply(aReturn, PlayerOnTakeDamage(iVictim, iAtker, iInflictor, flDamage, iDmgType, iWeapon, vDmgForce, vDmgPos, iDmgCustom, vPos));
    }
    else if (!Boss_IsClientHale(iAtker) && Boss_IsClientHale(iVictim))
    {
        // When a player attacks Hale
        aReturn = ActionApply(aReturn, HaleOnTakeDamage(iVictim, iAtker, iInflictor, flDamage, iDmgType, iWeapon, vDmgForce, vDmgPos, iDmgCustom, vPos));
    }
    else if (iAtker == 0 && (iDmgType & DMG_FALL) && !Boss_IsClientHale(iVictim))
    {
        // When a player takes fall damage
        new TFClassType:iClass = TF2_GetPlayerClass(iVictim);
        if ((iClass == TFClass_Soldier || iClass == TFClass_DemoMan))
        {
            new item = GetPlayerWeaponSlot(iVictim, (iClass == TFClass_DemoMan ? TFWeaponSlot_Primary:TFWeaponSlot_Secondary));

            if (item <= 0 || !IsValidEntity(item))
            {
                flDamage /= 10.0;

                return Plugin_Changed;
            }
        }
    }
    else if (iAtker == iVictim)
    {
        // Someone hurts themselves
        if (g_bBzFull[iVictim] && IsWeaponSlotActive(iVictim, TFWeaponSlot_Primary))
        {
            new wBazoka = GetPlayerWeaponSlot(iVictim, TFWeaponSlot_Primary);
            SetEntProp(wBazoka, Prop_Data, "m_iClip1", 3);
        }
    }

    return aReturn;
}

Action:ActionApply(Action:aPrevious, Action:aNew)
{
    if (aNew != Plugin_Continue) aPrevious = aNew;
    return aPrevious;
}

/*
iVictim is a live player
iAtker is the boss

*/
public Action:PlayerOnTakeDamage(iVictim, &iAtker, &iInflictor, &Float:flDamage, &iDmgType, &iWeapon, Float:vDmgForce[3], Float:vDmgPos[3], iDmgCustom, Float:vPos[3])
{
    if (Special == VSHSpecial_Guard)
    {
        return Plugin_Continue;
    }
    //If Hale got a punch while in midair after super jumping vs a midair target...
    /*if (HaleSuperJumpStatus && !(GetEntityFlags(iVictim) & (FL_INWATER | FL_ONGROUND)) && (DistanceAboveGround(iVictim) >= 85.0))
    {
        if (iDmgCustom != TF_CUSTOM_BOOTS_STOMP)
        {
            PrintCenterText(iAtker, "You market gardened him!");
            PrintCenterText(iVictim, "You were just market gardened!");

            EmitSoundToClient(iVictim, "player/doubledonk.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.6, 100, _, vPos, NULL_VECTOR, false, 0.0);
            EmitSoundToClient(iAtker, "player/doubledonk.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.6, 100, _, vPos, NULL_VECTOR, false, 0.0);
        }
        else
        {
            PrintCenterText(iAtker, "You midair stomped him!");
            PrintCenterText(iVictim, "You were just midair stomped!");
        }
    }*/

    if (iDmgCustom == TF_CUSTOM_BOOTS_STOMP)
    {
        flDamage = (GetClientCloakIndex(iVictim)==60) ? 4800.0 : 480.0;
        return Plugin_Changed;
    }

    new bool:bChanged = false;

    if (Special == VSHSpecial_Nue)
    {
        bChanged = true;
        if (iDmgCustom == TF_CUSTOM_BACKSTAB)
        {
            if (!Nue_IsRageActive())
            {
                iDmgType &= ~DMG_CRIT;
                flDamage = 202.0;
            }
            else
            {
                iDmgType |= DMG_CRIT;
                Nue_SetBackstabbed(true);
            }
        }
        else // if (bNueRageActive)
        {
            if (!Nue_IsRageActive())
            {
                flDamage = 202.0;
            }
            else
            {
                flDamage = 120.0;
            }
            Nue_SetBackstabbed(false);
        }
    }

    // Battalion's Backup Buff
    if (TF2_IsPlayerInCondition(iVictim, TFCond_DefenseBuffed) && !Nue_IsBackstabbed())
    {
        ScaleVector(vDmgForce, 9.0);
        flDamage *= 0.3;

        return Plugin_Changed;
    }

    // Phlog during taunt
    if (TF2_IsPlayerInCondition(iVictim, TFCond_DefenseBuffMmmph))
    {
        flDamage *= 9;
        TF2_AddCondition(iVictim, TFCond_Bonked, 0.1);

        return Plugin_Changed;
    }

    // Phlog during CritMmmph
    if (TF2_IsPlayerInCondition(iVictim, TFCond_CritMmmph) && !Nue_IsBackstabbed())
    {
        flDamage *= 0.25;

        return Plugin_Changed;
    }

    // Vaccinator healing target is hit
    for (new iHealer = 1; iHealer <= MaxClients; iHealer++)
    {
        if (IsValidClient(iHealer) && IsPlayerAlive(iHealer) && GetHealingTarget(iHealer) == iVictim && IsIndexActive(iHealer, 998))
        {
            // Melee damage is explosive
            if (iDmgType & DMG_CLUB)
            {
                iDmgType |= DMG_BLAST;
                bChanged = true;
            }

            // The healer gains overheal based on the damage the healtarget takes
            new iHealth = GetClientHealth(iHealer);
            //new iMax = GetEntProp(iHealer, Prop_Data, "m_iMaxHealth") + 75;
            new iNewHealth = iHealth + RoundToCeil(flDamage*0.25);

            if (iHealth < 225)
            {
                if (iNewHealth > 225) iNewHealth = 225;

                SetEntProp(iHealer, Prop_Data, "m_iHealth", iNewHealth);
                SetEntProp(iHealer, Prop_Send, "m_iHealth", iNewHealth);
            }

            /*damage *= 0.9;

            if (TF2_IsPlayerInCondition(client, TFCond_UberBlastResist))
            {
                damage *= 0.25;
            }*/
        }
    }

    // Vaccinator using medic is hit
    if (TF2_GetPlayerClass(iVictim) == TFClass_Medic)   //The Vaccinator
    {
        if (GetIndexOfWeaponSlot(iVictim, TFWeaponSlot_Secondary) == 998)
        {
            // Melee damage is explosive
            if (iDmgType & DMG_CLUB)
            {
                iDmgType |= DMG_BLAST;
            }
            /*new healtarget = GetHealingTarget(iVictim);
            if (IsValidClient(healtarget) && IsPlayerAlive(healtarget) && !IsVacUber(iVictim))
            {
                damage *= 0.9;
            }

            if (TF2_IsPlayerInCondition(iVictim, TFCond_UberBlastResist))
            {
                damage *= 0.25;
            }*/
            return Plugin_Changed;
        }
    }

    // Break shield on all hits, or direct lemons.
    if ((!Nue_IsRageActive() && !Nue_IsBackstabbed()) && (Special != VSHSpecial_Cave || (Direct[iVictim] && DirectTime[iVictim] == GetGameTime())))
    {
        new ent;

        DOWHILE_ENTFOUND(ent, "tf_wearable_demoshield")
        {
            if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == iVictim && !GetEntProp(ent, Prop_Send, "m_bDisguiseWearable"))
            {
                TF2_RemoveWearable(iVictim, ent);

                EmitSoundToClient(iVictim, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);
                EmitSoundToClient(iAtker, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);
                //EmitSoundToClient(iVictim, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);
                //EmitSoundToClient(iAtker, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);

                TF2_AddCondition(iVictim, TFCond_Bonked, 0.1);
                TF2_AddCondition(iVictim, TFCond_SpeedBuffAlly, 1.0);

                Direct[iVictim] = false;

                return Plugin_Continue;
            }
        }

    }

    //Direct[iVictim] = false;

    if (TF2_GetPlayerClass(iVictim) == TFClass_Spy)
    {
        if (GetEntProp(iVictim, Prop_Send, "m_bFeignDeathReady") || TF2_IsPlayerInCondition(iVictim, TFCond_DeadRingered))
        {
            if (iDmgType & DMG_CRIT)
            {
                iDmgType &= ~DMG_CRIT;
            }

            new clk = GetClientCloakIndex(iVictim);

            if (iDmgType & DMG_CLUB)
            {
                flDamage = (clk == 59) ? 620.0 : (clk == 60) ? 2020.0 : 850.0;
            }
            else if (clk == 60)
            {
                flDamage *= 10.0; 
            }

            return Plugin_Changed;
        }
    }

    if (IsIndexActive(iVictim, 312) && GetEntProp(GetPlayerWeaponSlot(iVictim, TFWeaponSlot_Primary), Prop_Send, "m_iWeaponState") >= 2 && !Nue_IsBackstabbed())
    {
        flDamage *= 0.5; // Brass beast has 50% damage reduction while deployed
        return Plugin_Changed;
    }

    if (GetIndexOfWeaponSlot(iVictim, TFWeaponSlot_Secondary) == 226 && !TF2_IsPlayerInCondition(iVictim, TFCond_DefenseBuffed))
    {
        new Float:iAdd = GetEntPropFloat(iVictim, Prop_Send, "m_flRageMeter") + flDamage;
        if (iAdd > 100.0) iAdd = 100.0;
        SetEntPropFloat(iVictim, Prop_Send, "m_flRageMeter", iAdd);
    }

    if (flDamage <= 160.0 && (Special != VSHSpecial_Cave) && !(Special == VSHSpecial_CBS && iInflictor != iAtker) && (Special != VSHSpecial_Bunny || iWeapon == -1 || iWeapon == GetPlayerWeaponSlot(Boss_GetBossClient(), TFWeaponSlot_Melee)))
    {
        CPrintToChdata("160 damage thing");
        if (Special != VSHSpecial_Nue) flDamage *= 3;

        return Plugin_Changed;
    }

    if (bChanged) return Plugin_Changed;

    return Plugin_Continue;
}

/*
iVictim is the boss
iAtker is a live player or trigger_hurt

*/
public Action:HaleOnTakeDamage(iVictim, &iAtker, &iInflictor, &Float:flDamage, &iDmgType, &iWeapon, Float:vDmgForce[3], Float:vDmgPos[3], iDmgCustom, Float:vPos[3])
{
    new Hale = Boss_GetBossClient();
    new bChanged = false;
    new iFlags = GetEntityFlags(Hale);

    // Hale's anchor ability - crouchwalk on the ground negates knockback
    if (!(iDmgType & DMG_BLAST) && (iFlags & (FL_ONGROUND|FL_DUCKING)) == (FL_ONGROUND|FL_DUCKING))    
    {
        TF2Attrib_SetByName(Hale, "damage force reduction", 0.0);
        //iDmgType |= DMG_PREVENT_PHYSICS_FORCE;
        bChanged = true;
    }
    else
    {
        TF2Attrib_RemoveByName(Hale, "damage force reduction");
    }

    if (IsValidClient(iAtker))
    {
        if (Special == VSHSpecial_Guard)
        {
            flDamage = 0.0;
            return Plugin_Changed;
        }

        new iWepIndex = (IsValidEntity(iWeapon) && iWeapon > MaxClients ? GetEntProp(iWeapon, Prop_Send, "m_iItemDefinitionIndex"):-1);

        if (iInflictor == iAtker || iInflictor == iWeapon)
        {
            /*if ((iDmgType & DMG_CLUB) && TF2_GetPlayerClass(iAtker) == TFClass_Engineer)
            {
                if (GetRandomInt(0, 1))
                {
                    EmitSoundToAll("weapons/wrench_hit_build_success1.wav", iVictim);
                }
                else
                {
                    EmitSoundToAll("weapons/wrench_hit_build_success2.wav", iVictim);
                }
            }*/

            if (iDmgCustom == TF_CUSTOM_BOOTS_STOMP)
            {
                flDamage = 574.0; //1024.0;

                return Plugin_Changed;
            }

            if (iDmgCustom == TF_CUSTOM_TELEFRAG)
            {
                if (!IsPlayerAlive(iAtker))
                {
                    flDamage = 1.0;

                    return Plugin_Changed;
                }

                flDamage = 9001.0;

                new teleowner = FindTeleOwner(iAtker);

                if (IsValidClient(teleowner) && teleowner != iAtker)
                {
                    Damage[teleowner] += 5401; //RoundFloat(9001.0 * 3 / 5);
                    PrintCenterText(teleowner, "TELEFRAG ASSIST! Nice job setting up!");
                }

                PrintCenterText(iAtker, "TELEFRAG! You are a pro.");
                PrintCenterText(iVictim, "TELEFRAG! Be careful around quantum tunneling devices!");

                return Plugin_Changed;
            }

            new bool:ministatus = (TF2_IsPlayerInCondition(iAtker, TFCond_CritCola) || TF2_IsPlayerInCondition(iAtker, TFCond_Buffed)); // || TF2_IsPlayerInCondition(iAtker, TFCond_CritHype));


            switch (iWepIndex)
            {
                case 593: //Third Degree
                {
                    new healers[MAXPLAYERS];
                    new healercount = 0;

                    for (new i = 1; i <= MaxClients; i++)
                    {
                        if (IsValidClient(i) && IsPlayerAlive(i) && (GetHealingTarget(i) == iAtker))
                        {
                            healers[healercount] = i;
                            healercount++;
                        }
                    }

                    for (new i = 0; i < healercount; i++)
                    {
                        if (IsValidClient(healers[i]) && IsPlayerAlive(healers[i]))
                        {
                            new medigun = GetPlayerWeaponSlot(healers[i], TFWeaponSlot_Secondary);

                            if (IsValidEntity(medigun))
                            {
                                new String:s[64];

                                GetEdictClassname(medigun, s, sizeof(s));

                                if (strcmp(s, "tf_weapon_medigun", false) == 0)
                                {
                                    new Float:uber = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel") + (0.1 / healercount);
                                    new Float:max = 1.0;

                                    if (GetEntProp(medigun, Prop_Send, "m_bChargeRelease"))
                                    {
                                        max = 1.5;
                                    }

                                    if (uber > max)
                                    {
                                        uber = max;
                                    }

                                    SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", uber);
                                }
                            }
                        }
                    }
                }
                case 648: //Wrap assassin
                {
                    decl String:nflictor[128];
                    GetEdictClassname(iInflictor, nflictor, sizeof(nflictor));

                    if (StrEqual(nflictor, "tf_weapon_bat_giftwrap", false))
                    {
                        flDamage *= 6.66;
                        return Plugin_Changed;
                    }
                }
                case 812, 833: // Mittens / Holiday Punch
                {
                    if (TF2_IsPlayerInCondition(iVictim, TFCond_Dazed))
                    {
                        flDamage *= 3.0;
                        return Plugin_Changed;
                    }
                }
                case 43: // Killing Gloves of Boxing
                {
                    TF2_AddCondition(iAtker, TFCond_CritOnKill, 5.0);
                }
                case 447: // The Disciplinary Action
                {
                    TF2_AddCondition(iAtker, TFCond_SpeedBuffAlly, 4.0);
                }
                case 14, 201, 230, 402, 526, 664, 792, 801, 851, 881, 890, 899, 908, 957, 966, 1098: // 752,
                {
                    switch (iWepIndex) // Stock sniper rifle highlights Hale
                    {
                        case 14, 201, 664, 792, 801, 851, 881, 890, 899, 908, 957, 966:
                        {
                            if (!Boss_IsRoundState(ROUNDSTATE_END) && !Nue_IsRageActive())
                            {
                                new Float:chargelevel = (IsValidEntity(iWeapon) && iWeapon > MaxClients ? GetEntPropFloat(iWeapon, Prop_Send, "m_flChargedDamage"):0.0);
                                new Float:time = (GlowTimer > 10 ? 1.0:2.0);

                                time += (GlowTimer > 10 ? (GlowTimer > 20 ? 1:2):4)*(chargelevel / 100);
                                SetEntProp(iVictim, Prop_Send, "m_bGlowEnabled", 1);
                                GlowTimer += RoundToCeil(time);

                                if (GlowTimer > 30.0)
                                {
                                    GlowTimer = 30.0;
                                }
                            }
                        }
                    }

                    if (iWepIndex == 402 && Boss_IsRoundState(ROUNDSTATE_ACTIVE))
                    {
                        bBazaarHit[iAtker] = true;

                        if (iDmgCustom != TF_CUSTOM_HEADSHOT && TF2_IsPlayerInCondition(iAtker, TFCond_Zoomed))
                        {
                            new decapitations = GetEntProp(iAtker, Prop_Send, "m_iDecapitations");
                            new decaps = (decapitations == 0) ? 0:(decapitations-1);
                            SetDecapitations(iAtker, decaps);
                        }
                    }

                    if (!(iDmgType & DMG_CRIT))
                    {
                        flDamage *= (ministatus) ? 2.222222 : 3.0;

                        if (iWepIndex == 230)
                        {
                            HaleRage -= RoundFloat(flDamage/2.0);
                            if (HaleRage < 0) HaleRage = 0;
                        }

                        return Plugin_Changed;
                    }
                    else if (iWepIndex == 230)
                    {
                        HaleRage -= RoundFloat(flDamage*3.0/2.0);
                        if (HaleRage < 0) HaleRage = 0;
                    }

                    return Plugin_Continue;
                }
                case 355: // Fan O'War
                {
                    new Float:rage = 0.05 * Boss_GetRageDamage();
                    HaleRage -= RoundToFloor(rage);
                    if (HaleRage < 0) HaleRage = 0;
                    return Plugin_Continue;
                }
                case 588:       //Pomson generates half the rage than usual
                {
                    if (!(iDmgType & DMG_CRIT))
                    {
                        HaleRage -= (ministatus) ? RoundFloat(flDamage*1.111111) : RoundFloat(flDamage/2.0);
                    }
                    else
                    {
                        HaleRage -= RoundFloat(flDamage*3.0/2.0);
                    }

                    if (HaleRage < 0) HaleRage = 0;

                    return Plugin_Continue;
                }
                case 9, 199, 141, 1004:    //Engineer shotgun
                {
                    if (TF2_GetPlayerClass(iAtker) == TFClass_Engineer)
                    {
                        //decl String:nflictor[48];
                        //GetEdictClassname(iInflictor, nflictor, sizeof(nflictor));

                        //if (strcmp(nflictor, "player", false))   //This is so sentries can't give you metal
                        //{
                        new addon;
                        if (!(iDmgType & DMG_CRIT))
                        {
                            addon = ministatus ? RoundFloat(flDamage*0.675) : RoundFloat(flDamage/2.0);
                        }
                        else addon = RoundFloat(flDamage*1.5);

                        new metal = GetEntProp(iAtker, Prop_Data, "m_iAmmo", _, 3) + addon;
                        if (metal > 200) metal = 200;
                        SetEntProp(iAtker, Prop_Data, "m_iAmmo", metal, 4, 3);
                        //}
                    }
                    return Plugin_Continue;
                }
                case 527:   //The Widowmaker
                {
                    if (TF2_GetPlayerClass(iAtker) == TFClass_Engineer)
                    {
                        //decl String:nflictor[48];
                        //GetEdictClassname(iInflictor, nflictor, sizeof(nflictor));

                        //if (strcmp(nflictor, "player", false))   //This is so sentries can't give you metal
                        //{
                        new metal = GetEntProp(iAtker, Prop_Data, "m_iAmmo", _, 3);

                        if (metal >= 200)
                        {
                            new addon;
                            if (!(iDmgType & DMG_CRIT))
                            {
                                addon = ministatus ? RoundFloat(flDamage*1.35) : RoundFloat(flDamage);
                            }
                            else addon = RoundFloat(flDamage*3.0);

                            metal += addon;
                        }

                        if (metal > 542) metal = 542;
                        SetEntProp(iAtker, Prop_Data, "m_iAmmo", metal, 4, 3);
                        //}
                    }
                    return Plugin_Continue;
                }
                case 132, 266, 482, 1082:
                {
                    IncrementHeadCount(iAtker);
                    return Plugin_Continue;
                }
                /*case 474:
                {
                    if (TF2_GetPlayerClass(iAtker) == TFClass_DemoMan)
                    {
                        IncrementHeadCount(iAtker);
                    }
                }*/
                case 317: // Candy Cane
                {
                    SpawnSmallHealthPackAt(iVictim, GetClientTeam(iAtker));
                    return Plugin_Continue;
                }
                case 214: // Powerjack
                {
                    new health = GetClientHealth(iAtker);
                    new max = GetEntProp(iAtker, Prop_Data, "m_iMaxHealth") + 50;
                    new newhealth = health + 25;
                    if (health < max)
                    {
                        if (newhealth > max)
                        {
                            newhealth = max;
                        }

                        SetEntProp(iAtker, Prop_Data, "m_iHealth", newhealth);
                        SetEntProp(iAtker, Prop_Send, "m_iHealth", newhealth);
                    }
                    if (TF2_IsPlayerInCondition(iAtker, TFCond_OnFire))
                    {
                        TF2_RemoveCondition(iAtker, TFCond_OnFire);
                    }
                    return Plugin_Continue;
                }
                case 594: // Phlog
                {
                    if (!TF2_IsPlayerInCondition(iAtker, TFCond_CritMmmph))
                    {
                        flDamage /= 2.0;
                        return Plugin_Changed;
                    }
                    return Plugin_Continue;
                }
                case 36:    //The Blutsauger
                {
                    new health = GetClientHealth(iAtker);
                    new max = GetEntProp(iAtker, Prop_Data, "m_iMaxHealth");

                    if (health >= max)
                    {
                        new newhealth = health + 9;

                        if (newhealth > (max + 75)) newhealth = (max + 75);

                        SetEntProp(iAtker, Prop_Data, "m_iHealth", newhealth);
                        SetEntProp(iAtker, Prop_Send, "m_iHealth", newhealth);
                    }

                    if (!IsMediUber(iAtker))
                    {
                        return Plugin_Continue;
                    }

                    if (StrEqual(g_sCurrentMap, "vsh_dustshowdown_new", false) || StrEqual(g_sCurrentMap, "vsh_dust_showdown_final1", false))
                    {
                        new medigun = GetPlayerWeaponSlot(iAtker, TFWeaponSlot_Secondary);
                        new Float:charge = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel")-0.02;
                        //if (charge < 0) charge = 0;
                        SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", charge);
                    }
                    return Plugin_Continue;
                }
                case 17, 204: // Syringe guns
                {
                    if (!IsMediUber(iAtker))
                    {
                        return Plugin_Continue;
                    }

                    if (StrEqual(g_sCurrentMap, "vsh_dustshowdown_new", false) || StrEqual(g_sCurrentMap, "vsh_dust_showdown_final1", false))
                    {
                        new medigun = GetPlayerWeaponSlot(iAtker, TFWeaponSlot_Secondary);
                        new Float:charge = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel")-0.05;
                        SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", charge);
                    }
                    return Plugin_Continue;
                }
                case 305, 1079: // Crossbows
                {
                    if (!IsMediUber(iAtker))
                    {
                        return Plugin_Continue;
                    }

                    if (StrEqual(g_sCurrentMap, "vsh_dustshowdown_new", false) || StrEqual(g_sCurrentMap, "vsh_dust_showdown_final1", false))
                    {
                        new medigun = GetPlayerWeaponSlot(iAtker, TFWeaponSlot_Secondary);
                        new Float:charge = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel")-0.16;
                        SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", charge);
                    }
                    return Plugin_Continue;
                }
                case 37, 173, 304, 1003: // Ubersaws
                {
                    if (!IsMediUber(iAtker))
                    {
                        return Plugin_Continue;
                    }

                    if (StrEqual(g_sCurrentMap, "vsh_dustshowdown_new", false) || StrEqual(g_sCurrentMap, "vsh_dust_showdown_final1", false))
                    {
                        new medigun = GetPlayerWeaponSlot(iAtker, TFWeaponSlot_Secondary);
                        new Float:charge = GetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel")-0.25;
                        SetEntPropFloat(medigun, Prop_Send, "m_flChargeLevel", charge);
                    }
                    return Plugin_Continue;
                }
                case 357: // Zatoichi
                {
                    // Note: You may still appear to have rage even if the defense buff disappears
                    if (GetIndexOfWeaponSlot(iAtker, TFWeaponSlot_Secondary) == 226 && TF2_IsPlayerInCondition(iAtker, TFCond_DefenseBuffed))
                    {
                        new Float:iAdd = GetEntPropFloat(iAtker, Prop_Send, "m_flRageMeter") + 10.0; //19.5
                        if (iAdd > 100.0) iAdd = 100.0;
                        TF2_AddCondition(iAtker, TFCond_DefenseBuffed, iAdd/10.0);
                        SetEntPropFloat(iAtker, Prop_Send, "m_flRageMeter", iAdd);
                    }

                    SetEntProp(iWeapon, Prop_Send, "m_bIsBloody", 1);

                    if (GetEntProp(iAtker, Prop_Send, "m_iKillCountSinceLastDeploy") < 1)
                    {
                        SetEntProp(iAtker, Prop_Send, "m_iKillCountSinceLastDeploy", 1);
                    }

                    new health = GetClientHealth(iAtker);
                    //new max = GetEntProp(iAtker, Prop_Data, "m_iMaxHealth");
                    new newhealth = health + 35;

                    /*if (health < max + 25) // If we aren't at max health yet, add health via below
                    {
                        if (newhealth > max + 25) // If the health we are going to add exceeds our max health buff
                        {
                            newhealth = max + 25; // Set it to our max health
                        }*/

                    if (health < 250) // If we aren't at max health yet, add health via below
                    {
                        if (newhealth > 250) // If the health we are going to add exceeds our max health buff
                        {
                            newhealth = 250; // Set it to our max health
                        }

                        // If it's a soldier with batt's backup, you can't really get overheal from it anymore.

                        SetEntProp(iAtker, Prop_Data, "m_iHealth", newhealth);
                        SetEntProp(iAtker, Prop_Send, "m_iHealth", newhealth);
                    }

                    if (TF2_IsPlayerInCondition(iAtker, TFCond_OnFire))
                    {
                        TF2_RemoveCondition(iAtker, TFCond_OnFire);
                    }
                    return Plugin_Continue;
                }
                case 128, 775:      //The Equalizer
                {
                    new Float:health = float(GetClientHealth(iAtker));
                    flDamage = (health<=200.0) ? (107.25 - 0.37295*health) : 32.66;
                    return Plugin_Changed;
                }
                case 416:           //Market Gardener
                {
                    if (GetRJFlag(iAtker))
                    {
                        //if ((GetEntProp(iVictim, Prop_Send, "m_iStunFlags") & TF_STUNFLAGS_GHOSTSCARE | TF_STUNFLAG_NOSOUNDOREFFECT) && Special == VSHSpecial_HHH) return Plugin_Continue;
                        // TFCond_Dazed

                        flDamage = (Pow(float(Boss_GetMaxHP()), (0.74074)) + 512.0 - (Marketed/128*float(Boss_GetMaxHP())) )/3.0;    //divide by 3 because this is basedamage and lolcrits (0.714286)) + 1024.0)
                        iDmgType |= DMG_CRIT;

                        if (Marketed < 5) Marketed++;

                        PrintCenterText(iAtker, (Special == VSHSpecial_Nue) ? "You market gardened her!" : "You market gardened him!");
                        PrintCenterText(iVictim, "You were just market gardened!");

                        EmitSoundToClient(iVictim, "player/doubledonk.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.6, 100, _, vPos, NULL_VECTOR, false, 0.0);
                        EmitSoundToClient(iAtker, "player/doubledonk.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.6, 100, _, vPos, NULL_VECTOR, false, 0.0);

                        return Plugin_Changed;
                    }
                }
                case 38, 349, 457, 739, 1000, 813, 834:            //Axtinguisher/Sun on a Stick/Neon Annihilator do bonus damage to burning targets
                {
                    if (TF2_IsPlayerInCondition(iVictim, TFCond_OnFire))
                    {
                        flDamage *= 1.6;
                        return Plugin_Changed;
                    }
                    return Plugin_Continue;
                }
                case 441: // Cow Mangler
                {
                    if (iDmgCustom == TF_CUSTOM_PLASMA_CHARGED)
                    {
                        flDamage *= 2.222222;
                        return Plugin_Changed;
                    }
                    return Plugin_Continue;
                }
                case 525, 595:
                {
                    new iCrits = GetEntProp(iAtker, Prop_Send, "m_iRevengeCrits");

                    if (iCrits > 0) //If a revenge crit was used, give a damage bonus
                    {
                        flDamage = 85.0;
                        return Plugin_Changed;
                    }
                    return Plugin_Continue;
                }
                case 528:
                {
                    if (circuitStun > 0.0)
                    {
                        TF2_StunPlayer(iVictim, circuitStun, 0.0, TF_STUNFLAGS_SMALLBONK | TF_STUNFLAG_NOSOUNDOREFFECT, iAtker);
                        EmitSoundToAll("iWeapons/barret_arm_zap.wav", iVictim);
                        EmitSoundToClient(iVictim, "weapons/barret_arm_zap.wav");
                    }
                    return Plugin_Continue;
                }
                case 656: // Mittens / Holiay Punch
                {
                    CreateTimer(0.1, Timer_StopTickle, GetClientUserId(iVictim), TIMER_FLAG_NO_MAPCHANGE);

                    if (TF2_IsPlayerInCondition(iAtker, TFCond_Dazed))
                    {
                        TF2_RemoveCondition(iAtker, TFCond_Dazed);
                    }
                    return Plugin_Continue;
                }
            }

            if (iDmgCustom == TF_CUSTOM_BACKSTAB)
            {
                /*
                 Formula: dmg = (MaxHp*0.0014)^2 + 899.0 - MaxHp*stabbed/100
                 
                 HaleHP Min: 2048 Max: 35541
                 Stabby Min: 907  Max: 3375

                 EDIT: Nevermind the linear formula, it's OP. (12k hp hale - hits 1.6k instead of 1.2k)
                */
                //HaleHealthMax*(0.12 - Stabbed / 90);
                //new Float:changedamage = (float(HaleHealthMax)*0.073687) + 756.089024 - float(HaleHealthMax)*(Stabbed/100);
                
                new Float:changedamage = ( (Pow(float(Boss_GetMaxHP())*0.0014, 2.0) + 899.0) - (float(Boss_GetMaxHP())*(Stabbed/100)) );
                //new iChangeDamage = RoundFloat(changedamage);
                //Damage[iAtker] += iChangeDamage;

                /*if (HaleHealth > iChangeDamage)
                {
                    flDamage = 0.0;
                }
                else
                {*/
                flDamage = changedamage/3;            // You can level "damage dealt" with backstabs
                iDmgType |= DMG_CRIT;

                /*}

                HaleHealth -= iChangeDamage;
                HaleRage += iChangeDamage;

                if (HaleRage > RageDMG)
                {
                    HaleRage = RageDMG;
                }*/

                EmitSoundToClient(iVictim, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);
                EmitSoundToClient(iAtker, "player/spy_shield_break.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, vPos, NULL_VECTOR, false, 0.0);
                EmitSoundToClient(iVictim, "player/crit_received3.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, _, NULL_VECTOR, false, 0.0);
                EmitSoundToClient(iAtker, "player/crit_received3.wav", _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, 0.7, 100, _, _, NULL_VECTOR, false, 0.0);

                SetEntPropFloat(iWeapon, Prop_Send, "m_flNextPrimaryAttack", GetGameTime() + 2.0); //Commenting this allows quickstabs
                SetEntPropFloat(iAtker, Prop_Send, "m_flNextAttack", GetGameTime() + 2.0);
                SetEntPropFloat(iAtker, Prop_Send, "m_flStealthNextChangeTime", GetGameTime() + 2.0);

                new vm = GetEntPropEnt(iAtker, Prop_Send, "m_hViewModel");

                if (vm > MaxClients && IsValidEntity(vm) && TF2_GetPlayerClass(iAtker) == TFClass_Spy)
                {
                    new melee = GetIndexOfWeaponSlot(iAtker, TFWeaponSlot_Melee);
                    new anim = 15;

                    switch (melee)
                    {
                        case 727:
                            anim = 41;
                        case 4, 194, 665, 794, 803, 883, 892, 901, 910:
                            anim = 10;
                        case 638:
                            anim = 31;
                    }

                    SetEntProp(vm, Prop_Send, "m_nSequence", anim);
                }

                PrintCenterText(iAtker, (Special == VSHSpecial_Nue) ? "You backstabbed her!" : "You backstabbed him!");
                PrintCenterText(iVictim, "You were just backstabbed!");

                new pistol = GetIndexOfWeaponSlot(iAtker, TFWeaponSlot_Primary);

                if (pistol == 525) //Diamondback gives 3 crits on backstab
                {
                    new iCrits = GetEntProp(iAtker, Prop_Send, "m_iRevengeCrits");
                    SetEntProp(iAtker, Prop_Send, "m_iRevengeCrits", iCrits+2);
                }

                /*if (iWepIndex == 225 || iWepIndex == 574) // YER random disguise
                {
                    CreateTimer(0.3, Timer_DisguiseBackstab, GetClientUserId(iAtker));
                }*/

                if (iWepIndex == 356)
                {
                    new health = GetClientHealth(iAtker) + 180;

                    if (health > 270)
                    {
                        health = 270;
                    }

                    SetEntProp(iAtker, Prop_Data, "m_iHealth", health);
                    SetEntProp(iAtker, Prop_Send, "m_iHealth", health);
                }

                if (iWepIndex == 461)    //Big Earner gives full cloak on backstab
                {
                    SetEntPropFloat(iAtker, Prop_Send, "m_flCloakMeter", 100.0);
                }

                decl String:s[PLATFORM_MAX_PATH];

                switch (Special)
                {
                    case VSHSpecial_Astro:
                    {
                        strcopy(s, PLATFORM_MAX_PATH, AstroStab);
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_Nue:
                    {
                        strcopy(s, PLATFORM_MAX_PATH, NueStab);
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_Hale:
                    {
                        Format(s, PLATFORM_MAX_PATH, "%s%i.wav", HaleStubbed132, GetRandomInt(1, 4));
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_Vagineer:
                    {
                        EmitSoundToAll("vo/engineer_positivevocalization01.wav", _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, "vo/engineer_positivevocalization01.wav", _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_HHH:
                    {
                        Format(s, PLATFORM_MAX_PATH, "vo/halloween_boss/knight_pain0%d.wav", GetRandomInt(1, 3));
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_Bunny:
                    {
                        EasterBunny_RandomPain(s, PLATFORM_MAX_PATH);
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_CBS:
                    {
                        CBS_RandomPain(s, PLATFORM_MAX_PATH);
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                    case VSHSpecial_Cave:
                    {
                        strcopy(s, PLATFORM_MAX_PATH, CaveStab);
                        EmitSoundToAll(s, _, SNDCHAN_VOICE, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                        EmitSoundToAllExcept(SOUNDEXCEPT_VOICE, s, _, SNDCHAN_ITEM, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, Hale, NULL_VECTOR, NULL_VECTOR, false, 0.0);
                    }
                }

                if (Stabbed < 4)
                {
                    Stabbed++;
                }

                return Plugin_Changed;
            }

            if (bChanged)
            {
                return Plugin_Changed;
            }
        }

        if (TF2_GetPlayerClass(iAtker) == TFClass_Scout)
        {
            if (iWepIndex == 45 || iWepIndex == 1078 || ((iWepIndex == 209 || iWepIndex == 294 || iWepIndex == 23 || iWepIndex == 160 || iWepIndex == 449) && (TF2_IsPlayerCritBuffed(iVictim) || TF2_IsPlayerInCondition(iVictim, TFCond_CritCola) || TF2_IsPlayerInCondition(iVictim, TFCond_Buffed))))
            {
                ScaleVector(vDmgForce, 0.38);

                return Plugin_Changed;
            }
        }
    }
    else
    {
        decl String:s[64];

        if (GetEdictClassname(iAtker, s, sizeof(s)) && strcmp(s, "trigger_hurt", false) == 0)
        {
            new iMapNum = Array_FindString(sTrigger_Teleport, sizeof(sTrigger_Teleport), g_sCurrentMap);
            if (iMapNum >= 0)
            {
                // Teleport the boss back to one of the spawns.
                // And during the first 30 seconds, he can only teleport to his own spawn.
                TeleportToSpawn(iVictim, (bTenSecStart[1]) ? HaleTeam : 0); //|| bTeam_Teleport[iMapNum]
                flDamage = 500.0;
            }
            else if (flDamage >= 250.0)
            {
                if (HaleCharge >= 0)
                {
                    bEnableSuperDuperJump = true;
                }
                else if (Special == VSHSpecial_HHH)
                {
                    HaleCharge += 50;
                    if (HaleCharge > HALEHHH_TELEPORTCHARGE)
                    {
                        HaleCharge = HALEHHH_TELEPORTCHARGE;
                    }
                }
            }

            new Float:flMaxDmg = float(Boss_GetMaxHP()) * 0.05;
            new Float:flUpperCap = (Special == VSHSpecial_Astro ? 250.0 : 500.0);
            if (flMaxDmg > flUpperCap)
            {
                flMaxDmg = flUpperCap;
            }

            if (flDamage > flMaxDmg)
            {
                flDamage = flMaxDmg;
            }

            if (StrEqual(g_sCurrentMap, "ph_cyberpunk_a3", false))
            {
                if (HaleCharge >= 0)
                {
                    bEnableSuperDuperJump = true;
                }
                else if (Special == VSHSpecial_HHH)
                {
                    HaleCharge += 50;
                    if (HaleCharge > HALEHHH_TELEPORTCHARGE)
                    {
                        HaleCharge = HALEHHH_TELEPORTCHARGE;
                    }
                }
            }

            HaleHealth -= RoundFloat(flDamage);
            HaleRage += RoundFloat(flDamage);

            if (HaleHealth <= 0)
            {
                flDamage *= 5;
            }

            if (HaleRage > Boss_GetRageDamage())
            {
                HaleRage = Boss_GetRageDamage();
            }

            return Plugin_Changed;
        }
    }
    if (bChanged) return Plugin_Changed;

    return Plugin_Continue;
}


// DistanceAboveGround(): Calculate a player's distance above the ground.
// Code borrowed from MGE Mod, thanks to Lange!
/*Float:DistanceAboveGround(client)
{
    decl Float:vStart[3];
    decl Float:vEnd[3];
    new Float:vAngles[3] = {90.0, 0.0, 0.0};
    new Handle:trace;
    new Float:distance = -1.0;

    // Get the client's origin vector and start up the trace ray
    GetClientAbsOrigin(client, vStart);
    trace = TR_TraceRayFilterEx(vStart, vAngles, MASK_SHOT, RayType_Infinite, TraceEntityFilterPlayer);

    if (TR_DidHit(trace))
    {
        // Calculate the distance.
        TR_GetEndPosition(vEnd, trace);
        distance = GetVectorDistance(vStart, vEnd, false);
    }
    else
    {
        // There should always be some ground under the player.
        LogError("[Airshot Bride] Trace error: client %N (%d)", client, client);
    }

    // Clean up and return
    CloseHandle(trace);
    return distance;
}*/

// TraceEntityFilterPlayer(): Ignore players in a trace ray
public bool:TraceEntityFilterPlayer(entity, contentsMask)
{
    return !Client_IsValid(entity);
}

/*
public Action:Timer_RemoveCandycaneHealthPack(Handle:timer, any:ref)
{
    new entity = EntRefToEntIndex(ref);
    if (entity > MaxClients && IsValidEntity(entity))
    {
        AcceptEntityInput(entity, "Kill");
    }
}
*/

public Action:Timer_StopTickle(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);

    if (!IsValidClient(client) || !IsPlayerAlive(client))
    {
        return;
    }

    if (!GetEntProp(client, Prop_Send, "m_bIsReadyToHighFive") && !IsValidEntity(GetEntPropEnt(client, Prop_Send, "m_hHighFivePartner")))
    {
        TF2_RemoveCondition(client, TFCond_Taunting);
    }
}

/*public Action:Timer_DisguiseBackstab(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);

    if (IsValidClient(client))
    {
        RandomlyDisguise(client);
    }
}*/

public Action:Timer_NueDisguiseBackstab(Handle:timer, any:userid)
{
    new client = GetClientOfUserId(userid);

    if (IsValidClient(client))
    {
        TF2_DisguisePlayer(Boss_GetBossClient(), TFTeam:GetClientTeam(client), TF2_GetPlayerClass(client), client);
    }
    else
    {
        DisguiseNue(Boss_GetBossClient());
    }
}

/*stock RandomlyDisguise(client)  //original code was mecha's, but the original code is broken and this uses a better method now.
{
    if (IsValidClient(client) && IsPlayerAlive(client))
    {
        //      TF2_AddCondition(client, TFCond_Disguised, 99999.0);
        new disguisetarget = -1;
        new team = GetClientTeam(client);
        new Handle:hArray = CreateArray();

        for (new clientcheck = 0; clientcheck <= MaxClients; clientcheck++)
        {
            if (IsValidClient(clientcheck) && GetClientTeam(clientcheck) == team && clientcheck != client)
            {
                //new TFClassType:class = TF2_GetPlayerClass(clientcheck);
                //if (class == TFClass_Scout || class == TFClass_Medic || class == TFClass_Engineer || class == TFClass_Sniper || class == TFClass_Pyro)
                PushArrayCell(hArray, clientcheck);
            }
        }

        if (GetArraySize(hArray) <= 0)
        {
            disguisetarget = client;
        }
        else
        {
            disguisetarget = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1));
        }

        if (!IsValidClient(disguisetarget))
        {
            disguisetarget = client;
        }

        //      new disguisehealth = GetRandomInt(75, 125);

        new class = GetRandomInt(0, 4);
        new TFClassType:classarray[] = { TFClass_Scout, TFClass_Pyro, TFClass_Medic, TFClass_Engineer, TFClass_Sniper };

        //      new disguiseclass = classarray[class];
        //      new disguiseclass = _:(disguisetarget != client ? (TF2_GetPlayerClass(disguisetarget)):classarray[class]);
        //      new weapon = GetEntPropEnt(disguisetarget, Prop_Send, "m_hActiveWeapon");

        CloseHandle(hArray);
        if (TF2_GetPlayerClass(client) == TFClass_Spy)
        {
            TF2_DisguisePlayer(client, TFTeam:team, classarray[class], disguisetarget);
        }
        else
        {
            TF2_AddCondition(client, TFCond_Disguised, -1.0);

            SetEntProp(client, Prop_Send, "m_nDisguiseTeam", team);
            SetEntProp(client, Prop_Send, "m_nDisguiseClass", classarray[class]);
            SetEntProp(client, Prop_Send, "m_iDisguiseTargetIndex", disguisetarget);
            SetEntProp(client, Prop_Send, "m_iDisguiseHealth", 200);
        }
    }
}*/

public Action:TF2_CalcIsAttackCritical(client, weapon, String:weaponname[], &bool:result)
{
    if (!Enabled || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    if (IsValidEntity(weapon) && Special == VSHSpecial_HHH && Boss_IsClientHale(client) && HHH_GetClimbCount() < HHH_MAX_CLIMB_COUNT && (Boss_IsRoundState(ROUNDSTATE_ACTIVE) || Boss_IsRoundState(ROUNDSTATE_END)))
    {
        new index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        if (index == 266 && StrEqual(weaponname, "tf_weapon_sword", false))
        {
            SickleClimbWalls(client);
            WeighDownTimer = 0.0;
            HHH_IncClimbCount();
        }
    }

    if (Boss_IsClientHale(client))
    {
        if (Special == VSHSpecial_Nue && Nue_IsRageActive())
        {
            Nue_SetBackstabbed(false);
            CreateTimer(0.0, Timer_CheckNueRageStab, EntIndexToEntRef(client), TIMER_FLAG_NO_MAPCHANGE);
        }

        if (!Boss_IsRoundState(ROUNDSTATE_ACTIVE) || TF2_IsPlayerCritBuffed(client))
        {
            return Plugin_Continue;
        }

        if (!Boss_CanCrit() && Special != VSHSpecial_Nue)
        {
            result = false;

            return Plugin_Changed;
        }
    }
    else if (IsValidEntity(weapon)) //&& Special != VSHSpecial_HHH) //This disallowed bushwacka climbing during HHH rounds. Dum.
    {
        new index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        if (index == 232 && StrEqual(weaponname, "tf_weapon_club", false))
        {
            SickleClimbWalls(client);
            CreateTimer(0.0, Timer_NoAttacking, EntIndexToEntRef(weapon), TIMER_FLAG_NO_MAPCHANGE);
        }

        if (index == 402)
        {
            bBazaarHit[client] = false;
            CreateTimer(0.0, Timer_CheckBazaar, EntIndexToEntRef(client), TIMER_FLAG_NO_MAPCHANGE);
        }
    }

    return Plugin_Continue;
}

public Action:Timer_CheckBazaar(Handle:timer, any:ref) 
{
    new client = EntRefToEntIndex(ref);
    if (!bBazaarHit[client]) SetDecapitations(client, 0);
}

public Action:Timer_CheckNueRageStab(Handle:timer, any:ref) 
{
    new client = EntRefToEntIndex(ref);
    if (!Nue_IsBackstabbed())
    {
        Nue_SetRageActive(false);

        decl Float:pos[3];
        GetEntPropVector(client, Prop_Send, "m_vecOrigin", pos);
        pos[2] += 20.0;
        EmitSoundToAll(NueAppear, _, _, SNDLEVEL_NORMAL, SND_NOFLAGS, SNDVOL_NORMAL, 100, _, pos, NULL_VECTOR, false, 0.0);

        if (TF2_IsPlayerInCondition(client, TFCond_Cloaked))
        {
            TF2_RemoveCondition(client, TFCond_Cloaked);
        }
        SetEntPropFloat(client, Prop_Send, "m_flCloakMeter", -100.0);

        TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Melee);
        new SaxtonWeapon = SpawnWeapon(client, "tf_weapon_knife", 4, 64, 5, "68 ; 2.0 ; 410 ; 5.05 ; 259 ; 1.0 ; 252 ; 0.75 ; 137 ; 2.0");
        SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
    }
}  

public SickleClimbWalls(client)     //Credit to Mecha the Slag
{
    if (!IsValidClient(client) || (GetClientHealth(client)<=15) )return;

    decl String:classname[64];
    decl Float:vecClientEyePos[3];
    decl Float:vecClientEyeAng[3];

    GetClientEyePosition(client, vecClientEyePos);   // Get the position of the player's eyes
    GetClientEyeAngles(client, vecClientEyeAng);       // Get the angle the player is looking

    //Check for colliding entities
    TR_TraceRayFilter(vecClientEyePos, vecClientEyeAng, MASK_PLAYERSOLID, RayType_Infinite, TraceRayDontHitSelf, client);

    if (!TR_DidHit(INVALID_HANDLE)) return;

    new TRIndex = TR_GetEntityIndex(INVALID_HANDLE);
    GetEdictClassname(TRIndex, classname, sizeof(classname));

    if (!StrEqual(classname, "worldspawn")) return;

    decl Float:fNormal[3];
    TR_GetPlaneNormal(INVALID_HANDLE, fNormal);
    GetVectorAngles(fNormal, fNormal);

    if (fNormal[0] >= 30.0 && fNormal[0] <= 330.0 || fNormal[0] <= -30.0) return;

    decl Float:pos[3];
    TR_GetEndPosition(pos);

    new Float:distance = GetVectorDistance(vecClientEyePos, pos);

    if (distance >= 100.0) return;

    new Float:fVelocity[3];

    GetEntPropVector(client, Prop_Data, "m_vecVelocity", fVelocity);

    fVelocity[2] = 600.0;

    TeleportEntity(client, NULL_VECTOR, NULL_VECTOR, fVelocity);

    SDKHooks_TakeDamage(client, client, client, 15.0, DMG_CLUB, GetPlayerWeaponSlot(client, TFWeaponSlot_Melee));

    if (!Boss_IsClientHale(client))
    {
        ClientCommand(client, "playgamesound \"%s\"", "player\\taunt_clip_spin.wav");
    }
}

public Action:Timer_NoAttacking(Handle:timer, any:ref)
{
    new weapon = EntRefToEntIndex(ref);

    SetNextAttack(weapon, 1.56);
}
public bool:TraceRayDontHitSelf(entity, mask, any:data)
{
    return (entity != data);
}

//  PANELS

public Action:Command_SetHale(client, args)
{
    if (!bSpecials)
    {
        ReplyToCommand(client, "[VSH] This server isn't set up to use special bosses! Sorry!");
        return Plugin_Handled;
    }

    if (client && IsClientInGame(client) && !IsFakeClient(client))
    {
        if (!GetAdminFlag(GetUserAdmin(client), Admin_Reservation))     // If not a donator
        {
            CPrintToChat(client, "{olive}[VSH]{default} This is a donor only command! See !perks for more info.");
            return Plugin_Handled;
        }

        new Handle:setbossmenu = CreateMenu(MenuHandler_SetHale);

        SetMenuTitle(setbossmenu, "Choose Your Boss:");
        AddMenuItem(setbossmenu, "non",     "Random!");
        AddMenuItem(setbossmenu, "saxton",  "Saxton Hale"); 
        AddMenuItem(setbossmenu, "vag",     "Vagineer");
        AddMenuItem(setbossmenu, "hhh",     "Horseless Headless Horsmann Jr.");
        AddMenuItem(setbossmenu, "cbs",     "Christian Brutal Sniper");
#if defined EASTER_BUNNY_ON
        AddMenuItem(setbossmenu, "bun",     "Easter Bunny");
#endif
        AddMenuItem(setbossmenu, "cave",    "Cave Johnson");
        AddMenuItem(setbossmenu, "nue",     "Nue Houjuu");
        AddMenuItem(setbossmenu, "astro",   "Astronaut");
        SetMenuExitBackButton(setbossmenu, true);
        DisplayMenu(setbossmenu, client, MENU_TIME_FOREVER);
    }
    return Plugin_Handled;
}

public Action:HookSound(clients[64], &numClients, String:sample[PLATFORM_MAX_PATH], &entity, &channel, &Float:volume, &level, &pitch, &flags)
{
    /*if (Enabled && StrContains(sample, "spy_uncloak", false) != -1)
    {
        CPrintToChdata("%s vol: %f", sample, volume);
        if (IsValidClient(entity))
        {
            CPrintToChdata("%N cloak sound", entity);
        }
        else
        {
            CPrintToChdata("%i ent sound", entity);
        }
        strcopy(sample, PLATFORM_MAX_PATH, NueGone);
        return Plugin_Changed;
    }*/
    new Hale = Boss_GetBossClient();

    if (!Enabled || ((!Boss_IsClientHale(entity)) && ((entity <= 0) || !IsValidClient(Hale) || (entity != GetPlayerWeaponSlot(Hale, 0)))))
    {
        return Plugin_Continue;
    }

    /*if (bLemonRageActivated && StrContains(sample, "grenade_launcher_shoot", false) != -1)
    {
        ReplaceString(sample, PLATFORM_MAX_PATH, "grenade_launcher_shoot", "rocket_shoot", false);
        return Plugin_Changed;
    }*/

    if (StrContains(sample, "saxton_hale", false) != -1)
    {
        return Plugin_Continue;
    }

    //Block out the engineer start battlecry
    if (Special == VSHSpecial_Astro && StrContains(sample, "battlecry", false) != -1)
    {
        return Plugin_Handled;
    }

    if (strcmp(sample, "vo/engineer_LaughLong01.wav", false) == 0)
    {
        if (Special != VSHSpecial_Astro)
        {
            strcopy(sample, PLATFORM_MAX_PATH, VagineerKSpree);

            return Plugin_Changed;
        }
        
        return Plugin_Handled;
    }

    if (Boss_IsClientHale(entity) && Special == VSHSpecial_HHH && strncmp(sample, "vo", 2, false) == 0 && StrContains(sample, "halloween_boss") == -1)
    {
        if (GetRandomInt(0, 100) <= 10)
        {
            Format(sample, PLATFORM_MAX_PATH, "%s0%i.wav", HHHLaught, GetRandomInt(1, 4));

            return Plugin_Changed;
        }
    }

    if (Special != VSHSpecial_CBS && !strncmp(sample, "vo", 2, false) && StrContains(sample, "halloween_boss") == -1)
    {
        if (Special == VSHSpecial_Vagineer)
        {
            if (StrContains(sample, "engineer_moveup", false) != -1)
            {
                Vagineer_RandomJump(sample, PLATFORM_MAX_PATH);
            }
            else if (StrContains(sample, "engineer_no", false) != -1 || GetRandomInt(0, 9) > 6)
            {
                strcopy(sample, PLATFORM_MAX_PATH, "vo/engineer_no01.wav");
            }
            else
            {
                strcopy(sample, PLATFORM_MAX_PATH, "vo/engineer_jeers02.wav");
            }

            return Plugin_Changed;
        }

        if (Special == VSHSpecial_Astro)
        {
            Astronaut_RandomSound(sample, PLATFORM_MAX_PATH);
            return Plugin_Changed;
        }

        if (Special == VSHSpecial_Bunny)
        {
            if (StrContains(sample, "gibberish", false) == -1 && StrContains(sample, "burp", false) == -1 && !GetRandomInt(0, 2))
            {
                //Do sound things
                EasterBunny_RandomVoice(sample, PLATFORM_MAX_PATH);

                return Plugin_Changed;
            }

            return Plugin_Continue;
        }

        if (Special == VSHSpecial_Nue && Nue_IsRageActive())
        {
            return Plugin_Continue;
        }

        return Plugin_Handled;
    }

    return Plugin_Continue;
}

public OnEntityCreated(entity, const String:classname[])
{
    if (StrEqual(classname, "item_healthkit_medium"))
    {
        //SDKHook(entity, SDKHook_StartTouch, TouchinSandvich);
        SDKHook(entity, SDKHook_SpawnPost, OnFoodSpawned);
        CPrintToChdata("sandvich thrown %i", entity);
    }

    if (Enabled && StrEqual(classname, "tf_projectile_pipe", false) || StrEqual(classname, "tf_projectile_rocket", false))
    {
        SDKHook(entity, SDKHook_SpawnPost, OnBossExplosiveSpawned);

        if (Special == VSHSpecial_Cave)
        {
            SDKHook(entity, SDKHook_StartTouch, OnLemonTouch);
        }
    }
}

public OnFoodSpawned(iSandvich)
{
    new iOwner = GetEntPropEnt(iSandvich, Prop_Data, "m_hOwnerEntity");

    if (iOwner != -1 && iOwner <= MaxClients && IsClientInGame(iOwner) && TF2_GetPlayerClass(iOwner) == TFClass_Heavy)
    {
        //SetEntProp(iSandvich, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
    
        new idx = GetIndexOfWeaponSlot(iOwner, TFWeaponSlot_Secondary);

        switch (idx)
        {
            case 42, 863, 1002: // Only steak, chocobar, and fishcake
            {
                return;
            }
        }

        /*if (idx == 311) // Set the correct model
        {
            CPrintToChdata("attempt steak");
            DispatchKeyValue(iSandvich, "powerup_model", "models/items/plate_steak.mdl");
            return;
        }*/

        CreateTimer(0.0, tSetHeavyFooBar, EntIndexToEntRef(iSandvich), TIMER_FLAG_NO_MAPCHANGE);
    }
}

public Action:tSetHeavyFooBar(Handle:timer, any:ref)
{
    new entity = EntRefToEntIndex(ref);

    CPrintToChdata("attempt remodel %i", entity);

    new iOwner = GetEntPropEnt(entity, Prop_Data, "m_hOwnerEntity");

    // Fix spellbook thing
    SetEntPropEnt(iOwner, Prop_Send, "m_hActiveWeapon", GetPlayerWeaponSlot(iOwner, TFWeaponSlot_Melee));

    new idx = GetIndexOfWeaponSlot(iOwner, TFWeaponSlot_Secondary);

    decl String:s[PLATFORM_MAX_PATH];

    strcopy(s, PLATFORM_MAX_PATH, 
        (idx == 159) ? "models/weapons/c_models/c_chocolate/c_chocolate.mdl" : 
        (idx == 433) ? "models/weapons/c_models/c_fishcake/c_fishcake.mdl" :
                       "models/items/plate_steak.mdl"
    );

    if (IsModelPrecached(s) && IsValidEntity(entity))
    {
        CPrintToChdata("attempt choco");
        new att = AttachProjectileModel(entity, s, "idle");

        SetEntProp(att, Prop_Send, "m_nSkin", GetClientTeam(iOwner)-2);
        SetEntityRenderMode(entity, RENDER_TRANSCOLOR);
        SetEntityRenderColor(entity, 255, 255, 255, 0);
    }
}

/*public TouchinSandvich(iHookedEnt, iTouchingEnt)
{
    new iOwner = GetEntPropEnt(iHookedEnt, Prop_Data, "m_hOwnerEntity");
    if(iOwner > 0 && iOwner <= MaxClients && IsClientInGame(iOwner) && TF2_GetPlayerClass(iOwner) == TFClass_Heavy && iOwner == iTouchingEnt)
    {
        //Owner is a valid client, so it's not some map spawn.  Now is it a dropped sandvich?
        // I'd much rather validate this by model, but since that doesnt seem to work for shit (the model returns as the medpack model)
        // Soooo we'll just see if the client is a heavy
        // We'll also check if the owner is the player touching it - if it's another player, we dont need to do shit.
        new newSandvich = CreateEntityByName("item_healthkit_medium");

        if (IsValidEntity(newSandvich))
        {
            SetEntProp(iHookedEnt, Prop_Data, "m_bDisabled", 1);    // disable it so it cant get picked up before we kill it

            new Float:pos[3];
            GetEntPropVector(iHookedEnt, Prop_Send, "m_vecOrigin", pos);    //Grab the location
            AcceptEntityInput(iHookedEnt, "Kill");  // Kill the old one
            //new owner = GetEntPropEnt(oldSandvich, Prop_Data, "m_hOwnerEntity");  //Owner
            //SetEntPropEnt(newSandvich, Prop_Data, "m_hOwnerEntity", owner);   //Set the owner //if we set the owner as the heavy, TF2 does the ammo action crap

            new idx = GetIndexOfWeaponSlot(iOwner, TFWeaponSlot_Secondary);

            decl String:s[PLATFORM_MAX_PATH];

            strcopy(s, PLATFORM_MAX_PATH,
                (idx == 42)     ? "models/items/plate.mdl" :
                (idx == 863)    ? "models/items/plate_robo_sandwich.mdl" :
                (idx == 1002)   ? "models/items/plate_sandwich_xmas.mdl" :
                (idx == 311)    ? "models/items/plate_steak.mdl" :
                (idx == 159)    ? "models/weapons/c_models/c_chocolate/c_chocolate.mdl" :
                                  "models/weapons/c_models/c_fishcake/c_fishcake.mdl"
            );

            DispatchKeyValue(newSandvich, "powerup_model", s);  // Set the correct model
            DispatchSpawn(newSandvich); // Spawn the new one

            TeleportEntity(newSandvich, pos, NULL_VECTOR, NULL_VECTOR); // teleport to old one's location
            CreateTimer(30.0, KillSandvich, newSandvich);
            g_LastSandvich[iOwner] = newSandvich;
        }
    }
}

public Action:KillSandvich(Handle:hTimer, any:iSandvich)
{
    if(IsValidEntity(iSandvich))
        AcceptEntityInput(iSandvich, "Kill");
    return Plugin_Continue;
}  */

public Action:OnLemonTouch(entity, other)
{
    // Only continue if the touched prop is a live demonman
    if (Special != VSHSpecial_Cave || other < 1 || other > MaxClients || !IsClientInGame(other) || !IsPlayerAlive(other) || TF2_GetPlayerClass(other) != TFClass_DemoMan || IsMediUber(other) || GetClientTeam(other) == HaleTeam)
    {
        return Plugin_Continue;
    }

    // This is to detect direct shots VS demomens
    // So we can break their shields

    new owner;

    decl String:proj[48];
    GetEdictClassname(entity, proj, sizeof(proj));

    switch (proj[14])
    {
        case 'r', 'e': // Rockets
        {
            owner = GetEntPropEnt(entity, Prop_Send, "m_hOwnerEntity");
        }
        case 'p': // Nades
        {
            if (proj[18] == 0)
            {
                owner = GetEntPropEnt(entity, Prop_Send, "m_hThrower");
            }
            else 
                return Plugin_Continue;
        }
    }

    // //Only continue if the attacking prop owner is Cave Johnson
    if (owner < 1 || owner > MaxClients || !IsClientInGame(owner) || !IsPlayerAlive(owner) || !Boss_IsClientHale(owner))
    {
        return Plugin_Continue;
    }

    if (owner != other)
    {
        Direct[other] = true;   // Only counting direct shots between Hale and a victim
        DirectTime[other] = GetGameTime();
    }

    /*
    Fix idea:
    Use ontouch. Only first touch will count. Otherwise it's set to not work.

    */

    return Plugin_Continue;
}

public OnBossExplosiveSpawned(entity)
{
    new owner = GetEntPropEnt(entity, Prop_Send, "m_hOwnerEntity");

    if (IsValidClient(owner) && Boss_IsClientHale(owner))
    {
        if (Special == VSHSpecial_Bunny)
            CreateTimer(0.0, EasterBunny_EggBombTimer, EntIndexToEntRef(entity), TIMER_FLAG_NO_MAPCHANGE);
        else if (Special == VSHSpecial_Cave)
            CreateTimer(0.0, CaveJohnson_SetLemonTimer, EntIndexToEntRef(entity), TIMER_FLAG_NO_MAPCHANGE);
    }
}

public Action:Hook_CommandSay(client, const String:command[], argc)
{
    if (!Enabled) return Plugin_Continue;
    
    if (Boss_IsRoundState(ROUNDSTATE_ACTIVE) && Special == VSHSpecial_Guard && !Boss_IsClientHale(client))
    {
        return Plugin_Handled;
    }
    
    return Plugin_Continue;
}

public Native_IsVSHMap(Handle:plugin, numParams)
{
    return IsSaxtonHaleMap();
}

public Native_IsEnabled(Handle:plugin, numParams)
{
    return Enabled;
}

public Native_GetHale(Handle:plugin, numParams)
{
    new Hale = Boss_GetBossClient();
    return IsValidClient(Hale) ? GetClientUserId(Hale) : -1;
}

public Native_IsCapEnabled(Handle:plugin, numParams)
{
    if (!Boss_IsRoundState(ROUNDSTATE_ACTIVE))
    {
        return false;
    }

    return g_bIsCapEnabled;
}

public Native_GetTeam(Handle:plugin, numParams)
{
    return HaleTeam;
}

public Native_GetSpecial(Handle:plugin, numParams)
{
    return Special;
}

public Native_GetHealth(Handle:plugin, numParams)
{
    return HaleHealth;
}

public Native_GetHealthMax(Handle:plugin, numParams)
{
    return Boss_GetMaxHP();
}

public Native_GetRoundState(Handle:plugin, numParams)
{
    return Boss_GetRoundState();
}

public Native_GetDamage(Handle:plugin, numParams)
{
    new iClient = GetNativeCell(1);

    return IsValidClient(iClient) ? Damage[iClient] : 0;
}




// ********************************************************
//
//              Beginning of stock functions
//
// ********************************************************

#define MAX_STEAMAUTH_LENGTH 21
#define STEAMID_CHDATA "STEAM_0:1:41644167"

stock bool:IsSaxtonHaleMap(bool:forceRecalc = false)
{
    static bool:found = false;
    static bool:isVSHMap = false;

    if (forceRecalc)
    {
        isVSHMap = false;
        found = false;
    }

    if (!found)
    {
        decl String:s[PLATFORM_MAX_PATH];
        GetCurrentMap(g_sCurrentMap, sizeof(g_sCurrentMap));

        if (FileExists("bNextMapToHale"))
        {
            isVSHMap = true;
            found = true;
            return true;
        }

        BuildPath(Path_SM, s, PLATFORM_MAX_PATH, "configs/saxton_hale/saxton_hale_maps.cfg");

        if (!FileExists(s))
        {
            LogError("[VSH] Unable to find %s, disabling plugin.", s);
            isVSHMap = false;
            found = true;
            return false;
        }

        new Handle:fileh = OpenFile(s, "r");

        if (fileh == INVALID_HANDLE)
        {
            LogError("[VSH] Error reading maps from %s, disabling plugin.", s);
            isVSHMap = false;
            found = true;
            return false;
        }

        new pingas = 0;

        while (!IsEndOfFile(fileh) && ReadFileLine(fileh, s, sizeof(s)) && (pingas < 100))
        {
            pingas++;
            if (pingas == 100)
                LogError("[VS Saxton Hale] Breaking infinite loop when trying to check the map.");
            Format(s, strlen(s) - 1, s);
            if (strncmp(s, "//", 2, false) == 0) continue;
            if ((StrContains(g_sCurrentMap, s, false) != -1) || (StrContains(s, "all", false) == 0))
            {
                CloseHandle(fileh);
                isVSHMap = true;
                found = true;
                return true;
            }
        }

        CloseHandle(fileh);
    }

    return isVSHMap;
}

stock bool:MapHasMusic(bool:forceRecalc = false)
{
    static bool:hasMusic;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        hasMusic = false;
    }

    if (!found)
    {
        new i = -1;
        decl String:name[64];

        while ((i = FindEntityByClassname2(i, "info_target")) != -1)
        {
            GetEntPropString(i, Prop_Data, "m_iName", name, sizeof(name));
            if (strcmp(name, "hale_no_music", false) == 0) hasMusic = true;
        }
        found = true;
    }

    return hasMusic;
}

stock bool:CheckToChangeMapDoors()
{
    decl String:s[PLATFORM_MAX_PATH];
    GetCurrentMap(g_sCurrentMap, sizeof(g_sCurrentMap));
    checkdoors = false;

    BuildPath(Path_SM, s, PLATFORM_MAX_PATH, "configs/saxton_hale/saxton_hale_doors.cfg");

    if (!FileExists(s))
    {
        if (strncmp(g_sCurrentMap, "vsh_lolcano_pb1", 15, false) == 0)
        {
            checkdoors = true;
        }
        return;
    }

    new Handle:fileh = OpenFile(s, "r");

    if (fileh == INVALID_HANDLE)
    {
        if (strncmp(g_sCurrentMap, "vsh_lolcano_pb1", 15, false) == 0)
        {
            checkdoors = true;
        }
        return;
    }

    while (!IsEndOfFile(fileh) && ReadFileLine(fileh, s, sizeof(s)))
    {
        Format(s, strlen(s) - 1, s);
        if (strncmp(s, "//", 2, false) == 0)
        {
            continue;
        }

        if (StrContains(g_sCurrentMap, s, false) != -1 || StrContains(s, "all", false) == 0)
        {
            CloseHandle(fileh);
            checkdoors = true;
            return;
        }
    }

    CloseHandle(fileh);
}

stock bool:CheckNextSpecial()
{
    if (!bSpecials)
    {
        Special = VSHSpecial_Hale;
        return true;
    }

    new bool:see[MAXPLAYERS+1];
    new tHale = FindNextHale(see);

    if (NextHale > 0 && GetBossCookie(NextHale) > 0)
    {
        Incoming = GetBossCookie(NextHale);
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }

    if (GetBossCookie(tHale) > 0)
    {
        Incoming = GetBossCookie(tHale);
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }  

    if (Incoming != VSHSpecial_None)
    {
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }

    while (Incoming == VSHSpecial_None || (Special && Special == Incoming))
    {
        Incoming = GetRandomInt(0, 10);
        if (Special != VSHSpecial_Hale && !GetRandomInt(0, 5))
        {
            Incoming = VSHSpecial_Hale;
        }
        else
        {
            switch (Incoming)
            {
#if defined VAGINEER_ON
                case 1:
                    Incoming = VSHSpecial_Vagineer;
#endif
#if defined HHH_ON
                case 2:
                    Incoming = VSHSpecial_HHH;
#endif
#if defined CBS_ON
                case 3:
                    Incoming = VSHSpecial_CBS;
#endif
#if defined EASTER_BUNNY_ON
                case 4: // 64
                    Incoming = VSHSpecial_Bunny;
#endif
#if defined CAVE_JOHNSON_ON
                case 5:
                    Incoming = bMedieval ? VSHSpecial_Hale : VSHSpecial_Cave;
#endif
#if defined NUE_HOUJUU_ON
                case 6:
                    Incoming = VSHSpecial_Nue;
#endif
#if defined ASTRONAUT_ON
                case 7:
                    Incoming = VSHSpecial_Astro;
#endif
#if defined GUARDIAN_ON
                case 666:
                    Incoming = Guardian_CanFog() ? VSHSpecial_Guard : VSHSpecial_Hale;
#endif
                default:
                    Incoming = VSHSpecial_Hale;
            }

#if defined CBS_ON
            if (IsDate(12, 15) && !GetRandomInt(0, 7)) //IsDecemberHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} It's like Christmas morning!");
                Incoming = VSHSpecial_CBS;
            }
#endif

#if defined HHH_ON
            if (IsDate(10, 15) && !GetRandomInt(0, 7)) //IsHalloweenHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} Happy Halloween!");
                Incoming = VSHSpecial_HHH;
            }
#endif

#if defined EASTER_BUNNY_ON
            if (IsDate(3, 25, 4, 20) && !GetRandomInt(0, 7)) //IsEasterHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} Happy Easter!");
                Incoming = VSHSpecial_Bunny;
            }
#endif
        }
    }

    Special = Incoming;
    Incoming = VSHSpecial_None;

    return true;        //OH GOD WHAT AM I DOING THIS ALWAYS RETURNS TRUE (still better than using QueuePanelH as a dummy)
}

stock bool:IsDate(StartMonth, StartDate, EndMonth = 0, EndDate = 0, bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == StartMonth && iDate >= StartDate) || (EndMonth && EndDate && (StartMonth < iMonth <= EndMonth) && (iDate <= EndDate));
}

/*stock bool:IsHalloweenHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 10 && iDate >= 15);
}

stock bool:IsEasterHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 3 && iDate >= 25) || (iMonth == 4 && iDate < 20);
}

stock bool:IsDecemberHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 12 && iDate >= 15);
}*/

stock SearchForItemPacks()
{
    new bool:foundAmmo = false, bool:foundHealth = false;

    new ent;

    decl Float:pos[3];

    if (StrEqual(g_sCurrentMap, "vsh_minegay_b3", false))
    {
        DOWHILE_ENTFOUND(ent, "func_breakable")
        {
            decl String:tName[32];
            GetEntPropString(ent, Prop_Data, "m_iName", tName, sizeof(tName));
            if (StrEqual(tName, "medic_car_break", false))
            {
                SetVariantInt(20000);
                AcceptEntityInput(ent, "SetHealth");
            }
            else if (GetEntProp(ent, Prop_Data, "m_iHammerID") == 3513)
            {
                AcceptEntityInput(ent, "Break");
            }
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_full")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
            AcceptEntityInput(ent, "Kill");
            new ent2 = CreateEntityByName("item_ammopack_small");
            TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
            DispatchSpawn(ent2);
            SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            foundAmmo = true;
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_medium")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
            AcceptEntityInput(ent, "Kill");
            new ent2 = CreateEntityByName("item_ammopack_small");
            TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
            DispatchSpawn(ent2);
            SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            foundAmmo = true;
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_small")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
        foundAmmo = true;
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_small")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            if (StrEqual(g_sCurrentMap, "arena_artefact_v3", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = CreateEntityByName("item_healthkit_medium");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);
                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }
        }
        foundHealth = true;
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_medium")
    {
        foundHealth = true;
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_full")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            if (StrEqual(g_sCurrentMap, "vsh_military_area_b1", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = !GetRandomInt(0, 3) ? CreateEntityByName("item_healthkit_medium") : CreateEntityByName("item_healthkit_small");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);

                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }

            if (StrEqual(g_sCurrentMap, "vsh_old_town_b3", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = CreateEntityByName("item_healthkit_medium");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);

                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }
        }
        foundHealth = true;
    }

    if (!foundAmmo)
    {
        SpawnRandomAmmo();
    }

    if (!foundHealth)
    {
        SpawnRandomHealth();
    }

    // Deprecated - removed all team_round_timers via stripper:source
    /*if (StrEqual(g_sCurrentMap, "vsh_dustshowdown_new", false))
    {
        //Stop the autowin timer in cp_degrootkeep

        DOWHILE_ENTFOUND(ent, "team_round_timer")
        {
            if (ent > MaxClients && IsValidEdict(ent))
            {
                AcceptEntityInput(ent, "Disable");
                SetVariantInt(999999);
                AcceptEntityInput(ent, "SetTime");
            }
        }
    }*/
}

stock SpawnRandomAmmo()
{
}

stock SpawnRandomHealth()
{
}

stock GetTeamPlayerCount(TFTeam:team)
{
    new count = 0;
    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && GetClientTeam(i) == _:team)
            count++;
    }
    return count;
}

stock CalcScores()
{
    decl j, damage;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);
    botqueuepoints += 5;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i))
        {
            damage = Damage[i];

            new Handle:aevent = CreateEvent("player_escort_score", true);

            SetEventInt(aevent, "player", i);

            for (j = 0; damage - 600 > 0; damage -= 600, j++) {}

            SetEventInt(aevent, "points", j);
            FireEvent(aevent);

            if (Boss_IsClientHale(i))
            {
                if (IsFakeClient(Boss_GetBossClient()))
                {
                    botqueuepoints = 0;
                }
                else
                {
                    SetClientQueuePoints(i, 0);
                }
            }
            else if (!IsFakeClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || spec))
            {
                if (!CheckHaleToggle(i))
                {
                    CPrintToChat(i, "{olive}[VSH]{default} %t", "vsh_add_points", 10);
                    SetClientQueuePoints(i, GetClientQueuePoints(i) + 10);
                }
                else
                {
                    CPrintToChat(i, "{olive}[VSH]{default} You get 0 queue points. !haletoggle to enable.");
                }
            }
        }
    }
}

stock EmitSoundToAllExcept(exceptiontype = SOUNDEXCEPT_MUSIC, const String:sample[],
    entity = SOUND_FROM_PLAYER,
    channel = SNDCHAN_AUTO,
    level = SNDLEVEL_NORMAL,
    flags = SND_NOFLAGS,
Float:volume = SNDVOL_NORMAL,
        pitch = SNDPITCH_NORMAL,
        speakerentity = -1,
        const Float:origin[3] = NULL_VECTOR,
        const Float:dir[3] = NULL_VECTOR,
        bool:updatePos = true,
    Float:soundtime = 0.0)
{

    new clients[MaxClients];
    new total = 0;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsClientInGame(i) && CheckSoundException(i, exceptiontype))
        {
            clients[total++] = i;
        }
    }

    if (!total)
    {
        return;
    }

    EmitSound(clients, total, sample, entity, channel,
        level, flags, volume, pitch, speakerentity,
        origin, dir, updatePos, soundtime);
}

stock Handle:PrepareItemHandle(Handle:hItem, String:name[] = "", index = -1, const String:att[] = "", bool:dontpreserve = false)
{
    static Handle:hWeapon;
    new addattribs = 0;

    new String:weaponAttribsArray[32][32];
    new attribCount = ExplodeString(att, " ; ", weaponAttribsArray, 32, 32);

    new flags = OVERRIDE_ATTRIBUTES;
    if (!dontpreserve)
    {
        flags |= PRESERVE_ATTRIBUTES;
    }

    if (hWeapon == INVALID_HANDLE)
    {
        hWeapon = TF2Items_CreateItem(flags);
    }
    else
    {
        TF2Items_SetFlags(hWeapon, flags);
    }

    //  new Handle:hWeapon = TF2Items_CreateItem(flags);    //INVALID_HANDLE;

    if (hItem != INVALID_HANDLE)
    {
        addattribs = TF2Items_GetNumAttributes(hItem);

        if (addattribs > 0)
        {
            for (new i = 0; i < 2 * addattribs; i += 2)
            {
                new bool:dontAdd = false;
                new attribIndex = TF2Items_GetAttributeId(hItem, i);

                for (new z = 0; z < attribCount + i; z += 2)
                {
                    if (StringToInt(weaponAttribsArray[z]) == attribIndex)
                    {
                        dontAdd = true;

                        break;
                    }
                }

                if (!dontAdd)
                {
                    IntToString(attribIndex, weaponAttribsArray[i + attribCount], 32);
                    FloatToString(TF2Items_GetAttributeValue(hItem, i), weaponAttribsArray[i + 1 + attribCount], 32);
                }
            }

            attribCount += 2 * addattribs;
        }

        CloseHandle(hItem); //probably returns false but whatever
    }

    if (name[0] != '\0')
    {
        flags |= OVERRIDE_CLASSNAME;
        TF2Items_SetClassname(hWeapon, name);
    }

    if (index != -1)
    {
        flags |= OVERRIDE_ITEM_DEF;
        TF2Items_SetItemIndex(hWeapon, index);
    }

    if (attribCount > 0)
    {
        TF2Items_SetNumAttributes(hWeapon, (attribCount / 2));
        new i2 = 0;

        for (new i = 0; i < attribCount && i < 32; i += 2)
        {
            TF2Items_SetAttribute(hWeapon, i2, StringToInt(weaponAttribsArray[i]), StringToFloat(weaponAttribsArray[i + 1]));
            i2++;
        }
    }
    else
    {
        TF2Items_SetNumAttributes(hWeapon, 0);
    }

    TF2Items_SetFlags(hWeapon, flags);

    return hWeapon;
}

stock ReplaceList(client)
{
    if (IsValidEntity(FindPlayerBack(client, { 444 }, 1)))
    {
        TF2Attrib_SetByName(client, "self dmg push force increased", 1.8);
        if (IsClientChdata(client)) CPrintToChdata("%N detected mantreads", client);
    }
    else
    {
        TF2Attrib_RemoveByName(client, "self dmg push force increased");
        if (IsClientChdata(client)) CPrintToChdata("%N removed mantreads", client);
    }

    if (bMedieval)
    {
        return;
    }

    new weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Primary);
    new index = -1;

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplacelistPrimary
        {
            case 41: // Natascha becomes Tank Goodness
            {
                if (GetEntProp(weapon, Prop_Send, "m_iEntityQuality") != 10)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_minigun", 850, 64, 10, "87 ; 0.5 ; 178 ; 0.75 ; 1 ; 0.25 ; 6 ; 0.75 ; 57 ; 5 ; 26 ; 100");

                    if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                    {
                        CPrintToChat(client, "{olive}[VSH]{default} Equipped The Tank Goodness instead of Natascha.");
                        VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                    }
                    //PrimaryMaxAmmo[client] = 200;
                }
            }
            case 424: // Tomislav becomes Maxine
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                weapon = SpawnWeapon(client, "tf_weapon_minigun", 41, 64, 10, "421 ; 1 ; 75 ; 3.0 ; 431 ; 6 ; 5 ; 1.2 ; 1 ; 0.75 ; 87 ; 0.575 ; 178 ; 0.75");
            
                if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                {
                    CPrintToChat(client, "{olive}[VSH]{default} Equipped Maxine instead of Tomislav.");
                    VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                }
               
               //PrimaryMaxAmmo[client] = 200;
            }
            case 237: // Rocket Jumper
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                weapon = SpawnWeapon(client, "tf_weapon_rocketlauncher", 18, 1, 0, "265 ; 99999.0");
                SetAmmo(client, 0, 20);
                //PrimaryMaxAmmo[client] = 20;
            }
            case 772: // BFB
            {
                if (Special == VSHSpecial_HHH)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_pep_brawler_blaster", 772, 64, 0, "3 ; 0.66 ; 418 ; 1 ; 49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 1");
                    //PrimaryMaxAmmo[client] = 32;
                }
                else
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_pep_brawler_blaster", 772, 64, 0, "3 ; 0.66 ; 418 ; 1 ; 49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 0.25");
                    //PrimaryMaxAmmo[client] = 32;
                }
            }
            case 17, 204, 412: // Syringe gun
            {
                if (GetEntProp(weapon, Prop_Send, "m_iEntityQuality") != 10)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    SpawnWeapon(client, "tf_weapon_syringegun_medic", 17, 1, 10, "17 ; 0.05 ; 144 ; 1");
                    //PrimaryMaxAmmo[client] = 150;
                }
            }
        }
    }

    weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplacelistSecondary
        {
            case 57: // Razorback
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 0, "1");
                //PrimaryMaxAmmo[client] = 75;
            }
            /*case 46: // Bonk
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_lunchbox_drink", 163, 1, 0, "144 ; 2");
            }*/
            case 528: // Short Circuit
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_laser_pointer", 140, 1, 0, "1");
            }
            case 265: // Sticky Jumper becomes Quick Launcher
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_pipebomblauncher", 20, 1, 10, "6 ; 0.5 ; 126 ; -0.4 ; 1 ; 0.8 ; 3 ; 0.25 ; 100 ; 0.8 ; 207 ; 2.0 ; 89 ; -6");
                SetAmmo(client, TFWeaponSlot_Secondary, 24);
                if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                {
                    CPrintToChat(client, "{olive}[VSH]{default} Equipped The Quick Launcher instead of Sticky Jumper.");
                    VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                }
                //PrimaryMaxAmmo[client] = 24;
            }
            case 29, 211, 35, 663, 796, 805, 885, 894, 903, 912, 961, 970: // Mediguns & Kritzkrieg
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_medigun", 35, 5, 10, "10 ; 1.25 ; 178 ; 0.75");
                SetEntPropFloat(weapon, Prop_Send, "m_flChargeLevel", 0.42);

                //Mortar's Mortifier
                //else weapon = SpawnWeapon(client, "tf_weapon_medigun", 35, 5, 9, "178 ; 0.75 ; 269 ; 1 ; 9 ; 0.0 ; 7 ; -1.0 ; 134 ; 4");
            }
            case 998: // Vaccinator
            {
                SetEntProp(weapon, Prop_Send, "m_nChargeResistType", 1);
            }
            /*case 735, 736, 810, 831, 933, 1080, 1102:    //Remove sappers
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
            }*/
        }
    }

    // We just did the same code above...
    /*if (IsValidEntity(FindPlayerBack(client, { 57 }, 1)))
    {
        RemovePlayerBack(client, { 57 }, 1);
        weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 0, "1");
        PrimaryMaxAmmo[client] = 75;
    }*/

    if (IsValidEntity(FindPlayerBack(client, { 642, 231 }, 2)))
    {
        weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 6, "15 ; 0 ; 1 ; 0.75");
        //PrimaryMaxAmmo[client] = 75;
    }

    weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Melee);

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplaceListMelee
        {
            /*case 331: // Fists of Steel
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Melee);
                weapon = SpawnWeapon(client, "tf_weapon_fists", 195, 1, 6, "1");
            }*/
            case 357: // Zatoichi
            {
                CreateTimer(1.0, Timer_NoHonorBound, GetClientUserId(client), TIMER_FLAG_NO_MAPCHANGE);
            }
            //case 142:
            //{
            //    SetEntityRenderMode(weapon, RENDER_TRANSCOLOR);
            //    SetEntityRenderColor(weapon, 255, 255, 255, 75);
            //}
        }
    }

    return;
}

stock RemovePlayerTarge(client)
{
    new edict = MaxClients + 1;
    while ((edict = FindEntityByClassname2(edict, "tf_wearable_demoshield")) != -1)
    {
        new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

        if ((idx == 131 || idx == 406 || idx == 1099) && GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
        {
            TF2_RemoveWearable(client, edict);
            //AcceptEntityInput(edict, "Kill");
        }
    }
}

stock RemovePlayerBack(client, indices[], len)
{
    if (len <= 0)
    {
        return;
    }

    new edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_wearable")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFWearable"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        TF2_RemoveWearable(client, edict);
                    }
                }
            }
        }
    }

    edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_powerup_bottle")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFPowerupBottle"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        TF2_RemoveWearable(client, edict);
                        //AcceptEntityInput(edict, "Kill");
                    }
                }
            }
        }
    }
}

stock FindPlayerBack(client, indices[], len)
{
    if (len <= 0)
    {
        return -1;
    }

    new edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_wearable")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFWearable"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        return edict;
                    }
                }
            }
        }
    }

    edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_powerup_bottle")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFPowerupBottle"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        return edict;
                    }
                }
            }
        }
    }

    return -1;
}

stock StopHaleMusic(client)
{
    if (!IsValidClient(client))
    {
        return;
    }

    StopSound(client, SNDCHAN_AUTO, HHHTheme);
    StopSound(client, SNDCHAN_AUTO, CBSTheme);
    StopSound(client, SNDCHAN_AUTO, NueMusic);
    StopSound(client, SNDCHAN_AUTO, AstroMusic);
    StopSound(client, SNDCHAN_AUTO, PortalMusic);
    StopSound(client, SNDCHAN_AUTO, PortalMusicDuo);
    StopSound(client, SNDCHAN_AUTO, PortalMusicFinal);
}

stock SetControlPoint(bool:enable)
{
    new CPm = -1; //CP = -1;

    while ((CPm = FindEntityByClassname2(CPm, "team_control_point")) != -1)
    {
        if (CPm > MaxClients && IsValidEdict(CPm))
        {
            AcceptEntityInput(CPm, (enable ? "ShowModel":"HideModel"));
            SetVariantInt(enable ? 0:1);
            AcceptEntityInput(CPm, "SetLocked");
        }
    }

    g_bIsCapEnabled = enable;
}

stock SetArenaCapEnableTime(Float:time)
{
    new ent = -1;
    decl String:strTime[32];
    FloatToString(time, strTime, sizeof(strTime));

    if ((ent = FindEntityByClassname2(-1, "tf_logic_arena")) != -1 && IsValidEdict(ent))
    {
        DispatchKeyValue(ent, "CapEnableDelay", strTime);
    }
}

stock ForceHale(admin, client, bool:hidden, bool:forever = false)
{
    if (forever)
    {
        Boss_SetBossClient(client);
    }
    else
    {
        NextHale = client;
    }

    if (!hidden)
    {
        CPrintToChatAllEx(client, "{olive}[VSH] {teamcolor}%N {default}%t", client, "vsh_hale_select_text");
    }
}

stock GetRJFlag(client)
    return (0 < client <= MaxClients && IsClientInGame(client) && IsPlayerAlive(client) ? g_bClientRJFlag[client] : false);

stock SetRJFlag(client, bool:bState)
{
    if (0 < client <= MaxClients)
        g_bClientRJFlag[client] = bState;
}

/*stock GetAirBlastFlag(client)
    return (0 < client <= MaxClients && IsClientInGame(client) && IsPlayerAlive(client) ? g_bClientAirBlastFlag[client] : false);
stock SetAirBlastFlag(client, bool:bState)
{
    if (0 < client <= MaxClients)
        g_bClientAirBlastFlag[client] = bState;
}*/

stock DoubleJump(const any:client, Float:fl_Boost = 280.0, bool:bTrail = true)
{
    decl Float:vVel[3];
    GetEntPropVector(client, Prop_Data, "m_vecVelocity", vVel);  // get current speeds

    /*new Float:x, Float:y, Float:z;
    new buttons = GetClientButtons(client);
    CleanupClientDirection(client, buttons, x, y, z, fl_Boost);
    vVel[0] = x;
    vVel[1] = y;
    vVel[2] = z;*/

    /*buttons &= (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT);
    if (!((buttons & (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT)) == 0))
    {
        new Float:speed = GetEntPropFloat(client, Prop_Send, "m_flMaxspeed");
        ScaleVector(vVel, speed);
    }*/

    if (bTrail) CreateTimer(2.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "doublejump_trail")));

    vVel[2] = fl_Boost;
    TeleportEntity(client, NULL_VECTOR, NULL_VECTOR, vVel);      // boost player
}

stock bool:IsNearSpencer(client) 
{ 
    new bool:dispenserheal, medics = 0; 
    new healers = GetEntProp(client, Prop_Send, "m_nNumHealers"); 
    if (healers > 0) 
    { 
        for (new i = 1; i <= MaxClients; i++) 
        { 
            if (IsValidClient(i) && IsPlayerAlive(i) && GetHealingTarget(i) == client) 
                medics++; 
        } 
    } 
    dispenserheal = (healers > medics) ? true : false; 
    return dispenserheal; 
} 

stock FindSentry(client)
{
    new i = -1;

    while ((i = FindEntityByClassname2(i, "obj_sentrygun")) != -1)
    {
        if (GetEntPropEnt(i, Prop_Send, "m_hBuilder") == client)
        {
            return i;
        }
    }

    return -1;
}

stock OnlyScoutsLeft()
{
    for (new client = 1; client <= MaxClients; client++)
    {
        if (IsValidClient(client) && IsPlayerAlive(client) && !Boss_IsClientHale(client) && TF2_GetPlayerClass(client) != TFClass_Scout)
        {
            return false;
        }
    }

    return true;
}

stock GetIndexOfWeaponSlot(client, slot)
{
    new weapon = GetPlayerWeaponSlot(client, slot);

    return (weapon > MaxClients && IsValidEntity(weapon) ? GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex"):-1);
}

stock IsWeaponSlotActive(iClient, iSlot)
{
    new hActive = GetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon");
    new hWeapon = GetPlayerWeaponSlot(iClient, iSlot);
    return (hWeapon == hActive);
}

stock IsIndexActive(iClient, Index)
{
    new hActive = GetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon");
    new idx = IsValidEntity(hActive) ? GetEntProp(hActive, Prop_Send, "m_iItemDefinitionIndex"):-1;

    return (hActive > MaxClients && Index == idx);
}

// The amount of health a player will spawn with based on their class and weapons.
stock GetClientSpawnHealth(client)
{
    new HP = 125;
    new pr = GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary);
    new se = GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary);
    new me = GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee);
    switch (TF2_GetPlayerClass(client))
    {
        case TFClass_Scout:
        {
            if (pr == 773) HP += 15; // Pocket Pistol
            if (me == 44)  HP -= 15; // Sandman
        }    
        case TFClass_Soldier:
        {
            HP = 200;
            if (se == 226) HP += 20; // Battalion's Backup
            if (me == 357) HP += 30; // Half-Zatoichi
        }
        case TFClass_Pyro:     return 175;
        case TFClass_DemoMan:
        {
            HP = 175;
            switch (pr){case 405, 608:            HP += 25;} // Demoboots
            switch (me){case 132, 266, 482, 1082: HP -= 25;  // Eyelanders
                        case 327, 404, 357:       HP += 30;} // Claid + Persuader + Half-Zatoichi
        }
        case TFClass_Heavy:
        {
            HP = 300;
            if (me == 310) HP -= 20; // Warrior's Spirit
            if (pr == 850) HP += 100; // Tank Goodness
        }
        case TFClass_Engineer:
        {
            if (me == 142) HP += 25; // Gunslinger
        }
        case TFClass_Medic:    return 150;
        case TFClass_Sniper:
        {
            if (se == 231) HP += 25; // Darwin's Danger Shield
        }
        case TFClass_Spy:
        {
            if (me == 356) HP -= 60; // Kunai
            if (me == 461) HP -= 25; // Big Earner
        }
    }
    return HP;
}

stock GetClassBaseHP(client)
{
    switch (TF2_GetPlayerClass(client))
    {
        case TFClass_Scout:     return 125;
        case TFClass_Soldier:   return 200;
        case TFClass_Pyro:      return 175;
        case TFClass_DemoMan:   return 175;
        case TFClass_Heavy:     return 300;
        case TFClass_Engineer:  return 125;
        case TFClass_Medic:     return 150;
        case TFClass_Sniper:    return 125;
        case TFClass_Spy:       return 125;
    }
    return 125;
}

/*
stock GetSpellBook(client)
{
    new ent = -1;
    while((ent = FindEntityByClassname(ent, "tf_weapon_spellbook")) != INVALID_ENT_REFERENCE)
    {
        if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == client) return ent;
    }
    return -1;
}
*/

stock SpawnManyAmmoPacks(client, String:model[], skin = 0, num = 14, Float:offsz = 30.0)
{
    if (hSetAmmoVelocity == INVALID_HANDLE)
    {
        return;
    }

    decl Float:pos[3], Float:vel[3], Float:ang[3];

    ang[0] = 90.0;
    ang[1] = 0.0;
    ang[2] = 0.0;

    GetClientAbsOrigin(client, pos);

    pos[2] += offsz;

    for (new i = 0; i < num; i++)
    {
        vel[0] = GetRandomFloat(-400.0, 400.0);
        vel[1] = GetRandomFloat(-400.0, 400.0);
        vel[2] = GetRandomFloat(300.0, 500.0);

        pos[0] += GetRandomFloat(-5.0, 5.0);
        pos[1] += GetRandomFloat(-5.0, 5.0);

        new ent = CreateEntityByName("tf_ammo_pack");

        if (!IsValidEntity(ent))
        {
            continue;
        }

        SetEntityModel(ent, model);
        DispatchKeyValue(ent, "OnPlayerTouch", "!self,Kill,,0,-1"); //for safety, but it shouldn't act like a normal ammopack
        SetEntProp(ent, Prop_Send, "m_nSkin", skin);
        SetEntProp(ent, Prop_Send, "m_nSolidType", 6);

        //      SetEntityMoveType(ent, MOVETYPE_FLYGRAVITY);
        //      SetEntProp(ent, Prop_Send, "movetype", 5);
        //      SetEntProp(ent, Prop_Send, "movecollide", 0);

        SetEntProp(ent, Prop_Send, "m_usSolidFlags", 152);
        SetEntProp(ent, Prop_Send, "m_triggerBloat", 24);
        SetEntProp(ent, Prop_Send, "m_CollisionGroup", 1);
        SetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity", client);
        SetEntProp(ent, Prop_Send, "m_iTeamNum", 2);

        TeleportEntity(ent, pos, ang, vel);
        DispatchSpawn(ent);
        TeleportEntity(ent, pos, ang, vel);

        SDKCall(hSetAmmoVelocity, ent, vel);

        SetEntProp(ent, Prop_Data, "m_iHealth", 900);

        new offs = GetEntSendPropOffs(ent, "m_vecInitialVelocity", true);

        SetEntData(ent, offs - 4, 1, _, true);
        /*      SetEntData(ent, offs-13, 0, 1, true);
        SetEntData(ent, offs-11, 1, 1, true);
        SetEntData(ent, offs-15, 1, 1, true);
        SetEntityMoveType(ent, MOVETYPE_FLYGRAVITY);
        SetEntProp(ent, Prop_Data, "m_nNextThinkTick", GetEntProp(client, Prop_Send, "m_nTickBase") + 3);
        SetEntPropVector(ent, Prop_Data, "m_vecAbsVelocity", vel);
        SetEntPropVector(ent, Prop_Data, "m_vecVelocity", vel);
        SetEntPropVector(ent, Prop_Send, "m_vecInitialVelocity", vel);
        SetEntProp(ent, Prop_Send, "m_bClientSideAnimation", 1);
        PrintToChatAll("aeiou %d %d %d %d %d", GetEntData(ent, offs-16, 1), GetEntData(ent, offs-15, 1), GetEntData(ent, offs-14, 1), GetEntData(ent, offs-13, 1), GetEntData(ent, offs-12, 1));
        */
    }
}

/*
 Teleports a client to a random spawn location

 iClient - Client to teleport
 iTeam - Team of spawn points to use. If not specified or invalid team number, teleport to ANY spawn point.

*/
stock TeleportToSpawn(iClient, iTeam = 0)
{
    new iEnt;
    decl Float:vPos[3];
    decl Float:vAng[3];
    new Handle:hArray = CreateArray();
    DOWHILE_ENTFOUND(iEnt, "info_player_teamspawn")
    {
        if (iTeam <= 1) // Not RED (2) nor BLu (3)
        {
            PushArrayCell(hArray, iEnt);
        }
        else
        {
            new iSpawnTeam = GetEntProp(iEnt, Prop_Send, "m_iTeamNum");
            if (iSpawnTeam == iTeam)
            {
                PushArrayCell(hArray, iEnt);
            }
        }
    }

    iEnt = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1));
    CloseHandle(hArray);

    // Technically you'll never find a map without a spawn point.
    GetEntPropVector(iEnt, Prop_Send, "m_vecOrigin", vPos);
    GetEntPropVector(iEnt, Prop_Send, "m_angRotation", vAng);
    TeleportEntity(iClient, vPos, vAng, NULL_VECTOR);

    /*if (GetArraySize(hArray) <= 0)
    {
        // No iEnt was found. This should be impossible.
    }
    else
    {
        iEnt = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1))
    }*/
}

stock GetClientCloakIndex(client)
{
    if (!IsValidClient(client))
    {
        return -1;
    }

    new wep = GetPlayerWeaponSlot(client, 4);

    if (!IsValidEntity(wep))
    {
        return -1;
    }

    new String:classname[64];

    GetEntityClassname(wep, classname, sizeof(classname));

    if (strncmp(classname, "tf_wea", 6, false) != 0)
    {
        return -1;
    }

    return GetEntProp(wep, Prop_Send, "m_iItemDefinitionIndex");
}

stock bool:Client_IsValid(client, bool:checkConnected=true)
{
    if (client > 4096) {
        client = EntRefToEntIndex(client);
    }

    if (client < 1 || client > MaxClients) {
        return false;
    }

    if (checkConnected && !IsClientConnected(client)) {
        return false;
    }
    
    return true;
}

stock SpawnSmallHealthPackAt(client, ownerteam = 0)
{
    if (!IsValidClient(client) || !IsPlayerAlive(client))
    {
        return;
    }

    new healthpack = CreateEntityByName("item_healthkit_small");

    decl Float:pos[3];
    GetClientAbsOrigin(client, pos);

    pos[2] += 20.0;

    if (IsValidEntity(healthpack))
    {
        DispatchKeyValue(healthpack, "OnPlayerTouch", "!self,Kill,,0,-1");  //for safety, though it normally doesn't respawn
        DispatchSpawn(healthpack);

        SetEntProp(healthpack, Prop_Send, "m_iTeamNum", ownerteam, 4);
        SetEntityMoveType(healthpack, MOVETYPE_VPHYSICS);

        new Float:vel[3];

        vel[0] = float(GetRandomInt(-10, 10)), vel[1] = float(GetRandomInt(-10, 10)), vel[2] = 50.0;

        TeleportEntity(healthpack, pos, NULL_VECTOR, vel);
        //      CreateTimer(17.0, Timer_RemoveCandycaneHealthPack, EntIndexToEntRef(healthpack), TIMER_FLAG_NO_MAPCHANGE);
    }
}

stock IncrementHeadCount(client)
{
    if (!TF2_IsPlayerInCondition(client, TFCond_DemoBuff))
    {
        TF2_AddCondition(client, TFCond_DemoBuff, -1.0);
    }

    new decapitations = GetEntProp(client, Prop_Send, "m_iDecapitations");

    SetEntProp(client, Prop_Send, "m_iDecapitations", decapitations + 1);

    new health = GetClientHealth(client);

    //  health += (decapitations >= 4 ? 10:15);
    health += 15;

    SetEntProp(client, Prop_Data, "m_iHealth", health);
    SetEntProp(client, Prop_Send, "m_iHealth", health);

    TF2_AddCondition(client, TFCond_SpeedBuffAlly, 0.01);   //recalc their speed
}

stock SetDecapitations(client, decaps)
{
    SetEntProp(client, Prop_Send, "m_iDecapitations", decaps);
}

/*
stock SwitchToOtherWeapon(client)
{
    new ammo = GetAmmo(client, 0);
    new weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Primary);
    new clip = (IsValidEntity(weapon) ? GetEntProp(weapon, Prop_Send, "m_iClip1"):-1);

    if (!(ammo == 0 && clip <= 0))
    {
        SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", weapon);
    }
    else
    {
        SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary));
    }
}
*/

stock RestrictToMelee(iClient) //bool:bSpawnNewMelee = false
{
    for (new i = 0; i <= 5; i++)
    {
        if (i != TFWeaponSlot_Melee)
        {
            TF2_RemoveWeaponSlot2(iClient, i);
        }
    }

    SwitchToSlot(iClient, TFWeaponSlot_Melee);
}

stock SwitchToSlot(iClient, iSlot)
{
    new iWeapon = GetPlayerWeaponSlot(iClient, iSlot);

    if (iWeapon > 0)
    {
        EquipPlayerWeapon(iClient, iWeapon);
    }
}

stock FindTeleOwner(client)
{
    if (!IsValidClient(client) || !IsPlayerAlive(client))
    {
        return -1;
    }

    new tele = GetEntPropEnt(client, Prop_Send, "m_hGroundEntity");

    decl String:classname[32];

    if (IsValidEntity(tele) && GetEdictClassname(tele, classname, sizeof(classname)) && strcmp(classname, "obj_teleporter", false) == 0)
    {
        new owner = GetEntPropEnt(tele, Prop_Send, "m_hBuilder");
        if (IsValidClient(owner))
        {
            return owner;
        }
    }

    return -1;
}

stock TF2_IsPlayerCritBuffed(client)
{
    return (TF2_IsPlayerInCondition(client, TFCond_Kritzkrieged)
        || TF2_IsPlayerInCondition(client, TFCond_HalloweenCritCandy)
        || TF2_IsPlayerInCondition(client, TFCond:34)
        || TF2_IsPlayerInCondition(client, TFCond:35)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnFirstBlood)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnWin)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnFlagCapture)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnKill)
        || TF2_IsPlayerInCondition(client, TFCond_CritMmmph)
        );
}

stock DisguiseNue(client)
{
    if (IsValidClient(client) && IsPlayerAlive(client))
    {
        new disguisetarget = -1;

        do
        {
            disguisetarget = GetRandomInt(1, MaxClients);
        }
        while ((RedAlivePlayers > 0) && (!IsValidClient(disguisetarget) || (disguisetarget == client)));

        if (!IsValidClient(disguisetarget))
        {
            disguisetarget = client;
        }

        new team = GetClientTeam(client) == 2 ? 3 : 2;

        new TFClassType:class = TF2_GetPlayerClass(disguisetarget);

        TF2_DisguisePlayer(client, TFTeam:team, class, disguisetarget);

        /*new disguisetarget = -1;
        new team = GetClientTeam(client);
        new Handle:hArray = CreateArray();

        for (new clientcheck = 0; clientcheck <= MaxClients; clientcheck++)
        {
            if (IsValidClient(clientcheck) && GetClientTeam(clientcheck) != team && clientcheck != client)
            {
                PushArrayCell(hArray, clientcheck);
            }
        }

        if (GetArraySize(hArray) <= 0)
        {
            disguisetarget = client;
        }
        else
        {
            disguisetarget = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1));
        }

        if (!IsValidClient(disguisetarget))
        {
            disguisetarget = client;
        }

        team = GetClientTeam(disguisetarget);*/

        //CloseHandle(hArray);
    }
}

stock SetNextAttack(weapon, Float:duration = 0.0)
{
    if (weapon <= MaxClients || !IsValidEntity(weapon)) return;

    new Float:next = GetGameTime() + duration;

    SetEntPropFloat(weapon, Prop_Send, "m_flNextPrimaryAttack", next);
    SetEntPropFloat(weapon, Prop_Send, "m_flNextSecondaryAttack", next);
}


stock FindNextHale(bool:array[])
{
    new tBoss = -1;
    new tBossPoints = -1073741824;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || (spec && GetClientTeam(i) != _:TFTeam_Unassigned)))   // GetClientTeam(i) != _:TFTeam_Unassigned)
        {
            new points = GetClientQueuePoints(i);

            if (points >= tBossPoints && !array[i] && !CheckHaleToggle(i))
            {
                tBoss = i;
                tBossPoints = points;
            }
        }
    }
    return tBoss;
}

stock bool:NextHaleTogglers(bool:array[])
{
    new togs = 0;
    new Players = 0;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || (spec && GetClientTeam(i) != _:TFTeam_Unassigned)) && !array[i])
        {
            Players++;

            if (CheckHaleToggle(i))
            {
                togs++;
            }
        }
    }

    if (Players <= 1) //If there's only one player, we need more players anyway so disable this.
        return false;

    if (togs == Players)    //If everyone disabled queue points...
    {
        return true;    //Everyone doesn't want to be Hale
    }
    else
        return false;
}

stock RandomNextHale(bool:array[], bool:disconnect=true)
{
    if (!disconnect) CPrintToChatAll("{olive}[VSH]{default} Noone wants to be Hale, choosing one randomly!");

    new tBoss = -1;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    do  //Choose a random Hale
    {
        tBoss = GetRandomInt(1, MaxClients);
    }
    while (!IsValidClient(tBoss) || array[tBoss] || Boss_IsClientHale(tBoss) || !(GetClientTeam(tBoss) > _:TFTeam_Spectator || (spec && GetClientTeam(tBoss) != _:TFTeam_Unassigned)));

    return tBoss;
}

stock FindNextHaleEx()
{
    new Hale = Boss_GetBossClient();
    new bool:added[MAXPLAYERS + 1];

    if (Hale >= 0)
    {
        added[Hale] = true;
    }

    return FindNextHale(added);
}

stock ForceTeamWin(team)
{
    new ent = FindEntityByClassname2(-1, "team_control_point_master");

    if (ent == -1)
    {
        ent = CreateEntityByName("team_control_point_master");
        DispatchSpawn(ent);
        AcceptEntityInput(ent, "Enable");
    }

    SetVariantInt(team);
    AcceptEntityInput(ent, "SetWinner");
}

stock AttachParticle(ent, String:particleType[], Float:offset = 0.0, bool:battach = true)
{
    new particle = CreateEntityByName("info_particle_system");

    decl String:tName[128];
    decl Float:pos[3];

    GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);

    pos[2] += offset;

    TeleportEntity(particle, pos, NULL_VECTOR, NULL_VECTOR);

    Format(tName, sizeof(tName), "target%i", ent);

    DispatchKeyValue(ent, "targetname", tName);
    DispatchKeyValue(particle, "targetname", "tf2particle");
    DispatchKeyValue(particle, "parentname", tName);
    DispatchKeyValue(particle, "effect_name", particleType);
    DispatchSpawn(particle);

    SetVariantString(tName);

    if (battach)
    {
        AcceptEntityInput(particle, "SetParent", particle, particle, 0);
        SetEntPropEnt(particle, Prop_Send, "m_hOwnerEntity", ent);
    }

    ActivateEntity(particle);
    AcceptEntityInput(particle, "start");

    return particle;
}

stock SpawnWeapon(client, String:name[], index, level, qual, String:att[])
{
    new Handle:hWeapon = TF2Items_CreateItem(OVERRIDE_ALL | FORCE_GENERATION);

    if (hWeapon == INVALID_HANDLE)
    {
        return -1;
    }

    TF2Items_SetClassname(hWeapon, name);
    TF2Items_SetItemIndex(hWeapon, index);
    TF2Items_SetLevel(hWeapon, level);
    TF2Items_SetQuality(hWeapon, qual);

    new String:atts[32][32];
    new count = ExplodeString(att, " ; ", atts, 32, 32);

    if (count > 0)
    {
        TF2Items_SetNumAttributes(hWeapon, count / 2);

        new i2 = 0;

        for (new i = 0; i < count; i += 2)
        {
            TF2Items_SetAttribute(hWeapon, i2, StringToInt(atts[i]), StringToFloat(atts[i + 1]));
            i2++;
        }
    }
    else
    {
        TF2Items_SetNumAttributes(hWeapon, 0);
    }

    new entity = TF2Items_GiveNamedItem(client, hWeapon);

    CloseHandle(hWeapon);
    EquipPlayerWeapon(client, entity);

    return entity;
}

stock FindVersionData(Handle:panel, versionindex)
{
    switch (versionindex)
    {
        case 95: // 34.3
        {
            DrawPanelText(panel, "1) Falling off of ctf_facing_worlds and arena_nucleus teleports the boss to spawn.");
            DrawPanelText(panel, "2) Re-added speed reduction on Huo-Long Heatmaker.");
            DrawPanelText(panel, "3) Tomislav (Maxine) has no speed reduction while revved up.");
            DrawPanelText(panel, "4) Removed speed boost while revved up from Maxine.");
            DrawPanelText(panel, "5) Demo shield only grants mini-crits now.");
            DrawPanelText(panel, "6) Nerfed Brass Beast dmg reduc to 50% while revved up.");
        }
        case 94: // 34.3
        {
            DrawPanelText(panel, "7) Hale is always BLU on ctf maps.");
            DrawPanelText(panel, "8) Fixed Vaccinator not giving resistance during uber to the medic using it.");
            DrawPanelText(panel, "9) Astronaut rage distance buffed to twice of normal Hale's range.");
        }
        case 93: // 34.2
        {
            DrawPanelText(panel, "1) Backscatter crits in place of minicrits.");
            DrawPanelText(panel, "2) Removed 25% dmg vuln on GRU.");
            DrawPanelText(panel, "3) The Phase Shift cloak time 2sec, decloak 4sec. Decloaking sets cloak to 0%.");
            DrawPanelText(panel, "4) Added cloaking sound to The Phase Shift.");
            DrawPanelText(panel, "5) Quick-Fix overheal nerfed back to 50% of max overheal.");
        }
        case 92: // 34.1
        {
            DrawPanelText(panel, "1) Can call medic to rage.");
            DrawPanelText(panel, "2) Harder to double tap taunt and fail rage.");
            DrawPanelText(panel, "3) Heavy has 50% faster spinup and weapon switch.");
            DrawPanelText(panel, "4) Nue no longer ignites while disguised.");
            DrawPanelText(panel, "5) Cannot spam super duper jump as much when falling into pits.");
            DrawPanelText(panel, "6) Lowered pit damage to 290 damage to discourage rounds based on knocking him into the pit.");
        }
        case 91: // 34.1
        {
            DrawPanelText(panel, "7) Heavy food models fixed when thrown. Chocolate effect is +150 hp instead of +50.");
            DrawPanelText(panel, "8) Eureka Effect is enabled and costs 130 ammo to teleport.");
            DrawPanelText(panel, "9) Eureka Effect breaks teleporter when you teleport to it.");
            DrawPanelText(panel, "10) Rescue Ranger cost reduced to 100.");
            DrawPanelText(panel, "11) Quick-Fix overheal does not decay.");
        }
        case 90: // 34.1
        {
            DrawPanelText(panel, "12) Quick-Fix uber only grants mega heal and minicrits.");
            DrawPanelText(panel, "13) Natascha is the Tank Goodness from Advanced Weaponiser 2.");
            DrawPanelText(panel, "14) Brass Beast has 63% damage resist while revved up.");
            DrawPanelText(panel, "15) Tomislav is similar to Maxine from AW2 and gives a speed buff while revved but drains ammo.");
            DrawPanelText(panel, "16) Huo Heatmaker has no movement penalty, ignites Hale on hit, and drains ammo slower.");
        }
        case 89: // 34.1
        {
            DrawPanelText(panel, "17) Can goomba Hale, but Hale cannot goomba you.");
            DrawPanelText(panel, "18) He can still mantread you.");
            DrawPanelText(panel, "19) Normal minigun offers various bonuses while being healed by a medic.");
            DrawPanelText(panel, "20) Breaking shields gives the demo a 1 second speed buff.");
            DrawPanelText(panel, "21) Removed self mark for death on GRU.");
            DrawPanelText(panel, "22) Hale only takes 5% of his max health as damage while in pits, at a max of 500.");
        }
        case 88: //34.0
        {
            DrawPanelText(panel, "1) Server is revived!");
            DrawPanelText(panel, "2) Backstabs now work with the 'damage dealt' strange part.");
            DrawPanelText(panel, "3) L'etranger no longer gives silent decloak. YER + Wanga Prick do instead.");
            DrawPanelText(panel, "4) Nerfed kunai max health back to 270.");
            DrawPanelText(panel, "5) Fixed stats on bread.");
            DrawPanelText(panel, "6) Air Strike gains clip based on every 200 damage dealt.");
        }
        case 87: //34.0
        {
            DrawPanelText(panel, "7) Fixed first round glitch with wearables.");
            DrawPanelText(panel, "8) Medics now get 3/5 the damage of a backstab for assisting.");
            DrawPanelText(panel, "9) Cloak & Dagger is now The Phase Shift. Insta cloak/decloak. Short duration.");
            DrawPanelText(panel, "10) YER can no longer disguise at all.");
            DrawPanelText(panel, "11) Fixed equippable wearables (thanks fiagram & Powerlord).");
        }
        case 86: //34.0
        {
            DrawPanelText(panel, "12) Hale is no longer constantly overhealed.");
            DrawPanelText(panel, "13) Hale can no longer pick up health packs.");
            DrawPanelText(panel, "14) Hale takes a static 32 fall damage when near death.");
            DrawPanelText(panel, "15) Hale's stomp deals a static 480 damage.");
            DrawPanelText(panel, "16) Sniper rifle outline shows correct colors based on his remaining HP.");
            DrawPanelText(panel, "17) Fixed maps like military area where BLU can't pick up ammo packs in the first arena round.");
            DrawPanelText(panel, "18) Fixed unbalanced team joining in the first arena round.");
        }
        case 85: //34.0
        {
            DrawPanelText(panel, "19) Added admin commands !sethp and !setmaxhp for Hale.");
            DrawPanelText(panel, "20) Added !infotoggle to disable !haleclass info popups on round start.");
            DrawPanelText(panel, "21) Using !haleclass as Hale now shows boss information instead of class information.");
            DrawPanelText(panel, "22) Cave Johnson now properly doesn't damage himself.");
            DrawPanelText(panel, "23) Cave Johnson can no longer rocket jump with his rage.");
            DrawPanelText(panel, "24) Cave Johnson now properly has to direct shot demo shields to break them.");
        }
        case 84: //34.0
        {
            DrawPanelText(panel, "25) Bazaar Bargain now works properly, instead of giving 2 heads per bodyshot.");
            DrawPanelText(panel, "26) HHH now takes 50 seconds to get his first time teleport instead of 25.");
            DrawPanelText(panel, "27) Claidheamohmor now gives +30 HP, full charge turn control, and impact damage at any range.");
            DrawPanelText(panel, "28) Persian Persuader gives +30 HP, up from +28.");
        }
        case 83: //34.0
        {
            DrawPanelText(panel, "29 BFB has been enabled. No double jump. -12.5% speed. Hype constantly drains. 4x drain vs HHH.");
            DrawPanelText(panel, "30) Soda Popper has been enabled. Hype grants crits, but no extra jumps.");
            DrawPanelText(panel, "31) Bonk has been enabled and is now a bonk potion.");
            DrawPanelText(panel, "32) Acts like the healing aura halloween spell instead of bonk.");
            DrawPanelText(panel, "33) Bonk potion negates rage stun for the caster only.");
        }
        case 82: //34.0
        {
            DrawPanelText(panel, "34) Darwin's Danger Shield now gets the same weak SMG as Cozy Camper.");
            DrawPanelText(panel, "35) Darwin's Danger Shield no longer has damage resistance nor vulnerability.");
            DrawPanelText(panel, "36) Zatoichi has +30 base health and removes afterburn on hit.");
            DrawPanelText(panel, "37) Shahanshah does normal damage if greater than 50% health, and 66% more damage if at 50% health or less.");
            DrawPanelText(panel, "38) Medic crossbow nerfed to 1.45x damage.");
            DrawPanelText(panel, "39) Phlog damage reduced by half when not Crit Mmmph'd.");
        }
        case 81: //34.0
        {
            DrawPanelText(panel, "40) Easter Bunny has 40pct knockback resist in light of the crit eggs.");
            DrawPanelText(panel, "41) Reduced knockback resistance on The Astronaut.");
            DrawPanelText(panel, "42) Added Hard and Lunatic mode. See !halemode to change.");
            DrawPanelText(panel, "43) Anchor now properly stops knockback from sentries.");
            DrawPanelText(panel, "44) Nerfed car and TNT on vsh_minegay_b3 to prevent cheap explosion kills.");
            DrawPanelText(panel, "45) Medics cannot gain uber from weapons while ubercharged on maps where it's overpowered.");
            DrawPanelText(panel, "46) Wrap assassin baubles do 6.66x damage, and has 2 ammo.");
        }
        case 80: //34.0
        {
            DrawPanelText(panel, "47) Cleaver does 3x damage to a stunned boss.");
            DrawPanelText(panel, "48) Airblast has a cooldown of 1.35 instead of 0.75.");
            DrawPanelText(panel, "49) Cloaking next to a dispenser drains your cloak faster.");
            DrawPanelText(panel, "50) Fixed final player disconnect not giving the remaining players mini/crits.");
            DrawPanelText(panel, "51) Fixed Cave Johnson's music spamming.");
            DrawPanelText(panel, "52) Fixed players not regenerating on spawn and having items of the opposite team color.");
        }
        case 79: //0x19
        {
            DrawPanelText(panel, "1) Added crits and huntsman stats to The Fortified Compound.");
            DrawPanelText(panel, "2) Hitman's Heatmaker hits 450 on headshot, but 50 on bodyshot.");
            DrawPanelText(panel, "3) Hitman's Heatmaker does not gain scoped charge.");
        }
        case 78: //0x18
        {
            DrawPanelText(panel, "1) Added the !setboss command for donators to choose their boss.");
            DrawPanelText(panel, "2) Credits to Nergal.");
            DrawPanelText(panel, "3) Demo shields can now only be broken by direct shot lemons from Cave Johnson.");
            DrawPanelText(panel, "4) All heavy food now acts like both a Sandvich (full heal) and Buffalo Steak (speed/minicrits/damage vuln).");
            DrawPanelText(panel, "4) Buffalo Steak Sandvich no longer restricts you to melee. (No food items will).");
        }
        case 77: //0x17
        {
            DrawPanelText(panel, "1) Huo-Long Heatmaker has no movement penalty while deployed.");
            DrawPanelText(panel, "2) Being healed by Vaccinator no longer makes your shield unbreakable.");
            DrawPanelText(panel, "3) (Anchor) Bosses take no pushback from damage while ducking on the ground.");
            DrawPanelText(panel, "4) Hale's HP formula has been rewritten. (Still nearly the same HP amounts).");
        }
        case 76: //0x16
        {
            DrawPanelText(panel, "This is one small step for man. One giant leap for John Madden.");
            DrawPanelText(panel, "1) Nue cannot take ammo from dispensers.");
            DrawPanelText(panel, "2) Nue only gets bonus damage while undisguised, unless backstab.");
            DrawPanelText(panel, "3) Heavy shotgun users take 2x explosive and fire damage.");
            DrawPanelText(panel, "4) GRU drains health again.");
            DrawPanelText(panel, "5) Relaxed the anti-suicide measures, but increased how long suicide is blocked.");
        }
        case 75: //0x15
        {
            DrawPanelText(panel, "1) Reintroduced Medieval mode. Boss HP is divided by 2.6 in this mode.");
            DrawPanelText(panel, "2) In medieval mode, Cave Johnson cannot spawn.");
            DrawPanelText(panel, "3) Relaxed some class limits globally.");
            DrawPanelText(panel, "4) Nue's rage requires backstabs again in light of the damage hiding.");
        }
        case 74: //0x14
        {
            DrawPanelText(panel, "1) Reintroduced The Easter Bunny, but only during Easter.");
            DrawPanelText(panel, "2) Nerfed Easter Bunny's rage to have a 40\% damage penalty.");
            DrawPanelText(panel, "3) Beggar's Bazooka overload jumping reverted to not destroy your ammo.");
            DrawPanelText(panel, "4) Beggar's Bazooka gains minicrits if the soldier is rocket jumping while using it.");
            DrawPanelText(panel, "5) Random chance for military area to spawn medium health packs.");
        }
        case 73: //0x13
        {
            DrawPanelText(panel, "1) Made it harder to identify Nue during her rage.");
            DrawPanelText(panel, "2) GRU's 25% damage vulnerability now applies to lemons.");
            DrawPanelText(panel, "3) Nade jumping now properly has a 48\% damage reduction.");
        }
        case 72: //0x12
        {
            DrawPanelText(panel, "1) Cave Johnon's rage stun distance is smaller.");
            DrawPanelText(panel, "2) CBS's rage stun distance is smaller too, but still larger than Cave's.");
            DrawPanelText(panel, "3) CBS's arrows are now just as strong as they used to be (insta-kill in most cases).");
            DrawPanelText(panel, "4) Manmelter always crits, while revenge crits do bonus damage.");
            DrawPanelText(panel, "5) Blutsauger buffed to gain 2\% uber and 9hp on hit.");
            DrawPanelText(panel, "6) Amputator/Vita-Saw, HHH-axe, and Huntsman (The Stab) can no longer Thriller taunt.");
        }
        case 71: //0x12
        {
            DrawPanelText(panel, "7) Properly nerfed Cave's lemon nades to shoot 10\% slower instead of faster.");
            DrawPanelText(panel, "8) Added Cave Johnson's kill and backstab voice lines.");
            DrawPanelText(panel, "9) Fixed a bug where Cave Johnson's music can overlap itself.");
            DrawPanelText(panel, "10) Vaccinator's wrong resist type warning is changed during Cave Johnson.");
            DrawPanelText(panel, "11) Player became X boss moved upwards slightly to not cover your crosshair.");
            DrawPanelText(panel, "12) Battalion's Backup rage increases by damage from lemons.");
        }
        case 70: //0x11
        {
            DrawPanelText(panel, "1) Wrap Assassin gains its ornament back if you hit Hale with it.");
            DrawPanelText(panel, "2) Vaccinator now regens the ammo of the medic using it during uber.");
            DrawPanelText(panel, "3) Fixed Vaccinator draining ammo instead of giving ammo.");
        }
        case 69: //0x11
        {
            DrawPanelText(panel, "1) Cow mangler gives afterburn immunity.");
            DrawPanelText(panel, "2) L'etranger's 40% cloak is replaced with quiet decloak.");
            DrawPanelText(panel, "3) Removed -7 HP per second on GRU.");
            DrawPanelText(panel, "4) HHH now alerts their teleport target that he teleported to them");
            DrawPanelText(panel, "5) HHH can get stuck in soldiers and scouts, but not other classes on teleport.");
            DrawPanelText(panel, "6) Nue's rage gimmick is \"easier to use\" now, but she only does 80 damage to buildings.");
            DrawPanelText(panel, "7) Touhou Death SFX during Nue Houjuu.");
        }
        case 68: //0x10
        {
            DrawPanelText(panel, "Warning! Unidentified Fantastic Object Incoming!");
            DrawPanelText(panel, "1) Blocked Soda-Popper.");
            DrawPanelText(panel, "2) Lemons no longer insta-fill Battalion's Backup meter");
            DrawPanelText(panel, "3) HHH can no longer wallclimb during round startup to suicide.");
            DrawPanelText(panel, "4) Persian Persuader now gives 2x secondary ammo.");
            DrawPanelText(panel, "5) Phlogistinator nerfed to a 75% resistence during Crit Mmmph.");
        }
        case 67: //0x0F
        {
            DrawPanelText(panel, "If life gives you lemons, make lemon-nades.");
            DrawPanelText(panel, "1) Demo boots can now get 1024 stomp damage.");
            DrawPanelText(panel, "2) Fixed control point being cappable with more than 2 players");
        }
        case 66: //0x0E
        {
            DrawPanelText(panel, "1) Fixed an error with cookies preventing newcomers from being Hale.");
            DrawPanelText(panel, "2) Diamondback gets 3 crits on backstab.");
            DrawPanelText(panel, "3) Diamondback crit shots do bonus damage similar to the Ambassador.");
            DrawPanelText(panel, "4) Pyro shotgun buffed to ignite on 50 damage without crits.");
            DrawPanelText(panel, "5) During crits, it still has to get 64.");
            DrawPanelText(panel, "6) New festives behave properly.");
            DrawPanelText(panel, "7) Nerfed Batt's Backup to 210hp.");
            DrawPanelText(panel, "8) Blocked Short Circuit.");
        }
        case 65: //0x0D
        {
            DrawPanelText(panel, "1) Buffed CBS's rage distance to match Vagineer.");
            DrawPanelText(panel, "2) Pyro can airblast jump if not using the degreaser or backburner.");
            DrawPanelText(panel, "3) Pyro takes 91% less damage during Phlogistinator Crit Mmmph.");
            DrawPanelText(panel, "4) Phlogistinator disables flaregun/other crits.");
            DrawPanelText(panel, "5) Backburner has a chargeable airblast.");
            DrawPanelText(panel, "6) Heavy showdown taunt now heals him like shotguns do.");
            DrawPanelText(panel, "7) If noone wants to be Hale, someone is chosen randomly.");
        }
        case 64: //0x0C
        {
            DrawPanelText(panel, "1) Medieval maps are enabled.");
            DrawPanelText(panel, "2) Hale's health is divided by 3.6 in medieval mode.");
            DrawPanelText(panel, "3) Medieval maps only last 25 minutes instead of 45.");
            DrawPanelText(panel, "4) Class restrictions in medieval maps are less strict.");
            DrawPanelText(panel, "5) Damage from falling off maps has been reduced to a max of 490.");
        }
        case 63: //0x0B
        {
            DrawPanelText(panel, "1) Deadringer gives notifications of its status.");
            DrawPanelText(panel, "2) HHH can only get stuck in Scouts on teleport.");
            DrawPanelText(panel, "3) You can toggle gaining queue points with !haletoggle.");
            DrawPanelText(panel, "4) Do not suicide as Hale within 10 seconds of becoming him.");
            DrawPanelText(panel, "5) It's safe to suicide after the \"Player became Hale with X Health\" fades away.");
            DrawPanelText(panel, "6) Nerfed Military Area.");
        }
        case 62: //0x0A
        {
            DrawPanelText(panel, "1) Capping is enabled.");
            DrawPanelText(panel, "2) The cap is reset and disabled for 5 seconds if anyone hurts Hale.");
            DrawPanelText(panel, "3) This also applies if Hale hurts a player.");
            DrawPanelText(panel, "4) Fixed a glitch with the Bazaar Bargain.");
            DrawPanelText(panel, "5) Pomson generates half the usual rage for Hale.");
            DrawPanelText(panel, "6) Normal Engie shotgun returns half your damage as metal.");
            DrawPanelText(panel, "7) Widowmaker can give ammo up to 512.");
        }
        case 61: //0x09
        {
            DrawPanelText(panel, "1) The Disciplinary Action gives speed buff on hitting Hale.");
            DrawPanelText(panel, "2) The Blutsauger is enabled and can overheal medics using it.");
            DrawPanelText(panel, "3) The Blutsauger gains 1pct uber on hit.");
            DrawPanelText(panel, "4) The Blutsauger on hit, gains 6hp instead of 3hp.");
            DrawPanelText(panel, "5) Xbow buffed from 1.45x to 1.7x damage.");
        }
        case 60: //0x08
        {
            DrawPanelText(panel, "1) Limited HHH's wallclimbing to 10 in a row.");
            DrawPanelText(panel, "2) HHH's weighdown timer is reset on wallclimb.");
            DrawPanelText(panel, "3) Bazaar Bargain loses all heads on miss, but doesn't lose heads on scoped bodyshot.");
            DrawPanelText(panel, "4) Sydney Sleeper generates half the usual rage for Hale.");
            DrawPanelText(panel, "5) Removed recent change to Amputator.");
            DrawPanelText(panel, "6) Cannot wallclimb if your HP is low enough that it'll kill you.");
            DrawPanelText(panel, "7) Vaccinator gives ammo on uber, similar to a level 1 dispenser.");
        }
        case 59: //0x07
        {
            DrawPanelText(panel, "1) Rebalanced market gardening again and added alerts for MGing.");
            DrawPanelText(panel, "2) Rebalanced backstabs again.");
            DrawPanelText(panel, "3) Rebalanced CBS's arrows given on rage amount.");
            DrawPanelText(panel, "4) If you're alone in the server, a bot will spawn so you can mess around.");
            DrawPanelText(panel, "5) Server automatically restarts on crash.");
            DrawPanelText(panel, "6) Fixed telefrag and mantread stomp damage.");
            DrawPanelText(panel, "7) Telefrags technically not changed, but mantread stomps can now OHKO Hale");
            DrawPanelText(panel, "---- instead of leaving him with 1hp.");
        }
        case 58: //0x06
        {
            DrawPanelText(panel, "1) Huntsman has 2x ammo.");
            DrawPanelText(panel, "2) Medic Xbow given 1.45x damage, still weaker than Hunstman.");
            DrawPanelText(panel, "3) Killing Gloves of Boxing give 5 seconds of allcrits after hitting Hale.");
            DrawPanelText(panel, "4) Fists of Steel tank melee, take more ranged dmg, and reduce run speed by 30%.");
            DrawPanelText(panel, "5) Persian Persuader max primary ammo increased, +28 base health.");
            DrawPanelText(panel, "6) Claidheamohmor longer charge duration, more turn control, +30 base health.");
            DrawPanelText(panel, "7) Claidheamohmor gains 4x charge impact damage.");
        }
        case 57: //0x05
        {
            DrawPanelText(panel, "1) Vaccinator has been enabled.");
            DrawPanelText(panel, "2) Vaccinator can resist the explosive power of Hale's fists.");
            DrawPanelText(panel, "3) Vaccinator gives crits on uber alongside its usual effects.");
            DrawPanelText(panel, "4) Cow Mangler shots always ignite Hale as last player or while ubered.");
            DrawPanelText(panel, "5) Soldier cannot be lit on fire with the Cow Mangler");
            DrawPanelText(panel, "6) Bazaar Bargain enabled.");
            DrawPanelText(panel, "7) Big earner gives full cloak on backstab.");
            //DrawPanelText(panel, "7) Cow Mangler charged shots do critical damage.");
        }
        case 56: //0x04
        {
            DrawPanelText(panel, "1) Bonk replaced with Crit-a-Cola.");
            DrawPanelText(panel, "2) Added 25% melee vulnerability to GRU while active.");
            DrawPanelText(panel, "3) Added Medirope bungee cord.");
            DrawPanelText(panel, "4) Axtinguisher/Sun on a Stick/Neon Annihilator do bonus damage to burning targets.");
            DrawPanelText(panel, "5) Sniper rifles have been fixed to do a static 3x damage.");
            DrawPanelText(panel, "6) Bushwacka blocks healing while in use.");
            DrawPanelText(panel, "7) Cozy Camper SMG no longer bleeds, has no mini/crits but has 35% bonus damage.");
        }
        case 55: //0x04
        {
            DrawPanelText(panel, "8) Machina does 1.33x damage on headshots.");
            DrawPanelText(panel, "9) Ambassador does 2.5x damage on headshots.");
            DrawPanelText(panel, "10) Short Circuit stuns for 1.5 seconds.");
            DrawPanelText(panel, "11) Short Circuit ammo increased to 32 on hit and 64 on miss.");
            DrawPanelText(panel, "12) Short Circuit has a cooldown time of ~3 seconds.");
        }
        case 54: //0x03
        {
            DrawPanelText(panel, "1) Reunited Equalizer and Escape Plan.");
            DrawPanelText(panel, "2) Market Gardener does bonus damage to hale, similar to backstabs.");
            DrawPanelText(panel, "3) Backstab formula rebalanced to do better damage to lower HP Hales.");
            DrawPanelText(panel, "4) Fixed HUD text flickering while tabbed to view scores.");
            DrawPanelText(panel, "5) !haledmg on set by default.");
            DrawPanelText(panel, "6) Amputator/Vita-Saw have the same taunt.");
            DrawPanelText(panel, "7) Amputator/Vita-Saw act like Ubersaw.");
        }
        case 53: //0x02
        {
            DrawPanelText(panel, "1) Enabled Heavy's vampire shotguns.");
            DrawPanelText(panel, "2) Heal based on your damage. Max 1500hp.");
            DrawPanelText(panel, "3) Enabled Pyro's ignition shotguns.");
            DrawPanelText(panel, "4) Ignite Hale if you deal 64 damage or higher.");
            DrawPanelText(panel, "5) HHH sniper highlight removed on teleport.");
            DrawPanelText(panel, "6) Added !joindata to open the TF2Data group page.");
            DrawPanelText(panel, "7) Added !statdata to open Gametracker stats.");
        }
        case 52: //0x02
        {
            DrawPanelText(panel, "8) Kunai gives 180 hp instead of 100 on backstab.");
            DrawPanelText(panel, "9) Kunai max hp increased to 512 from 270.");
            DrawPanelText(panel, "10) Kunai removes 60hp instead of 65 (so you start at 65hp).");
            DrawPanelText(panel, "11) Enough to survive one hit from Hale with the deadringer.");
            DrawPanelText(panel, "12) Removed sappers.");
            DrawPanelText(panel, "13) Removed mark for death from GRU and The Escape Plan.");
            DrawPanelText(panel, "14) Beggar's Bazooka can take ammo from dispensers.");
            DrawPanelText(panel, "15) Beggar's Bazooka only has +2 degrees angle variance.");
        }
        case 51: //0x01
        {
            DrawPanelText(panel, "1) Chdata's vsh:data implemented");
            DrawPanelText(panel, "2) Short circuit stun: 1 second");
            DrawPanelText(panel, "3) HHH can wallclimb");
            DrawPanelText(panel, "4) Easter Bunny Removed");
            DrawPanelText(panel, "5) Cleaver/Rescue ranger crits added");
            DrawPanelText(panel, "6) Darwin's Danger Shield Re-enabled");
            DrawPanelText(panel, "7) CBS reduced to 4 arrows max");
        }
        case 50: //0x01
        {
            DrawPanelText(panel, "8) RageDMG increased from 1900 to 3500");
            DrawPanelText(panel, "9) Bushwacka doesn't disable crits");
            DrawPanelText(panel, "10) Removed annoying Halenext msg");
            DrawPanelText(panel, "11) Mantread stomp dmg: 1024");
            DrawPanelText(panel, "12) Mantread jump height rebuffed");
            DrawPanelText(panel, "13) Demo boots - 90% reduced FallDMG");
            DrawPanelText(panel, "14) Nade launchers reduce self blast dmg");
            DrawPanelText(panel, "---- by 48% for demojumping");
        }
        case 49: //0x01
        {
            DrawPanelText(panel, "15) Soda Popper crits instead of minicrits");
            DrawPanelText(panel, "16) Nades/Stickies minicrit airshots");
            DrawPanelText(panel, "17) Battalion's Backup +22hp +75% knockback reduction");
            DrawPanelText(panel, "18) Shahanshah blocks healing while in use");
            DrawPanelText(panel, "19) Medic xbow gives +16% uber instead of +10%");
            DrawPanelText(panel, "20) BFB replaced with Scattergun");
            DrawPanelText(panel, "21) Bonk replaced with Mad Milk");
        }
        case 48: //142
        {
             DrawPanelText(panel, "1) Festive fixes");
             DrawPanelText(panel, "2) Hopefully fixed targes disappearing");
#if defined EASTER_BUNNY_ON
             DrawPanelText(panel, "3) Easter and April Fool's Day so close together... hmmm...");
#endif
        }
        case 47: //141
        {
             DrawPanelText(panel, "1) Fixed bosses disguising");
             DrawPanelText(panel, "2) Updated action slot whitelist");
             DrawPanelText(panel, "3) Updated sniper rifle list, Fest. Huntsman");
             DrawPanelText(panel, "4) Medigun speed works like Quick-Fix");
             DrawPanelText(panel, "5) Medigun+gunslinger vm fix");
             DrawPanelText(panel, "6) CBS gets Fest. Huntsman");
             DrawPanelText(panel, "7) Spies take more dmg while cloaked (normal watch)");
             DrawPanelText(panel, "8) Experimental backstab block animation");
        }
        case 46: //140
        {
             DrawPanelText(panel, "1) Dead Ringers have no cloak defense buff. Normal cloaks do.");
             DrawPanelText(panel, "2) Fixed Sniper Rifle reskin behavior");
             DrawPanelText(panel, "3) Boss has small amount of stun resistance after rage");
             DrawPanelText(panel, "4) Fixed HHH/CBS models");
        }
        case 45: //139c
        {
             DrawPanelText(panel, "1) Backstab disguising smoother/less obvious");
             DrawPanelText(panel, "2) Rage 'dings' dispenser/tele, to help locate Hale");
             DrawPanelText(panel, "3) Improved skip panel");
             DrawPanelText(panel, "4) Removed crits from sniper rifles, now do 2.9x damage");
             DrawPanelText(panel, "-- Sleeper does 2.4x damage, 2.9x if Hale's rage is >90pct");
             DrawPanelText(panel, "-- Bushwacka nerfs still apply");
             DrawPanelText(panel, "-- Minicrit- less damage, more knockback");
             DrawPanelText(panel, "5) Scaled sniper rifle glow time a bit better");
             DrawPanelText(panel, "6) Fixed Dead Ringer spy death icon");
        }
        case 44: //139c
        {
             DrawPanelText(panel, "7) BabyFaceBlaster will fill boost normally, but will hit 100 and drain+minicrits");
             DrawPanelText(panel, "8) Can't Eureka+destroy dispenser to insta-tele");
             DrawPanelText(panel, "9) Phlogger invuln during the taunt");
             DrawPanelText(panel, "10) Added !hale_resetq");
             DrawPanelText(panel, "11) Heatmaker gains Focus on hit (varies by charge)");
             DrawPanelText(panel, "12) Bosses get short defense buff after rage");
             DrawPanelText(panel, "13) Cozy Camper comes with SMG - 1.5s bleed, no random crit, -15% dmg");
             DrawPanelText(panel, "14) Valve buffed Crossbow. Balancing.");
             DrawPanelText(panel, "15) New cvars-hale_force_team, hale_enable_eureka");
        }
        case 43: //139c
        {
             DrawPanelText(panel, "16) Powerlord's Better Backstab Detection");
             DrawPanelText(panel, "17) Backburner has charged airblast");
             DrawPanelText(panel, "18) Skip Hale notification mixes things up");
             DrawPanelText(panel, "19) Bosses may or may not obey Pyrovision voice rules. Or both.");
        }
        case 42: //139
        {
             DrawPanelText(panel, "1) !hale_resetqueuepoints");
             DrawPanelText(panel, "-- From chat, asks for confirmation");
             DrawPanelText(panel, "-- From console, no confirmation!");
             DrawPanelText(panel, "2) Help panel stops repeatedly popping up");
             DrawPanelText(panel, "3) Medic is credited 100% of damage done during uber");
             DrawPanelText(panel, "4) Bushwacka changes:");
             DrawPanelText(panel, "-- Hit a wall to climb it");
             DrawPanelText(panel, "-- Slower fire rate");
             DrawPanelText(panel, "-- Disables crits on rifles (not Huntsman)");
             DrawPanelText(panel, "-- Effect does not occur during HHH round");
             DrawPanelText(panel, "...contd.");
        }

        case 41: //139
        {
             DrawPanelText(panel, "5) Late December increases chances of CBS appearing");
             DrawPanelText(panel, "6) If map changes mid-round, queue points not lost");
             DrawPanelText(panel, "7) Fixed HHH tele (again).");
             DrawPanelText(panel, "8) HHH tele removes Sniper Rifle glow");
             DrawPanelText(panel, "9) Mantread stomp deals 5x damage to Hale");
             DrawPanelText(panel, "10) Rage stun range- Vagineer increased, CBS decreased");
             DrawPanelText(panel, "11) Balanced CBS arrows");
             DrawPanelText(panel, "12) Minicrits will not play loud sound to all players");
             DrawPanelText(panel, "13) Dead Ringer will not be able to activate for 2s after backstab");
             DrawPanelText(panel, "-- Other spy watches can");
             DrawPanelText(panel, "14) Fixed crit issues");
             DrawPanelText(panel, "15) Hale queue now accepts negative points");
             DrawPanelText(panel, "...contd.");
        }
        case 40: //139
        {
             DrawPanelText(panel, "16) For server owners:");
             DrawPanelText(panel, "-- Translations updated");
             DrawPanelText(panel, "-- Added hale_spec_force_boss cvar");
             DrawPanelText(panel, "-- Now attempts to integrate tf2items config");
             DrawPanelText(panel, "-- With SteamTools, changes game desc");
             DrawPanelText(panel, "-- Plugin may warn if config is outdated");
             DrawPanelText(panel, "-- Jump/tele charge defines at top of code");
             DrawPanelText(panel, "17) For mapmakers:");
             DrawPanelText(panel, "-- Indicate that your map has music:");
             DrawPanelText(panel, "-- Add info_target with name 'hale_no_music'");
             DrawPanelText(panel, "18) Third Degree hit adds uber to healers");
             DrawPanelText(panel, "19) Knockback resistance on Hale/HHH");
        }
        case 39: //138
        {
             DrawPanelText(panel, "1) Bots will use rage.");
             DrawPanelText(panel, "2) Doors only forced open on specified maps");
             DrawPanelText(panel, "3) CBS spawns more during Winter holidays");
             DrawPanelText(panel, "4) Deathspam for teamswitch gone");
             DrawPanelText(panel, "5) More notice for next Hale");
             DrawPanelText(panel, "6) Wrap Assassin has 2 ammo");
             DrawPanelText(panel, "7) Holiday Punch slightly disorients Hale");
             DrawPanelText(panel, "-- If stunned Heavy punches Hale, removes stun");
             DrawPanelText(panel, "8) Mantreads increase rocketjump distance");
        }
        case 38: //138
        {
             DrawPanelText(panel, "9) Fixed CBS Huntsman rate of fire");
             DrawPanelText(panel, "10) Fixed permanent invuln Vagineer glitch");
             DrawPanelText(panel, "11) Jarate removes some Vagineer uber time and 1 CBS arrow");
             DrawPanelText(panel, "12) Low-end Medic assist damage now counted");
             DrawPanelText(panel, "13) Hitting Dead Ringers does more damage (as balancing)");
             DrawPanelText(panel, "14) Eureka Effect temporarily removed)");
             DrawPanelText(panel, "15) HHH won't get stuck in ceilings when teleporting");
             DrawPanelText(panel, "16) Further updates pending");
        }
        case 37:    //137
        {
                DrawPanelText(panel, "1) Fixed taunt/rage.");
                DrawPanelText(panel, "2) Fixed rage+high five.");
                DrawPanelText(panel, "3) hale_circuit_stun - Circuit Stun time (0 to disable)");
                DrawPanelText(panel, "4) Fixed coaching bug");
                DrawPanelText(panel, "5) Config file for map doors");
                DrawPanelText(panel, "6) Fixed floor-Hale");
                DrawPanelText(panel, "7) Fixed Circuit stun");
                DrawPanelText(panel, "8) Fixed negative health bug");
                DrawPanelText(panel, "9) hale_enabled isn't a dummy cvar anymore");
                DrawPanelText(panel, "10) hale_special cmd fixes");
        }
        case 36: //137
        {
             DrawPanelText(panel, "11) 1st-round cap enables after 1 min.");
             DrawPanelText(panel, "12) More invalid Hale checks.");
             DrawPanelText(panel, "13) Backstabs act like Razorbackstab (2s)");
             DrawPanelText(panel, "14) Fixed map check error");
             DrawPanelText(panel, "15) Wanga Prick -> Eternal Reward effect");
             DrawPanelText(panel, "16) Jarate removes 8% of Hale's rage meter");
             DrawPanelText(panel, "17) The Fan O' War removes 5% of the rage meter on hit");
             DrawPanelText(panel, "18) Removed Shortstop reload penalty");
             DrawPanelText(panel, "19) VSH_OnMusic forward");
        }
        case 35: //1369
        {
             DrawPanelText(panel, "1) Fixed spawn door blocking.");
             DrawPanelText(panel, "2) Cleaned up HUD text (health, etc).");
             DrawPanelText(panel, "3) VSH_OnDoJump now has a bool for superduper.");
             DrawPanelText(panel, "4) !halenoclass changed to !haleclassinfotoggle.");
             DrawPanelText(panel, "5) Fixed invalid clients becoming Hale");
             DrawPanelText(panel, "6) Removed teamscramble from first round.");
             DrawPanelText(panel, "7) Vagineer noises:");
             DrawPanelText(panel, "-- Nope for no");
             DrawPanelText(panel, "-- Gottam/mottag (same as jump but quieter) for Move Up");
             DrawPanelText(panel, "-- Hurr for everything else");
        }
        case 34: //1369
        {
             DrawPanelText(panel, "8) All map dispensers will be on the non-Hale team (fixes health bug)");
             DrawPanelText(panel, "9) Fixed command flags on overlay command");
             DrawPanelText(panel, "10) Fixed soldier shotgun not dealing midair minicrits.");
             DrawPanelText(panel, "11) Fixed invalid weapons on clients");
             DrawPanelText(panel, "12) Damage indicator (+spec damage indicator)");
             DrawPanelText(panel, "13) Hale speed remains during humiliation time");
             DrawPanelText(panel, "14) SuperDuperTele for HHH stuns for 4s instead of regular 2");
        }
        case 33: //1369
        {
             DrawPanelText(panel, "15) Battalion's Backup adds +10 max hp, but still only overheal to 300");
             DrawPanelText(panel, "-- Full rage meter when hit by Hale. Buff causes drastic defense boost.");
             DrawPanelText(panel, "16) Fixed a telefrag glitch");
             DrawPanelText(panel, "17) Powerjack is now +25hp on hit, heal up to +50 overheal");
             DrawPanelText(panel, "18) Backstab now shows the regular hit indicator (like other weapons do)");
             DrawPanelText(panel, "19) Kunai adds 100hp on backstab, up to 270");
             DrawPanelText(panel, "20) FaN/Scout crit knockback not nerfed to oblivion anymore");
             DrawPanelText(panel, "21) Removed Short Circuit stun (better effect being made)");
        }
        case 32: //1368
        {
             DrawPanelText(panel, "1) Now FaN and Scout crit knockback is REALLY lessened.");
             DrawPanelText(panel, "2) Medic says 'I'm charged' when he gets fully uber-charge with syringegun.");
             DrawPanelText(panel, "3) Team will scramble in 1st round, if 1st round is default arena.");
             DrawPanelText(panel, "4) Now client can disable info about changes of classes, displayed when round started.");
             DrawPanelText(panel, "5) Powerjack adds 50HPs per hit.");
             DrawPanelText(panel, "6) Short Circuit stuns Hale for 2.0 seconds.");
             DrawPanelText(panel, "7) Vagineer says \"hurr\"");
             //DrawPanelText(panel, "8) Added support of VSH achievements.");
        }
        case 31: //1367
        {
             DrawPanelText(panel, "1) Map-specific fixes:");
             DrawPanelText(panel, "-- Oilrig's pit no longer allows HHH to instatele");
             DrawPanelText(panel, "-- Arakawa's pit damage drastically lessened");
             DrawPanelText(panel, "2) General map fixes: disable spawn-blocking walls");
             DrawPanelText(panel, "3) Cap point now properly un/locks instead of fake-unlocking.");
             DrawPanelText(panel, "4) Tried fixing double-music playing.");
             DrawPanelText(panel, "5) Fixed Eternal Reward disguise glitch - edge case.");
             DrawPanelText(panel, "6) Help menus no longer glitch votes.");
        }
        case 30: //1366
        {
             DrawPanelText(panel, "1) Fixed superjump velocity code.");
             DrawPanelText(panel, "2) Fixed replaced Rocket Jumpers not minicritting Hale in midair.");
        }
        case 29: //1365
        {
         DrawPanelText(panel, "1) Half-Zatoichi is now allowed. Heal 35 health on hit, but must hit Hale to remove Honorbound.");
         DrawPanelText(panel, "-- Can add up to 25 overheal");
         DrawPanelText(panel, "-- Starts the round bloodied.");
         DrawPanelText(panel, "2) Fixed Hale not building rage when only Scouts remain.");
         DrawPanelText(panel, "3) Tried fixing Hale disconnect/nextround glitches (including music).");
         DrawPanelText(panel, "4) Candycane spawns healthpack on hit.");
        }
        case 28:    //1364
        {
            DrawPanelText(panel, "1) Added convar hale_first_round (default 0). If it's 0, first round will be default arena.");
            DrawPanelText(panel, "2) Added more translations.");
        }
        case 27:    //1363
        {
            DrawPanelText(panel, "1) Fixed a queue point exploit (VoiDeD is mean)");
            DrawPanelText(panel, "2) HHH has backstab/death sound now");
            DrawPanelText(panel, "3) First rounds are normal arena");
            DrawPanelText(panel, "-- Some weapon replacements still apply!");
            DrawPanelText(panel, "-- Teambalance is still off, too.");
            DrawPanelText(panel, "4) Fixed arena_ maps not switching teams occasionally");
            DrawPanelText(panel, "-- After 3 rounds with a team, has a chance to switch");
            DrawPanelText(panel, "-- Will add a cvar to keep Hale always blue/force team, soon");
            DrawPanelText(panel, "5) Fixed pit damage");
        }
        case 26:    //1361 and 2
        {
            DrawPanelText(panel, "1) CBS music");
            DrawPanelText(panel, "2) Soldiers minicrit Hale while he's in midair.");
            DrawPanelText(panel, "3) Direct Hit crits instead of minicrits");
            DrawPanelText(panel, "4) Reserve Shooter switches faster, +10% dmg");
            DrawPanelText(panel, "5) Added hale_stop_music cmd - admins stop music for all");
            DrawPanelText(panel, "6) FaN and Scout crit knockback is lessened");
            DrawPanelText(panel, "7) Your halemusic/halevoice settings are saved");
            DrawPanelText(panel, "1.362) Sounds aren't stupid .mdl files anymore");
            DrawPanelText(panel, "1.362) Fixed translations");
        }
        case 25:    //136
        {
            DrawPanelText(panel, "MEGA UPDATE by FlaminSarge! Check next few pages");
            DrawPanelText(panel, "SUGGEST MANNO-TECH WEAPON CHANGES");
            DrawPanelText(panel, "1) Updated CBS model");
            DrawPanelText(panel, "2) Fixed last man alive sound");
            DrawPanelText(panel, "3) Removed broken hale line, fixed one");
            DrawPanelText(panel, "4) New HHH rage sound");
            DrawPanelText(panel, "5) HHH music (/halemusic)");
            DrawPanelText(panel, "6) CBS jump noise");
            DrawPanelText(panel, "7) /halevoice and /halemusic to turn off voice/music");
            DrawPanelText(panel, "8) Updated natives/forwards (can change rage dist in fwd)");
        }
        case 24:    //136
        {
            DrawPanelText(panel, "9) hale_crits cvar to turn off hale random crits");
            DrawPanelText(panel, "10) Fixed sentries not repairing when raged");
            DrawPanelText(panel, "-- Set hale_ragesentrydamagemode 0 to force engineer to pick up sentry to repair");
            DrawPanelText(panel, "11) Now uses sourcemod autoconfig (tf/cfg/sourcemod/)");
            DrawPanelText(panel, "12) No longer requires saxton_hale_points.cfg file");
            DrawPanelText(panel, "-- Now using clientprefs for queue points");
            DrawPanelText(panel, "13) When on non-VSH map, team switch does not occur so often.");
            DrawPanelText(panel, "14) Should have full replay compatibility");
            DrawPanelText(panel, "15) Bots work with queue, are Hale less often");
        }
        case 23:    //136
{
            DrawPanelText(panel, "16) Hale's health increased by 1 (in code)");
            DrawPanelText(panel, "17) Many many many many many fixes");
            DrawPanelText(panel, "18) Crossbow +150% damage +10 uber on hit");
            DrawPanelText(panel, "19) Syringegun has overdose speed boost");
            DrawPanelText(panel, "20) Sniper glow time scales with charge (2 to 8 seconds)");
            DrawPanelText(panel, "21) Eyelander/reskins add heads on hit");
            DrawPanelText(panel, "22) Axetinguisher/reskins use fire axe attributes");
            DrawPanelText(panel, "23) GRU/KGB is +50% speed but -7hp/s");
            DrawPanelText(panel, "24) Airblasting boss adds rage (no airblast reload though)");
            DrawPanelText(panel, "25) Airblasting uber vagineer adds time to uber and takes extra ammo");
        }
        case 22:    //136
        {
            DrawPanelText(panel, "26) Frontier Justice allowed, crits only when sentry sees Hale");
            DrawPanelText(panel, "27) Boss weighdown (look down + crouch) after 5 seconds in midair");
            DrawPanelText(panel, "28) FaN is back");
            DrawPanelText(panel, "29) Scout crits/minicrits do less knockback if not melee");
            DrawPanelText(panel, "30) Saxton has his own fists");
            DrawPanelText(panel, "31) Unlimited /halehp but after 3, longer cooldown");
            DrawPanelText(panel, "32) Fist kill icons");
            DrawPanelText(panel, "33) Fixed CBS arrow count (start at 9, but if less than 9 players, uses only that number of players)");
            DrawPanelText(panel, "34) Spy primary minicrits");
            DrawPanelText(panel, "35) Dead ringer fixed");
        }
        case 21:    //136
        {
            DrawPanelText(panel, "36) Flare gun replaced with detonator. Has large jump but more self-damage (like old detonator beta)");
            DrawPanelText(panel, "37) Eternal Reward backstab disguises as random faster classes");
            DrawPanelText(panel, "38) Kunai adds 60 health on backstab");
            DrawPanelText(panel, "39) Randomizer compatibility.");
            DrawPanelText(panel, "40) Medic uber works as normal with crits added (multiple targets, etc)");
            DrawPanelText(panel, "41) Crits stay when being healed, but adds minicrits too (for sentry, etc)");
            DrawPanelText(panel, "42) Fixed Sniper back weapon replacement");
        }
        case 20:    //136
        {
            DrawPanelText(panel, "43) Vagineer NOPE and Well Don't That Beat All!");
            DrawPanelText(panel, "44) Telefrags do 9001 damage");
            DrawPanelText(panel, "45) Speed boost when healing scouts (like Quick-Fix)");
            DrawPanelText(panel, "46) Rage builds (VERY slowly) if there are only Scouts left");
            DrawPanelText(panel, "47) Healing assist damage split between healers");
            DrawPanelText(panel, "48) Fixed backstab assist damage");
            DrawPanelText(panel, "49) Fixed HHH attacking during tele");
            DrawPanelText(panel, "50) Soldier boots - 1/10th fall damage");
            DrawPanelText(panel, "AND MORE! (I forget all of them)");
        }
        case 19:    //135_3
        {
            DrawPanelText(panel, "1)Added point system (/halenext).");
            DrawPanelText(panel, "2)Added [VSH] to VSH messages.");
            DrawPanelText(panel, "3)Removed native VSH_GetSaxtonHaleHealth() added native VSH_GetRoundState().");
            DrawPanelText(panel, "4)There is mini-crits for scout's pistols. Not full crits, like before.");
            DrawPanelText(panel, "5)Fixed issues associated with crits.");
            DrawPanelText(panel, "6)Added FORCE_GENERATION flag to stop errorlogs.");
            DrawPanelText(panel, "135_2 and 135_3)Bugfixes and updated translations.");
        }
        case 18:    //135
        {
            DrawPanelText(panel, "1)Special crits will not removed by Medic.");
            DrawPanelText(panel, "2)Sniper's glow is working again.");
            DrawPanelText(panel, "3)Less errors in console.");
            DrawPanelText(panel, "4)Less messages in chat.");
            DrawPanelText(panel, "5)Added more natives.");
            DrawPanelText(panel, "6)\"Over 9000\" sound returns! Thx you, FlaminSarge.");
            DrawPanelText(panel, "7)Hopefully no more errors in logs.");
        }
        case 17:    //134
        {
            DrawPanelText(panel, "1)Biohazard skin for CBS");
            DrawPanelText(panel, "2)TF2_IsPlayerInCondition() fixed");
            DrawPanelText(panel, "3)Now sniper rifle must be 100perc.charged to glow Hale.");
            DrawPanelText(panel, "4)Fixed Vagineer's model.");
            DrawPanelText(panel, "5)Added Natives.");
            DrawPanelText(panel, "6)Hunstman deals more damage.");
            DrawPanelText(panel, "7)Added reload time (5sec) for Pyro's airblast. ");
            DrawPanelText(panel, "1.34_1 1)Fixed airblast reload when VSH is disabled.");
            DrawPanelText(panel, "1.34_1 2)Fixed airblast reload after detonator's alt-fire.");
            DrawPanelText(panel, "1.34_1 3)Airblast reload time reduced to 3 seconds.");
            DrawPanelText(panel, "1.34_1 4)hale_special 3 is disabled.");
        }
        case 16:    //133
        {
            DrawPanelText(panel, "1)Fixed bugs, associated with Uber-update.");
            DrawPanelText(panel, "2)FaN replaced with Soda Popper.");
            DrawPanelText(panel, "3)Bazaar Bargain replaced with Sniper Rifle.");
            DrawPanelText(panel, "4)Sniper Rifle adding glow to Hale - anyone can see him for 5 seconds.");
            DrawPanelText(panel, "5)Crusader's Crossbow deals more damage.");
            DrawPanelText(panel, "6)Code optimizing.");
        }
        case 15:    //132
        {
            DrawPanelText(panel, "1)Added new Saxton's lines on...");
            DrawPanelText(panel, "  a)round start");
            DrawPanelText(panel, "  b)jump");
            DrawPanelText(panel, "  c)backstab");
            DrawPanelText(panel, "  d)destroy Sentry");
            DrawPanelText(panel, "  e)kill Scout, Pyro, Heavy, Engineer, Spy");
            DrawPanelText(panel, "  f)last man standing");
            DrawPanelText(panel, "  g)killing spree");
            DrawPanelText(panel, "2)Fixed bugged count of CBS' arrows.");
            DrawPanelText(panel, "3)Reduced Hale's damage versus DR by 20 HPs.");
            DrawPanelText(panel, "4)Now two specials can not be at a stretch.");
            DrawPanelText(panel, "v1.32_1 1)Fixed bug with replay.");
            DrawPanelText(panel, "v1.32_1 2)Fixed bug with help menu.");
        }
        case 14:    //131
            DrawPanelText(panel, "1)Now \"replay\" will not change team.");
        case 13:    //130
            DrawPanelText(panel, "1)Fixed bugs, associated with crushes, error logs, scores.");
        case 12:    //129
        {
            DrawPanelText(panel, "1)Fixed random crushes associated with CBS.");
            DrawPanelText(panel, "2)Now Hale's HP formula is ((760+x-1)*(x-1))^1.04");
            DrawPanelText(panel, "3)Added hale_special0. Use it to change next boss to Hale.");
            DrawPanelText(panel, "4)CBS has 9 arrows for bow-rage. Also he has stun rage, but on little distantion.");
            DrawPanelText(panel, "5)Teammates gets 2 scores per each 600 damage");
            DrawPanelText(panel, "6)Demoman with Targe has crits on his primary weapon.");
            DrawPanelText(panel, "7)Removed support of non-Arena maps, because nobody wasn't use it.");
            DrawPanelText(panel, "8)Pistol/Lugermorph has crits.");
        }
        case 11:    //128
        {
            DrawPanelText(panel, "VS Saxton Hale Mode is back!");
            DrawPanelText(panel, "1)Christian Brutal Sniper is a regular character.");
            DrawPanelText(panel, "2)CBS has 3 melee weapons ad bow-rage.");
            DrawPanelText(panel, "3)Added new lines for Vagineer.");
            DrawPanelText(panel, "4)Updated models of Vagineer and HHH jr.");
        }
        case 10:    //999
            DrawPanelText(panel, "Attachables are broken. Many \"thx\" to Valve.");
        case 9: //126
        {
            DrawPanelText(panel, "1)Added the second URL for auto-update.");
            DrawPanelText(panel, "2)Fixed problems, when auto-update was corrupt plugin.");
            DrawPanelText(panel, "3)Added a question for the next Hale, if he want to be him. (/haleme)");
            DrawPanelText(panel, "4)Eyelander and Half-Zatoichi was replaced with Claidheamh Mor.");
            DrawPanelText(panel, "5)Fan O'War replaced with Bat.");
            DrawPanelText(panel, "6)Dispenser and TP won't be destoyed after Engineer's death.");
            DrawPanelText(panel, "7)Mode uses the localization file.");
            DrawPanelText(panel, "8)Saxton Hale will be choosed randomly for the first 3 rounds (then by queue).");
        }
        case 8: //125
        {
            DrawPanelText(panel, "1)Fixed silent HHHjr's rage.");
            DrawPanelText(panel, "2)Now bots (sourcetv too) do not will be Hale");
            DrawPanelText(panel, "3)Fixed invalid uber on Vagineer's head.");
            DrawPanelText(panel, "4)Fixed other little bugs.");
        }
        case 7: //124
        {
            DrawPanelText(panel, "1)Fixed destroyed buildables associated with spy's fake death.");
            DrawPanelText(panel, "2)Syringe Gun replaced with Blutsauger.");
            DrawPanelText(panel, "3)Blutsauger, on hit: +5 to uber-charge.");
            DrawPanelText(panel, "4)Removed crits from Blutsauger.");
            DrawPanelText(panel, "5)CnD replaced with Invis Watch.");
            DrawPanelText(panel, "6)Fr.Justice replaced with shotgun");
            DrawPanelText(panel, "7)Fists of steel replaced with fists.");
            DrawPanelText(panel, "8)KGB replaced with GRU.");
            DrawPanelText(panel, "9)Added /haleclass.");
            DrawPanelText(panel, "10)Medic gets assist damage scores (1/2 from healing target's damage scores, 1/1 when uber-charged)");
        }
        case 6: //123
        {
            DrawPanelText(panel, "1)Added Super Duper Jump to rescue Hale from pit");
            DrawPanelText(panel, "2)Removed pyro's ammolimit");
            DrawPanelText(panel, "3)Fixed little bugs.");
        }
        case 5: //122
        {
            DrawPanelText(panel, "1.21)Point will be enabled when X or less players be alive.");
            DrawPanelText(panel, "1.22)Now it's working :) Also little optimize about player count.");
        }
        case 4: //120
        {
            DrawPanelText(panel, "1)Added new Hale's phrases.");
            DrawPanelText(panel, "2)More bugfixes.");
            DrawPanelText(panel, "3)Improved super-jump.");
        }
        case 3: //112
        {
            DrawPanelText(panel, "1)More bugfixes.");
            DrawPanelText(panel, "2)Now \"(Hale)<mapname>\" can be nominated for nextmap.");
            DrawPanelText(panel, "3)Medigun's uber gets uber and crits for Medic and his target.");
            DrawPanelText(panel, "4)Fixed infinite Specials.");
            DrawPanelText(panel, "5)And more bugfixes.");
        }
        case 2: //111
        {
            DrawPanelText(panel, "1)Fixed immortal spy");
            DrawPanelText(panel, "2)Fixed crashes associated with classlimits.");
        }
        case 1: //110
        {
            DrawPanelText(panel, "1)Not important changes on code.");
            DrawPanelText(panel, "2)Added hale_enabled convar.");
            DrawPanelText(panel, "3)Fixed bug, when all hats was removed...why?");
        }
        case 0: //100
        {
            DrawPanelText(panel, "Released!!!");
            DrawPanelText(panel, "On new version you will get info about changes.");
        }
        default:
        {
            DrawPanelText(panel, "Somehow you've managed to find a glitched version page!");
            DrawPanelText(panel, "Congratulations. Now go fight Hale.");
        }
    }
}

stock SetAmmo(client, slot, ammo)
{
    new weapon = GetPlayerWeaponSlot(client, slot);

    if (IsValidEntity(weapon))
    {
        new iOffset = GetEntProp(weapon, Prop_Send, "m_iPrimaryAmmoType", 1) * 4;
        new iAmmoTable = FindSendPropInfo("CTFPlayer", "m_iAmmo");

        SetEntData(client, iAmmoTable + iOffset, ammo, 4, true);
    }
}

stock GetAmmo(client, slot)
{
    if (!IsValidClient(client)) return -1;

    new weapon = GetPlayerWeaponSlot(client, slot);

    if (IsValidEntity(weapon))
    {
        new iOffset = GetEntProp(weapon, Prop_Send, "m_iPrimaryAmmoType", 1); // * 4;
        //new iAmmoTable = FindSendPropInfo("CTFPlayer", "m_iAmmo");

        //return GetEntData(client, iAmmoTable + iOffset);

        if (iOffset < 0)
        {
            return -1;
        }

        return GetEntProp(client, Prop_Send, "m_iAmmo", _, iOffset);
    }

    return -1;
}

stock GetHealingTarget(client)
{
    new String:s[64];
    new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

    if (medigun <= MaxClients || !IsValidEdict(medigun))
    {
        return -1;
    }

    GetEdictClassname(medigun, s, sizeof(s));

    if (strcmp(s, "tf_weapon_medigun", false) == 0)
    {
        if (GetEntProp(medigun, Prop_Send, "m_bHealing"))
        {
            return GetEntPropEnt(medigun, Prop_Send, "m_hHealingTarget");
        }
    }

    return -1;
}

//stock bool:IsValidClient(iClient)
//{
//    return (0 < iClient && iClient <= MaxClients && IsClientInGame(iClient));
//}

//stock bool:IsValidClient(client, bool:replaycheck = true)
//{
//    if (client <= 0 || client > MaxClients || !IsClientInGame(client) || GetEntProp(client, Prop_Send, "m_bIsCoaching") || (replaycheck && (IsClientSourceTV(client) || IsClientReplay(client))))
//    {
//        return false;
//    }
// 
//    return true;
//}

/*
stock CreateVM(client, String:model[])
{
    new ent = CreateEntityByName("tf_wearable_vm");

    if (!IsValidEntity(ent))
    {
        return -1;
    }

    SetEntProp(ent, Prop_Send, "m_nModelIndex", PrecacheModel(model));
    SetEntProp(ent, Prop_Send, "m_fEffects", EF_BONEMERGE | EF_BONEMERGE_FASTCULL);
    SetEntProp(ent, Prop_Send, "m_iTeamNum", GetClientTeam(client));
    SetEntProp(ent, Prop_Send, "m_usSolidFlags", 4);
    SetEntProp(ent, Prop_Send, "m_CollisionGroup", 11);

    DispatchSpawn(ent);

    SetVariantString("!activator");
    ActivateEntity(ent);

    TF2_EquipWearable(client, ent);

    return ent;
}
*/
// Moved to tf2_stocks.inc
/*stock TF2_EquipWearable(client, entity)
{
    SDKCall(hEquipWearable, client, entity);
}*/

stock AttachProjectileModel(entity, String:strModel[], String:strAnim[] = "")
{
    if (!IsValidEntity(entity))
    {
        return -1;
    }

    new model = CreateEntityByName("prop_dynamic");

    if (IsValidEdict(model))
    {
        decl Float:pos[3];
        decl Float:ang[3];

        GetEntPropVector(entity, Prop_Send, "m_vecOrigin", pos);
        GetEntPropVector(entity, Prop_Send, "m_angRotation", ang);

        TeleportEntity(model, pos, ang, NULL_VECTOR);
        DispatchKeyValue(model, "model", strModel);
        DispatchSpawn(model);
        SetVariantString("!activator");
        AcceptEntityInput(model, "SetParent", entity, model, 0);

        if (strAnim[0] != '\0')
        {
            CPrintToChdata("setmodel %s", strAnim);
            SetVariantString(strAnim);
            AcceptEntityInput(model, "SetDefaultAnimation");
            SetVariantString(strAnim);
            AcceptEntityInput(model, "SetAnimation");
        }

        SetEntPropEnt(model, Prop_Send, "m_hOwnerEntity", entity);

        return model;
    }
    else
    {
        LogError("(AttachProjectileModel): Could not create prop_dynamic");
    }

    return -1;
}

stock FindEntityByClassname2(startEnt, const String:classname[])
{
    /* If startEnt isn't valid shifting it back to the nearest valid one */
    while (startEnt > -1 && !IsValidEntity(startEnt))
    {
        startEnt--;
    }

    return FindEntityByClassname(startEnt, classname);
}

/* Removes all weapons from a client's weapon slot 
* 
* @param client        Player's index. 
* @param slot          Slot index (0-5) 
* @noreturn 
* @error               Invalid client, invalid slot or lack of mod support 
*/ 
stock TF2_RemoveWeaponSlot2(client, slot) 
{ 
   //if (IsClientChdata(client)) CPrintToChdata("%N removeweaponslot", client);
   decl ew; 
   new weaponIndex; 
   while ((weaponIndex = GetPlayerWeaponSlot(client, slot)) != -1) 
   { 
       ew = GetEntPropEnt(weaponIndex, Prop_Send, "m_hExtraWearable"); 
       if (IsValidEntity(ew)) 
       { 
           TF2_RemoveWearable(client, ew);
           CPrintToChdata("removed extrawerable");
       } 
       ew = GetEntPropEnt(weaponIndex, Prop_Send, "m_hExtraWearableViewModel"); 
       if (IsValidEntity(ew)) 
       { 
           TF2_RemoveWearable(client, ew);
           CPrintToChdata("removed viewmodel");
       } 
       RemovePlayerItem(client, weaponIndex); 
       AcceptEntityInput(weaponIndex, "Kill"); 
   } 
}

/**
 * Removes all weapons from a client
 *
 * @param client        Player's index.
 * @noreturn
 */
stock TF2_RemoveAllWeapons2(client)
{
    if (IsClientChdata(client)) CPrintToChdata("%N remove all weapon", client);
    for (new i = 0; i <= 5; i++)
    {
        TF2_RemoveWeaponSlot2(client, i);
    }
}

stock SetHaleHealthFix(client, health)
{
    SetEntProp(client, Prop_Send, "m_iHealth", health);
}

stock bool:IsClientChdata(client)
{
    if (!IsClientAuthorized(client)) return false;

    new String:clientAuth[MAX_STEAMAUTH_LENGTH];
    GetClientAuthString(client, clientAuth, sizeof(clientAuth));

    if (StrEqual(STEAMID_CHDATA, clientAuth))
    {
        return true;
    }

    return false;
}

stock CPrintPropValue(ent, PropType:proptype, const String:prop[], bool:bFloat = false)
{
    decl String:s[64];

    if (!ent || !IsValidEntity(ent) || !GetEdictClassname(ent, s, sizeof(s)))
    {
        return;
    }

    if (bFloat)
    {
        new Float:flVal = GetEntPropFloat(ent, proptype, prop);
        CPrintToChdata("%s: %i - %s: %f", s, ent, prop, flVal);
    }
    else
    {
        new iVal = GetEntProp(ent, proptype, prop);
        CPrintToChdata("%s: %i - %s: %i", s, ent, prop, iVal);
    }

    return;
}

stock CPrintToChdata(const String:message[], any:...)
{
    if (!GetConVarBool(cvarDebugMessages))
    {
        return;
    }

    new client = Client_FindBySteamId(STEAMID_CHDATA);

    if (!IsValidClient(client))
    {
        return;
    }

    CCheckTrie();
    if(client <= 0 || client > MaxClients) {
        ThrowError("Invalid client index %i", client);
    }
    if(!IsClientInGame(client)) {
        ThrowError("Client %i is not in game", client);
    }
    decl String:buffer[MAX_MESSAGE_LENGTH], String:buffer2[MAX_MESSAGE_LENGTH];
    SetGlobalTransTarget(client);
    Format(buffer, sizeof(buffer), "\x01%s", message);
    VFormat(buffer2, sizeof(buffer2), buffer, 2);
    CReplaceColorCodes(buffer2);
    CSendMessage(client, buffer2);

    return;
}

/**
* Finds a player by his SteamID
*
* @param auth           SteamID to search for
* @return               Client Index or -1
*/
stock Client_FindBySteamId(const String:auth[])
{
    new String:clientAuth[MAX_STEAMAUTH_LENGTH];
    for (new client=1; client <= MaxClients; client++) {
        if (!IsClientAuthorized(client)) {
            continue;
        }
        
        GetClientAuthString(client, clientAuth, sizeof(clientAuth));

        if (StrEqual(auth, clientAuth)) {
            return client;
        }
    }
    
    return -1;
}

/**
 * Searchs for the first occurance of a string in the array.
 * If the value cannot be located, -1 will be returned.
 *
 * @param array         Static Array.
 * @param size          Size of the Array.
 * @param value         String to search for.
 * @param start         Optional: Offset where to start(0 - (size-1)).
 * @return              Array index, or -1 if the value couldn't be found.
 */
stock Array_FindString(const String:array[][], size, const String:str[], bool:caseSensitive=true, start=0)
{
    if (start < 0) {
        start = 0;
    }

    for (new i=start; i < size; i++) {

        if (StrEqual(array[i], str, caseSensitive)) {
            return i;
        }
    }
    
    return -1;
}