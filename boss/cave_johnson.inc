#if defined CAVE_JOHNSON_ON
    #endinput
#endif

#define CAVE_JOHNSON_ON
#define CaveModel               "models/freak_fortress_2/cavejohnson/cavejohnson.mdl"
#define CaveModelPrefix         "models/freak_fortress_2/cavejohnson/cavejohnson"
#define LemonModel              "models/weapons/w_models/custom/lemon.mdl"
#define LemonModelPrefix        "models/weapons/w_models/custom/lemon"

#define PortalMusic             "portal2/thepartwherehekillsyou1.mp3"
#define PortalMusicDuo          "portal2/yourpreciousmoon1.mp3"
#define PortalMusicFinal        "portal2/yourpreciousmoon4.mp3"

#define CaveFail                "portal2/cavejohnson/eighties_outro08v2.wav"
#define CaveRage                "portal2/cavejohnson/eighties_outro09_part.wav"
#define CaveStab                "tf2data/cave/cave_cough.wav"
#define CaveWin                 "portal2/cavejohnson/we_are_done_here1.wav"


static bool:bCaveKillVoice = false;
static Handle:hLemonRageTimer;
static Handle:hCaveKillTimer;
static bool:bLemonRageActivated = false;

static const String:CaveStart[][] = {
    "portal2/cavejohnson/eighties_outro11_part2.wav",
    "portal2/cavejohnson/fifties_intro04v2.wav",
    "freak_fortress_2/cavejohnson/cavejohnson_start2.mp3"
};

/*
static const String:CaveWin[][] = {
    "portal2/cavejohnson/we_are_done_here1.wav",
    "freak_fortress_2/cavejohnson/cavejohnson_win1.mp3",
    "freak_fortress_2/cavejohnson/cavejohnson_win2.mp3"
};
*/

static const String:CaveSpree[][] = {
    "portal2/cavejohnson/fifties_fifth_test_complete08v2.wav",
    "portal2/cavejohnson/misc_tests06v2.wav",
    "freak_fortress_2/cavejohnson/cavejohnson_spree3v2.mp3",
    "freak_fortress_2/cavejohnson/cavejohnson_rage1.mp3"
};

