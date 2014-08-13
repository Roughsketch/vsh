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