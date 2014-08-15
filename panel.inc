#if defined VSH_PANELS
    #endinput
#endif

#define VSH_PANELS

#include "vsh_common"

static bool:bPanelsEnabled = false;
static curHelp[MAXPLAYERS + 1];

static Handle:PointCookie;
static Handle:MusicCookie;
static Handle:VoiceCookie;
static Handle:ClasshelpinfoCookie;
static Handle:ToggleCookie;
static Handle:ModeCookie;
static Handle:ChooseCookie; 

stock bool:Panel_Enabled()
{
    return bPanelsEnabled;
}

stock Panel_SetEnabled(bool:value)
{
    bPanelsEnabled = value;
}

stock Panel_InitCookies()
{
    PointCookie = RegClientCookie("hale_queuepoints1", "Amount of VSH Queue points player has", CookieAccess_Protected);
    MusicCookie = RegClientCookie("hale_music_setting", "HaleMusic setting", CookieAccess_Public);
    VoiceCookie = RegClientCookie("hale_voice_setting", "HaleVoice setting", CookieAccess_Public);
    ToggleCookie = RegClientCookie("hale_toggle_setting", "HaleToggle setting", CookieAccess_Public);
    ModeCookie = RegClientCookie("hale_difficulty_setting", "HaleMode setting", CookieAccess_Public);
    ChooseCookie = RegClientCookie("hale_bosspick", "omg player selected hales!", CookieAccess_Protected);  
    ClasshelpinfoCookie = RegClientCookie("hale_classinfo", "HaleClassinfo setting", CookieAccess_Public);
}

public HintPanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (!IsValidClient(param1))
    {
        return;
    }

    if (action == MenuAction_Select || (action == MenuAction_Cancel && param2 == MenuCancel_Exit))
    {
        VSHFlags[param1] |= VSHFLAG_CLASSHELPED;
    }

    return;
}

public Action:HintPanel(client)
{
    if (IsVoteInProgress())
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    decl String:s[512];

    SetGlobalTransTarget(client);

    switch (Special)
    {
        case VSHSpecial_Guard:
            Format(s, 512, "%t", "vsh_help_guardian");
        case VSHSpecial_Hale:
            Format(s, 512, "%t", "vsh_help_hale");
        case VSHSpecial_Vagineer:
            Format(s, 512, "%t", "vsh_help_vagineer");
        case VSHSpecial_HHH:
            Format(s, 512, "%t", "vsh_help_hhh");
        case VSHSpecial_CBS:
            Format(s, 512, "%t", "vsh_help_cbs");
        case VSHSpecial_Bunny:
            Format(s, 512, "%t", "vsh_help_bunny");
        case VSHSpecial_Cave:
            Format(s, 512, "%t", "vsh_help_cave");
        case VSHSpecial_Nue:
            Format(s, 512, "%t", "vsh_help_nue");
        case VSHSpecial_Astro:
            Format(s, 512, "%t", "vsh_help_astro");
    }

    DrawPanelText(panel, s);

    Format(s, 512, "%t", "vsh_menu_exit");
    DrawPanelItem(panel, s);
    SendPanelToClient(panel, client, HintPanelH, 9001);
    CloseHandle(panel);

    return Plugin_Continue;
}

public QueuePanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select && param2 == 10)
    {
        TurnToZeroPanel(param1);
    }

    return false;
}

public Action:QueuePanelCmd(client, Args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    QueuePanel(client);

    return Plugin_Handled;
}

public Action:QueuePanel(client)
{
    if (!bPanelsEnabled)
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    decl String:s[512];

    Format(s, 512, "%T", "vsh_thequeue", client);
    SetPanelTitle(panel, s);

    new bool:added[MAXPLAYERS + 1];
    new tHale = Boss_GetBossClient();

    if (tHale >= 0)
    {
        added[tHale] = true;
    }

    if (!Enabled)
    {
        DrawPanelItem(panel, "None");
    }
    else if (IsValidClient(tHale))
    {
        Format(s, sizeof(s), "%N - %i", tHale, GetClientQueuePoints(tHale));
        DrawPanelItem(panel, s);
    }
    else
    {
        DrawPanelItem(panel, "None");
    }

    new i, pingas, bool:botadded;

    DrawPanelText(panel, "---");

    do
    {
        tHale = FindNextHale(added);
        if (IsValidClient(tHale))
        {
            if (client == tHale)
            {
                Format(s, 64, "%N - %i", tHale, GetClientQueuePoints(tHale));
                DrawPanelText(panel, s);
                i--;
            }
            else
            {
                if (IsFakeClient(tHale))
                {
                    if (botadded)
                    {
                        added[tHale] = true;
                        continue;
                    }

                    Format(s, 64, "BOT - %i", botqueuepoints);
                    botadded = true;
                }
                else
                {
                    Format(s, 64, "%N - %i", tHale, GetClientQueuePoints(tHale));
                }

                DrawPanelItem(panel, s);
            }

            added[tHale] = true;
            i++;
        }

        pingas++;
    }
    while (i < 8 && pingas < 100);

    for (; i < 8; i++)
    {
        DrawPanelItem(panel, "");
    }

    Format(s, 64, "%T %i (%T)", "vsh_your_points", client, GetClientQueuePoints(client), "vsh_to0", client);
    DrawPanelItem(panel, s);
    SendPanelToClient(panel, client, QueuePanelH, 9001);
    CloseHandle(panel);

    return Plugin_Continue;
}

public TurnToZeroPanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select && param2 == 1)
    {
        SetClientQueuePoints(param1, 0);
        CPrintToChat(param1, "{olive}[VSH]{default} %t", "vsh_to0_done");

        new cl = FindNextHaleEx();

        if (IsValidClient(cl))
        {
            SkipHalePanelNotify(cl);
        }
    }
}

public Action:ResetQueuePointsCmd(client, args)
{
    if (!bPanelsEnabled || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    if (GetCmdReplySource() == SM_REPLY_TO_CHAT)
    {
        TurnToZeroPanel(client);
    }
    else
    {
        TurnToZeroPanelH(INVALID_HANDLE, MenuAction_Select, client, 1);
    }

    return Plugin_Handled;
}

public Action:TurnToZeroPanel(client)
{
    if (!bPanelsEnabled)
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    decl String:s[512];

    SetGlobalTransTarget(client);
    Format(s, 512, "%t", "vsh_to0_title");

    SetPanelTitle(panel, s);
    Format(s, 512, "%t", "Yes");

    DrawPanelItem(panel, s);
    Format(s, 512, "%t", "No");

    DrawPanelItem(panel, s);
    SendPanelToClient(panel, client, TurnToZeroPanelH, 9001);

    CloseHandle(panel);
    return Plugin_Continue;
}


public MenuHandler_SetHale(Handle:menu, MenuAction:action, client, param2)
{
    decl String:arg[64];
    decl String:name[64];
    GetMenuItem(menu, param2, arg, sizeof(arg));
    if (action == MenuAction_Select)
    {
        switch (--param2)
        {
            case VSHSpecial_Hale:
            {
                SetBossCookie(client, VSHSpecial_Hale);
                name = "Saxton Hale";
            }
            case VSHSpecial_Vagineer:
            {
                SetBossCookie(client, VSHSpecial_Vagineer);
                name = "The Vagineer";
            }
            case VSHSpecial_HHH:
            {
                SetBossCookie(client, VSHSpecial_HHH);
                name = "The Horseless Headless Horsemann Jr.";
            }
            case VSHSpecial_CBS:
            {
                SetBossCookie(client, VSHSpecial_CBS);
                name = "The Christian Brutal Sniper";
            }
#if defined EASTER_BUNNY_ON
            case VSHSpecial_Bunny:
            {
                SetBossCookie(client, VSHSpecial_Bunny);
                name = "The Easter Bunny";
            }
#endif
            case VSHSpecial_Cave:
            {
                SetBossCookie(client, VSHSpecial_Cave);
                name = "Cave Johnson";
            }
            case VSHSpecial_Nue:
            {
                SetBossCookie(client, VSHSpecial_Nue);
                name = "Nue Houjuu";
            }
            case VSHSpecial_Astro:
            {
                SetBossCookie(client, VSHSpecial_Astro);
                name = "the Astronaut";
            }
            default:
            {
                SetBossCookie(client, VSHSpecial_None);
                name = "any random boss";
            }
        }

        CPrintToChat(client, "{olive}[VSH]{default} Set your preferred boss to %s.", name);
    }
    else if (action == MenuAction_End)
    {
        CloseHandle(menu);
    }
}

public Action:SetDifficultyCmd(client, args)
{
    if (!Panel_Enabled() || !IsValidClient(client))
    {
        return Plugin_Handled;
    }

    /*if (client == Boss_GetBossClient() && VSHRoundState == 1)
    {
        CPrintToChat(client, "{olive}[VSH]{default} You can't change the difficulty mid-round!");
        return Plugin_Continue;
    }*/

    new Handle:panel = CreatePanel();

    SetGlobalTransTarget(client);

    SetPanelTitle(panel, "Choose the difficulty for your next round!");

    new mode = CheckClientDifficulty(client);

    DrawPanelItem(panel, "Easy Mode: What!? Easy Modo? That's so lame! Only kids play the Easy Mode! Hohoho!", ITEMDRAW_DISABLED);
    DrawPanelItem(panel, "Normal Mode: The default game mode for beginners. Full health. Much rage usage.", mode == VSHMODE_NORMAL ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
    DrawPanelItem(panel, "Hard Mode: Want a challenge? Start at 60\% of your health with only 0 to 4 rage uses!", mode == VSHMODE_HARD ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
    DrawPanelItem(panel, "Lunatic Mode: For Freaks only. 35\% health. No rage. All skill.", mode == VSHMODE_LUNATIC ? ITEMDRAW_DISABLED:ITEMDRAW_DEFAULT);
    DrawPanelItem(panel, "Exit.");

    SendPanelToClient(panel, client, DifficultyDone, 9001);

    CloseHandle(panel);

    return Plugin_Handled;
}

public DifficultyDone(Handle:menu, MenuAction:action, client, param)
{
    if (action == MenuAction_Select)
    {
        if (param <= VSHMODE_LUNATIC) SetClientDifficulty(client, param);

        switch (param)
        {
            case VSHMODE_NORMAL:
            {
                CPrintToChat(client, "{olive}[VSH]{default} Normal mode selected.");
            }
            case VSHMODE_HARD:
            {
                CPrintToChat(client, "{olive}[VSH]{default} Hard mode selected!");
            }
            case VSHMODE_LUNATIC:
            {
                CPrintToChat(client, "{olive}[VSH]{default} Lunatic mode... selected?!");
            }
        }
    }
    else if (action == MenuAction_End)
    {
        CloseHandle(menu);
    }
}

SetClientDifficulty(client, mode)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return;
    }

    decl String:cky[5];

    IntToString(mode, cky, sizeof(cky));

    SetClientCookie(client, ModeCookie, cky);
}

public Action:NeverHaleMe(client, args)
{
    if (!Panel_Enabled() || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    if (GetCmdReplySource() == SM_REPLY_TO_CHAT)
    {
        ToggleHale(client);
    }
    else
    {
        ToggleHaleDone(INVALID_HANDLE, MenuAction_Select, client, 1);
    }

    return Plugin_Handled;
}

public Action:ToggleHale(client)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    //decl String:s[512];

    SetGlobalTransTarget(client);

    //Format(s, 512, "%t", "vsh_toggle");
    SetPanelTitle(panel, "Do you want to be selected as a boss?");

    DrawPanelItem(panel, "(ON)  Please select me as a boss!");
    DrawPanelItem(panel, "(OFF) I don't want to be a boss.");

    /*Format(s, 512, "%t", "Yes");
    DrawPanelItem(panel, s);

    Format(s, 512, "%t", "No");
    DrawPanelItem(panel, s);*/

    SendPanelToClient(panel, client, ToggleHaleDone, 9001);

    CloseHandle(panel);
    return Plugin_Continue;
}

public ToggleHaleDone(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select && param2 == 2)
    {
        SetClientQueuePoints(param1, 0);
        SetClientHaleToggle(param1, true);
        CPrintToChat(param1, "{olive}[VSH]{default} You have disabled yourself from becoming a boss.");
    }
    else if (action == MenuAction_Select && param2 == 1)
    {
        SetClientHaleToggle(param1, false);
        CPrintToChat(param1, "{olive}[VSH]{default} You have enabled yourself for becoming a boss.");
    }
}