CaveJohnson_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];

    PrecacheModel(CaveModel, true);
    PrecacheModel(LemonModel, true);

    for (i = 0; i < sizeof(CaveStart); i++)
    {
        PrecacheSound(CaveStart[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveStart[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(CaveSpree); i++)
    {
        PrecacheSound(CaveSpree[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveSpree[i]);
        AddFileToDownloadsTable(s);
    }

    PrecacheSound(CaveStab, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveStab);
    AddFileToDownloadsTable(s);

    PrecacheSound(CaveFail, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveFail);
    AddFileToDownloadsTable(s);

    PrecacheSound(CaveRage, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveRage);
    AddFileToDownloadsTable(s);

    PrecacheSound(CaveWin, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", CaveWin);
    AddFileToDownloadsTable(s);

    PrecacheSound(PortalMusic, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", PortalMusic);
    AddFileToDownloadsTable(s);

    PrecacheSound(PortalMusicDuo, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", PortalMusicDuo);
    AddFileToDownloadsTable(s);

    PrecacheSound(PortalMusicFinal, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", PortalMusicFinal);
    AddFileToDownloadsTable(s);


    //Cave Johnson Materials
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave.vtf");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_blue.vmt");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_head.vtf");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_head_blue.vmt");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_head_red.vmt");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_normal.vtf");
    AddFileToDownloadsTable("materials/freak_fortress_2/cavejohnson/cave_red.vmt");

    AddFileToDownloadsTable("materials/models/weapons/c_items/c_lemon.vmt");
    AddFileToDownloadsTable("materials/models/weapons/c_items/c_lemon.vtf");
}

stock CaveJohnson_RandomStart(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(CaveStart)-1);
    strcopy(str, max_size, CaveStart[random]);
    
    return random;
}

stock CaveJohnson_RandomSpree(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(CaveSpree)-1);
    strcopy(str, max_size, CaveSpree[random]);
    
    return random;
}

stock CaveJohnson_ResetTimers()
{
    hLemonRageTimer = INVALID_HANDLE;
    hCaveKillTimer = INVALID_HANDLE;
}

stock Handle:CaveJohnson_GetRageTimer()
{
    return hLemonRageTimer;
}

stock CaveJohnson_SetRageTimer(Handle:value)
{
    hLemonRageTimer = value;
}

stock Handle:CaveJohnson_GetKillTimer()
{
    return hCaveKillTimer;
}

stock CaveJohnson_SetKillTimer(Handle:value)
{
    hCaveKillTimer = value;
}

stock CaveJohnson_ResetRageTimer()
{
    KillTimer(hLemonRageTimer);
    hLemonRageTimer = INVALID_HANDLE;
}

stock CaveJohnson_ResetKillTimer()
{
    KillTimer(hCaveKillTimer);
    hCaveKillTimer = INVALID_HANDLE;
}

stock bool:CaveJohnson_GetLemonRage()
{
    return bLemonRageActivated;
}

stock CaveJohnson_SetLemonRage(bool:value)
{
    bLemonRageActivated = value;

    if (bLemonRageActivated == true)
    {
        CreateTimer(0.1, CaveJohnson_UseLemonRage);
    }
}

public Action:CaveJohnson_UseLemonRage(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    if (!GetEntProp(Hale, Prop_Send, "m_bIsReadyToHighFive") && !IsValidEntity(GetEntPropEnt(Hale, Prop_Send, "m_hHighFivePartner")))
    {
        TF2_RemoveCondition(Hale, TFCond_Taunting);
        MakeModelTimer(INVALID_HANDLE); // should reset Hale's animation
    }

    if (CaveJohnson_GetRageTimer() != INVALID_HANDLE)
    {
        CaveJohnson_ResetRageTimer();
    }

    CaveJohnson_SetRageTimer(CreateTimer(5.0, CaveJohnson_EndLemonRage)); //4.6

    return Plugin_Continue;
}

public Action:CaveJohnson_EndLemonRage(Handle:hTimer)
{
    new Hale = Boss_GetBossClient();
    TF2_RemoveWeaponSlot2(Hale, TFWeaponSlot_Primary);
    new SaxtonWeapon = SpawnWeapon(Hale, "tf_weapon_grenadelauncher", 19, 64, 5, "37 ; 0.0 ; 68 ; 2.0 ; 259 ; 1.0 ; 318 ; 0.5 ; 207 ; 0.0 ; 208 ; 1 ; 252 ; 0.7 ; 1 ; 0.9 ; 3 ; 0.75 ; 5 ; 1.1 ; 22 ; 1 ; 527 ; 1");
    SetEntPropEnt(Hale, Prop_Send, "m_hActiveWeapon", SaxtonWeapon);
    SetAmmo(Hale, TFWeaponSlot_Primary, 999);
    CaveJohnson_SetLemonRage(false);
    CaveJohnson_SetRageTimer(INVALID_HANDLE);
    return Plugin_Continue;
}

stock bool:CaveJohnson_GetKillVoice()
{
    return bCaveKillVoice;
}

stock CaveJohnson_SetKillVoice(bool:value)
{
    bCaveKillVoice = value;
}

public Action:CaveJohnson_EndCaveKillTimer(Handle:hTimer)
{
    CaveJohnson_SetKillVoice(false);
    CaveJohnson_SetKillTimer(INVALID_HANDLE);
    return Plugin_Continue;
}

public Action:CaveJohnson_SetLemonTimer(Handle:timer, any:ref)
{
    new entity = EntRefToEntIndex(ref);

    if (FileExists(LemonModel) && IsModelPrecached(LemonModel) && IsValidEntity(entity))
    {
        new att = AttachProjectileModel(entity, LemonModel);

        SetEntProp(att, Prop_Send, "m_nSkin", 0);
        SetEntityRenderMode(entity, RENDER_TRANSCOLOR);
        SetEntityRenderColor(entity, 255, 255, 255, 0);
    }
}
