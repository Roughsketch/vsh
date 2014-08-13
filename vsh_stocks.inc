#define MAX_STEAMAUTH_LENGTH 21
#define STEAMID_CHDATA "STEAM_0:1:41644167"

stock bool:IsSaxtonHaleMap(bool:forceRecalc = false)
{
    static bool:found = false;
    static bool:isVSHMap = false;

    if (forceRecalc)
    {
        isVSHMap = false;
        found = false;
    }

    if (!found)
    {
        decl String:s[PLATFORM_MAX_PATH];
        GetCurrentMap(currentmap, sizeof(currentmap));

        if (FileExists("bNextMapToHale"))
        {
            isVSHMap = true;
            found = true;
            return true;
        }

        BuildPath(Path_SM, s, PLATFORM_MAX_PATH, "configs/saxton_hale/saxton_hale_maps.cfg");

        if (!FileExists(s))
        {
            LogError("[VSH] Unable to find %s, disabling plugin.", s);
            isVSHMap = false;
            found = true;
            return false;
        }

        new Handle:fileh = OpenFile(s, "r");

        if (fileh == INVALID_HANDLE)
        {
            LogError("[VSH] Error reading maps from %s, disabling plugin.", s);
            isVSHMap = false;
            found = true;
            return false;
        }

        new pingas = 0;

        while (!IsEndOfFile(fileh) && ReadFileLine(fileh, s, sizeof(s)) && (pingas < 100))
        {
            pingas++;
            if (pingas == 100)
                LogError("[VS Saxton Hale] Breaking infinite loop when trying to check the map.");
            Format(s, strlen(s) - 1, s);
            if (strncmp(s, "//", 2, false) == 0) continue;
            if ((StrContains(currentmap, s, false) != -1) || (StrContains(s, "all", false) == 0))
            {
                CloseHandle(fileh);
                isVSHMap = true;
                found = true;
                return true;
            }
        }

        CloseHandle(fileh);
    }

    return isVSHMap;
}

stock bool:MapHasMusic(bool:forceRecalc = false)
{
    static bool:hasMusic;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        hasMusic = false;
    }

    if (!found)
    {
        new i = -1;
        decl String:name[64];

        while ((i = FindEntityByClassname2(i, "info_target")) != -1)
        {
            GetEntPropString(i, Prop_Data, "m_iName", name, sizeof(name));
            if (strcmp(name, "hale_no_music", false) == 0) hasMusic = true;
        }
        found = true;
    }

    return hasMusic;
}

stock bool:CheckToChangeMapDoors()
{
    decl String:s[PLATFORM_MAX_PATH];
    GetCurrentMap(currentmap, sizeof(currentmap));
    checkdoors = false;

    BuildPath(Path_SM, s, PLATFORM_MAX_PATH, "configs/saxton_hale/saxton_hale_doors.cfg");

    if (!FileExists(s))
    {
        if (strncmp(currentmap, "vsh_lolcano_pb1", 15, false) == 0)
        {
            checkdoors = true;
        }
        return;
    }

    new Handle:fileh = OpenFile(s, "r");

    if (fileh == INVALID_HANDLE)
    {
        if (strncmp(currentmap, "vsh_lolcano_pb1", 15, false) == 0)
        {
            checkdoors = true;
        }
        return;
    }

    while (!IsEndOfFile(fileh) && ReadFileLine(fileh, s, sizeof(s)))
    {
        Format(s, strlen(s) - 1, s);
        if (strncmp(s, "//", 2, false) == 0)
        {
            continue;
        }

        if (StrContains(currentmap, s, false) != -1 || StrContains(s, "all", false) == 0)
        {
            CloseHandle(fileh);
            checkdoors = true;
            return;
        }
    }

    CloseHandle(fileh);
}

stock bool:CheckNextSpecial()
{
    if (!bSpecials)
    {
        Special = VSHSpecial_Hale;
        return true;
    }

    new bool:see[MAXPLAYERS+1];
    new tHale = FindNextHale(see);

    if (NextHale > 0 && GetBossCookie(NextHale) > 0)
    {
        Incoming = GetBossCookie(NextHale);
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }

    if (GetBossCookie(tHale) > 0)
    {
        Incoming = GetBossCookie(tHale);
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }  

    if (Incoming != VSHSpecial_None)
    {
        Special = Incoming;
        Incoming = VSHSpecial_None;
        return true;
    }

    while (Incoming == VSHSpecial_None || (Special && Special == Incoming))
    {
        Incoming = GetRandomInt(0, 10);
        if (Special != VSHSpecial_Hale && !GetRandomInt(0, 5))
        {
            Incoming = VSHSpecial_Hale;
        }
        else
        {
            switch (Incoming)
            {
                case 1:
                    Incoming = VSHSpecial_Vagineer;
                case 2:
                    Incoming = VSHSpecial_HHH;
                case 3:
                    Incoming = VSHSpecial_CBS;
#if defined EASTER_BUNNY_ON
                case 4: // 64
                    Incoming = VSHSpecial_Bunny;
#endif
                case 5:
                    Incoming = bMedieval ? VSHSpecial_Hale : VSHSpecial_Cave;
                case 6:
                    Incoming = VSHSpecial_Nue;
                case 7:
                    Incoming = VSHSpecial_Astro;
                case 666:
                    Incoming = g_bCanFog ? VSHSpecial_Guard : VSHSpecial_Hale;
                default:
                    Incoming = VSHSpecial_Hale;
            }
            if (IsDate(12, 15) && !GetRandomInt(0, 7)) //IsDecemberHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} It's like Christmas morning!");
                Incoming = VSHSpecial_CBS;
            }
            if (IsDate(10, 15) && !GetRandomInt(0, 7)) //IsHalloweenHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} Happy Halloween!");
                Incoming = VSHSpecial_HHH;
            }
#if defined EASTER_BUNNY_ON
            if (IsDate(3, 25, 4, 20) && !GetRandomInt(0, 7)) //IsEasterHoliday()
            {
                CPrintToChatAll("{olive}[VSH]{default} Happy Easter!");
                Incoming = VSHSpecial_Bunny;
            }
#endif
        }
    }

    Special = Incoming;
    Incoming = VSHSpecial_None;

    return true;        //OH GOD WHAT AM I DOING THIS ALWAYS RETURNS TRUE (still better than using QueuePanelH as a dummy)
}

stock bool:IsDate(StartMonth, StartDate, EndMonth = 0, EndDate = 0, bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == StartMonth && iDate >= StartDate) || (EndMonth && EndDate && (StartMonth < iMonth <= EndMonth) && (iDate <= EndDate));
}

/*stock bool:IsHalloweenHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 10 && iDate >= 15);
}

stock bool:IsEasterHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 3 && iDate >= 25) || (iMonth == 4 && iDate < 20);
}

stock bool:IsDecemberHoliday(bool:forceRecalc = false)
{
    static iMonth;
    static iDate;
    static bool:found = false;

    if (forceRecalc)
    {
        found = false;
        iMonth = 0;
        iDate = 0;
    }

    if (!found)
    {
        new timestamp = GetTime();
        decl String:month[32], String:date[32];

        FormatTime(month, sizeof(month), "%m", timestamp);
        FormatTime(date, sizeof(date), "%d", timestamp);

        iMonth = StringToInt(month);
        iDate = StringToInt(date);
        found = true;
    }

    return (iMonth == 12 && iDate >= 15);
}*/

stock SearchForItemPacks()
{
    new bool:foundAmmo = false, bool:foundHealth = false;

    new ent;

    decl Float:pos[3];

    if (StrEqual(currentmap, "vsh_minegay_b3", false))
    {
        DOWHILE_ENTFOUND(ent, "func_breakable")
        {
            decl String:tName[32];
            GetEntPropString(ent, Prop_Data, "m_iName", tName, sizeof(tName));
            if (StrEqual(tName, "medic_car_break", false))
            {
                SetVariantInt(20000);
                AcceptEntityInput(ent, "SetHealth");
            }
            else if (GetEntProp(ent, Prop_Data, "m_iHammerID") == 3513)
            {
                AcceptEntityInput(ent, "Break");
            }
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_full")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
            AcceptEntityInput(ent, "Kill");
            new ent2 = CreateEntityByName("item_ammopack_small");
            TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
            DispatchSpawn(ent2);
            SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            foundAmmo = true;
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_medium")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
            AcceptEntityInput(ent, "Kill");
            new ent2 = CreateEntityByName("item_ammopack_small");
            TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
            DispatchSpawn(ent2);
            SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            foundAmmo = true;
        }
    }

    DOWHILE_ENTFOUND(ent, "item_ammopack_small")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
        foundAmmo = true;
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_small")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            if (StrEqual(currentmap, "arena_artefact_v3", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = CreateEntityByName("item_healthkit_medium");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);
                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }
        }
        foundHealth = true;
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_medium")
    {
        foundHealth = true;
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
    }

    DOWHILE_ENTFOUND(ent, "item_healthkit_full")
    {
        SetEntProp(ent, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);

        if (Enabled)
        {
            if (StrEqual(currentmap, "vsh_military_area_b1", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = !GetRandomInt(0, 3) ? CreateEntityByName("item_healthkit_medium") : CreateEntityByName("item_healthkit_small");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);

                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }

            if (StrEqual(currentmap, "vsh_old_town_b3", false))
            {
                GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);
                AcceptEntityInput(ent, "Kill");
                new ent2 = CreateEntityByName("item_healthkit_medium");
                TeleportEntity(ent2, pos, NULL_VECTOR, NULL_VECTOR);
                DispatchSpawn(ent2);

                SetEntProp(ent2, Prop_Send, "m_iTeamNum", Enabled?OtherTeam:0, 4);
            }
        }
        foundHealth = true;
    }

    if (!foundAmmo)
    {
        SpawnRandomAmmo();
    }

    if (!foundHealth)
    {
        SpawnRandomHealth();
    }

    // Deprecated - removed all team_round_timers via stripper:source
    /*if (StrEqual(currentmap, "vsh_dustshowdown_new", false))
    {
        //Stop the autowin timer in cp_degrootkeep

        DOWHILE_ENTFOUND(ent, "team_round_timer")
        {
            if (ent > MaxClients && IsValidEdict(ent))
            {
                AcceptEntityInput(ent, "Disable");
                SetVariantInt(999999);
                AcceptEntityInput(ent, "SetTime");
            }
        }
    }*/
}

stock SpawnRandomAmmo()
{
}

stock SpawnRandomHealth()
{
}

stock GetTeamPlayerCount(TFTeam:team)
{
    new count = 0;
    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && GetClientTeam(i) == _:team)
            count++;
    }
    return count;
}

stock CalcScores()
{
    decl j, damage;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);
    botqueuepoints += 5;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i))
        {
            damage = Damage[i];

            new Handle:aevent = CreateEvent("player_escort_score", true);

            SetEventInt(aevent, "player", i);

            for (j = 0; damage - 600 > 0; damage -= 600, j++) {}

            SetEventInt(aevent, "points", j);
            FireEvent(aevent);

            if (i == Hale)
            {
                if (IsFakeClient(Hale))
                {
                    botqueuepoints = 0;
                }
                else
                {
                    SetClientQueuePoints(i, 0);
                }
            }
            else if (!IsFakeClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || spec))
            {
                if (!CheckHaleToggle(i))
                {
                    CPrintToChat(i, "{olive}[VSH]{default} %t", "vsh_add_points", 10);
                    SetClientQueuePoints(i, GetClientQueuePoints(i) + 10);
                }
                else
                {
                    CPrintToChat(i, "{olive}[VSH]{default} You get 0 queue points. !haletoggle to enable.");
                }
            }
        }
    }
}

stock EmitSoundToAllExcept(exceptiontype = SOUNDEXCEPT_MUSIC, const String:sample[],
    entity = SOUND_FROM_PLAYER,
    channel = SNDCHAN_AUTO,
    level = SNDLEVEL_NORMAL,
    flags = SND_NOFLAGS,
Float:volume = SNDVOL_NORMAL,
        pitch = SNDPITCH_NORMAL,
        speakerentity = -1,
        const Float:origin[3] = NULL_VECTOR,
        const Float:dir[3] = NULL_VECTOR,
        bool:updatePos = true,
    Float:soundtime = 0.0)
{

    new clients[MaxClients];
    new total = 0;

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsClientInGame(i) && CheckSoundException(i, exceptiontype))
        {
            clients[total++] = i;
        }
    }

    if (!total)
    {
        return;
    }

    EmitSound(clients, total, sample, entity, channel,
        level, flags, volume, pitch, speakerentity,
        origin, dir, updatePos, soundtime);
}

stock bool:CheckSoundException(client, excepttype)
{
    if (!IsValidClient(client))
    {
        return false;
    }

    if (IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return true;
    }

    decl String:strCookie[32];

    if (excepttype == SOUNDEXCEPT_VOICE)
    {
        GetClientCookie(client, VoiceCookie, strCookie, sizeof(strCookie));
    }
    else
    {
        GetClientCookie(client, MusicCookie, strCookie, sizeof(strCookie));
    }

    if (strCookie[0] == 0)
    {
        return true;
    }
    else
    {
        return bool:StringToInt(strCookie);
    }
}

stock SkipHalePanelNotify(client, bool:newchoice = true)
{
    if (!Enabled || !IsValidClient(client) || IsVoteInProgress() || CheckHaleToggle(client))
    {
        return;
    }

    new Handle:panel = CreatePanel();
    decl String:s[256];

    SetPanelTitle(panel, "[VSH] You're Hale next!");
    Format(s, sizeof(s), "%t\nAlternatively, use !hale_resetq.", "vsh_to0_near");
    CRemoveTags(s, sizeof(s));

    ReplaceString(s, sizeof(s), "{olive}", "");
    ReplaceString(s, sizeof(s), "{default}", "");

    DrawPanelItem(panel, s);
    SendPanelToClient(panel, client, SkipHalePanelH, 30);
    CloseHandle(panel);

    return;
}

