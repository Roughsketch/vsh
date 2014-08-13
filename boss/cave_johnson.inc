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

stock CaveJohnson_AddToDownloads()
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

stock String:CaveJohnson_RandomStart()
{
    return CaveStart[GetRandomInt(0, sizeof(CaveStart)-1)];
}

stock String:CaveJohnson_RandomSpree()
{
    return CaveSpree[GetRandomInt(0, sizeof(CaveSpree)-1)];
}