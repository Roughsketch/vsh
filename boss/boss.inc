#include "vsh_common"

#define HALE_JUMPCHARGETIME 1
#define HALE_JUMPCHARGE (25 * HALE_JUMPCHARGETIME)

#define HaleModel               "models/player/saxton_hale/saxton_hale.mdl"
#define HaleModelPrefix         "models/player/saxton_hale/saxton_hale"
#define HaleYellName            "saxton_hale/saxton_hale_responce_1a.wav"
#define HaleRageSoundB          "saxton_hale/saxton_hale_responce_1b.wav"
#define HaleComicArmsFallSound  "saxton_hale/saxton_hale_responce_2.wav"
#define HaleLastB               "vo/announcer_am_lastmanalive"
#define HaleEnabled             QueuePanelH(Handle:0, MenuAction:0, 9001, 0)
#define HaleKSpree              "saxton_hale/saxton_hale_responce_3.wav"
#define HaleKSpree2             "saxton_hale/saxton_hale_responce_4.wav"    //this line is broken and unused

//===New responces===
#define HaleRoundStart          "saxton_hale/saxton_hale_responce_start" //1-5
#define HaleJump                "saxton_hale/saxton_hale_responce_jump"            //1-2
#define HaleRageSound           "saxton_hale/saxton_hale_responce_rage"           //1-4
#define HaleKillMedic           "saxton_hale/saxton_hale_responce_kill_medic.wav"
#define HaleKillSniper1         "saxton_hale/saxton_hale_responce_kill_sniper1.wav"
#define HaleKillSniper2         "saxton_hale/saxton_hale_responce_kill_sniper2.wav"
#define HaleKillSpy1            "saxton_hale/saxton_hale_responce_kill_spy1.wav"
#define HaleKillSpy2            "saxton_hale/saxton_hale_responce_kill_spy2.wav"
#define HaleKillEngie1          "saxton_hale/saxton_hale_responce_kill_eggineer1.wav"
#define HaleKillEngie2          "saxton_hale/saxton_hale_responce_kill_eggineer2.wav"
#define HaleKSpreeNew           "saxton_hale/saxton_hale_responce_spree"  //1-5
#define HaleWin                 "saxton_hale/saxton_hale_responce_win"          //1-2
#define HaleLastMan             "saxton_hale/saxton_hale_responce_lastman"  //1-5
//#define HaleLastMan2Fixed     "saxton_hale/saxton_hale_responce_lastman2.wav"
#define HaleFail                "saxton_hale/saxton_hale_responce_fail"            //1-3

//===1.32 responces===
#define HaleJump132             "saxton_hale/saxton_hale_132_jump_" //1-2
#define HaleStart132            "saxton_hale/saxton_hale_132_start_"   //1-5
#define HaleKillDemo132         "saxton_hale/saxton_hale_132_kill_demo.wav"
#define HaleKillEngie132        "saxton_hale/saxton_hale_132_kill_engie_" //1-2
#define HaleKillHeavy132        "saxton_hale/saxton_hale_132_kill_heavy.wav"
#define HaleKillScout132        "saxton_hale/saxton_hale_132_kill_scout.wav"
#define HaleKillSpy132          "saxton_hale/saxton_hale_132_kill_spie.wav"
#define HaleKillPyro132         "saxton_hale/saxton_hale_132_kill_w_and_m1.wav"
#define HaleSappinMahSentry132  "saxton_hale/saxton_hale_132_kill_toy.wav"
#define HaleKillKSpree132       "saxton_hale/saxton_hale_132_kspree_"    //1-2
#define HaleKillLast132         "saxton_hale/saxton_hale_132_last.wav"
#define HaleStubbed132          "saxton_hale/saxton_hale_132_stub_"  //1-4


#define VSHFLAG_HELPED          (1 << 0)
#define VSHFLAG_UBERREADY       (1 << 1)
#define VSHFLAG_NEEDSTODUCK     (1 << 2)
#define VSHFLAG_BOTRAGE         (1 << 3)
#define VSHFLAG_CLASSHELPED     (1 << 4)
#define VSHFLAG_HASONGIVED      (1 << 5)
#define VSHFLAG_EQUIPMSG        (1 << 6)


#define VSHMODE_NORMAL          2
#define VSHMODE_HARD            3
#define VSHMODE_LUNATIC         4

#define ROUNDSTATE_DISABLED    -1
#define ROUNDSTATE_WAITING      0
#define ROUNDSTATE_ACTIVE       1
#define ROUNDSTATE_END          2

#define PLAYERCOND_SPYCLOAK (1 << 4)

enum
{
    VSHSpecial_None = -1,
    VSHSpecial_Hale,
    VSHSpecial_Vagineer,
    VSHSpecial_HHH,
    VSHSpecial_CBS,
    VSHSpecial_Bunny, //ohgodwhy
    VSHSpecial_Cave,  //5
    VSHSpecial_Nue,   //6
    VSHSpecial_Astro,
    VSHSpecial_Guard
}


