#if defined VAGINEER_ON
    #endinput
#endif

#define VAGINEER_ON

#define VagineerModel           "models/player/saxton_hale/vagineer_v134.mdl"
#define VagineerModelPrefix     "models/player/saxton_hale/vagineer_v134"
#define VagineerLastA           "saxton_hale/lolwut_0.wav"
#define VagineerRageSound       "saxton_hale/lolwut_2.wav"
#define VagineerStart           "saxton_hale/lolwut_1.wav"
#define VagineerKSpree          "saxton_hale/lolwut_3.wav"
#define VagineerKSpree2         "saxton_hale/lolwut_4.wav"
#define VagineerHit             "saxton_hale/lolwut_5.wav"
#define WrenchModel             "models/weapons/w_models/w_wrench.mdl"

//===New Vagineer's responces===
#define VagineerRoundStart      "saxton_hale/vagineer_responce_intro.wav"

/*
#define VagineerJump            "saxton_hale/vagineer_responce_jump_"          //1-2
#define VagineerRageSound2      "saxton_hale/vagineer_responce_rage_"            //1-4
#define VagineerKSpreeNew       "saxton_hale/vagineer_responce_taunt_"        //1-5
#define VagineerFail            "saxton_hale/vagineer_responce_fail_"          //1-2
*/

static const String:VagineerJump[][] = {
    "saxton_hale/vagineer_responce_jump_1.wav",
    "saxton_hale/vagineer_responce_jump_2.wav"
};

static const String:VagineerRageSound2[][] = {
    "saxton_hale/vagineer_responce_rage_1.wav",
    "saxton_hale/vagineer_responce_rage_2.wav",
    "saxton_hale/vagineer_responce_rage_3.wav",
    "saxton_hale/vagineer_responce_rage_4.wav"
};

static const String:VagineerTaunt[][] = {
    "saxton_hale/vagineer_responce_taunt_1.wav",
    "saxton_hale/vagineer_responce_taunt_2.wav",
    "saxton_hale/vagineer_responce_taunt_3.wav",
    "saxton_hale/vagineer_responce_taunt_4.wav",
    "saxton_hale/vagineer_responce_taunt_5.wav"
};

static const String:VagineerFail[][] = {
    "saxton_hale/vagineer_responce_fail_1.wav",
    "saxton_hale/vagineer_responce_fail_2.wav"
};

Vagineer_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];

    PrecacheModel(VagineerModel, true);

    PrecacheSound(VagineerRoundStart, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerRoundStart);
    AddFileToDownloadsTable(s);

    for (i = 0; i < sizeof(VagineerTaunt); i++)
    {
        PrecacheSound(VagineerTaunt[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerTaunt[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(VagineerJump); i++)
    {
        PrecacheSound(VagineerJump[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerJump[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(VagineerRageSound2); i++)
    {
        PrecacheSound(VagineerRageSound2[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerRageSound2[i]);
        AddFileToDownloadsTable(s);
    }

    for (i = 0; i < sizeof(VagineerFail); i++)
    {
        PrecacheSound(VagineerFail[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerFail[i]);
        AddFileToDownloadsTable(s);
    }

    PrecacheSound(VagineerLastA, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerLastA);
    AddFileToDownloadsTable(s);

    PrecacheSound(VagineerStart, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerStart);
    AddFileToDownloadsTable(s);

    PrecacheSound(VagineerRageSound, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerRageSound);
    AddFileToDownloadsTable(s);

    PrecacheSound(VagineerKSpree, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerKSpree);
    AddFileToDownloadsTable(s);

    PrecacheSound(VagineerKSpree2, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerKSpree2);
    AddFileToDownloadsTable(s);

    PrecacheSound(VagineerHit, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", VagineerHit);
    AddFileToDownloadsTable(s);
}

stock Vagineer_RandomTaunt(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(VagineerTaunt)-1);
    strcopy(str, max_size, VagineerTaunt[random]);
    
    return random;
}

stock Vagineer_RandomJump(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(VagineerJump)-1);
    strcopy(str, max_size, VagineerJump[random]);
    
    return random;
}

stock Vagineer_RandomRage(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(VagineerRageSound2)-1);
    strcopy(str, max_size, VagineerRageSound2[random]);
    
    return random;
}

stock Vagineer_RandomFail(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(VagineerFail)-1);
    strcopy(str, max_size, VagineerFail[random]);
    
    return random;
}