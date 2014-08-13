#if defined ASTRONAUT_ON
    #endinput
#endif

#define ASTRONAUT_ON

#define AstroModel               "models/player/saxton_hale/astronautv3.mdl"
#define AstroModelPrefix         "models/player/saxton_hale/astronautv3"
#define AstroWin                "saxton_hale/astro/win.wav"
#define AstroJump               "saxton_hale/astro/jump.wav"
#define AstroLast               "saxton_hale/astro/last.wav"
#define AstroStab               "saxton_hale/astro/stabbed.wav"
#define AstroFail               "saxton_hale/astro/fail.wav"
#define AstroStart              "saxton_hale/astro/start.wav"
#define AstroMusic              "saxton_hale/astro/theme.mp3"
#define AstroRage               "saxton_hale/astro/rage.wav"

static const String:AstroMaterials[][] = {
    "materials/models/player/saxton_hale/astronaut/astro_g.vmt",
    "materials/models/player/saxton_hale/astronaut/astro_g.vtf",
    "materials/models/player/saxton_hale/astronaut/astro_n.vtf",
    "materials/models/player/saxton_hale/astronaut/astro_p.vmt",
    "materials/models/player/saxton_hale/astronaut/astro_p.vtf",
    "materials/models/player/saxton_hale/astronaut/astro_visor.vmt"
};

static const String:AstroRandom[][] = {
    "saxton_hale/astro/vo1.wav",
    "saxton_hale/astro/vo2.wav",
    "saxton_hale/astro/vo3.wav",
    "saxton_hale/astro/vo4.wav",
    "saxton_hale/astro/jump.wav"
};

stock Astronaut_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];
    
    PrecacheModel(AstroModel, true);

    for (i = 0; i < sizeof(AstroMaterials); i++)
    {
        Format(s, PLATFORM_MAX_PATH, "%s", AstroMaterials[i]);
        if (FileExists(s, true))
        {
            AddFileToDownloadsTable(s);
        }
    }

    PrecacheSound(AstroWin, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroWin);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroLast, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroLast);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroStab, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroStab);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroFail, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroFail);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroStart, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroStart);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroMusic, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroMusic);
    AddFileToDownloadsTable(s);

    PrecacheSound(AstroRage, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroRage);
    AddFileToDownloadsTable(s);

    for (i = 0; i < sizeof(AstroRandom); i++)
    {
        PrecacheSound(AstroRandom[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", AstroRandom[i]);
        AddFileToDownloadsTable(s);
    }
}

stock String:Astronaut_RandomSound()
{
    return AstroRandom[GetRandomInt(0, sizeof(AstroRandom)-1)];
}