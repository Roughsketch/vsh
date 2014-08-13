#if defined EASTER_BUNNY_ON
    #endinput
#endif

#define EASTER_BUNNY_ON
#define BunnyModel              "models/player/saxton_hale/easter_demo.mdl"
#define BunnyModelPrefix        "models/player/saxton_hale/easter_demo"
#define EggModel                "models/player/saxton_hale/w_easteregg.mdl"
#define EggModelPrefix          "models/player/saxton_hale/w_easteregg"
#define ReloadEggModel          "models/player/saxton_hale/c_easter_cannonball.mdl"
#define ReloadEggModelPrefix    "models/player/saxton_hale/c_easter_cannonball"

static const String:BunnyWin[][] = {
    "vo/demoman_gibberish01.wav",
    "vo/demoman_gibberish12.wav",
    "vo/demoman_cheers02.wav",
    "vo/demoman_cheers03.wav",
    "vo/demoman_cheers06.wav",
    "vo/demoman_cheers07.wav",
    "vo/demoman_cheers08.wav",
    "vo/taunts/demoman_taunts12.wav"
};

static const String:BunnyJump[][] = {
    "vo/demoman_gibberish07.wav",
    "vo/demoman_gibberish08.wav",
    "vo/demoman_laughshort01.wav",
    "vo/demoman_positivevocalization04.wav"
};

static const String:BunnyRage[][] = {
    "vo/demoman_positivevocalization03.wav",
    "vo/demoman_dominationscout05.wav",
    "vo/demoman_cheers02.wav"
};

static const String:BunnyFail[][] = {
    "vo/demoman_gibberish04.wav",
    "vo/demoman_gibberish10.wav",
    "vo/demoman_jeers03.wav",
    "vo/demoman_jeers06.wav",
    "vo/demoman_jeers07.wav",
    "vo/demoman_jeers08.wav"
};

static const String:BunnyKill[][] = {
    "vo/demoman_gibberish09.wav",
    "vo/demoman_cheers02.wav",
    "vo/demoman_cheers07.wav",
    "vo/demoman_positivevocalization03.wav"
};

static const String:BunnySpree[][] = {
    "vo/demoman_gibberish05.wav",
    "vo/demoman_gibberish06.wav",
    "vo/demoman_gibberish09.wav",
    "vo/demoman_gibberish11.wav",
    "vo/demoman_gibberish13.wav",
    "vo/demoman_autodejectedtie01.wav"
};

static const String:BunnyLast[][] = {
    "vo/taunts/demoman_taunts05.wav",
    "vo/taunts/demoman_taunts04.wav",
    "vo/demoman_specialcompleted07.wav"
};

static const String:BunnyPain[][] = {
    "vo/demoman_sf12_badmagic01.wav",
    "vo/demoman_sf12_badmagic07.wav",
    "vo/demoman_sf12_badmagic10.wav"
};

static const String:BunnyStart[][] = {
    "vo/demoman_gibberish03.wav",
    "vo/demoman_gibberish11.wav"
};

static const String:BunnyRandomVoice[][] = {
    "vo/demoman_positivevocalization03.wav",
    "vo/demoman_jeers08.wav",
    "vo/demoman_gibberish03.wav",
    "vo/demoman_cheers07.wav",
    "vo/demoman_sf12_badmagic01.wav",
    "vo/burp02.wav",
    "vo/burp03.wav",
    "vo/burp04.wav",
    "vo/burp05.wav",
    "vo/burp06.wav",
    "vo/burp07.wav"
};

stock EasterBunny_AddToDownloads()
{
    decl i;
    //decl String:s[PLATFORM_MAX_PATH];

    PrecacheModel(BunnyModel, true);
    PrecacheModel(EggModel, true);
    //      PrecacheModel(ReloadEggModel, true);
    AddFileToDownloadsTable("materials/models/player/easter_demo/demoman_head_red.vmt");
    AddFileToDownloadsTable("materials/models/player/easter_demo/easter_body.vmt");
    AddFileToDownloadsTable("materials/models/player/easter_demo/easter_body.vtf");
    AddFileToDownloadsTable("materials/models/player/easter_demo/easter_rabbit.vmt");
    AddFileToDownloadsTable("materials/models/player/easter_demo/easter_rabbit.vtf");
    AddFileToDownloadsTable("materials/models/player/easter_demo/easter_rabbit_normal.vtf");
    AddFileToDownloadsTable("materials/models/props_easteregg/c_easteregg.vmt");
    AddFileToDownloadsTable("materials/models/props_easteregg/c_easteregg.vtf");
    AddFileToDownloadsTable("materials/models/props_easteregg/c_easteregg_gold.vmt");
    AddFileToDownloadsTable("materials/models/player/easter_demo/eyeball_r.vmt");

    for (i = 0; i < sizeof(BunnyWin); i++)
    {
        PrecacheSound(BunnyWin[i], true);
    }
    for (i = 0; i < sizeof(BunnyJump); i++)
    {
        PrecacheSound(BunnyJump[i], true);
    }
    for (i = 0; i < sizeof(BunnyRage); i++)
    {
        PrecacheSound(BunnyRage[i], true);
    }
    for (i = 0; i < sizeof(BunnyFail); i++)
    {
        PrecacheSound(BunnyFail[i], true);
    }
    for (i = 0; i < sizeof(BunnyKill); i++)
    {
        PrecacheSound(BunnyKill[i], true);
    }
    for (i = 0; i < sizeof(BunnySpree); i++)
    {
        PrecacheSound(BunnySpree[i], true);
    }
    for (i = 0; i < sizeof(BunnyLast); i++)
    {
        PrecacheSound(BunnyLast[i], true);
    }
    for (i = 0; i < sizeof(BunnyPain); i++)
    {
        PrecacheSound(BunnyPain[i], true);
    }
    for (i = 0; i < sizeof(BunnyStart); i++)
    {
        PrecacheSound(BunnyStart[i], true);
    }
    for (i = 0; i < sizeof(BunnyRandomVoice); i++)
    {
        PrecacheSound(BunnyRandomVoice[i], true);
    }
}

stock String:EasterBunny_RandomWin()
{
    return BunnyWin[GetRandomInt(0, sizeof(BunnyWin)-1)];
}

stock String:EasterBunny_RandomStart()
{
    return BunnyStart[GetRandomInt(0, sizeof(BunnyStart)-1)];
}

stock String:EasterBunny_RandomJump()
{
    new rand = GetRandomInt(0, sizeof(BunnyJump)-1);
    LogMessage("RandomJump: %i = %s", rand, BunnyJump[rand]);
    return BunnyJump[rand];
}

stock String:EasterBunny_RandomRage()
{
    return BunnyRage[GetRandomInt(0, sizeof(BunnyRage)-1)];
}

stock String:EasterBunny_RandomFail()
{
    return BunnyFail[GetRandomInt(0, sizeof(BunnyFail)-1)];
}

stock String:EasterBunny_RandomKill()
{
    return BunnyKill[GetRandomInt(0, sizeof(BunnyKill)-1)];
}

stock String:EasterBunny_RandomSpree()
{
    return BunnySpree[GetRandomInt(0, sizeof(BunnySpree)-1)];
}

stock String:EasterBunny_RandomLast()
{
    return BunnyLast[GetRandomInt(0, sizeof(BunnyLast)-1)];
}

stock String:EasterBunny_RandomPain()
{
    return BunnyPain[GetRandomInt(0, sizeof(BunnyPain)-1)];
}

stock String:EasterBunny_RandomVoice()
{
    return BunnyRandomVoice[GetRandomInt(0, sizeof(BunnyRandomVoice)-1)];
}