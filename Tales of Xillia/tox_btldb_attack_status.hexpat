#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLATTACKSTATUS.BTLDB)
#pragma endian big
// Last update: Nov 10, 2025

struct conditionInfo {
  s32   kind;
  s32   rate;
  float effect;
};

struct data {
  s32   id;
  s32   kind;
  s32   knockBackDatum;
  float knockBackSpd;
  float flowSpd;
  float guardKnockBackSpd;
  float guardFlowSpd;
  s32   damageStatus;
  float damageRate;
  float physicalRate;
  float breakValue;
  float elementValue;
  float ovlValue;
  float stiffFrame;
  float recoverFrame;
  float hitStopRate;
  float hitStopFrame;
  s32   effectKind;
  s32   seKind;
  bool  bSlashCtrl;
  padding[3];
  float slashRotX;
  float slashRotY;
  bool  bNoDamage;
  bool  bNoImpact;
  bool  bNoDead;
  bool  bNoGuard;
  bool  bNoKnockBackAdjust;
  bool  bNoWeightAdjust;
  bool  bNoProtectAdjust;
  bool  bHitParty;
  bool  bHitSelf;
  bool  bHitOnlyParty;
  bool  bHitOnlyEnemy;
  bool  bForceDamageStatus;
  bool  bForceBreak;
  bool  bForceCritical;
  bool  bOverKill;
  bool  bRotInv;
  bool  bOnce;
  bool  bEarth;
  bool  bRecommendGuard;
  bool  bCrack;
  bool  bCrackInverse;
  padding[3];
  float crackInterval;
  float crackRange;
  float crackRadius;
  s32   crackIntensity;
  s32   conditionInfoOffset;

  u32   unk1;
  // conditionInfo conditionInfo[1] @ addressof(conditionInfoOffset) + conditionInfoOffset;
 
  u32   itemEffect;
};

u32 dataOffset @ $;
u32 dataCount @ $;
data data[dataCount] @ addressof(dataOffset) + dataOffset;