stock Handle:PrepareItemHandle(Handle:hItem, String:name[] = "", index = -1, const String:att[] = "", bool:dontpreserve = false)
{
    static Handle:hWeapon;
    new addattribs = 0;

    new String:weaponAttribsArray[32][32];
    new attribCount = ExplodeString(att, " ; ", weaponAttribsArray, 32, 32);

    new flags = OVERRIDE_ATTRIBUTES;
    if (!dontpreserve)
    {
        flags |= PRESERVE_ATTRIBUTES;
    }

    if (hWeapon == INVALID_HANDLE)
    {
        hWeapon = TF2Items_CreateItem(flags);
    }
    else
    {
        TF2Items_SetFlags(hWeapon, flags);
    }

    //  new Handle:hWeapon = TF2Items_CreateItem(flags);    //INVALID_HANDLE;

    if (hItem != INVALID_HANDLE)
    {
        addattribs = TF2Items_GetNumAttributes(hItem);

        if (addattribs > 0)
        {
            for (new i = 0; i < 2 * addattribs; i += 2)
            {
                new bool:dontAdd = false;
                new attribIndex = TF2Items_GetAttributeId(hItem, i);

                for (new z = 0; z < attribCount + i; z += 2)
                {
                    if (StringToInt(weaponAttribsArray[z]) == attribIndex)
                    {
                        dontAdd = true;

                        break;
                    }
                }

                if (!dontAdd)
                {
                    IntToString(attribIndex, weaponAttribsArray[i + attribCount], 32);
                    FloatToString(TF2Items_GetAttributeValue(hItem, i), weaponAttribsArray[i + 1 + attribCount], 32);
                }
            }

            attribCount += 2 * addattribs;
        }

        CloseHandle(hItem); //probably returns false but whatever
    }

    if (name[0] != '\0')
    {
        flags |= OVERRIDE_CLASSNAME;
        TF2Items_SetClassname(hWeapon, name);
    }

    if (index != -1)
    {
        flags |= OVERRIDE_ITEM_DEF;
        TF2Items_SetItemIndex(hWeapon, index);
    }

    if (attribCount > 0)
    {
        TF2Items_SetNumAttributes(hWeapon, (attribCount / 2));
        new i2 = 0;

        for (new i = 0; i < attribCount && i < 32; i += 2)
        {
            TF2Items_SetAttribute(hWeapon, i2, StringToInt(weaponAttribsArray[i]), StringToFloat(weaponAttribsArray[i + 1]));
            i2++;
        }
    }
    else
    {
        TF2Items_SetNumAttributes(hWeapon, 0);
    }

    TF2Items_SetFlags(hWeapon, flags);

    return hWeapon;
}

stock ReplaceList(client)
{
    if (IsValidEntity(FindPlayerBack(client, { 444 }, 1)))
    {
        TF2Attrib_SetByName(client, "self dmg push force increased", 1.8);
        if (IsClientChdata(client)) CPrintToChdata("%N detected mantreads", client);
    }
    else
    {
        TF2Attrib_RemoveByName(client, "self dmg push force increased");
        if (IsClientChdata(client)) CPrintToChdata("%N removed mantreads", client);
    }

    if (bMedieval)
    {
        return;
    }

    new weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Primary);
    new index = -1;

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplacelistPrimary
        {
            case 41: // Natascha becomes Tank Goodness
            {
                if (GetEntProp(weapon, Prop_Send, "m_iEntityQuality") != 10)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_minigun", 850, 64, 10, "87 ; 0.5 ; 178 ; 0.75 ; 1 ; 0.25 ; 6 ; 0.75 ; 57 ; 5 ; 26 ; 100");

                    if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                    {
                        CPrintToChat(client, "{olive}[VSH]{default} Equipped The Tank Goodness instead of Natascha.");
                        VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                    }
                    //PrimaryMaxAmmo[client] = 200;
                }
            }
            case 424: // Tomislav becomes Maxine
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                weapon = SpawnWeapon(client, "tf_weapon_minigun", 41, 64, 10, "421 ; 1 ; 75 ; 3.0 ; 431 ; 6 ; 5 ; 1.2 ; 1 ; 0.75 ; 87 ; 0.575 ; 178 ; 0.75");
            
                if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                {
                    CPrintToChat(client, "{olive}[VSH]{default} Equipped Maxine instead of Tomislav.");
                    VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                }
               
               //PrimaryMaxAmmo[client] = 200;
            }
            case 237: // Rocket Jumper
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                weapon = SpawnWeapon(client, "tf_weapon_rocketlauncher", 18, 1, 0, "265 ; 99999.0");
                SetAmmo(client, 0, 20);
                //PrimaryMaxAmmo[client] = 20;
            }
            case 772: // BFB
            {
                if (Special == VSHSpecial_HHH)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_pep_brawler_blaster", 772, 64, 0, "3 ; 0.66 ; 418 ; 1 ; 49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 1");
                    //PrimaryMaxAmmo[client] = 32;
                }
                else
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    weapon = SpawnWeapon(client, "tf_weapon_pep_brawler_blaster", 772, 64, 0, "3 ; 0.66 ; 418 ; 1 ; 49 ; 1 ; 54 ; 0.875 ; 419 ; 0 ; 532 ; 0.25");
                    //PrimaryMaxAmmo[client] = 32;
                }
            }
            case 17, 204, 412: // Syringe gun
            {
                if (GetEntProp(weapon, Prop_Send, "m_iEntityQuality") != 10)
                {
                    TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Primary);
                    SpawnWeapon(client, "tf_weapon_syringegun_medic", 17, 1, 10, "17 ; 0.05 ; 144 ; 1");
                    //PrimaryMaxAmmo[client] = 150;
                }
            }
        }
    }

    weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplacelistSecondary
        {
            case 57: // Razorback
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 0, "1");
                //PrimaryMaxAmmo[client] = 75;
            }
            /*case 46: // Bonk
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_lunchbox_drink", 163, 1, 0, "144 ; 2");
            }*/
            case 528: // Short Circuit
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_laser_pointer", 140, 1, 0, "1");
            }
            case 265: // Sticky Jumper becomes Quick Launcher
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_pipebomblauncher", 20, 1, 10, "6 ; 0.5 ; 126 ; -0.4 ; 1 ; 0.8 ; 3 ; 0.25 ; 100 ; 0.8 ; 207 ; 2.0 ; 89 ; -6");
                SetAmmo(client, TFWeaponSlot_Secondary, 24);
                if (!(VSHFlags[client] & VSHFLAG_EQUIPMSG))
                {
                    CPrintToChat(client, "{olive}[VSH]{default} Equipped The Quick Launcher instead of Sticky Jumper.");
                    VSHFlags[client] |= VSHFLAG_EQUIPMSG;
                }
                //PrimaryMaxAmmo[client] = 24;
            }
            case 29, 211, 35, 663, 796, 805, 885, 894, 903, 912, 961, 970: // Mediguns & Kritzkrieg
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
                weapon = SpawnWeapon(client, "tf_weapon_medigun", 35, 5, 10, "10 ; 1.25 ; 178 ; 0.75");
                SetEntPropFloat(weapon, Prop_Send, "m_flChargeLevel", 0.42);

                //Mortar's Mortifier
                //else weapon = SpawnWeapon(client, "tf_weapon_medigun", 35, 5, 9, "178 ; 0.75 ; 269 ; 1 ; 9 ; 0.0 ; 7 ; -1.0 ; 134 ; 4");
            }
            case 998: // Vaccinator
            {
                SetEntProp(weapon, Prop_Send, "m_nChargeResistType", 1);
            }
            /*case 735, 736, 810, 831, 933, 1080, 1102:    //Remove sappers
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Secondary);
            }*/
        }
    }

    // We just did the same code above...
    /*if (IsValidEntity(FindPlayerBack(client, { 57 }, 1)))
    {
        RemovePlayerBack(client, { 57 }, 1);
        weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 0, "1");
        PrimaryMaxAmmo[client] = 75;
    }*/

    if (IsValidEntity(FindPlayerBack(client, { 642, 231 }, 2)))
    {
        weapon = SpawnWeapon(client, "tf_weapon_smg", 16, 1, 6, "15 ; 0 ; 1 ; 0.75");
        //PrimaryMaxAmmo[client] = 75;
    }

    weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Melee);

    if (weapon > MaxClients && IsValidEdict(weapon))
    {
        index = GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex");

        switch (index) // ReplaceListMelee
        {
            /*case 331: // Fists of Steel
            {
                TF2_RemoveWeaponSlot2(client, TFWeaponSlot_Melee);
                weapon = SpawnWeapon(client, "tf_weapon_fists", 195, 1, 6, "1");
            }*/
            case 357: // Zatoichi
            {
                CreateTimer(1.0, Timer_NoHonorBound, GetClientUserId(client), TIMER_FLAG_NO_MAPCHANGE);
            }
            //case 142:
            //{
            //    SetEntityRenderMode(weapon, RENDER_TRANSCOLOR);
            //    SetEntityRenderColor(weapon, 255, 255, 255, 75);
            //}
        }
    }

    return;
}

stock RemovePlayerTarge(client)
{
    new edict = MaxClients + 1;
    while ((edict = FindEntityByClassname2(edict, "tf_wearable_demoshield")) != -1)
    {
        new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

        if ((idx == 131 || idx == 406 || idx == 1099) && GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
        {
            TF2_RemoveWearable(client, edict);
            //AcceptEntityInput(edict, "Kill");
        }
    }
}

stock RemovePlayerBack(client, indices[], len)
{
    if (len <= 0)
    {
        return;
    }

    new edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_wearable")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFWearable"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        TF2_RemoveWearable(client, edict);
                    }
                }
            }
        }
    }

    edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_powerup_bottle")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFPowerupBottle"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        TF2_RemoveWearable(client, edict);
                        //AcceptEntityInput(edict, "Kill");
                    }
                }
            }
        }
    }
}

stock FindPlayerBack(client, indices[], len)
{
    if (len <= 0)
    {
        return -1;
    }

    new edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_wearable")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFWearable"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        return edict;
                    }
                }
            }
        }
    }

    edict = MaxClients + 1;

    while ((edict = FindEntityByClassname2(edict, "tf_powerup_bottle")) != -1)
    {
        decl String:netclass[32];

        if (GetEntityNetClass(edict, netclass, sizeof(netclass)) && StrEqual(netclass, "CTFPowerupBottle"))
        {
            new idx = GetEntProp(edict, Prop_Send, "m_iItemDefinitionIndex");

            if (GetEntPropEnt(edict, Prop_Send, "m_hOwnerEntity") == client && !GetEntProp(edict, Prop_Send, "m_bDisguiseWearable"))
            {
                for (new i = 0; i < len; i++)
                {
                    if (idx == indices[i])
                    {
                        return edict;
                    }
                }
            }
        }
    }

    return -1;
}

stock StopHaleMusic(client)
{
    if (!IsValidClient(client))
    {
        return;
    }

    StopSound(client, SNDCHAN_AUTO, HHHTheme);
    StopSound(client, SNDCHAN_AUTO, CBSTheme);
    StopSound(client, SNDCHAN_AUTO, NueMusic);
    StopSound(client, SNDCHAN_AUTO, AstroMusic);
    StopSound(client, SNDCHAN_AUTO, PortalMusic);
    StopSound(client, SNDCHAN_AUTO, PortalMusicDuo);
    StopSound(client, SNDCHAN_AUTO, PortalMusicFinal);
}

stock SetControlPoint(bool:enable)
{
    new CPm = -1; //CP = -1;

    while ((CPm = FindEntityByClassname2(CPm, "team_control_point")) != -1)
    {
        if (CPm > MaxClients && IsValidEdict(CPm))
        {
            AcceptEntityInput(CPm, (enable ? "ShowModel":"HideModel"));
            SetVariantInt(enable ? 0:1);
            AcceptEntityInput(CPm, "SetLocked");
        }
    }

    g_bIsCapEnabled = enable;
}

stock SetArenaCapEnableTime(Float:time)
{
    new ent = -1;
    decl String:strTime[32];
    FloatToString(time, strTime, sizeof(strTime));

    if ((ent = FindEntityByClassname2(-1, "tf_logic_arena")) != -1 && IsValidEdict(ent))
    {
        DispatchKeyValue(ent, "CapEnableDelay", strTime);
    }
}

stock ForceHale(admin, client, bool:hidden, bool:forever = false)
{
    if (forever)
    {
        Hale = client;
    }
    else
    {
        NextHale = client;
    }

    if (!hidden)
    {
        CPrintToChatAllEx(client, "{olive}[VSH] {teamcolor}%N {default}%t", client, "vsh_hale_select_text");
    }
}

stock GetRJFlag(client)
    return (0 < client <= MaxClients && IsClientInGame(client) && IsPlayerAlive(client) ? g_bClientRJFlag[client] : false);

stock SetRJFlag(client, bool:bState)
{
    if (0 < client <= MaxClients)
        g_bClientRJFlag[client] = bState;
}

/*stock GetAirBlastFlag(client)
    return (0 < client <= MaxClients && IsClientInGame(client) && IsPlayerAlive(client) ? g_bClientAirBlastFlag[client] : false);
stock SetAirBlastFlag(client, bool:bState)
{
    if (0 < client <= MaxClients)
        g_bClientAirBlastFlag[client] = bState;
}*/

stock DoubleJump(const any:client, Float:fl_Boost = 280.0, bool:bTrail = true)
{
    decl Float:vVel[3];
    GetEntPropVector(client, Prop_Data, "m_vecVelocity", vVel);  // get current speeds

    /*new Float:x, Float:y, Float:z;
    new buttons = GetClientButtons(client);
    CleanupClientDirection(client, buttons, x, y, z, fl_Boost);
    vVel[0] = x;
    vVel[1] = y;
    vVel[2] = z;*/

    /*buttons &= (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT);
    if (!((buttons & (IN_FORWARD|IN_BACK|IN_MOVELEFT|IN_MOVERIGHT)) == 0))
    {
        new Float:speed = GetEntPropFloat(client, Prop_Send, "m_flMaxspeed");
        ScaleVector(vVel, speed);
    }*/

    if (bTrail) CreateTimer(2.0, RemoveEnt, EntIndexToEntRef(AttachParticle(client, "doublejump_trail")));

    vVel[2] = fl_Boost;
    TeleportEntity(client, NULL_VECTOR, NULL_VECTOR, vVel);      // boost player
}

stock bool:IsNearSpencer(client) 
{ 
    new bool:dispenserheal, medics = 0; 
    new healers = GetEntProp(client, Prop_Send, "m_nNumHealers"); 
    if (healers > 0) 
    { 
        for (new i = 1; i <= MaxClients; i++) 
        { 
            if (IsValidClient(i) && IsPlayerAlive(i) && GetHealingTarget(i) == client) 
                medics++; 
        } 
    } 
    dispenserheal = (healers > medics) ? true : false; 
    return dispenserheal; 
} 

stock FindSentry(client)
{
    new i = -1;

    while ((i = FindEntityByClassname2(i, "obj_sentrygun")) != -1)
    {
        if (GetEntPropEnt(i, Prop_Send, "m_hBuilder") == client)
        {
            return i;
        }
    }

    return -1;
}