SetClientHaleToggle(client, bool:on)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return;
    }

    new String:strCookie[32];

    if (on)
    {
        strCookie = "1";
    }
    else
    {
        strCookie = "0";
    }

    SetClientCookie(client, ToggleCookie, strCookie);
}

bool:GetClientClasshelpinfoCookie(client)
{
    if (!IsValidClient(client) || IsFakeClient(client))
    {
        return false;
    }

    if (!AreClientCookiesCached(client))
    {
        return true;
    }

    decl String:strCookie[32];
    GetClientCookie(client, ClasshelpinfoCookie, strCookie, sizeof(strCookie));

    if (strCookie[0] == 0)
    {
        return true;
    }
    else
    {
        return bool:StringToInt(strCookie);
    }
}

GetClientQueuePoints(client)
{
    if (!IsValidClient(client))
    {
        return 0;
    }

    if (IsFakeClient(client))
    {
        return botqueuepoints;
    }

    if (!AreClientCookiesCached(client))
    {
        return 0;
    }

    decl String:strPoints[32];

    GetClientCookie(client, PointCookie, strPoints, sizeof(strPoints));

    return StringToInt(strPoints);
}

SetClientQueuePoints(client, points)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return;
    }

    decl String:strPoints[32];

    IntToString(points, strPoints, sizeof(strPoints));
    SetClientCookie(client, PointCookie, strPoints);
}

