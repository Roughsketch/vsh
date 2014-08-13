#if defined GUARDIAN_ON
    #endinput
#endif

#define GUARDIAN_ON

#define GuardianWin              "slender/scare1.wav"
#define GuardianWarn             "slender/amnesia/scare.mp3"

#define GuardianClose            "slender/amnesia/suitorchase.wav"

// Target name of master fog.
static String:sMasterFog[64];
static bool:bCanFog;

static const String:GuardianChase[][] = {
    "slender/amnesia/gruntalerttheme.wav",
    "slender/amnesia/grunttheme.wav",
    "slender/amnesia/suitorsearch.wav"
};

Guardian_AddToDownloads()
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

stock Guardian_Initialize()
{
    bCanFog = Guardian_InitFogs();
}

/*
Returns false if multiple fogs are already in the map,
in which case we won't bother messing with fogs.

*/
stock bool:Guardian_InitFogs()
{
    new iEnt;
    new bool:bFoundMaster = false;     // Does a master fog exist?
    new bool:bFoundCustom = false;     // Does a custom fog exist?
    new iExtraFogs = 0;                // How many miscellaneous fogs have been found. First one is set to master, usually.

    DOWHILE_ENTFOUND(iEnt, "env_fog_controller")            // m_spawnflags
    {
        decl String:sFog[64];
        GetEntPropString(iEnt, Prop_Data, "m_iName", sFog, sizeof(sFog));

        new iSpawnFlags = GetEntProp(iEnt, Prop_Data, "m_spawnflags");

        // If the plugin had to be reloaded, this helps avoid creating extraneous fogs
        if (iSpawnFlags & 1)
        {
            strcopy(sMasterFog, sizeof(sMasterFog), sFog);

            if (sMasterFog[0] == 0)
            {
                DispatchKeyValue(iEnt, "targetname", "fog_master");
                strcopy(sMasterFog, sizeof(sMasterFog), "fog_master");
            }

            bFoundMaster = true;
            continue;
        }
        else if (StrEqual(sFog, "fog_data"))
        {
            bFoundCustom = true;
            continue;
        }

        if (++iExtraFogs > 1)   // The first unmarked fog will become the master, so it's safe to continue
        {
            return false;       // Stop the process
        }

        // This assumes that the first fog we touch will always be the one that was meant to be the master.
        // I don't know if this is accurate for custom maps.
        // This code is reached while a fog is found, but we haven't set our flag saying we found one
        if (!bFoundMaster) 
        {
            strcopy(sMasterFog, sizeof(sMasterFog), sFog);

            if (sMasterFog[0] == 0)                               // If it had no name...
            {
                DispatchKeyValue(iEnt, "targetname", "fog_master");
                strcopy(sMasterFog, sizeof(sMasterFog), "fog_master");
            }

            decl String:sSpawnFlags[8];

            IntToString((iSpawnFlags|1), sSpawnFlags, sizeof(sSpawnFlags));

            DispatchKeyValue(iEnt, "spawnflags", sSpawnFlags);   // If there's already a fog controller, set it to master

            bFoundMaster = true;
        }
    }

    // End DOWHILE

    // If there was no fog at all in the map, this is ran to create a master fog
    if (!bFoundMaster)
    {
        iEnt = CreateEntityByName("env_fog_controller");
        DispatchSpawn(iEnt);

        DispatchKeyValue(iEnt, "spawnflags", "1");          // Set new fog to master
        DispatchKeyValue(iEnt, "fogenable", "0");           // The map originally had no fog, so keep this one disabled
        DispatchKeyValue(iEnt, "targetname", "fog_master");
        strcopy(sMasterFog, sizeof(sMasterFog), "fog_master");
    }

    if (!bFoundCustom)   // If we haven't created a custom fog yet...  (OnMapStart is re-ran if the plugin is reloaded/loaded midgame)
    {
        iEnt = CreateEntityByName("env_fog_controller");        // Make a second fog with custom effects for this mod
        DispatchSpawn(iEnt);

        DispatchKeyValue(iEnt, "spawnflags", "0");              // Fog is not master
        DispatchKeyValue(iEnt, "fogenable", "1");               // Enable this fog
        DispatchKeyValue(iEnt, "targetname", "fog_data");       // Important, so we can switch clients to this fog later

        DispatchKeyValue(iEnt, "fogmaxdensity", "1");
        DispatchKeyValue(iEnt, "fogstart", "0");
        DispatchKeyValue(iEnt, "fogend", "300");                // How far away you can see 350
        DispatchKeyValue(iEnt, "fogdir", "1 0 0");
        DispatchKeyValue(iEnt, "fogcolor", "2 2 6");
        DispatchKeyValue(iEnt, "fogcolor2", "6 2 2");
        DispatchKeyValue(iEnt, "fogblend", "1");                // Should turn out to be a dark fog
        DispatchKeyValue(iEnt, "farz", "-1");
        DispatchKeyValue(iEnt, "use_angles", "1");
        DispatchKeyValue(iEnt, "angles", "0 270 0");
    }

    return true;
}

stock Guardian_FogScreen(iClient, const String:sFog[])
{
    SetVariantString(sFog);
    AcceptEntityInput(iClient, "SetFogController");
}

stock Guardian_CanFog()
{
    return bCanFog;
}