stock OnlyScoutsLeft()
{
    for (new client = 1; client <= MaxClients; client++)
    {
        if (IsValidClient(client) && IsPlayerAlive(client) && client != Hale && TF2_GetPlayerClass(client) != TFClass_Scout)
        {
            return false;
        }
    }

    return true;
}

stock GetIndexOfWeaponSlot(client, slot)
{
    new weapon = GetPlayerWeaponSlot(client, slot);

    return (weapon > MaxClients && IsValidEntity(weapon) ? GetEntProp(weapon, Prop_Send, "m_iItemDefinitionIndex"):-1);
}

stock IsWeaponSlotActive(iClient, iSlot)
{
    new hActive = GetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon");
    new hWeapon = GetPlayerWeaponSlot(iClient, iSlot);
    return (hWeapon == hActive);
}

stock IsIndexActive(iClient, Index)
{
    new hActive = GetEntPropEnt(iClient, Prop_Send, "m_hActiveWeapon");
    new idx = IsValidEntity(hActive) ? GetEntProp(hActive, Prop_Send, "m_iItemDefinitionIndex"):-1;

    return (hActive > MaxClients && Index == idx);
}

// The amount of health a player will spawn with based on their class and weapons.
stock GetClientSpawnHealth(client)
{
    new HP = 125;
    new pr = GetIndexOfWeaponSlot(client, TFWeaponSlot_Primary);
    new se = GetIndexOfWeaponSlot(client, TFWeaponSlot_Secondary);
    new me = GetIndexOfWeaponSlot(client, TFWeaponSlot_Melee);
    switch (TF2_GetPlayerClass(client))
    {
        case TFClass_Scout:
        {
            if (pr == 773) HP += 15; // Pocket Pistol
            if (me == 44)  HP -= 15; // Sandman
        }    
        case TFClass_Soldier:
        {
            HP = 200;
            if (se == 226) HP += 20; // Battalion's Backup
            if (me == 357) HP += 30; // Half-Zatoichi
        }
        case TFClass_Pyro:     return 175;
        case TFClass_DemoMan:
        {
            HP = 175;
            switch (pr){case 405, 608:            HP += 25;} // Demoboots
            switch (me){case 132, 266, 482, 1082: HP -= 25;  // Eyelanders
                        case 327, 404, 357:       HP += 30;} // Claid + Persuader + Half-Zatoichi
        }
        case TFClass_Heavy:
        {
            HP = 300;
            if (me == 310) HP -= 20; // Warrior's Spirit
            if (pr == 850) HP += 100; // Tank Goodness
        }
        case TFClass_Engineer:
        {
            if (me == 142) HP += 25; // Gunslinger
        }
        case TFClass_Medic:    return 150;
        case TFClass_Sniper:
        {
            if (se == 231) HP += 25; // Darwin's Danger Shield
        }
        case TFClass_Spy:
        {
            if (me == 356) HP -= 60; // Kunai
            if (me == 461) HP -= 25; // Big Earner
        }
    }
    return HP;
}

stock GetClassBaseHP(client)
{
    switch (TF2_GetPlayerClass(client))
    {
        case TFClass_Scout:     return 125;
        case TFClass_Soldier:   return 200;
        case TFClass_Pyro:      return 175;
        case TFClass_DemoMan:   return 175;
        case TFClass_Heavy:     return 300;
        case TFClass_Engineer:  return 125;
        case TFClass_Medic:     return 150;
        case TFClass_Sniper:    return 125;
        case TFClass_Spy:       return 125;
    }
    return 125;
}

stock GetSpellBook(client)
{
    new ent = -1;
    while((ent = FindEntityByClassname(ent, "tf_weapon_spellbook")) != INVALID_ENT_REFERENCE)
    {
        if (GetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity") == client) return ent;
    }
    return -1;
}

stock SpawnManyAmmoPacks(client, String:model[], skin = 0, num = 14, Float:offsz = 30.0)
{
    if (hSetAmmoVelocity == INVALID_HANDLE)
    {
        return;
    }

    decl Float:pos[3], Float:vel[3], Float:ang[3];

    ang[0] = 90.0;
    ang[1] = 0.0;
    ang[2] = 0.0;

    GetClientAbsOrigin(client, pos);

    pos[2] += offsz;

    for (new i = 0; i < num; i++)
    {
        vel[0] = GetRandomFloat(-400.0, 400.0);
        vel[1] = GetRandomFloat(-400.0, 400.0);
        vel[2] = GetRandomFloat(300.0, 500.0);

        pos[0] += GetRandomFloat(-5.0, 5.0);
        pos[1] += GetRandomFloat(-5.0, 5.0);

        new ent = CreateEntityByName("tf_ammo_pack");

        if (!IsValidEntity(ent))
        {
            continue;
        }

        SetEntityModel(ent, model);
        DispatchKeyValue(ent, "OnPlayerTouch", "!self,Kill,,0,-1"); //for safety, but it shouldn't act like a normal ammopack
        SetEntProp(ent, Prop_Send, "m_nSkin", skin);
        SetEntProp(ent, Prop_Send, "m_nSolidType", 6);

        //      SetEntityMoveType(ent, MOVETYPE_FLYGRAVITY);
        //      SetEntProp(ent, Prop_Send, "movetype", 5);
        //      SetEntProp(ent, Prop_Send, "movecollide", 0);

        SetEntProp(ent, Prop_Send, "m_usSolidFlags", 152);
        SetEntProp(ent, Prop_Send, "m_triggerBloat", 24);
        SetEntProp(ent, Prop_Send, "m_CollisionGroup", 1);
        SetEntPropEnt(ent, Prop_Send, "m_hOwnerEntity", client);
        SetEntProp(ent, Prop_Send, "m_iTeamNum", 2);

        TeleportEntity(ent, pos, ang, vel);
        DispatchSpawn(ent);
        TeleportEntity(ent, pos, ang, vel);

        SDKCall(hSetAmmoVelocity, ent, vel);

        SetEntProp(ent, Prop_Data, "m_iHealth", 900);

        new offs = GetEntSendPropOffs(ent, "m_vecInitialVelocity", true);

        SetEntData(ent, offs - 4, 1, _, true);
        /*      SetEntData(ent, offs-13, 0, 1, true);
        SetEntData(ent, offs-11, 1, 1, true);
        SetEntData(ent, offs-15, 1, 1, true);
        SetEntityMoveType(ent, MOVETYPE_FLYGRAVITY);
        SetEntProp(ent, Prop_Data, "m_nNextThinkTick", GetEntProp(client, Prop_Send, "m_nTickBase") + 3);
        SetEntPropVector(ent, Prop_Data, "m_vecAbsVelocity", vel);
        SetEntPropVector(ent, Prop_Data, "m_vecVelocity", vel);
        SetEntPropVector(ent, Prop_Send, "m_vecInitialVelocity", vel);
        SetEntProp(ent, Prop_Send, "m_bClientSideAnimation", 1);
        PrintToChatAll("aeiou %d %d %d %d %d", GetEntData(ent, offs-16, 1), GetEntData(ent, offs-15, 1), GetEntData(ent, offs-14, 1), GetEntData(ent, offs-13, 1), GetEntData(ent, offs-12, 1));
        */
    }
}

/*
 Teleports a client to a random spawn location

 iClient - Client to teleport
 iTeam - Team of spawn points to use. If not specified or invalid team number, teleport to ANY spawn point.

*/
stock TeleportToSpawn(iClient, iTeam = 0)
{
    new iEnt;
    decl Float:vPos[3];
    decl Float:vAng[3];
    new Handle:hArray = CreateArray();
    DOWHILE_ENTFOUND(iEnt, "info_player_teamspawn")
    {
        if (iTeam <= 1) // Not RED (2) nor BLu (3)
        {
            PushArrayCell(hArray, iEnt);
        }
        else
        {
            new iSpawnTeam = GetEntProp(iEnt, Prop_Send, "m_iTeamNum");
            if (iSpawnTeam == iTeam)
            {
                PushArrayCell(hArray, iEnt);
            }
        }
    }

    iEnt = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1));
    CloseHandle(hArray);

    // Technically you'll never find a map without a spawn point.
    GetEntPropVector(iEnt, Prop_Send, "m_vecOrigin", vPos);
    GetEntPropVector(iEnt, Prop_Send, "m_angRotation", vAng);
    TeleportEntity(iClient, vPos, vAng, NULL_VECTOR);

    /*if (GetArraySize(hArray) <= 0)
    {
        // No iEnt was found. This should be impossible.
    }
    else
    {
        iEnt = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1))
    }*/
}

stock GetClientCloakIndex(client)
{
    if (!IsValidClient(client))
    {
        return -1;
    }

    new wep = GetPlayerWeaponSlot(client, 4);

    if (!IsValidEntity(wep))
    {
        return -1;
    }

    new String:classname[64];

    GetEntityClassname(wep, classname, sizeof(classname));

    if (strncmp(classname, "tf_wea", 6, false) != 0)
    {
        return -1;
    }

    return GetEntProp(wep, Prop_Send, "m_iItemDefinitionIndex");
}

stock bool:Client_IsValid(client, bool:checkConnected=true)
{
    if (client > 4096) {
        client = EntRefToEntIndex(client);
    }

    if (client < 1 || client > MaxClients) {
        return false;
    }

    if (checkConnected && !IsClientConnected(client)) {
        return false;
    }
    
    return true;
}

stock SpawnSmallHealthPackAt(client, ownerteam = 0)
{
    if (!IsValidClient(client) || !IsPlayerAlive(client))
    {
        return;
    }

    new healthpack = CreateEntityByName("item_healthkit_small");

    decl Float:pos[3];
    GetClientAbsOrigin(client, pos);

    pos[2] += 20.0;

    if (IsValidEntity(healthpack))
    {
        DispatchKeyValue(healthpack, "OnPlayerTouch", "!self,Kill,,0,-1");  //for safety, though it normally doesn't respawn
        DispatchSpawn(healthpack);

        SetEntProp(healthpack, Prop_Send, "m_iTeamNum", ownerteam, 4);
        SetEntityMoveType(healthpack, MOVETYPE_VPHYSICS);

        new Float:vel[3];

        vel[0] = float(GetRandomInt(-10, 10)), vel[1] = float(GetRandomInt(-10, 10)), vel[2] = 50.0;

        TeleportEntity(healthpack, pos, NULL_VECTOR, vel);
        //      CreateTimer(17.0, Timer_RemoveCandycaneHealthPack, EntIndexToEntRef(healthpack), TIMER_FLAG_NO_MAPCHANGE);
    }
}

stock IncrementHeadCount(client)
{
    if (!TF2_IsPlayerInCondition(client, TFCond_DemoBuff))
    {
        TF2_AddCondition(client, TFCond_DemoBuff, -1.0);
    }

    new decapitations = GetEntProp(client, Prop_Send, "m_iDecapitations");

    SetEntProp(client, Prop_Send, "m_iDecapitations", decapitations + 1);

    new health = GetClientHealth(client);

    //  health += (decapitations >= 4 ? 10:15);
    health += 15;

    SetEntProp(client, Prop_Data, "m_iHealth", health);
    SetEntProp(client, Prop_Send, "m_iHealth", health);

    TF2_AddCondition(client, TFCond_SpeedBuffAlly, 0.01);   //recalc their speed
}

stock SetDecapitations(client, decaps)
{
    SetEntProp(client, Prop_Send, "m_iDecapitations", decaps);
}

stock SwitchToOtherWeapon(client)
{
    new ammo = GetAmmo(client, 0);
    new weapon = GetPlayerWeaponSlot(client, TFWeaponSlot_Primary);
    new clip = (IsValidEntity(weapon) ? GetEntProp(weapon, Prop_Send, "m_iClip1"):-1);

    if (!(ammo == 0 && clip <= 0))
    {
        SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", weapon);
    }
    else
    {
        SetEntPropEnt(client, Prop_Send, "m_hActiveWeapon", GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary));
    }
}

stock RestrictToMelee(iClient) //bool:bSpawnNewMelee = false
{
    for (new i = 0; i <= 5; i++)
    {
        if (i != TFWeaponSlot_Melee)
        {
            TF2_RemoveWeaponSlot2(iClient, i);
        }
    }

    SwitchToSlot(iClient, TFWeaponSlot_Melee);
}

stock SwitchToSlot(iClient, iSlot)
{
    new iWeapon = GetPlayerWeaponSlot(iClient, iSlot);

    if (iWeapon > 0)
    {
        EquipPlayerWeapon(iClient, iWeapon);
    }
}

stock FindTeleOwner(client)
{
    if (!IsValidClient(client) || !IsPlayerAlive(client))
    {
        return -1;
    }

    new tele = GetEntPropEnt(client, Prop_Send, "m_hGroundEntity");

    decl String:classname[32];

    if (IsValidEntity(tele) && GetEdictClassname(tele, classname, sizeof(classname)) && strcmp(classname, "obj_teleporter", false) == 0)
    {
        new owner = GetEntPropEnt(tele, Prop_Send, "m_hBuilder");
        if (IsValidClient(owner))
        {
            return owner;
        }
    }

    return -1;
}

stock TF2_IsPlayerCritBuffed(client)
{
    return (TF2_IsPlayerInCondition(client, TFCond_Kritzkrieged)
        || TF2_IsPlayerInCondition(client, TFCond_HalloweenCritCandy)
        || TF2_IsPlayerInCondition(client, TFCond:34)
        || TF2_IsPlayerInCondition(client, TFCond:35)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnFirstBlood)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnWin)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnFlagCapture)
        || TF2_IsPlayerInCondition(client, TFCond_CritOnKill)
        || TF2_IsPlayerInCondition(client, TFCond_CritMmmph)
        );
}

stock DisguiseNue(client)
{
    if (IsValidClient(client) && IsPlayerAlive(client))
    {
        new disguisetarget = -1;

        do
        {
            disguisetarget = GetRandomInt(1, MaxClients);
        }
        while ((RedAlivePlayers > 0) && (!IsValidClient(disguisetarget) || (disguisetarget == client)));

        if (!IsValidClient(disguisetarget))
        {
            disguisetarget = client;
        }

        new team = GetClientTeam(client) == 2 ? 3 : 2;

        new TFClassType:class = TF2_GetPlayerClass(disguisetarget);

        TF2_DisguisePlayer(client, TFTeam:team, class, disguisetarget);

        /*new disguisetarget = -1;
        new team = GetClientTeam(client);
        new Handle:hArray = CreateArray();

        for (new clientcheck = 0; clientcheck <= MaxClients; clientcheck++)
        {
            if (IsValidClient(clientcheck) && GetClientTeam(clientcheck) != team && clientcheck != client)
            {
                PushArrayCell(hArray, clientcheck);
            }
        }

        if (GetArraySize(hArray) <= 0)
        {
            disguisetarget = client;
        }
        else
        {
            disguisetarget = GetArrayCell(hArray, GetRandomInt(0, GetArraySize(hArray) - 1));
        }

        if (!IsValidClient(disguisetarget))
        {
            disguisetarget = client;
        }

        team = GetClientTeam(disguisetarget);*/

        //CloseHandle(hArray);
    }
}

