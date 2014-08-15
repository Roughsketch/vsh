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

#define HHH_MAX_CLIMB_COUNT 10

static Handle:hHHHTeleTimer;
static iHHHClimbCount;

HHH_AddToDownloads()
{
    PrecacheModel(HHHModel, true);


    PrecacheSound("ui/halloween_boss_summoned_fx.wav", true);
    PrecacheSound("ui/halloween_boss_defeated_fx.wav", true);

    PrecacheSound(HHHRage, true);
    PrecacheSound(HHHRage2, true);
    PrecacheSound(HHHTheme, true);

}

stock HHH_GetClimbCount()
{
    return iHHHClimbCount;
}

stock HHH_SetClimbCount(value)
{
    iHHHClimbCount = value;
}

stock HHH_IncClimbCount()
{
    iHHHClimbCount++;
}

stock Handle:HHH_GetTeleTimer()
{
    return hHHHTeleTimer;
}

stock HHH_SetTeleTimer(Handle:value)
{
    hHHHTeleTimer = value;
}

stock HHH_ResetTeleTimer()
{
    KillTimer(hHHHTeleTimer);
    hHHHTeleTimer = INVALID_HANDLE;
}

stock HHH_StartTeleTimer()
{
    CreateTimer(bEnableSuperDuperJump ? 4.0:2.0, HHH_TeleTimer, TIMER_FLAG_NO_MAPCHANGE);
}

public Action:HHH_TeleTimer(Handle:timer)
{
    SetEntProp(Boss_GetBossClient(), Prop_Send, "m_CollisionGroup", 5); //Fix HHH's clipping.
    hHHHTeleTimer = INVALID_HANDLE;
}

public Action:HHH_TimerStun(Handle:timer, Handle:pack)
{
    new Hale = Boss_GetBossClient();
    if (!IsValidClient(Hale))
    {
        return;
    }

    ResetPack(pack);

    new superduper = ReadPackCell(pack);
    new targetid = ReadPackCell(pack);
    new target = GetClientOfUserId(targetid);

    if (!IsValidClient(target))
    {
        target = 0;
    }

    VSHFlags[Hale] &= ~VSHFLAG_NEEDSTODUCK;
    TF2_StunPlayer(Hale, (superduper ? 4.0:2.0), 0.0, TF_STUNFLAGS_GHOSTSCARE | TF_STUNFLAG_NOSOUNDOREFFECT, target);
}
