#if defined NUE_HOUJUU_ON
    #endinput
#endif

#define NUE_HOUJUU_ON
#define NueModel               "models/nuenue/spy.mdl"
#define NueModelPrefix         "models/nuenue/spy"

#define NueWin                 "tf2data/nue/fh47vo4.wav"
#define NueStab                "tf2data/nue/fh47vo6.wav"
#define NueFail                "tf2data/nue/fh47vo8.wav"
#define NueStart               "tf2data/nue/fh47vo9.wav"

#define NueGone                "AdvancedWeaponiser/poof.wav"
#define NueAppear              "tf2data/nue/se_boon01.wav"
#define Death2hu               "freak_fortress_2/touhou/touhou_pichuun.wav"
#define NueMusic               "tf2data/nue/wicked_child.mp3"

static Float:fLastKill;
static bNueRageActive = false;
static bNueBackstabbed = false;

static const String:NueJump[][] = {
    "tf2data/nue/fh47vo1_1.wav",
    "tf2data/nue/fh47vo1_2.wav",
    "tf2data/nue/fh47vo12.wav"
};

static const String:NueKill[][] = {
    "tf2data/nue/fh47vo1_3.wav",
    "tf2data/nue/fh47vo2_1.wav",
    "tf2data/nue/fh47vo2_2.wav",
    "tf2data/nue/fh47vo3.wav"
};

static const String:NueRage[][] = {
    "tf2data/nue/fh47vo7.wav",
    "tf2data/nue/fh47vo10.wav",
    "tf2data/nue/fh47vo11.wav"
};

static const String:NueMaterials[][] = {
    "materials/models/player/spy/1py_blue.vmt",
    "materials/models/player/spy/1py_blue.vtf",
    "materials/models/player/spy/1py_blue_invun.vmt",
    "materials/models/player/spy/1py_blue_invun.vtf",
    "materials/models/player/spy/1py_head.vtf",
    "materials/models/player/spy/1py_head_blue.vmt",
    "materials/models/player/spy/1py_head_blue_invun.vmt",
    "materials/models/player/spy/1py_head_blue_invun.vtf",
    "materials/models/player/spy/1py_head_blue_invun_walpha.vmt",
    "materials/models/player/spy/1py_head_blue_invun_wtrans.vmt",
    "materials/models/player/spy/1py_head_red.vmt",
    "materials/models/player/spy/1py_head_red_invun.vmt",
    "materials/models/player/spy/1py_head_red_invun.vtf",
    "materials/models/player/spy/1py_head_red_invun_walpha.vmt",
    "materials/models/player/spy/1py_head_red_invun_wtrans.vmt",
    "materials/models/player/spy/1py_head_red_walpha.vmt",
    "materials/models/player/spy/1py_head_red_wtrans.vmt",
    "materials/models/player/spy/1py_normal.vtf",
    "materials/models/player/spy/1py_red.vmt",
    "materials/models/player/spy/1py_red.vtf",
    "materials/models/player/spy/1py_red_invun.vmt",
    "materials/models/player/spy/1py_red_invun.vtf",
    "materials/models/player/spy/1yeball_l.vmt",
    "materials/models/player/spy/1yeball_r.vmt",
    "materials/models/player/spy/1ye-iris.vtf",
    "materials/models/player/spy/spy_red_gib.vtf"
};

Nue_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];

    PrecacheModel(NueModel, true);

    for (i = 0; i < sizeof(NueMaterials); i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s", NueMaterials[i]);
        if (FileExists(s, true))
        {
            AddFileToDownloadsTable(s);
        }
    }

    for (i = 0; i < sizeof(NueJump); i++)
    {
        PrecacheSound(NueJump[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", NueJump[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(NueKill); i++)
    {
        PrecacheSound(NueKill[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", NueKill[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(NueRage); i++)
    {
        PrecacheSound(NueRage[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", NueRage[i]);
        AddFileToDownloadsTable(s);
    }

    PrecacheSound(NueWin, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueWin);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueStab, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueStab);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueFail, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueFail);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueStart, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueStart);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueGone, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueGone);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueAppear, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueAppear);
    AddFileToDownloadsTable(s);

    PrecacheSound(Death2hu, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", Death2hu);
    AddFileToDownloadsTable(s);

    PrecacheSound(NueMusic, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueMusic);
    AddFileToDownloadsTable(s);
}

stock Nue_RandomJump(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(NueJump)-1);
    strcopy(str, max_size, NueJump[random]);
    
    return random;
}

stock Nue_RandomRage(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(NueRage)-1);
    strcopy(str, max_size, NueRage[random]);
    
    return random;
}

stock Nue_RandomKill(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(NueKill)-1);
    strcopy(str, max_size, NueKill[random]);
    
    return random;
}

stock Nue_IsRageActive()
{
    return bNueRageActive;
}

public Nue_Native_IsRageActive(Handle:plugin, numParams)
{
    return bNueRageActive;
}

stock Nue_SetRageActive(bool:value)
{
    bNueRageActive = value;
}

stock Nue_IsBackstabbed()
{
    return bNueBackstabbed;
}

stock Nue_SetBackstabbed(bool:value)
{
    bNueBackstabbed = value;
}

stock Float:Nue_GetLastKillTime()
{
    return fLastKill;
}

stock Nue_SetLastKillTime(Float:value)
{
    fLastKill = value;
}