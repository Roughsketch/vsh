#if defined VSH_COMMON_INC
    #endinput
#endif

#define VSH_COMMON_INC

#define DOWHILE_ENTFOUND(%1,%2) %1 = -1; while ((%1 = FindEntityByClassname2(%1, %2)) != -1)

#define IsValidClient(%1) (0 < %1 && %1 <= MaxClients && IsClientInGame(%1))

#define IsMediUber(%1)  TF2_IsPlayerInCondition(%1, TFCond_Ubercharged)
#define IsVacUber(%1)   (TF2_IsPlayerInCondition(%1, TFCond_UberBlastResist) || TF2_IsPlayerInCondition(%1, TFCond_UberBulletResist) || TF2_IsPlayerInCondition(%1, TFCond_UberFireResist))
#define IsQuickUber(%1) TF2_IsPlayerInCondition(%1, TFCond_MegaHeal)
#define IsAnyUber(%1)   (IsMediUber(%1) || IsVacUber(%1) || IsQuickUber(%1))

// Max Entities
#define ME 2048
#define EF_BONEMERGE            (1 << 0)
#define EF_BONEMERGE_FASTCULL   (1 << 7)

#define PLUGIN_VERSION "34.3"

#define SOUNDEXCEPT_MUSIC       0
#define SOUNDEXCEPT_VOICE       1

//Teams
#define TEAM_RED    2
#define TEAM_BLU    3


static const String:sHaleVersionTitle[][] =     //the last line of this is what determines the displayed plugin version
{
    "1.0",
    "1.1",
    "1.11",
    "1.12",
    "1.2",
    "1.22",
    "1.23",
    "1.24",
    "1.25",
    "1.26",
    "Christian Brutal Sniper",
    "1.28",
    "1.29",
    "1.30",
    "1.31",
    "1.32",
    "1.33",
    "1.34",
    "1.35",
    "1.35_3",
    "1.36",
    "1.36",
    "1.36",
    "1.36",
    "1.36",
    "1.36",
    "1.362",
    "1.363",
    "1.364",
    "1.365",
    "1.366",
    "1.367",
    "1.368",
    "1.369",
    "1.369",
    "1.369",
    "1.37",
    "1.37b",    //15 Nov 2011
    "1.38",
    "1.38",
    "1.39beta",
    "1.39beta",
    "1.39beta",
    "1.39c",
    "1.39c",
    "1.39c",
    "1.40",
    "1.41",
    "1.42",
    "0x01",
    "0x01",
    "0x01",
    "0x02",
    "0x02",
    "0x03",
    "0x04",
    "0x04",
    "0x05",
    "0x06",
    "0x07",
    "0x08",
    "0x09",
    "0x0A",
    "0x0B",
    "0x0C",
    "0x0D",
    "0x0E",
    "0x0F",
    "0x10",
    "0x11",
    "0x11",
    "0x12",
    "0x12",
    "0x13",
    "0x14",
    "0x15",
    "0x16",
    "0x17",
    "0x18",
    "0x19",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.0",
    "34.1",
    "34.1",
    "34.1",
    "34.1",
    "34.2",
    "34.3",
    "34.3"
};

static const String:sHaleVersionDates[][] =
{
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "--",
    "25 Aug 2011",
    "26 Aug 2011",
    "09 Oct 2011",
    "09 Oct 2011",
    "09 Oct 2011",
    "15 Nov 2011",
    "15 Nov 2011",
    "17 Dec 2011",
    "17 Dec 2011",
    "05 Mar 2012",
    "05 Mar 2012",
    "05 Mar 2012",
    "16 Jul 2012",
    "16 Jul 2012",
    "16 Jul 2012",
    "10 Oct 2012",
    "25 Feb 2013",
    "30 Mar 2013",
    "05 Nov 2013",
    "05 Nov 2013",
    "05 Nov 2013",
    "10 Nov 2013",
    "10 Nov 2013",
    "13 Nov 2013",
    "16 Nov 2013",
    "16 Nov 2013",
    "17 Nov 2013",
    "24 Nov 2013",
    "25 Nov 2013",
    "26 Nov 2013",
    "01 Dec 2013",
    "10 Dec 2013",
    "14 Dec 2013",
    "18 Dec 2013",
    "18 Dec 2013",
    "20 Dec 2013",
    "21 Dec 2013",
    "22 Dec 2013",
    "04 Jan 2014",
    "05 Jan 2014",
    "07 Jan 2014",
    "07 Jan 2014",
    "09 Jan 2014",
    "10 Jan 2014",
    "11 Jan 2014",
    "11 Jan 2014",
    "13 Jan 2014",
    "18 Feb 2014",
    "05 Apr 2014",
    "04 Aug 2014",
    "04 Aug 2014",
    "04 Aug 2014",
    "04 Aug 2014",
    "04 Aug 2014",
    "19 Jul 2014",
    "19 Jul 2014",
    "17 Jul 2014",
    "10 Jul 2014",
    "07 Aug 2014",
    "05 Aug 2014",
    "05 Aug 2014",
    "05 Aug 2014",
    "09 Aug 2014",
    "11 Aug 2014",
    "11 Aug 2014"
};

static const iMaxVersion = (sizeof(sHaleVersionTitle)-1);

stock Common_GetVersion()
{
  return iMaxVersion;
}

stock Common_GetLatestTitle(String:str[], max_size)
{
    strcopy(str, max_size, sHaleVersionTitle[iMaxVersion]);
}

stock Common_GetVersionTitle(String:str[], max_size, index)
{
    strcopy(str, max_size, sHaleVersionTitle[index]);
}

stock Common_GetLatestDate(String:str[], max_size)
{
    strcopy(str, max_size, sHaleVersionDates[iMaxVersion]);
}

stock Common_GetVersionDate(String:str[], max_size, index)
{
    strcopy(str, max_size, sHaleVersionDates[index]);
}