stock SetNextAttack(weapon, Float:duration = 0.0)
{
    if (weapon <= MaxClients || !IsValidEntity(weapon)) return;

    new Float:next = GetGameTime() + duration;

    SetEntPropFloat(weapon, Prop_Send, "m_flNextPrimaryAttack", next);
    SetEntPropFloat(weapon, Prop_Send, "m_flNextSecondaryAttack", next);
}


stock FindNextHale(bool:array[])
{
    new tBoss = -1;
    new tBossPoints = -1073741824;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || (spec && GetClientTeam(i) != _:TFTeam_Unassigned)))   // GetClientTeam(i) != _:TFTeam_Unassigned)
        {
            new points = GetClientQueuePoints(i);

            if (points >= tBossPoints && !array[i] && !CheckHaleToggle(i))
            {
                tBoss = i;
                tBossPoints = points;
            }
        }
    }
    return tBoss;
}

stock bool:NextHaleTogglers(bool:array[])
{
    new togs = 0;
    new Players = 0;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    for (new i = 1; i <= MaxClients; i++)
    {
        if (IsValidClient(i) && (GetClientTeam(i) > _:TFTeam_Spectator || (spec && GetClientTeam(i) != _:TFTeam_Unassigned)) && !array[i])
        {
            Players++;

            if (CheckHaleToggle(i))
            {
                togs++;
            }
        }
    }

    if (Players <= 1) //If there's only one player, we need more players anyway so disable this.
        return false;

    if (togs == Players)    //If everyone disabled queue points...
    {
        return true;    //Everyone doesn't want to be Hale
    }
    else
        return false;
}

stock RandomNextHale(bool:array[], bool:disconnect=true)
{
    if (!disconnect) CPrintToChatAll("{olive}[VSH]{default} Noone wants to be Hale, choosing one randomly!");

    new tBoss = -1;
    new bool:spec = GetConVarBool(cvarForceSpecToHale);

    do  //Choose a random Hale
    {
        tBoss = GetRandomInt(1, MaxClients);
    }
    while (!IsValidClient(tBoss) || array[tBoss] || Hale == tBoss || !(GetClientTeam(tBoss) > _:TFTeam_Spectator || (spec && GetClientTeam(tBoss) != _:TFTeam_Unassigned)));

    return tBoss;
}

stock FindNextHaleEx()
{
    new bool:added[MAXPLAYERS + 1];

    if (Hale >= 0)
    {
        added[Hale] = true;
    }

    return FindNextHale(added);
}

stock ForceTeamWin(team)
{
    new ent = FindEntityByClassname2(-1, "team_control_point_master");

    if (ent == -1)
    {
        ent = CreateEntityByName("team_control_point_master");
        DispatchSpawn(ent);
        AcceptEntityInput(ent, "Enable");
    }

    SetVariantInt(team);
    AcceptEntityInput(ent, "SetWinner");
}

stock AttachParticle(ent, String:particleType[], Float:offset = 0.0, bool:battach = true)
{
    new particle = CreateEntityByName("info_particle_system");

    decl String:tName[128];
    decl Float:pos[3];

    GetEntPropVector(ent, Prop_Send, "m_vecOrigin", pos);

    pos[2] += offset;

    TeleportEntity(particle, pos, NULL_VECTOR, NULL_VECTOR);

    Format(tName, sizeof(tName), "target%i", ent);

    DispatchKeyValue(ent, "targetname", tName);
    DispatchKeyValue(particle, "targetname", "tf2particle");
    DispatchKeyValue(particle, "parentname", tName);
    DispatchKeyValue(particle, "effect_name", particleType);
    DispatchSpawn(particle);

    SetVariantString(tName);

    if (battach)
    {
        AcceptEntityInput(particle, "SetParent", particle, particle, 0);
        SetEntPropEnt(particle, Prop_Send, "m_hOwnerEntity", ent);
    }

    ActivateEntity(particle);
    AcceptEntityInput(particle, "start");

    return particle;
}

stock SpawnWeapon(client, String:name[], index, level, qual, String:att[])
{
    new Handle:hWeapon = TF2Items_CreateItem(OVERRIDE_ALL | FORCE_GENERATION);

    if (hWeapon == INVALID_HANDLE)
    {
        return -1;
    }

    TF2Items_SetClassname(hWeapon, name);
    TF2Items_SetItemIndex(hWeapon, index);
    TF2Items_SetLevel(hWeapon, level);
    TF2Items_SetQuality(hWeapon, qual);

    new String:atts[32][32];
    new count = ExplodeString(att, " ; ", atts, 32, 32);

    if (count > 0)
    {
        TF2Items_SetNumAttributes(hWeapon, count / 2);

        new i2 = 0;

        for (new i = 0; i < count; i += 2)
        {
            TF2Items_SetAttribute(hWeapon, i2, StringToInt(atts[i]), StringToFloat(atts[i + 1]));
            i2++;
        }
    }
    else
    {
        TF2Items_SetNumAttributes(hWeapon, 0);
    }

    new entity = TF2Items_GiveNamedItem(client, hWeapon);

    CloseHandle(hWeapon);
    EquipPlayerWeapon(client, entity);

    return entity;
}

stock bool:CheckHaleToggle(client)  //If true, client cannot become Hale
{
    if (!IsValidClient(client))
    {
        return true;
    }

    if (IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return false;
    }

    decl String:strCookie[32];

    GetClientCookie(client, ToggleCookie, strCookie, sizeof(strCookie));

    if (strCookie[0] == 0)
    {
        return false;   //If the cookie doesn't exist yet, they can still become Hale
    }
    else
    {
        return bool:StringToInt(strCookie);
    }
}

