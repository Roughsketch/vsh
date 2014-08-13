
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