SetAuthIdQueuePoints(String:authid[], points)
{
    decl String:strPoints[32];
    IntToString(points, strPoints, sizeof(strPoints));
    SetAuthIdCookie(authid, PointCookie, strPoints);
}

public HalePanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select)
    {
        switch (param2)
        {
            case 1:
                Command_GetHP(param1);
            case 2:
                HelpPanel(param1);
            case 3:
                HelpPanel2(param1);
            case 4:
                NewPanel(param1, Common_GetVersion());
            case 5:
                QueuePanel(param1);
            case 6:
                MusicTogglePanel(param1);
            case 7:
                VoiceTogglePanel(param1);
            case 8:
                ClasshelpinfoSetting(param1);
                /*          case 9:
                {
                if (ACH_Enabled)
                FakeClientCommandEx(param1, "haleach");
                else
                return;
                }
                case 0:
                {
                if (ACH_Enabled)
                FakeClientCommandEx(param1, "haleach_stats");
                else
                return;
                }*/
            default:
                return;
        }
    }
}

public Action:HalePanel(client, args)
{
    if (!Panel_Enabled() || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();
    new size = 256;

    decl String:s[size];

    SetGlobalTransTarget(client);

    Format(s, size, "%t", "vsh_menu_1");
    SetPanelTitle(panel, s);

    Format(s, size, "%t", "vsh_menu_2");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_3");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_7");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_4");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_5");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_8");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_9");
    DrawPanelItem(panel, s);

    Format(s, size, "%t", "vsh_menu_9a");
    DrawPanelItem(panel, s);

    /*  if (ACH_Enabled)
    {
    Format(s, size, "%t", "vsh_menu_10");
    DrawPanelItem(panel, s);
    Format(s, size, "%t", "vsh_menu_11");
    DrawPanelItem(panel, s);
    }*/
    Format(s, size, "%t", "vsh_menu_exit");
    DrawPanelItem(panel, s);

    SendPanelToClient(panel, client, HalePanelH, 9001);

    CloseHandle(panel);

    return Plugin_Handled;
}

public NewPanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select)
    {
        switch (param2)
        {
            case 1:
            {
                      if (curHelp[param1] <= 0)
                      {
                          NewPanel(param1, 0);
                      }
                      else
                      {
                          NewPanel(param1, --curHelp[param1]);
                      }
            }
            case 2:
            {
                      if (curHelp[param1] >= Common_GetVersion())
                      {
                          NewPanel(param1, Common_GetVersion());
                      }
                      else
                      {
                          NewPanel(param1, ++curHelp[param1]);
                      }
            }
            default:
                return;
        }
    }
}

public Action:NewPanelCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    NewPanel(client, Common_GetVersion());

    return Plugin_Handled;
}

public Action:NewPanel(client, versionindex)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    curHelp[client] = versionindex;

    new Handle:panel = CreatePanel();

    decl String:s[90];

    decl String:version_current[100];
    decl String:version_last[100];
    decl String:version_next[100];

    Common_GetVersionTitle(version_current, 100, versionindex);
    Common_GetVersionTitle(version_last, 100, versionindex - 1);
    Common_GetVersionTitle(version_next, 100, versionindex + 1);

    SetGlobalTransTarget(client);

    Format(s, 90, "=%t TF2Data %s=", "vsh_whatsnew", version_current);
    SetPanelTitle(panel, s);

    FindVersionData(panel, versionindex);

    if (versionindex > 0)
    {
        if (strcmp(version_current, version_last, false) == 0)
        {
            Format(s, 90, "Next Page");
        }
        else
        {
            Format(s, 90, "Older %s", version_last); 
        }
        DrawPanelItem(panel, s);
    }
    else
    {
        Format(s, 90, "%t", "vsh_noolder");
        DrawPanelItem(panel, s, ITEMDRAW_DISABLED);
    }

    if (versionindex < Common_GetVersion())
    {
        if (strcmp(version_current, version_next, false) == 0)
        {
            Format(s, 90, "Prev Page");
        }
        else
        {
            Format(s, 90, "Newer %s", version_next);
        }
        DrawPanelItem(panel, s);
    }
    else
    {
        Format(s, 90, "%t", "vsh_nonewer");
        DrawPanelItem(panel, s, ITEMDRAW_DISABLED);
    }

    Format(s, 512, "%t", "vsh_menu_exit");
    DrawPanelItem(panel, s);

    SendPanelToClient(panel, client, NewPanelH, 9001);

    CloseHandle(panel);

    return Plugin_Continue;
}


public HelpPanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select)
    {
        return;
    }
}

public Action:HelpPanelCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    HelpPanel(client);

    return Plugin_Handled;
}

public Action:HelpPanel(client)
{
    if (!Panel_Enabled() || IsVoteInProgress())
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    decl String:s[512];

    SetGlobalTransTarget(client);

    Format(s, 512, "%t", "vsh_help_mode");
    DrawPanelItem(panel, s);

    Format(s, 512, "%t", "vsh_menu_exit");
    DrawPanelItem(panel, s);

    SendPanelToClient(panel, client, HelpPanelH, 9001);

    CloseHandle(panel);

    return Plugin_Continue;
}

public Action:HelpPanel2Cmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    if (Boss_IsClientHale(client))
    {
        HintPanel(Boss_GetBossClient());
    }
    else
    {
        HelpPanel2(client);
    }
    
    return Plugin_Handled;
}

public Action:HelpPanel2(client)
{
    if (!Panel_Enabled() || IsVoteInProgress())
    {
        return Plugin_Continue;
    }

    decl String:s[512];

    new TFClassType:class = TF2_GetPlayerClass(client);

    SetGlobalTransTarget(client);

    switch (class)
    {
        case TFClass_Scout:
            Format(s, 512, "%t", "vsh_help_scout");
        case TFClass_Soldier:
            Format(s, 512, "%t", "vsh_help_soldier");
        case TFClass_Pyro:
            Format(s, 512, "%t", "vsh_help_pyro");
        case TFClass_DemoMan:
            Format(s, 512, "%t", "vsh_help_demo");
        case TFClass_Heavy:
            Format(s, 512, "%t", "vsh_help_heavy");
        case TFClass_Engineer:
            Format(s, 512, "%t", "vsh_help_eggineer");
        case TFClass_Medic:
            Format(s, 512, "%t", "vsh_help_medic");
        case TFClass_Sniper:
            Format(s, 512, "%t", "vsh_help_sniper");
        case TFClass_Spy:
            Format(s, 512, "%t", "vsh_help_spie");
        default:
            Format(s, 512, "");
    }

    new Handle:panel = CreatePanel();

    if (class != TFClass_Sniper)
    {
        Format(s, 512, "%t\n%s", "vsh_help_melee", s);
    }

    SetPanelTitle(panel, s);
    DrawPanelItem(panel, "Exit");

    SendPanelToClient(panel, client, HintPanelH, 12);

    CloseHandle(panel);

    return Plugin_Continue;
}

public Action:ClasshelpinfoCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    ClasshelpinfoSetting(client);

    return Plugin_Handled;
}

public Action:ClasshelpinfoSetting(client)
{
    if (!Panel_Enabled())
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    SetPanelTitle(panel, "Turn the Versus Saxton Hale class info...");

    DrawPanelItem(panel, "On");
    DrawPanelItem(panel, "Off");

    SendPanelToClient(panel, client, ClasshelpinfoTogglePanelH, 9001);

    CloseHandle(panel);

    return Plugin_Handled;
}

public ClasshelpinfoTogglePanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (IsValidClient(param1))
    {
        if (action == MenuAction_Select)
        {
            if (param2 == 2)
            {
                SetClientCookie(param1, ClasshelpinfoCookie, "0");
            }
            else
            {
                SetClientCookie(param1, ClasshelpinfoCookie, "1");
            }

            CPrintToChat(param1, "{olive}[VSH]{default} %t", "vsh_classinfo", param2 == 2 ? "off":"on");
        }
    }
}

