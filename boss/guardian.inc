#if defined GUARDIAN_ON
    #endinput
#endif

#define GUARDIAN_ON

#define GuardianWin              "slender/scare1.wav"
#define GuardianWarn             "slender/amnesia/scare.mp3"

#define GuardianClose            "slender/amnesia/suitorchase.wav"

static const String:GuardianChase[][] = {
    "slender/amnesia/gruntalerttheme.wav",
    "slender/amnesia/grunttheme.wav",
    "slender/amnesia/suitorsearch.wav"
};

stock Guardian_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];

    PrecacheSound(GuardianWin, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueWin);
    AddFileToDownloadsTable(s);

    PrecacheSound(GuardianWarn, true);
    Format(s, PLATFORM_MAX_PATH, "sound/%s", NueWin);
    AddFileToDownloadsTable(s);

    for (i = 0; i < sizeof(GuardianChase); i++)
    {
        PrecacheSound(GuardianChase[i], true);
        Format(s, PLATFORM_MAX_PATH, "sound/%s", GuardianChase[i]);
        AddFileToDownloadsTable(s);
    }
}