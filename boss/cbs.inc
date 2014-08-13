#if defined CBS_ON
    #endinput
#endif

#define CBS_ON

#define CBSModel                "models/player/saxton_hale/cbs_v4.mdl"
#define CBSModelPrefix          "models/player/saxton_hale/cbs_v4"
#define ShivModel               "models/weapons/c_models/c_wood_machete/c_wood_machete.mdl"
#define CBS0                    "vo/sniper_specialweapon08.wav"
#define CBS1                    "vo/taunts/sniper_taunts02.wav"
#define CBS2                    "vo/sniper_award"
#define CBS3                    "vo/sniper_battlecry03.wav"
#define CBS4                    "vo/sniper_domination"
#define CBSTheme                "saxton_hale/the_millionaires_holiday.mp3"
#define CBSJump1                "vo/sniper_specialcompleted02.wav"

CBS_AddToDownloads()
{
    decl i;
    decl String:s[PLATFORM_MAX_PATH];

    PrecacheModel(CBSModel, true);

    PrecacheSound(CBS0, true);
    PrecacheSound(CBS1, true);
    PrecacheSound(CBSTheme, true);
    AddFileToDownloadsTable("sound/saxton_hale/the_millionaires_holiday.mp3");
    PrecacheSound(CBSJump1, true);

    for (i = 1; i <= 25; i++)
    {
        if (i <= 9)
        {
            Format(s, PLATFORM_MAX_PATH, "%s%02i.wav", CBS2, i);
            PrecacheSound(s, true);
        }
        Format(s, PLATFORM_MAX_PATH, "%s%02i.wav", CBS4, i);
        PrecacheSound(s, true);
    }
}