/*
public HelpPanelH1(Handle:menu, MenuAction:action, param1, param2)
{
    if (action == MenuAction_Select)
    {
        if (param2 == 1)
            HelpPanel(param1);
        else if (param2 == 2)
            return;
    }
}
public Action:HelpPanel1(client, Args)
{
    if (!Panel_Enabled())
        return Plugin_Continue;
    new Handle:panel = CreatePanel();
    SetPanelTitle(panel, "Hale is unusually strong.\nBut he doesn't use weapons, because\nhe believes that problems should be\nsolved with bare hands.");
    DrawPanelItem(panel, "Back");
    DrawPanelItem(panel, "Exit");
    SendPanelToClient(panel, client, HelpPanelH1, 9001);
    CloseHandle(panel);
    return Plugin_Continue;
}
*/

public Action:MusicTogglePanelCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    MusicTogglePanel(client);

    return Plugin_Handled;
}

public Action:MusicTogglePanel(client)
{
    if (!Panel_Enabled() || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    SetPanelTitle(panel, "Turn the VS Saxton Hale music...");

    DrawPanelItem(panel, "On");
    DrawPanelItem(panel, "Off");

    SendPanelToClient(panel, client, MusicTogglePanelH, 9001);

    CloseHandle(panel);

    return Plugin_Continue;
}

public MusicTogglePanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (IsValidClient(param1))
    {
        if (action == MenuAction_Select)
        {
            if (param2 == 2)
            {
                SetClientSoundOptions(param1, SOUNDEXCEPT_MUSIC, false);
                StopHaleMusic(param1);
            }
            else
            {
                SetClientSoundOptions(param1, SOUNDEXCEPT_MUSIC, true);
            }

            CPrintToChat(param1, "{olive}[VSH]{default} %t", "vsh_music", param2 == 2 ? "off":"on");
        }
    }
}

public Action:VoiceTogglePanelCmd(client, args)
{
    if (!IsValidClient(client))
    {
        return Plugin_Continue;
    }

    VoiceTogglePanel(client);

    return Plugin_Handled;
}

public Action:VoiceTogglePanel(client)
{
    if (!Panel_Enabled() || !IsValidClient(client))
    {
        return Plugin_Continue;
    }

    new Handle:panel = CreatePanel();

    SetPanelTitle(panel, "Turn the VS Saxton Hale voices...");

    DrawPanelItem(panel, "On");
    DrawPanelItem(panel, "Off");

    SendPanelToClient(panel, client, VoiceTogglePanelH, 9001);

    CloseHandle(panel);

    return Plugin_Continue;
}

public VoiceTogglePanelH(Handle:menu, MenuAction:action, param1, param2)
{
    if (IsValidClient(param1))
    {
        if (action == MenuAction_Select)
        {
            if (param2 == 2)
            {
                SetClientSoundOptions(param1, SOUNDEXCEPT_VOICE, false);
            }
            else
            {
                SetClientSoundOptions(param1, SOUNDEXCEPT_VOICE, true);
            }

            CPrintToChat(param1, "{olive}[VSH]{default} %t", "vsh_voice", param2 == 2 ? "off":"on");

            if (param2 == 2)
            {
                CPrintToChat(param1, "%t", "vsh_voice2");
            }
        }
    }
}

SetClientSoundOptions(client, excepttype, bool:on)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return;
    }

    new String:strCookie[32];

    if (on)
    {
        strCookie = "1";
    }
    else
    {
        strCookie = "0";
    }

    if (excepttype == SOUNDEXCEPT_VOICE)
    {
        SetClientCookie(client, VoiceCookie, strCookie);
    }
    else
    {
        SetClientCookie(client, MusicCookie, strCookie);
    }
}

GetBossCookie(client)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return 0;
    }

    decl String:setboss[32];
    GetClientCookie(client, ChooseCookie, setboss, sizeof(setboss));

    if (setboss[0] == 0)
    {
        return 0;
    }

    return StringToInt(setboss);
}

SetBossCookie(client, boss)
{
    if (!IsValidClient(client) || IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return;
    }

    decl String:setboss[32];
    IntToString(boss, setboss, sizeof(setboss));
    SetClientCookie(client, ChooseCookie, setboss);
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

stock CheckClientDifficulty(client)
{
    if (!IsValidClient(client))
    {
        return VSHMODE_NORMAL;
    }

    if (IsFakeClient(client) || !AreClientCookiesCached(client))
    {
        return VSHMODE_NORMAL;
    }

    decl String:cky[5];

    GetClientCookie(client, ModeCookie, cky, sizeof(cky));

    if (cky[0] == 0)
    {
        return VSHMODE_NORMAL;   //If the cookie doesn't exist yet, normal mode by default
    }
    else
    {
        return StringToInt(cky);
    }
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