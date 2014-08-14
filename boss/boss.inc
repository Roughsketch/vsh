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

enum
{
    mode_normal = 2,
    mode_hard,
    mode_lunatic
}

//  Global hale-related variables
new bool:Enabled = false;
new Hale = -1;
new HaleHealthMax;
new HaleHealth;
new HaleHealthLast;
new HaleCharge = 0;
new HaleRage;
new NextHale;
new Float:Stabbed;
new Float:Marketed;
new Float:KSpreeTimer;
new Float:WeighDownTimer;
new bool:bEnableSuperDuperJump;
new bool:HaleSuperJumpStatus;
new RageDMG = 3500;
new Float:RageDist = 800.0;
new bool:bSpecials = true;
new OtherTeam = 2;
new HaleTeam = 3;
new VSHRoundState = -1;
new playing;
new healthcheckused;
new RedAlivePlayers;
new RoundCount;
new Special;
new Incoming;
new Float:HaleSpeed = 340.0;
new bool:haleCrits = true;
new botqueuepoints = 0;
new iHaleMode = mode_normal;
new VSHFlags[MAXPLAYERS + 1];

#define VSHFLAG_HELPED          (1 << 0)
#define VSHFLAG_UBERREADY       (1 << 1)
#define VSHFLAG_NEEDSTODUCK     (1 << 2)
#define VSHFLAG_BOTRAGE         (1 << 3)
#define VSHFLAG_CLASSHELPED     (1 << 4)
#define VSHFLAG_HASONGIVED      (1 << 5)
#define VSHFLAG_EQUIPMSG        (1 << 6)


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