//  Global hale-related variables

//===========================================
//
//        Plugin related variables
//
//===========================================

new OtherTeam = 2;
new HaleTeam = 3;

static iBossClient = -1;
static iBossMaxHP;
static iBossHP;
static iBossLastHP;
static Float:fLastCheckedHP;
static iBossCharge = 0;
static iBossRage;
static iBossNext;

new Float:Stabbed;
new Float:Marketed;
new Float:KSpreeTimer;
new Float:WeighDownTimer;
new bool:bEnableSuperDuperJump;
new bool:HaleSuperJumpStatus;
new bool:bSpecials = true;
static iRoundState = ROUNDSTATE_DISABLED;
new VSHFlags[MAXPLAYERS + 1];


//===========================================
//
//             Boss attributes
//
//===========================================

static iRageDamage = 3500;
static Float:fRageDist = 800.0;
static Float:fBossSpeed = 340.0;
static bool:bCritsEnabled = true;
static iHaleMode = VSHMODE_NORMAL;

new playing;
new healthcheckused;
new RedAlivePlayers;
new RoundCount;
new Special;
new Incoming;
new botqueuepoints = 0;

new bool:NoTaunt = false;
new Float:UberRageCount;
new Float:GlowTimer;



//===========================================
//
//      Static accessors and mutators
//
//===========================================

stock Boss_SetBossClient(client)
{
    iBossClient = client;
}

stock Boss_GetBossClient()
{
    return iBossClient;
}

stock bool:Boss_IsClientHale(client)
{
    return client == iBossClient;
}


stock Boss_GetMaxHP()
{
    return iBossMaxHP;
}

stock Boss_SetMaxHP(value)
{
    iBossMaxHP = value;
}


stock Boss_GetHP()
{
    return iBossHP;
}

stock Boss_SetHP(value)
{
    iBossHP = value;
}


stock Boss_GetLastKnownHP()
{
    return iBossLastHP;
}

stock Boss_SetLastKnownHP(value)
{
    iBossLastHP = value;
    fLastCheckedHP = GetGameTime() + (healthcheckused < 3 ? 20.0:80.0);
}


stock Float:Boss_GetLastCheckedHP()
{
    return fLastCheckedHP;
}

stock Boss_SetLastCheckedHP(Float:value)
{
    fLastCheckedHP = value;
}


stock Boss_GetCharge()
{
    return iBossCharge;
}

stock Boss_SetCharge(value)
{
    iBossCharge = value;
}


stock Boss_GetRage()
{
    return iBossRage;
}

stock Boss_SetRage(value)
{
    iBossRage = value > 0 ? value : 0;
}

stock Boss_IsClientNext(client)
{
    return iBossNext == client;
}

stock Boss_GetNextBoss()
{
    return iBossNext;
}

stock Boss_SetNextBoss(value)
{
    iBossNext = value;
}

stock Boss_IsRoundState(value)
{
    return iRoundState == value;
}

stock Boss_GetRoundState()
{
    return iRoundState;
}

stock Boss_SetRoundState(value)
{
    iRoundState = value;
}


stock Boss_SetCritMode(bool:value)
{
    bCritsEnabled = value;
}

stock bool:Boss_CanCrit()
{
    return bCritsEnabled;
}

stock Float:Boss_GetSpeed()
{
    return fBossSpeed;
}

stock Boss_SetSpeed(Float:value)
{
    fBossSpeed = value;
}

stock Boss_GetRageDamage()
{
    return iRageDamage;
}

stock Boss_SetRageDamage(value)
{
    iRageDamage = value;
}

stock Float:Boss_GetRageDistance()
{
    return fRageDist;
}

stock Boss_SetRageDistance(Float:value)
{
    fRageDist = value;
}

stock Boss_GetDifficulty()
{
    return iHaleMode;
}

stock Boss_SetDifficulty(value)
{
    iHaleMode = value;
}

#if !defined DISABLE_BOSS_VAGINEER
  #include "boss/vagineer"
#endif

#if !defined DISABLE_BOSS_CBS
  #include "boss/cbs"
#endif

#if !defined DISABLE_BOSS_HHH
  #include "boss/hhh"
#endif

#if !defined DISABLE_BOSS_EASTER_BUNNY
  #include "boss/easter_bunny"
#endif

#if !defined DISABLE_BOSS_ASTRONAUT
  #include "boss/astronaut"
#endif

#if !defined DISABLE_BOSS_CAVE_JOHNSON
  #include "boss/cave_johnson"
#endif

#if !defined DISABLE_BOSS_NUE
  #include "boss/nue"
#endif

#if !defined DISABLE_BOSS_GUARDIAN
  #include "boss/guardian"
#endif


//  Include panels after variables have been defined