stock FindVersionData(Handle:panel, versionindex)
{
    switch (versionindex)
    {
        case 95: // 34.3
        {
            DrawPanelText(panel, "1) Falling off of ctf_facing_worlds and arena_nucleus teleports the boss to spawn.");
            DrawPanelText(panel, "2) Re-added speed reduction on Huo-Long Heatmaker.");
            DrawPanelText(panel, "3) Tomislav (Maxine) has no speed reduction while revved up.");
            DrawPanelText(panel, "4) Removed speed boost while revved up from Maxine.");
            DrawPanelText(panel, "5) Demo shield only grants mini-crits now.");
            DrawPanelText(panel, "6) Nerfed Brass Beast dmg reduc to 50% while revved up.");
        }
        case 94: // 34.3
        {
            DrawPanelText(panel, "7) Hale is always BLU on ctf maps.");
            DrawPanelText(panel, "8) Fixed Vaccinator not giving resistance during uber to the medic using it.");
            DrawPanelText(panel, "9) Astronaut rage distance buffed to twice of normal Hale's range.");
        }
        case 93: // 34.2
        {
            DrawPanelText(panel, "1) Backscatter crits in place of minicrits.");
            DrawPanelText(panel, "2) Removed 25% dmg vuln on GRU.");
            DrawPanelText(panel, "3) The Phase Shift cloak time 2sec, decloak 4sec. Decloaking sets cloak to 0%.");
            DrawPanelText(panel, "4) Added cloaking sound to The Phase Shift.");
            DrawPanelText(panel, "5) Quick-Fix overheal nerfed back to 50% of max overheal.");
        }
        case 92: // 34.1
        {
            DrawPanelText(panel, "1) Can call medic to rage.");
            DrawPanelText(panel, "2) Harder to double tap taunt and fail rage.");
            DrawPanelText(panel, "3) Heavy has 50% faster spinup and weapon switch.");
            DrawPanelText(panel, "4) Nue no longer ignites while disguised.");
            DrawPanelText(panel, "5) Cannot spam super duper jump as much when falling into pits.");
            DrawPanelText(panel, "6) Lowered pit damage to 290 damage to discourage rounds based on knocking him into the pit.");
        }
        case 91: // 34.1
        {
            DrawPanelText(panel, "7) Heavy food models fixed when thrown. Chocolate effect is +150 hp instead of +50.");
            DrawPanelText(panel, "8) Eureka Effect is enabled and costs 130 ammo to teleport.");
            DrawPanelText(panel, "9) Eureka Effect breaks teleporter when you teleport to it.");
            DrawPanelText(panel, "10) Rescue Ranger cost reduced to 100.");
            DrawPanelText(panel, "11) Quick-Fix overheal does not decay.");
        }
        case 90: // 34.1
        {
            DrawPanelText(panel, "12) Quick-Fix uber only grants mega heal and minicrits.");
            DrawPanelText(panel, "13) Natascha is the Tank Goodness from Advanced Weaponiser 2.");
            DrawPanelText(panel, "14) Brass Beast has 63% damage resist while revved up.");
            DrawPanelText(panel, "15) Tomislav is similar to Maxine from AW2 and gives a speed buff while revved but drains ammo.");
            DrawPanelText(panel, "16) Huo Heatmaker has no movement penalty, ignites Hale on hit, and drains ammo slower.");
        }
        case 89: // 34.1
        {
            DrawPanelText(panel, "17) Can goomba Hale, but Hale cannot goomba you.");
            DrawPanelText(panel, "18) He can still mantread you.");
            DrawPanelText(panel, "19) Normal minigun offers various bonuses while being healed by a medic.");
            DrawPanelText(panel, "20) Breaking shields gives the demo a 1 second speed buff.");
            DrawPanelText(panel, "21) Removed self mark for death on GRU.");
            DrawPanelText(panel, "22) Hale only takes 5% of his max health as damage while in pits, at a max of 500.");
        }
        case 88: //34.0
        {
            DrawPanelText(panel, "1) Server is revived!");
            DrawPanelText(panel, "2) Backstabs now work with the 'damage dealt' strange part.");
            DrawPanelText(panel, "3) L'etranger no longer gives silent decloak. YER + Wanga Prick do instead.");
            DrawPanelText(panel, "4) Nerfed kunai max health back to 270.");
            DrawPanelText(panel, "5) Fixed stats on bread.");
            DrawPanelText(panel, "6) Air Strike gains clip based on every 200 damage dealt.");
        }
        case 87: //34.0
        {
            DrawPanelText(panel, "7) Fixed first round glitch with wearables.");
            DrawPanelText(panel, "8) Medics now get 3/5 the damage of a backstab for assisting.");
            DrawPanelText(panel, "9) Cloak & Dagger is now The Phase Shift. Insta cloak/decloak. Short duration.");
            DrawPanelText(panel, "10) YER can no longer disguise at all.");
            DrawPanelText(panel, "11) Fixed equippable wearables (thanks fiagram & Powerlord).");
        }
        case 86: //34.0
        {
            DrawPanelText(panel, "12) Hale is no longer constantly overhealed.");
            DrawPanelText(panel, "13) Hale can no longer pick up health packs.");
            DrawPanelText(panel, "14) Hale takes a static 32 fall damage when near death.");
            DrawPanelText(panel, "15) Hale's stomp deals a static 480 damage.");
            DrawPanelText(panel, "16) Sniper rifle outline shows correct colors based on his remaining HP.");
            DrawPanelText(panel, "17) Fixed maps like military area where BLU can't pick up ammo packs in the first arena round.");
            DrawPanelText(panel, "18) Fixed unbalanced team joining in the first arena round.");
        }
        case 85: //34.0
        {
            DrawPanelText(panel, "19) Added admin commands !sethp and !setmaxhp for Hale.");
            DrawPanelText(panel, "20) Added !infotoggle to disable !haleclass info popups on round start.");
            DrawPanelText(panel, "21) Using !haleclass as Hale now shows boss information instead of class information.");
            DrawPanelText(panel, "22) Cave Johnson now properly doesn't damage himself.");
            DrawPanelText(panel, "23) Cave Johnson can no longer rocket jump with his rage.");
            DrawPanelText(panel, "24) Cave Johnson now properly has to direct shot demo shields to break them.");
        }
        case 84: //34.0
        {
            DrawPanelText(panel, "25) Bazaar Bargain now works properly, instead of giving 2 heads per bodyshot.");
            DrawPanelText(panel, "26) HHH now takes 50 seconds to get his first time teleport instead of 25.");
            DrawPanelText(panel, "27) Claidheamohmor now gives +30 HP, full charge turn control, and impact damage at any range.");
            DrawPanelText(panel, "28) Persian Persuader gives +30 HP, up from +28.");
        }
        case 83: //34.0
        {
            DrawPanelText(panel, "29 BFB has been enabled. No double jump. -12.5% speed. Hype constantly drains. 4x drain vs HHH.");
            DrawPanelText(panel, "30) Soda Popper has been enabled. Hype grants crits, but no extra jumps.");
            DrawPanelText(panel, "31) Bonk has been enabled and is now a bonk potion.");
            DrawPanelText(panel, "32) Acts like the healing aura halloween spell instead of bonk.");
            DrawPanelText(panel, "33) Bonk potion negates rage stun for the caster only.");
        }
        case 82: //34.0
        {
            DrawPanelText(panel, "34) Darwin's Danger Shield now gets the same weak SMG as Cozy Camper.");
            DrawPanelText(panel, "35) Darwin's Danger Shield no longer has damage resistance nor vulnerability.");
            DrawPanelText(panel, "36) Zatoichi has +30 base health and removes afterburn on hit.");
            DrawPanelText(panel, "37) Shahanshah does normal damage if greater than 50% health, and 66% more damage if at 50% health or less.");
            DrawPanelText(panel, "38) Medic crossbow nerfed to 1.45x damage.");
            DrawPanelText(panel, "39) Phlog damage reduced by half when not Crit Mmmph'd.");
        }
        case 81: //34.0
        {
            DrawPanelText(panel, "40) Easter Bunny has 40pct knockback resist in light of the crit eggs.");
            DrawPanelText(panel, "41) Reduced knockback resistance on The Astronaut.");
            DrawPanelText(panel, "42) Added Hard and Lunatic mode. See !halemode to change.");
            DrawPanelText(panel, "43) Anchor now properly stops knockback from sentries.");
            DrawPanelText(panel, "44) Nerfed car and TNT on vsh_minegay_b3 to prevent cheap explosion kills.");
            DrawPanelText(panel, "45) Medics cannot gain uber from weapons while ubercharged on maps where it's overpowered.");
            DrawPanelText(panel, "46) Wrap assassin baubles do 6.66x damage, and has 2 ammo.");
        }
        case 80: //34.0
        {
            DrawPanelText(panel, "47) Cleaver does 3x damage to a stunned boss.");
            DrawPanelText(panel, "48) Airblast has a cooldown of 1.35 instead of 0.75.");
            DrawPanelText(panel, "49) Cloaking next to a dispenser drains your cloak faster.");
            DrawPanelText(panel, "50) Fixed final player disconnect not giving the remaining players mini/crits.");
            DrawPanelText(panel, "51) Fixed Cave Johnson's music spamming.");
            DrawPanelText(panel, "52) Fixed players not regenerating on spawn and having items of the opposite team color.");
        }
        case 79: //0x19
        {
            DrawPanelText(panel, "1) Added crits and huntsman stats to The Fortified Compound.");
            DrawPanelText(panel, "2) Hitman's Heatmaker hits 450 on headshot, but 50 on bodyshot.");
            DrawPanelText(panel, "3) Hitman's Heatmaker does not gain scoped charge.");
        }
        case 78: //0x18
        {
            DrawPanelText(panel, "1) Added the !setboss command for donators to choose their boss.");
            DrawPanelText(panel, "2) Credits to Nergal.");
            DrawPanelText(panel, "3) Demo shields can now only be broken by direct shot lemons from Cave Johnson.");
            DrawPanelText(panel, "4) All heavy food now acts like both a Sandvich (full heal) and Buffalo Steak (speed/minicrits/damage vuln).");
            DrawPanelText(panel, "4) Buffalo Steak Sandvich no longer restricts you to melee. (No food items will).");
        }
        case 77: //0x17
        {
            DrawPanelText(panel, "1) Huo-Long Heatmaker has no movement penalty while deployed.");
            DrawPanelText(panel, "2) Being healed by Vaccinator no longer makes your shield unbreakable.");
            DrawPanelText(panel, "3) (Anchor) Bosses take no pushback from damage while ducking on the ground.");
            DrawPanelText(panel, "4) Hale's HP formula has been rewritten. (Still nearly the same HP amounts).");
        }
        case 76: //0x16
        {
            DrawPanelText(panel, "This is one small step for man. One giant leap for John Madden.");
            DrawPanelText(panel, "1) Nue cannot take ammo from dispensers.");
            DrawPanelText(panel, "2) Nue only gets bonus damage while undisguised, unless backstab.");
            DrawPanelText(panel, "3) Heavy shotgun users take 2x explosive and fire damage.");
            DrawPanelText(panel, "4) GRU drains health again.");
            DrawPanelText(panel, "5) Relaxed the anti-suicide measures, but increased how long suicide is blocked.");
        }
        case 75: //0x15
        {
            DrawPanelText(panel, "1) Reintroduced Medieval mode. Boss HP is divided by 2.6 in this mode.");
            DrawPanelText(panel, "2) In medieval mode, Cave Johnson cannot spawn.");
            DrawPanelText(panel, "3) Relaxed some class limits globally.");
            DrawPanelText(panel, "4) Nue's rage requires backstabs again in light of the damage hiding.");
        }
        case 74: //0x14
        {
            DrawPanelText(panel, "1) Reintroduced The Easter Bunny, but only during Easter.");
            DrawPanelText(panel, "2) Nerfed Easter Bunny's rage to have a 40\% damage penalty.");
            DrawPanelText(panel, "3) Beggar's Bazooka overload jumping reverted to not destroy your ammo.");
            DrawPanelText(panel, "4) Beggar's Bazooka gains minicrits if the soldier is rocket jumping while using it.");
            DrawPanelText(panel, "5) Random chance for military area to spawn medium health packs.");
        }
        case 73: //0x13
        {
            DrawPanelText(panel, "1) Made it harder to identify Nue during her rage.");
            DrawPanelText(panel, "2) GRU's 25% damage vulnerability now applies to lemons.");
            DrawPanelText(panel, "3) Nade jumping now properly has a 48\% damage reduction.");
        }
        case 72: //0x12
        {
            DrawPanelText(panel, "1) Cave Johnon's rage stun distance is smaller.");
            DrawPanelText(panel, "2) CBS's rage stun distance is smaller too, but still larger than Cave's.");
            DrawPanelText(panel, "3) CBS's arrows are now just as strong as they used to be (insta-kill in most cases).");
            DrawPanelText(panel, "4) Manmelter always crits, while revenge crits do bonus damage.");
            DrawPanelText(panel, "5) Blutsauger buffed to gain 2\% uber and 9hp on hit.");
            DrawPanelText(panel, "6) Amputator/Vita-Saw, HHH-axe, and Huntsman (The Stab) can no longer Thriller taunt.");
        }
        case 71: //0x12
        {
            DrawPanelText(panel, "7) Properly nerfed Cave's lemon nades to shoot 10\% slower instead of faster.");
            DrawPanelText(panel, "8) Added Cave Johnson's kill and backstab voice lines.");
            DrawPanelText(panel, "9) Fixed a bug where Cave Johnson's music can overlap itself.");
            DrawPanelText(panel, "10) Vaccinator's wrong resist type warning is changed during Cave Johnson.");
            DrawPanelText(panel, "11) Player became X boss moved upwards slightly to not cover your crosshair.");
            DrawPanelText(panel, "12) Battalion's Backup rage increases by damage from lemons.");
        }
        case 70: //0x11
        {
            DrawPanelText(panel, "1) Wrap Assassin gains its ornament back if you hit Hale with it.");
            DrawPanelText(panel, "2) Vaccinator now regens the ammo of the medic using it during uber.");
            DrawPanelText(panel, "3) Fixed Vaccinator draining ammo instead of giving ammo.");
        }
        case 69: //0x11
        {
            DrawPanelText(panel, "1) Cow mangler gives afterburn immunity.");
            DrawPanelText(panel, "2) L'etranger's 40% cloak is replaced with quiet decloak.");
            DrawPanelText(panel, "3) Removed -7 HP per second on GRU.");
            DrawPanelText(panel, "4) HHH now alerts their teleport target that he teleported to them");
            DrawPanelText(panel, "5) HHH can get stuck in soldiers and scouts, but not other classes on teleport.");
            DrawPanelText(panel, "6) Nue's rage gimmick is \"easier to use\" now, but she only does 80 damage to buildings.");
            DrawPanelText(panel, "7) Touhou Death SFX during Nue Houjuu.");
        }
        case 68: //0x10
        {
            DrawPanelText(panel, "Warning! Unidentified Fantastic Object Incoming!");
            DrawPanelText(panel, "1) Blocked Soda-Popper.");
            DrawPanelText(panel, "2) Lemons no longer insta-fill Battalion's Backup meter");
            DrawPanelText(panel, "3) HHH can no longer wallclimb during round startup to suicide.");
            DrawPanelText(panel, "4) Persian Persuader now gives 2x secondary ammo.");
            DrawPanelText(panel, "5) Phlogistinator nerfed to a 75% resistence during Crit Mmmph.");
        }
        case 67: //0x0F
        {
            DrawPanelText(panel, "If life gives you lemons, make lemon-nades.");
            DrawPanelText(panel, "1) Demo boots can now get 1024 stomp damage.");
            DrawPanelText(panel, "2) Fixed control point being cappable with more than 2 players");
        }
        case 66: //0x0E
        {
            DrawPanelText(panel, "1) Fixed an error with cookies preventing newcomers from being Hale.");
            DrawPanelText(panel, "2) Diamondback gets 3 crits on backstab.");
            DrawPanelText(panel, "3) Diamondback crit shots do bonus damage similar to the Ambassador.");
            DrawPanelText(panel, "4) Pyro shotgun buffed to ignite on 50 damage without crits.");
            DrawPanelText(panel, "5) During crits, it still has to get 64.");
            DrawPanelText(panel, "6) New festives behave properly.");
            DrawPanelText(panel, "7) Nerfed Batt's Backup to 210hp.");
            DrawPanelText(panel, "8) Blocked Short Circuit.");
        }
        case 65: //0x0D
        {
            DrawPanelText(panel, "1) Buffed CBS's rage distance to match Vagineer.");
            DrawPanelText(panel, "2) Pyro can airblast jump if not using the degreaser or backburner.");
            DrawPanelText(panel, "3) Pyro takes 91% less damage during Phlogistinator Crit Mmmph.");
            DrawPanelText(panel, "4) Phlogistinator disables flaregun/other crits.");
            DrawPanelText(panel, "5) Backburner has a chargeable airblast.");
            DrawPanelText(panel, "6) Heavy showdown taunt now heals him like shotguns do.");
            DrawPanelText(panel, "7) If noone wants to be Hale, someone is chosen randomly.");
        }
        case 64: //0x0C
        {
            DrawPanelText(panel, "1) Medieval maps are enabled.");
            DrawPanelText(panel, "2) Hale's health is divided by 3.6 in medieval mode.");
            DrawPanelText(panel, "3) Medieval maps only last 25 minutes instead of 45.");
            DrawPanelText(panel, "4) Class restrictions in medieval maps are less strict.");
            DrawPanelText(panel, "5) Damage from falling off maps has been reduced to a max of 490.");
        }
        case 63: //0x0B
        {
            DrawPanelText(panel, "1) Deadringer gives notifications of its status.");
            DrawPanelText(panel, "2) HHH can only get stuck in Scouts on teleport.");
            DrawPanelText(panel, "3) You can toggle gaining queue points with !haletoggle.");
            DrawPanelText(panel, "4) Do not suicide as Hale within 10 seconds of becoming him.");
            DrawPanelText(panel, "5) It's safe to suicide after the \"Player became Hale with X Health\" fades away.");
            DrawPanelText(panel, "6) Nerfed Military Area.");
        }
        case 62: //0x0A
        {
            DrawPanelText(panel, "1) Capping is enabled.");
            DrawPanelText(panel, "2) The cap is reset and disabled for 5 seconds if anyone hurts Hale.");
            DrawPanelText(panel, "3) This also applies if Hale hurts a player.");
            DrawPanelText(panel, "4) Fixed a glitch with the Bazaar Bargain.");
            DrawPanelText(panel, "5) Pomson generates half the usual rage for Hale.");
            DrawPanelText(panel, "6) Normal Engie shotgun returns half your damage as metal.");
            DrawPanelText(panel, "7) Widowmaker can give ammo up to 512.");
        }
        case 61: //0x09
        {
            DrawPanelText(panel, "1) The Disciplinary Action gives speed buff on hitting Hale.");
            DrawPanelText(panel, "2) The Blutsauger is enabled and can overheal medics using it.");
            DrawPanelText(panel, "3) The Blutsauger gains 1pct uber on hit.");
            DrawPanelText(panel, "4) The Blutsauger on hit, gains 6hp instead of 3hp.");
            DrawPanelText(panel, "5) Xbow buffed from 1.45x to 1.7x damage.");
        }
        case 60: //0x08
        {
            DrawPanelText(panel, "1) Limited HHH's wallclimbing to 10 in a row.");
            DrawPanelText(panel, "2) HHH's weighdown timer is reset on wallclimb.");
            DrawPanelText(panel, "3) Bazaar Bargain loses all heads on miss, but doesn't lose heads on scoped bodyshot.");
            DrawPanelText(panel, "4) Sydney Sleeper generates half the usual rage for Hale.");
            DrawPanelText(panel, "5) Removed recent change to Amputator.");
            DrawPanelText(panel, "6) Cannot wallclimb if your HP is low enough that it'll kill you.");
            DrawPanelText(panel, "7) Vaccinator gives ammo on uber, similar to a level 1 dispenser.");
        }
        case 59: //0x07
        {
            DrawPanelText(panel, "1) Rebalanced market gardening again and added alerts for MGing.");
            DrawPanelText(panel, "2) Rebalanced backstabs again.");
            DrawPanelText(panel, "3) Rebalanced CBS's arrows given on rage amount.");
            DrawPanelText(panel, "4) If you're alone in the server, a bot will spawn so you can mess around.");
            DrawPanelText(panel, "5) Server automatically restarts on crash.");
            DrawPanelText(panel, "6) Fixed telefrag and mantread stomp damage.");
            DrawPanelText(panel, "7) Telefrags technically not changed, but mantread stomps can now OHKO Hale");
            DrawPanelText(panel, "---- instead of leaving him with 1hp.");
        }
        case 58: //0x06
        {
            DrawPanelText(panel, "1) Huntsman has 2x ammo.");
            DrawPanelText(panel, "2) Medic Xbow given 1.45x damage, still weaker than Hunstman.");
            DrawPanelText(panel, "3) Killing Gloves of Boxing give 5 seconds of allcrits after hitting Hale.");
            DrawPanelText(panel, "4) Fists of Steel tank melee, take more ranged dmg, and reduce run speed by 30%.");
            DrawPanelText(panel, "5) Persian Persuader max primary ammo increased, +28 base health.");
            DrawPanelText(panel, "6) Claidheamohmor longer charge duration, more turn control, +30 base health.");
            DrawPanelText(panel, "7) Claidheamohmor gains 4x charge impact damage.");
        }
        case 57: //0x05
        {
            DrawPanelText(panel, "1) Vaccinator has been enabled.");
            DrawPanelText(panel, "2) Vaccinator can resist the explosive power of Hale's fists.");
            DrawPanelText(panel, "3) Vaccinator gives crits on uber alongside its usual effects.");
            DrawPanelText(panel, "4) Cow Mangler shots always ignite Hale as last player or while ubered.");
            DrawPanelText(panel, "5) Soldier cannot be lit on fire with the Cow Mangler");
            DrawPanelText(panel, "6) Bazaar Bargain enabled.");
            DrawPanelText(panel, "7) Big earner gives full cloak on backstab.");
            //DrawPanelText(panel, "7) Cow Mangler charged shots do critical damage.");
        }
        case 56: //0x04
        {
            DrawPanelText(panel, "1) Bonk replaced with Crit-a-Cola.");
            DrawPanelText(panel, "2) Added 25% melee vulnerability to GRU while active.");
            DrawPanelText(panel, "3) Added Medirope bungee cord.");
            DrawPanelText(panel, "4) Axtinguisher/Sun on a Stick/Neon Annihilator do bonus damage to burning targets.");
            DrawPanelText(panel, "5) Sniper rifles have been fixed to do a static 3x damage.");
            DrawPanelText(panel, "6) Bushwacka blocks healing while in use.");
            DrawPanelText(panel, "7) Cozy Camper SMG no longer bleeds, has no mini/crits but has 35% bonus damage.");
        }
        case 55: //0x04
        {
            DrawPanelText(panel, "8) Machina does 1.33x damage on headshots.");
            DrawPanelText(panel, "9) Ambassador does 2.5x damage on headshots.");
            DrawPanelText(panel, "10) Short Circuit stuns for 1.5 seconds.");
            DrawPanelText(panel, "11) Short Circuit ammo increased to 32 on hit and 64 on miss.");
            DrawPanelText(panel, "12) Short Circuit has a cooldown time of ~3 seconds.");
        }
        case 54: //0x03
        {
            DrawPanelText(panel, "1) Reunited Equalizer and Escape Plan.");
            DrawPanelText(panel, "2) Market Gardener does bonus damage to hale, similar to backstabs.");
            DrawPanelText(panel, "3) Backstab formula rebalanced to do better damage to lower HP Hales.");
            DrawPanelText(panel, "4) Fixed HUD text flickering while tabbed to view scores.");
            DrawPanelText(panel, "5) !haledmg on set by default.");
            DrawPanelText(panel, "6) Amputator/Vita-Saw have the same taunt.");
            DrawPanelText(panel, "7) Amputator/Vita-Saw act like Ubersaw.");
        }
        case 53: //0x02
        {
            DrawPanelText(panel, "1) Enabled Heavy's vampire shotguns.");
            DrawPanelText(panel, "2) Heal based on your damage. Max 1500hp.");
            DrawPanelText(panel, "3) Enabled Pyro's ignition shotguns.");
            DrawPanelText(panel, "4) Ignite Hale if you deal 64 damage or higher.");
            DrawPanelText(panel, "5) HHH sniper highlight removed on teleport.");
            DrawPanelText(panel, "6) Added !joindata to open the TF2Data group page.");
            DrawPanelText(panel, "7) Added !statdata to open Gametracker stats.");
        }
        case 52: //0x02
        {
            DrawPanelText(panel, "8) Kunai gives 180 hp instead of 100 on backstab.");
            DrawPanelText(panel, "9) Kunai max hp increased to 512 from 270.");
            DrawPanelText(panel, "10) Kunai removes 60hp instead of 65 (so you start at 65hp).");
            DrawPanelText(panel, "11) Enough to survive one hit from Hale with the deadringer.");
            DrawPanelText(panel, "12) Removed sappers.");
            DrawPanelText(panel, "13) Removed mark for death from GRU and The Escape Plan.");
            DrawPanelText(panel, "14) Beggar's Bazooka can take ammo from dispensers.");
            DrawPanelText(panel, "15) Beggar's Bazooka only has +2 degrees angle variance.");
        }
        case 51: //0x01
        {
            DrawPanelText(panel, "1) Chdata's vsh:data implemented");
            DrawPanelText(panel, "2) Short circuit stun: 1 second");
            DrawPanelText(panel, "3) HHH can wallclimb");
            DrawPanelText(panel, "4) Easter Bunny Removed");
            DrawPanelText(panel, "5) Cleaver/Rescue ranger crits added");
            DrawPanelText(panel, "6) Darwin's Danger Shield Re-enabled");
            DrawPanelText(panel, "7) CBS reduced to 4 arrows max");
        }
        case 50: //0x01
        {
            DrawPanelText(panel, "8) RageDMG increased from 1900 to 3500");
            DrawPanelText(panel, "9) Bushwacka doesn't disable crits");
            DrawPanelText(panel, "10) Removed annoying Halenext msg");
            DrawPanelText(panel, "11) Mantread stomp dmg: 1024");
            DrawPanelText(panel, "12) Mantread jump height rebuffed");
            DrawPanelText(panel, "13) Demo boots - 90% reduced FallDMG");
            DrawPanelText(panel, "14) Nade launchers reduce self blast dmg");
            DrawPanelText(panel, "---- by 48% for demojumping");
        }
        case 49: //0x01
        {
            DrawPanelText(panel, "15) Soda Popper crits instead of minicrits");
            DrawPanelText(panel, "16) Nades/Stickies minicrit airshots");
            DrawPanelText(panel, "17) Battalion's Backup +22hp +75% knockback reduction");
            DrawPanelText(panel, "18) Shahanshah blocks healing while in use");
            DrawPanelText(panel, "19) Medic xbow gives +16% uber instead of +10%");
            DrawPanelText(panel, "20) BFB replaced with Scattergun");
            DrawPanelText(panel, "21) Bonk replaced with Mad Milk");
        }
        case 48: //142
        {
             DrawPanelText(panel, "1) Festive fixes");
             DrawPanelText(panel, "2) Hopefully fixed targes disappearing");
#if defined EASTER_BUNNY_ON
             DrawPanelText(panel, "3) Easter and April Fool's Day so close together... hmmm...");
#endif
        }
        case 47: //141
        {
             DrawPanelText(panel, "1) Fixed bosses disguising");
             DrawPanelText(panel, "2) Updated action slot whitelist");
             DrawPanelText(panel, "3) Updated sniper rifle list, Fest. Huntsman");
             DrawPanelText(panel, "4) Medigun speed works like Quick-Fix");
             DrawPanelText(panel, "5) Medigun+gunslinger vm fix");
             DrawPanelText(panel, "6) CBS gets Fest. Huntsman");
             DrawPanelText(panel, "7) Spies take more dmg while cloaked (normal watch)");
             DrawPanelText(panel, "8) Experimental backstab block animation");
        }
        case 46: //140
        {
             DrawPanelText(panel, "1) Dead Ringers have no cloak defense buff. Normal cloaks do.");
             DrawPanelText(panel, "2) Fixed Sniper Rifle reskin behavior");
             DrawPanelText(panel, "3) Boss has small amount of stun resistance after rage");
             DrawPanelText(panel, "4) Fixed HHH/CBS models");
        }
        case 45: //139c
        {
             DrawPanelText(panel, "1) Backstab disguising smoother/less obvious");
             DrawPanelText(panel, "2) Rage 'dings' dispenser/tele, to help locate Hale");
             DrawPanelText(panel, "3) Improved skip panel");
             DrawPanelText(panel, "4) Removed crits from sniper rifles, now do 2.9x damage");
             DrawPanelText(panel, "-- Sleeper does 2.4x damage, 2.9x if Hale's rage is >90pct");
             DrawPanelText(panel, "-- Bushwacka nerfs still apply");
             DrawPanelText(panel, "-- Minicrit- less damage, more knockback");
             DrawPanelText(panel, "5) Scaled sniper rifle glow time a bit better");
             DrawPanelText(panel, "6) Fixed Dead Ringer spy death icon");
        }
        case 44: //139c
        {
             DrawPanelText(panel, "7) BabyFaceBlaster will fill boost normally, but will hit 100 and drain+minicrits");
             DrawPanelText(panel, "8) Can't Eureka+destroy dispenser to insta-tele");
             DrawPanelText(panel, "9) Phlogger invuln during the taunt");
             DrawPanelText(panel, "10) Added !hale_resetq");
             DrawPanelText(panel, "11) Heatmaker gains Focus on hit (varies by charge)");
             DrawPanelText(panel, "12) Bosses get short defense buff after rage");
             DrawPanelText(panel, "13) Cozy Camper comes with SMG - 1.5s bleed, no random crit, -15% dmg");
             DrawPanelText(panel, "14) Valve buffed Crossbow. Balancing.");
             DrawPanelText(panel, "15) New cvars-hale_force_team, hale_enable_eureka");
        }
        case 43: //139c
        {
             DrawPanelText(panel, "16) Powerlord's Better Backstab Detection");
             DrawPanelText(panel, "17) Backburner has charged airblast");
             DrawPanelText(panel, "18) Skip Hale notification mixes things up");
             DrawPanelText(panel, "19) Bosses may or may not obey Pyrovision voice rules. Or both.");
        }
        case 42: //139
        {
             DrawPanelText(panel, "1) !hale_resetqueuepoints");
             DrawPanelText(panel, "-- From chat, asks for confirmation");
             DrawPanelText(panel, "-- From console, no confirmation!");
             DrawPanelText(panel, "2) Help panel stops repeatedly popping up");
             DrawPanelText(panel, "3) Medic is credited 100% of damage done during uber");
             DrawPanelText(panel, "4) Bushwacka changes:");
             DrawPanelText(panel, "-- Hit a wall to climb it");
             DrawPanelText(panel, "-- Slower fire rate");
             DrawPanelText(panel, "-- Disables crits on rifles (not Huntsman)");
             DrawPanelText(panel, "-- Effect does not occur during HHH round");
             DrawPanelText(panel, "...contd.");
        }

        case 41: //139
        {
             DrawPanelText(panel, "5) Late December increases chances of CBS appearing");
             DrawPanelText(panel, "6) If map changes mid-round, queue points not lost");
             DrawPanelText(panel, "7) Fixed HHH tele (again).");
             DrawPanelText(panel, "8) HHH tele removes Sniper Rifle glow");
             DrawPanelText(panel, "9) Mantread stomp deals 5x damage to Hale");
             DrawPanelText(panel, "10) Rage stun range- Vagineer increased, CBS decreased");
             DrawPanelText(panel, "11) Balanced CBS arrows");
             DrawPanelText(panel, "12) Minicrits will not play loud sound to all players");
             DrawPanelText(panel, "13) Dead Ringer will not be able to activate for 2s after backstab");
             DrawPanelText(panel, "-- Other spy watches can");
             DrawPanelText(panel, "14) Fixed crit issues");
             DrawPanelText(panel, "15) Hale queue now accepts negative points");
             DrawPanelText(panel, "...contd.");
        }
        case 40: //139
        {
             DrawPanelText(panel, "16) For server owners:");
             DrawPanelText(panel, "-- Translations updated");
             DrawPanelText(panel, "-- Added hale_spec_force_boss cvar");
             DrawPanelText(panel, "-- Now attempts to integrate tf2items config");
             DrawPanelText(panel, "-- With SteamTools, changes game desc");
             DrawPanelText(panel, "-- Plugin may warn if config is outdated");
             DrawPanelText(panel, "-- Jump/tele charge defines at top of code");
             DrawPanelText(panel, "17) For mapmakers:");
             DrawPanelText(panel, "-- Indicate that your map has music:");
             DrawPanelText(panel, "-- Add info_target with name 'hale_no_music'");
             DrawPanelText(panel, "18) Third Degree hit adds uber to healers");
             DrawPanelText(panel, "19) Knockback resistance on Hale/HHH");
        }
        case 39: //138
        {
             DrawPanelText(panel, "1) Bots will use rage.");
             DrawPanelText(panel, "2) Doors only forced open on specified maps");
             DrawPanelText(panel, "3) CBS spawns more during Winter holidays");
             DrawPanelText(panel, "4) Deathspam for teamswitch gone");
             DrawPanelText(panel, "5) More notice for next Hale");
             DrawPanelText(panel, "6) Wrap Assassin has 2 ammo");
             DrawPanelText(panel, "7) Holiday Punch slightly disorients Hale");
             DrawPanelText(panel, "-- If stunned Heavy punches Hale, removes stun");
             DrawPanelText(panel, "8) Mantreads increase rocketjump distance");
        }
        case 38: //138
        {
             DrawPanelText(panel, "9) Fixed CBS Huntsman rate of fire");
             DrawPanelText(panel, "10) Fixed permanent invuln Vagineer glitch");
             DrawPanelText(panel, "11) Jarate removes some Vagineer uber time and 1 CBS arrow");
             DrawPanelText(panel, "12) Low-end Medic assist damage now counted");
             DrawPanelText(panel, "13) Hitting Dead Ringers does more damage (as balancing)");
             DrawPanelText(panel, "14) Eureka Effect temporarily removed)");
             DrawPanelText(panel, "15) HHH won't get stuck in ceilings when teleporting");
             DrawPanelText(panel, "16) Further updates pending");
        }
        case 37:    //137
        {
                DrawPanelText(panel, "1) Fixed taunt/rage.");
                DrawPanelText(panel, "2) Fixed rage+high five.");
                DrawPanelText(panel, "3) hale_circuit_stun - Circuit Stun time (0 to disable)");
                DrawPanelText(panel, "4) Fixed coaching bug");
                DrawPanelText(panel, "5) Config file for map doors");
                DrawPanelText(panel, "6) Fixed floor-Hale");
                DrawPanelText(panel, "7) Fixed Circuit stun");
                DrawPanelText(panel, "8) Fixed negative health bug");
                DrawPanelText(panel, "9) hale_enabled isn't a dummy cvar anymore");
                DrawPanelText(panel, "10) hale_special cmd fixes");
        }
        case 36: //137
        {
             DrawPanelText(panel, "11) 1st-round cap enables after 1 min.");
             DrawPanelText(panel, "12) More invalid Hale checks.");
             DrawPanelText(panel, "13) Backstabs act like Razorbackstab (2s)");
             DrawPanelText(panel, "14) Fixed map check error");
             DrawPanelText(panel, "15) Wanga Prick -> Eternal Reward effect");
             DrawPanelText(panel, "16) Jarate removes 8% of Hale's rage meter");
             DrawPanelText(panel, "17) The Fan O' War removes 5% of the rage meter on hit");
             DrawPanelText(panel, "18) Removed Shortstop reload penalty");
             DrawPanelText(panel, "19) VSH_OnMusic forward");
        }
        case 35: //1369
        {
             DrawPanelText(panel, "1) Fixed spawn door blocking.");
             DrawPanelText(panel, "2) Cleaned up HUD text (health, etc).");
             DrawPanelText(panel, "3) VSH_OnDoJump now has a bool for superduper.");
             DrawPanelText(panel, "4) !halenoclass changed to !haleclassinfotoggle.");
             DrawPanelText(panel, "5) Fixed invalid clients becoming Hale");
             DrawPanelText(panel, "6) Removed teamscramble from first round.");
             DrawPanelText(panel, "7) Vagineer noises:");
             DrawPanelText(panel, "-- Nope for no");
             DrawPanelText(panel, "-- Gottam/mottag (same as jump but quieter) for Move Up");
             DrawPanelText(panel, "-- Hurr for everything else");
        }
        case 34: //1369
        {
             DrawPanelText(panel, "8) All map dispensers will be on the non-Hale team (fixes health bug)");
             DrawPanelText(panel, "9) Fixed command flags on overlay command");
             DrawPanelText(panel, "10) Fixed soldier shotgun not dealing midair minicrits.");
             DrawPanelText(panel, "11) Fixed invalid weapons on clients");
             DrawPanelText(panel, "12) Damage indicator (+spec damage indicator)");
             DrawPanelText(panel, "13) Hale speed remains during humiliation time");
             DrawPanelText(panel, "14) SuperDuperTele for HHH stuns for 4s instead of regular 2");
        }
        case 33: //1369
        {
             DrawPanelText(panel, "15) Battalion's Backup adds +10 max hp, but still only overheal to 300");
             DrawPanelText(panel, "-- Full rage meter when hit by Hale. Buff causes drastic defense boost.");
             DrawPanelText(panel, "16) Fixed a telefrag glitch");
             DrawPanelText(panel, "17) Powerjack is now +25hp on hit, heal up to +50 overheal");
             DrawPanelText(panel, "18) Backstab now shows the regular hit indicator (like other weapons do)");
             DrawPanelText(panel, "19) Kunai adds 100hp on backstab, up to 270");
             DrawPanelText(panel, "20) FaN/Scout crit knockback not nerfed to oblivion anymore");
             DrawPanelText(panel, "21) Removed Short Circuit stun (better effect being made)");
        }
        case 32: //1368
        {
             DrawPanelText(panel, "1) Now FaN and Scout crit knockback is REALLY lessened.");
             DrawPanelText(panel, "2) Medic says 'I'm charged' when he gets fully uber-charge with syringegun.");
             DrawPanelText(panel, "3) Team will scramble in 1st round, if 1st round is default arena.");
             DrawPanelText(panel, "4) Now client can disable info about changes of classes, displayed when round started.");
             DrawPanelText(panel, "5) Powerjack adds 50HPs per hit.");
             DrawPanelText(panel, "6) Short Circuit stuns Hale for 2.0 seconds.");
             DrawPanelText(panel, "7) Vagineer says \"hurr\"");
             //DrawPanelText(panel, "8) Added support of VSH achievements.");
        }
        case 31: //1367
        {
             DrawPanelText(panel, "1) Map-specific fixes:");
             DrawPanelText(panel, "-- Oilrig's pit no longer allows HHH to instatele");
             DrawPanelText(panel, "-- Arakawa's pit damage drastically lessened");
             DrawPanelText(panel, "2) General map fixes: disable spawn-blocking walls");
             DrawPanelText(panel, "3) Cap point now properly un/locks instead of fake-unlocking.");
             DrawPanelText(panel, "4) Tried fixing double-music playing.");
             DrawPanelText(panel, "5) Fixed Eternal Reward disguise glitch - edge case.");
             DrawPanelText(panel, "6) Help menus no longer glitch votes.");
        }
        case 30: //1366
        {
             DrawPanelText(panel, "1) Fixed superjump velocity code.");
             DrawPanelText(panel, "2) Fixed replaced Rocket Jumpers not minicritting Hale in midair.");
        }
        case 29: //1365
        {
         DrawPanelText(panel, "1) Half-Zatoichi is now allowed. Heal 35 health on hit, but must hit Hale to remove Honorbound.");
         DrawPanelText(panel, "-- Can add up to 25 overheal");
         DrawPanelText(panel, "-- Starts the round bloodied.");
         DrawPanelText(panel, "2) Fixed Hale not building rage when only Scouts remain.");
         DrawPanelText(panel, "3) Tried fixing Hale disconnect/nextround glitches (including music).");
         DrawPanelText(panel, "4) Candycane spawns healthpack on hit.");
        }
        case 28:    //1364
        {
            DrawPanelText(panel, "1) Added convar hale_first_round (default 0). If it's 0, first round will be default arena.");
            DrawPanelText(panel, "2) Added more translations.");
        }
        case 27:    //1363
        {
            DrawPanelText(panel, "1) Fixed a queue point exploit (VoiDeD is mean)");
            DrawPanelText(panel, "2) HHH has backstab/death sound now");
            DrawPanelText(panel, "3) First rounds are normal arena");
            DrawPanelText(panel, "-- Some weapon replacements still apply!");
            DrawPanelText(panel, "-- Teambalance is still off, too.");
            DrawPanelText(panel, "4) Fixed arena_ maps not switching teams occasionally");
            DrawPanelText(panel, "-- After 3 rounds with a team, has a chance to switch");
            DrawPanelText(panel, "-- Will add a cvar to keep Hale always blue/force team, soon");
            DrawPanelText(panel, "5) Fixed pit damage");
        }
        case 26:    //1361 and 2
        {
            DrawPanelText(panel, "1) CBS music");
            DrawPanelText(panel, "2) Soldiers minicrit Hale while he's in midair.");
            DrawPanelText(panel, "3) Direct Hit crits instead of minicrits");
            DrawPanelText(panel, "4) Reserve Shooter switches faster, +10% dmg");
            DrawPanelText(panel, "5) Added hale_stop_music cmd - admins stop music for all");
            DrawPanelText(panel, "6) FaN and Scout crit knockback is lessened");
            DrawPanelText(panel, "7) Your halemusic/halevoice settings are saved");
            DrawPanelText(panel, "1.362) Sounds aren't stupid .mdl files anymore");
            DrawPanelText(panel, "1.362) Fixed translations");
        }
        case 25:    //136
        {
            DrawPanelText(panel, "MEGA UPDATE by FlaminSarge! Check next few pages");
            DrawPanelText(panel, "SUGGEST MANNO-TECH WEAPON CHANGES");
            DrawPanelText(panel, "1) Updated CBS model");
            DrawPanelText(panel, "2) Fixed last man alive sound");
            DrawPanelText(panel, "3) Removed broken hale line, fixed one");
            DrawPanelText(panel, "4) New HHH rage sound");
            DrawPanelText(panel, "5) HHH music (/halemusic)");
            DrawPanelText(panel, "6) CBS jump noise");
            DrawPanelText(panel, "7) /halevoice and /halemusic to turn off voice/music");
            DrawPanelText(panel, "8) Updated natives/forwards (can change rage dist in fwd)");
        }
        case 24:    //136
        {
            DrawPanelText(panel, "9) hale_crits cvar to turn off hale random crits");
            DrawPanelText(panel, "10) Fixed sentries not repairing when raged");
            DrawPanelText(panel, "-- Set hale_ragesentrydamagemode 0 to force engineer to pick up sentry to repair");
            DrawPanelText(panel, "11) Now uses sourcemod autoconfig (tf/cfg/sourcemod/)");
            DrawPanelText(panel, "12) No longer requires saxton_hale_points.cfg file");
            DrawPanelText(panel, "-- Now using clientprefs for queue points");
            DrawPanelText(panel, "13) When on non-VSH map, team switch does not occur so often.");
            DrawPanelText(panel, "14) Should have full replay compatibility");
            DrawPanelText(panel, "15) Bots work with queue, are Hale less often");
        }
        case 23:    //136
{
            DrawPanelText(panel, "16) Hale's health increased by 1 (in code)");
            DrawPanelText(panel, "17) Many many many many many fixes");
            DrawPanelText(panel, "18) Crossbow +150% damage +10 uber on hit");
            DrawPanelText(panel, "19) Syringegun has overdose speed boost");
            DrawPanelText(panel, "20) Sniper glow time scales with charge (2 to 8 seconds)");
            DrawPanelText(panel, "21) Eyelander/reskins add heads on hit");
            DrawPanelText(panel, "22) Axetinguisher/reskins use fire axe attributes");
            DrawPanelText(panel, "23) GRU/KGB is +50% speed but -7hp/s");
            DrawPanelText(panel, "24) Airblasting boss adds rage (no airblast reload though)");
            DrawPanelText(panel, "25) Airblasting uber vagineer adds time to uber and takes extra ammo");
        }
        case 22:    //136
        {
            DrawPanelText(panel, "26) Frontier Justice allowed, crits only when sentry sees Hale");
            DrawPanelText(panel, "27) Boss weighdown (look down + crouch) after 5 seconds in midair");
            DrawPanelText(panel, "28) FaN is back");
            DrawPanelText(panel, "29) Scout crits/minicrits do less knockback if not melee");
            DrawPanelText(panel, "30) Saxton has his own fists");
            DrawPanelText(panel, "31) Unlimited /halehp but after 3, longer cooldown");
            DrawPanelText(panel, "32) Fist kill icons");
            DrawPanelText(panel, "33) Fixed CBS arrow count (start at 9, but if less than 9 players, uses only that number of players)");
            DrawPanelText(panel, "34) Spy primary minicrits");
            DrawPanelText(panel, "35) Dead ringer fixed");
        }
        case 21:    //136
        {
            DrawPanelText(panel, "36) Flare gun replaced with detonator. Has large jump but more self-damage (like old detonator beta)");
            DrawPanelText(panel, "37) Eternal Reward backstab disguises as random faster classes");
            DrawPanelText(panel, "38) Kunai adds 60 health on backstab");
            DrawPanelText(panel, "39) Randomizer compatibility.");
            DrawPanelText(panel, "40) Medic uber works as normal with crits added (multiple targets, etc)");
            DrawPanelText(panel, "41) Crits stay when being healed, but adds minicrits too (for sentry, etc)");
            DrawPanelText(panel, "42) Fixed Sniper back weapon replacement");
        }
        case 20:    //136
        {
            DrawPanelText(panel, "43) Vagineer NOPE and Well Don't That Beat All!");
            DrawPanelText(panel, "44) Telefrags do 9001 damage");
            DrawPanelText(panel, "45) Speed boost when healing scouts (like Quick-Fix)");
            DrawPanelText(panel, "46) Rage builds (VERY slowly) if there are only Scouts left");
            DrawPanelText(panel, "47) Healing assist damage split between healers");
            DrawPanelText(panel, "48) Fixed backstab assist damage");
            DrawPanelText(panel, "49) Fixed HHH attacking during tele");
            DrawPanelText(panel, "50) Soldier boots - 1/10th fall damage");
            DrawPanelText(panel, "AND MORE! (I forget all of them)");
        }
        case 19:    //135_3
        {
            DrawPanelText(panel, "1)Added point system (/halenext).");
            DrawPanelText(panel, "2)Added [VSH] to VSH messages.");
            DrawPanelText(panel, "3)Removed native VSH_GetSaxtonHaleHealth() added native VSH_GetRoundState().");
            DrawPanelText(panel, "4)There is mini-crits for scout's pistols. Not full crits, like before.");
            DrawPanelText(panel, "5)Fixed issues associated with crits.");
            DrawPanelText(panel, "6)Added FORCE_GENERATION flag to stop errorlogs.");
            DrawPanelText(panel, "135_2 and 135_3)Bugfixes and updated translations.");
        }
        case 18:    //135
        {
            DrawPanelText(panel, "1)Special crits will not removed by Medic.");
            DrawPanelText(panel, "2)Sniper's glow is working again.");
            DrawPanelText(panel, "3)Less errors in console.");
            DrawPanelText(panel, "4)Less messages in chat.");
            DrawPanelText(panel, "5)Added more natives.");
            DrawPanelText(panel, "6)\"Over 9000\" sound returns! Thx you, FlaminSarge.");
            DrawPanelText(panel, "7)Hopefully no more errors in logs.");
        }
        case 17:    //134
        {
            DrawPanelText(panel, "1)Biohazard skin for CBS");
            DrawPanelText(panel, "2)TF2_IsPlayerInCondition() fixed");
            DrawPanelText(panel, "3)Now sniper rifle must be 100perc.charged to glow Hale.");
            DrawPanelText(panel, "4)Fixed Vagineer's model.");
            DrawPanelText(panel, "5)Added Natives.");
            DrawPanelText(panel, "6)Hunstman deals more damage.");
            DrawPanelText(panel, "7)Added reload time (5sec) for Pyro's airblast. ");
            DrawPanelText(panel, "1.34_1 1)Fixed airblast reload when VSH is disabled.");
            DrawPanelText(panel, "1.34_1 2)Fixed airblast reload after detonator's alt-fire.");
            DrawPanelText(panel, "1.34_1 3)Airblast reload time reduced to 3 seconds.");
            DrawPanelText(panel, "1.34_1 4)hale_special 3 is disabled.");
        }
        case 16:    //133
        {
            DrawPanelText(panel, "1)Fixed bugs, associated with Uber-update.");
            DrawPanelText(panel, "2)FaN replaced with Soda Popper.");
            DrawPanelText(panel, "3)Bazaar Bargain replaced with Sniper Rifle.");
            DrawPanelText(panel, "4)Sniper Rifle adding glow to Hale - anyone can see him for 5 seconds.");
            DrawPanelText(panel, "5)Crusader's Crossbow deals more damage.");
            DrawPanelText(panel, "6)Code optimizing.");
        }
        case 15:    //132
        {
            DrawPanelText(panel, "1)Added new Saxton's lines on...");
            DrawPanelText(panel, "  a)round start");
            DrawPanelText(panel, "  b)jump");
            DrawPanelText(panel, "  c)backstab");
            DrawPanelText(panel, "  d)destroy Sentry");
            DrawPanelText(panel, "  e)kill Scout, Pyro, Heavy, Engineer, Spy");
            DrawPanelText(panel, "  f)last man standing");
            DrawPanelText(panel, "  g)killing spree");
            DrawPanelText(panel, "2)Fixed bugged count of CBS' arrows.");
            DrawPanelText(panel, "3)Reduced Hale's damage versus DR by 20 HPs.");
            DrawPanelText(panel, "4)Now two specials can not be at a stretch.");
            DrawPanelText(panel, "v1.32_1 1)Fixed bug with replay.");
            DrawPanelText(panel, "v1.32_1 2)Fixed bug with help menu.");
        }
        case 14:    //131
            DrawPanelText(panel, "1)Now \"replay\" will not change team.");
        case 13:    //130
            DrawPanelText(panel, "1)Fixed bugs, associated with crushes, error logs, scores.");
        case 12:    //129
        {
            DrawPanelText(panel, "1)Fixed random crushes associated with CBS.");
            DrawPanelText(panel, "2)Now Hale's HP formula is ((760+x-1)*(x-1))^1.04");
            DrawPanelText(panel, "3)Added hale_special0. Use it to change next boss to Hale.");
            DrawPanelText(panel, "4)CBS has 9 arrows for bow-rage. Also he has stun rage, but on little distantion.");
            DrawPanelText(panel, "5)Teammates gets 2 scores per each 600 damage");
            DrawPanelText(panel, "6)Demoman with Targe has crits on his primary weapon.");
            DrawPanelText(panel, "7)Removed support of non-Arena maps, because nobody wasn't use it.");
            DrawPanelText(panel, "8)Pistol/Lugermorph has crits.");
        }
        case 11:    //128
        {
            DrawPanelText(panel, "VS Saxton Hale Mode is back!");
            DrawPanelText(panel, "1)Christian Brutal Sniper is a regular character.");
            DrawPanelText(panel, "2)CBS has 3 melee weapons ad bow-rage.");
            DrawPanelText(panel, "3)Added new lines for Vagineer.");
            DrawPanelText(panel, "4)Updated models of Vagineer and HHH jr.");
        }
        case 10:    //999
            DrawPanelText(panel, "Attachables are broken. Many \"thx\" to Valve.");
        case 9: //126
        {
            DrawPanelText(panel, "1)Added the second URL for auto-update.");
            DrawPanelText(panel, "2)Fixed problems, when auto-update was corrupt plugin.");
            DrawPanelText(panel, "3)Added a question for the next Hale, if he want to be him. (/haleme)");
            DrawPanelText(panel, "4)Eyelander and Half-Zatoichi was replaced with Claidheamh Mor.");
            DrawPanelText(panel, "5)Fan O'War replaced with Bat.");
            DrawPanelText(panel, "6)Dispenser and TP won't be destoyed after Engineer's death.");
            DrawPanelText(panel, "7)Mode uses the localization file.");
            DrawPanelText(panel, "8)Saxton Hale will be choosed randomly for the first 3 rounds (then by queue).");
        }
        case 8: //125
        {
            DrawPanelText(panel, "1)Fixed silent HHHjr's rage.");
            DrawPanelText(panel, "2)Now bots (sourcetv too) do not will be Hale");
            DrawPanelText(panel, "3)Fixed invalid uber on Vagineer's head.");
            DrawPanelText(panel, "4)Fixed other little bugs.");
        }
        case 7: //124
        {
            DrawPanelText(panel, "1)Fixed destroyed buildables associated with spy's fake death.");
            DrawPanelText(panel, "2)Syringe Gun replaced with Blutsauger.");
            DrawPanelText(panel, "3)Blutsauger, on hit: +5 to uber-charge.");
            DrawPanelText(panel, "4)Removed crits from Blutsauger.");
            DrawPanelText(panel, "5)CnD replaced with Invis Watch.");
            DrawPanelText(panel, "6)Fr.Justice replaced with shotgun");
            DrawPanelText(panel, "7)Fists of steel replaced with fists.");
            DrawPanelText(panel, "8)KGB replaced with GRU.");
            DrawPanelText(panel, "9)Added /haleclass.");
            DrawPanelText(panel, "10)Medic gets assist damage scores (1/2 from healing target's damage scores, 1/1 when uber-charged)");
        }
        case 6: //123
        {
            DrawPanelText(panel, "1)Added Super Duper Jump to rescue Hale from pit");
            DrawPanelText(panel, "2)Removed pyro's ammolimit");
            DrawPanelText(panel, "3)Fixed little bugs.");
        }
        case 5: //122
        {
            DrawPanelText(panel, "1.21)Point will be enabled when X or less players be alive.");
            DrawPanelText(panel, "1.22)Now it's working :) Also little optimize about player count.");
        }
        case 4: //120
        {
            DrawPanelText(panel, "1)Added new Hale's phrases.");
            DrawPanelText(panel, "2)More bugfixes.");
            DrawPanelText(panel, "3)Improved super-jump.");
        }
        case 3: //112
        {
            DrawPanelText(panel, "1)More bugfixes.");
            DrawPanelText(panel, "2)Now \"(Hale)<mapname>\" can be nominated for nextmap.");
            DrawPanelText(panel, "3)Medigun's uber gets uber and crits for Medic and his target.");
            DrawPanelText(panel, "4)Fixed infinite Specials.");
            DrawPanelText(panel, "5)And more bugfixes.");
        }
        case 2: //111
        {
            DrawPanelText(panel, "1)Fixed immortal spy");
            DrawPanelText(panel, "2)Fixed crashes associated with classlimits.");
        }
        case 1: //110
        {
            DrawPanelText(panel, "1)Not important changes on code.");
            DrawPanelText(panel, "2)Added hale_enabled convar.");
            DrawPanelText(panel, "3)Fixed bug, when all hats was removed...why?");
        }
        case 0: //100
        {
            DrawPanelText(panel, "Released!!!");
            DrawPanelText(panel, "On new version you will get info about changes.");
        }
        default:
        {
            DrawPanelText(panel, "Somehow you've managed to find a glitched version page!");
            DrawPanelText(panel, "Congratulations. Now go fight Hale.");
        }
    }
}

