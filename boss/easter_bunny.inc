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
    "vo/demoman_jeers05.wav",               //  New
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
    "vo/taunts/demoman_taunts03.wav",       //  New
    "vo/taunts/demoman_taunts04.wav",
    "vo/taunts/demoman_taunts05.wav",
    "vo/demoman_specialcompleted07.wav",
    "vo/demoman_dominationscout05.wav"      //  New
};

static const String:BunnyPain[][] = {
    "vo/demoman_sf12_badmagic01.wav",
    "vo/demoman_sf12_badmagic07.wav",
    "vo/demoman_sf12_badmagic09.wav",       //  New
    "vo/demoman_sf12_badmagic10.wav",
    "vo/demoman_sf13_influx_big02.wav",     //  New
    "vo/demoman_sf13_bosses03.wav",         //  New
    "vo/demoman_sf13_bosses04.wav",         //  New
    "vo/demoman_sf13_bosses05.wav",         //  New
    "vo/demoman_negativevocalization03.wav" //  New
};

static const String:BunnyStart[][] = {
    "vo/demoman_gibberish01.wav",           //  New
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

EasterBunny_AddToDownloads()
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

stock EasterBunny_RandomWin(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyWin)-1);
    strcopy(str, max_size, BunnyWin[random]);
    
    return random;
}

stock EasterBunny_RandomStart(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyStart)-1);
    strcopy(str, max_size, BunnyStart[random]);
    
    return random;
}

stock EasterBunny_RandomJump(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyJump)-1);
    strcopy(str, max_size, BunnyJump[random]);
    
    return random;
}

stock EasterBunny_RandomRage(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyRage)-1);
    strcopy(str, max_size, BunnyRage[random]);
    
    return random;
}

stock EasterBunny_RandomFail(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyFail)-1);
    strcopy(str, max_size, BunnyFail[random]);
    
    return random;
}

stock EasterBunny_RandomKill(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyKill)-1);
    strcopy(str, max_size, BunnyKill[random]);
    
    return random;
}

stock EasterBunny_RandomSpree(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnySpree)-1);
    strcopy(str, max_size, BunnySpree[random]);
    
    return random;
}

stock EasterBunny_RandomLast(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyLast)-1);
    strcopy(str, max_size, BunnyLast[random]);
    
    return random;
}

stock EasterBunny_RandomPain(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyPain)-1);
    strcopy(str, max_size, BunnyPain[random]);
    
    return random;
}

stock EasterBunny_RandomVoice(String:str[], max_size)
{
    new random = GetRandomInt(0, sizeof(BunnyRandomVoice)-1);
    strcopy(str, max_size, BunnyRandomVoice[random]);
    
    return random;
}

public Action:EasterBunny_EggBombTimer(Handle:timer, any:ref)
{
    new entity = EntRefToEntIndex(ref);

    if (FileExists(EggModel) && IsModelPrecached(EggModel) && IsValidEntity(entity))
    {
        new att = AttachProjectileModel(entity, EggModel);

        SetEntProp(att, Prop_Send, "m_nSkin", 0);
        SetEntityRenderMode(entity, RENDER_TRANSCOLOR);
        SetEntityRenderColor(entity, 255, 255, 255, 0);
    }
}
