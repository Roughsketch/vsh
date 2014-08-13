#if defined HHH_ON
    #endinput
#endif

#define HHH_ON

#define HALEHHH_TELEPORTCHARGETIME 2
#define HALEHHH_TELEPORTCHARGE (25 * HALEHHH_TELEPORTCHARGETIME)
#define HHHModel                "models/player/saxton_hale/hhh_jr_mk3.mdl"
#define HHHModelPrefix          "models/player/saxton_hale/hhh_jr_mk3"
#define AxeModel                "models/weapons/c_models/c_headtaker/c_headtaker.mdl"
#define HHHLaught               "vo/halloween_boss/knight_laugh"
#define HHHRage                 "vo/halloween_boss/knight_attack01.wav"
#define HHHRage2                "vo/halloween_boss/knight_alert.wav"
#define HHHAttack               "vo/halloween_boss/knight_attack"
#define HHHTheme                "ui/holiday/gamestartup_halloween.mp3"

HHH_AddToDownloads()
{
    PrecacheModel(HHHModel, true);


    PrecacheSound("ui/halloween_boss_summoned_fx.wav", true);
    PrecacheSound("ui/halloween_boss_defeated_fx.wav", true);

    PrecacheSound(HHHRage, true);
    PrecacheSound(HHHRage2, true);
    PrecacheSound(HHHTheme, true);

}