/*
Returns false if multiple fogs are already in the map,
in which case we won't bother messing with fogs.

*/
stock bool:InitFogs()
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
            strcopy(g_sMasterFog, sizeof(g_sMasterFog), sFog);

            if (g_sMasterFog[0] == 0)
            {
                DispatchKeyValue(iEnt, "targetname", "fog_master");
                strcopy(g_sMasterFog, sizeof(g_sMasterFog), "fog_master");
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
            strcopy(g_sMasterFog, sizeof(g_sMasterFog), sFog);

            if (g_sMasterFog[0] == 0)                               // If it had no name...
            {
                DispatchKeyValue(iEnt, "targetname", "fog_master");
                strcopy(g_sMasterFog, sizeof(g_sMasterFog), "fog_master");
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
        strcopy(g_sMasterFog, sizeof(g_sMasterFog), "fog_master");
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

stock FogScreen(iClient, const String:sFog[])
{
    SetVariantString(sFog);
    AcceptEntityInput(iClient, "SetFogController");
}

stock SetAmmo(client, slot, ammo)
{
    new weapon = GetPlayerWeaponSlot(client, slot);

    if (IsValidEntity(weapon))
    {
        new iOffset = GetEntProp(weapon, Prop_Send, "m_iPrimaryAmmoType", 1) * 4;
        new iAmmoTable = FindSendPropInfo("CTFPlayer", "m_iAmmo");

        SetEntData(client, iAmmoTable + iOffset, ammo, 4, true);
    }
}

stock GetAmmo(client, slot)
{
    if (!IsValidClient(client)) return -1;

    new weapon = GetPlayerWeaponSlot(client, slot);

    if (IsValidEntity(weapon))
    {
        new iOffset = GetEntProp(weapon, Prop_Send, "m_iPrimaryAmmoType", 1); // * 4;
        //new iAmmoTable = FindSendPropInfo("CTFPlayer", "m_iAmmo");

        //return GetEntData(client, iAmmoTable + iOffset);

        if (iOffset < 0)
        {
            return -1;
        }

        return GetEntProp(client, Prop_Send, "m_iAmmo", _, iOffset);
    }

    return -1;
}

stock GetHealingTarget(client)
{
    new String:s[64];
    new medigun = GetPlayerWeaponSlot(client, TFWeaponSlot_Secondary);

    if (medigun <= MaxClients || !IsValidEdict(medigun))
    {
        return -1;
    }

    GetEdictClassname(medigun, s, sizeof(s));

    if (strcmp(s, "tf_weapon_medigun", false) == 0)
    {
        if (GetEntProp(medigun, Prop_Send, "m_bHealing"))
        {
            return GetEntPropEnt(medigun, Prop_Send, "m_hHealingTarget");
        }
    }

    return -1;
}

//stock bool:IsValidClient(iClient)
//{
//    return (0 < iClient && iClient <= MaxClients && IsClientInGame(iClient));
//}

//stock bool:IsValidClient(client, bool:replaycheck = true)
//{
//    if (client <= 0 || client > MaxClients || !IsClientInGame(client) || GetEntProp(client, Prop_Send, "m_bIsCoaching") || (replaycheck && (IsClientSourceTV(client) || IsClientReplay(client))))
//    {
//        return false;
//    }
// 
//    return true;
//}

stock CreateVM(client, String:model[])
{
    new ent = CreateEntityByName("tf_wearable_vm");

    if (!IsValidEntity(ent))
    {
        return -1;
    }

    SetEntProp(ent, Prop_Send, "m_nModelIndex", PrecacheModel(model));
    SetEntProp(ent, Prop_Send, "m_fEffects", EF_BONEMERGE | EF_BONEMERGE_FASTCULL);
    SetEntProp(ent, Prop_Send, "m_iTeamNum", GetClientTeam(client));
    SetEntProp(ent, Prop_Send, "m_usSolidFlags", 4);
    SetEntProp(ent, Prop_Send, "m_CollisionGroup", 11);

    DispatchSpawn(ent);

    SetVariantString("!activator");
    ActivateEntity(ent);

    TF2_EquipWearable(client, ent);

    return ent;
}

// Moved to tf2_stocks.inc
/*stock TF2_EquipWearable(client, entity)
{
    SDKCall(hEquipWearable, client, entity);
}*/

stock AttachProjectileModel(entity, String:strModel[], String:strAnim[] = "")
{
    if (!IsValidEntity(entity))
    {
        return -1;
    }

    new model = CreateEntityByName("prop_dynamic");

    if (IsValidEdict(model))
    {
        decl Float:pos[3];
        decl Float:ang[3];

        GetEntPropVector(entity, Prop_Send, "m_vecOrigin", pos);
        GetEntPropVector(entity, Prop_Send, "m_angRotation", ang);

        TeleportEntity(model, pos, ang, NULL_VECTOR);
        DispatchKeyValue(model, "model", strModel);
        DispatchSpawn(model);
        SetVariantString("!activator");
        AcceptEntityInput(model, "SetParent", entity, model, 0);

        if (strAnim[0] != '\0')
        {
            CPrintToChdata("setmodel %s", strAnim);
            SetVariantString(strAnim);
            AcceptEntityInput(model, "SetDefaultAnimation");
            SetVariantString(strAnim);
            AcceptEntityInput(model, "SetAnimation");
        }

        SetEntPropEnt(model, Prop_Send, "m_hOwnerEntity", entity);

        return model;
    }
    else
    {
        LogError("(AttachProjectileModel): Could not create prop_dynamic");
    }

    return -1;
}

stock FindEntityByClassname2(startEnt, const String:classname[])
{
    /* If startEnt isn't valid shifting it back to the nearest valid one */
    while (startEnt > -1 && !IsValidEntity(startEnt))
    {
        startEnt--;
    }

    return FindEntityByClassname(startEnt, classname);
}

/* Removes all weapons from a client's weapon slot 
* 
* @param client        Player's index. 
* @param slot          Slot index (0-5) 
* @noreturn 
* @error               Invalid client, invalid slot or lack of mod support 
*/ 
stock TF2_RemoveWeaponSlot2(client, slot) 
{ 
   //if (IsClientChdata(client)) CPrintToChdata("%N removeweaponslot", client);
   decl ew; 
   new weaponIndex; 
   while ((weaponIndex = GetPlayerWeaponSlot(client, slot)) != -1) 
   { 
       ew = GetEntPropEnt(weaponIndex, Prop_Send, "m_hExtraWearable"); 
       if (IsValidEntity(ew)) 
       { 
           TF2_RemoveWearable(client, ew);
           CPrintToChdata("removed extrawerable");
       } 
       ew = GetEntPropEnt(weaponIndex, Prop_Send, "m_hExtraWearableViewModel"); 
       if (IsValidEntity(ew)) 
       { 
           TF2_RemoveWearable(client, ew);
           CPrintToChdata("removed viewmodel");
       } 
       RemovePlayerItem(client, weaponIndex); 
       AcceptEntityInput(weaponIndex, "Kill"); 
   } 
}

/**
 * Removes all weapons from a client
 *
 * @param client        Player's index.
 * @noreturn
 */
stock TF2_RemoveAllWeapons2(client)
{
    if (IsClientChdata(client)) CPrintToChdata("%N remove all weapon", client);
    for (new i = 0; i <= 5; i++)
    {
        TF2_RemoveWeaponSlot2(client, i);
    }
}

stock SetHaleHealthFix(client, health)
{
    SetEntProp(client, Prop_Send, "m_iHealth", health);
}

stock bool:IsClientChdata(client)
{
    if (!IsClientAuthorized(client)) return false;

    new String:clientAuth[MAX_STEAMAUTH_LENGTH];
    GetClientAuthString(client, clientAuth, sizeof(clientAuth));

    if (StrEqual(STEAMID_CHDATA, clientAuth))
    {
        return true;
    }

    return false;
}

stock CPrintPropValue(ent, PropType:proptype, const String:prop[], bool:bFloat = false)
{
    decl String:s[64];

    if (!ent || !IsValidEntity(ent) || !GetEdictClassname(ent, s, sizeof(s)))
    {
        return;
    }

    if (bFloat)
    {
        new Float:flVal = GetEntPropFloat(ent, proptype, prop);
        CPrintToChdata("%s: %i - %s: %f", s, ent, prop, flVal);
    }
    else
    {
        new iVal = GetEntProp(ent, proptype, prop);
        CPrintToChdata("%s: %i - %s: %i", s, ent, prop, iVal);
    }

    return;
}

stock CPrintToChdata(const String:message[], any:...)
{
    if (!GetConVarBool(cvarDebugMessages))
    {
        return;
    }

    new client = Client_FindBySteamId(STEAMID_CHDATA);

    if (!IsValidClient(client))
    {
        return;
    }

    CCheckTrie();
    if(client <= 0 || client > MaxClients) {
        ThrowError("Invalid client index %i", client);
    }
    if(!IsClientInGame(client)) {
        ThrowError("Client %i is not in game", client);
    }
    decl String:buffer[MAX_MESSAGE_LENGTH], String:buffer2[MAX_MESSAGE_LENGTH];
    SetGlobalTransTarget(client);
    Format(buffer, sizeof(buffer), "\x01%s", message);
    VFormat(buffer2, sizeof(buffer2), buffer, 2);
    CReplaceColorCodes(buffer2);
    CSendMessage(client, buffer2);

    return;
}

/**
* Finds a player by his SteamID
*
* @param auth           SteamID to search for
* @return               Client Index or -1
*/
stock Client_FindBySteamId(const String:auth[])
{
    new String:clientAuth[MAX_STEAMAUTH_LENGTH];
    for (new client=1; client <= MaxClients; client++) {
        if (!IsClientAuthorized(client)) {
            continue;
        }
        
        GetClientAuthString(client, clientAuth, sizeof(clientAuth));

        if (StrEqual(auth, clientAuth)) {
            return client;
        }
    }
    
    return -1;
}

/**
 * Searchs for the first occurance of a string in the array.
 * If the value cannot be located, -1 will be returned.
 *
 * @param array         Static Array.
 * @param size          Size of the Array.
 * @param value         String to search for.
 * @param start         Optional: Offset where to start(0 - (size-1)).
 * @return              Array index, or -1 if the value couldn't be found.
 */
stock Array_FindString(const String:array[][], size, const String:str[], bool:caseSensitive=true, start=0)
{
    if (start < 0) {
        start = 0;
    }

    for (new i=start; i < size; i++) {

        if (StrEqual(array[i], str, caseSensitive)) {
            return i;
        }
    }
    
    return -1;
}