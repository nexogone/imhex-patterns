#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLUNITSTATUS.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct UnitStatus {
  s32 id;
  s32 partyID;
  u32 fpsOffset;

  if (fpsOffset > 0) {
    NullString fps @ addressof(fpsOffset) + fpsOffset;
  }

  u32 charaDefOffset;

  if (charaDefOffset > 0) {
    NullString charaDef @ addressof(charaDefOffset) + charaDefOffset;
  }

  u32 attDefOffset;

  if (attDefOffset > 0) {
    NullString attDef @ addressof(attDefOffset) + attDefOffset;
  }

  u32 preDefOffset;

  if (preDefOffset > 0) {
    NullString preDef @ addressof(preDefOffset) + preDefOffset;
  }

  u32 btlMotionDefOffset;

  if (btlMotionDefOffset > 0) {
    NullString btlMotionDef @ addressof(btlMotionDefOffset) + btlMotionDefOffset;
  }

  u32 resMotionDefOffset;

  if (resMotionDefOffset > 0) {
    NullString resMotionDef @ addressof(resMotionDefOffset) + resMotionDefOffset;
  }

  u32 faceMotionDefOffset;

  if (faceMotionDefOffset > 0) {
    NullString faceMotionDef @ addressof(faceMotionDefOffset) + faceMotionDefOffset;
  }

  u32 slashDefOffset;
 
  if (slashDefOffset > 0) {
    NullString slashDef @ addressof(slashDefOffset) + slashDefOffset;
  }

  u32 lookatDefOffset;

  if (lookatDefOffset > 0) {
    NullString lookatDef @ addressof(lookatDefOffset) + lookatDefOffset;
  }

  u32 gaScriptOffset;

  if (gaScriptOffset > 0) {
    NullString gaScript @ addressof(gaScriptOffset) + gaScriptOffset;
  }

  u32 aiScriptOffset;

  if (aiScriptOffset > 0) {
    NullString aiScript @ addressof(aiScriptOffset) + aiScriptOffset;
  }

  u32 iconOffset;

  if (iconOffset > 0) {
    NullString icon @ addressof(iconOffset) + iconOffset;
  }

  u32 fcDataOffset;

  if (fcDataOffset > 0) {
    NullString fcData @ addressof(fcDataOffset) + fcDataOffset;
  }

  s32 cost;
  float scale;
  s32 weight;
  s32 position;
  s32 type;
  bool bFly;
  float flyHeight;
  float cursorOffset;
  float conditionEffectOffset;
  bool bLook;
  bool bCorpse;
  bool bDefeat;
  bool bBeforeCamera;
  bool bSuperArmor;
  padding[1];
  s32 lookBone;
  s32 itemBone;
  float forwardSpd;
  float backwardSpd;
  float turnSpd;
  float jumpHeight;
  float brake;
  float gravity;
  float damageBrake;
  float stepForwardDist;
  float stepForwardBrake;
  float stepBackwardDist;
  float stepBackwardFlightFrame;
  float stepBackwardInvincibleFrame;
  float downFrame;
  float stepRange;
  s32 level;
  s32 exp;
  s32 gald;
  s32 hpMax;
  s32 tpMax;
  s32 acMax;
  s32 strength;
  s32 intelligence;
  s32 stamina;
  s32 dexterity;
  s32 agility;
  s32 spirit;
  s32 adjustPhysicalOffense;
  s32 adjustPhysicalDefense;
  s32 adjustMagicalOffense;
  s32 adjustMagicalDefense;
  float guardEndurance;
  float guardEnduranceRecoverSpd;
  float guardEnduranceBreakTime;
  float knockBackEndurance;
  float knockBackEnduranceRecoverSpd;
  float knockBackEnduranceBreakTime;
  s32 knockBackEnduranceRecoverDownCount;
  u32 elementDamageRateOffset;
  u32 elementDamageRateCount;
  // struct List_1_System_Single_ *elementDamageRate;
  float elementEnduranceDamageRate;
  float overLimitsTime;
  u32 itemDropInfoOffset;
  u32 itemDropInfoCount;
  // struct List_1_BTL_UNIT_STATUS_ITEM_DROP_INFO_ *itemDropInfo;
  s32 itemStealID;
  s32 itemStealRate;
  s32 strategyTarget;
  s32 strategyAction;
  s32 strategyHP;
  s32 strategyTP;
  s32 strategyLink;
  s32 strategySlave;
  s32 strategyItem;
  float thinkFrame;
  float thinkFrameHP50;
  float thinkFrameHP25;
  float cautionArea;
  s32 avoidRate;
  s32 avoidRateHP75;
  s32 avoidRateHP50;
  s32 avoidRateHP25;
  s32 avoidStepRate;
  s32 recoverRate;
  s32 riseAttackRate;
  s32 emergencyDamageMin;
  s32 emergencyDamageMax;
  s32 emergencyGuardRate;
  s32 symbolAI;
  bool bBook;
  padding[3];
  u32 habitatOffset;
  NullString habitat @ addressof(habitatOffset) + habitatOffset;
  u32 bookCharaDefOffset;
  //NullString bookCharaDef @ addressof(bookCharaDefOffset) + bookCharaDefOffset;
  u32 bookAttDefOffset;
  //NullString bookAttDef @ addressof(bookAttDefOffset) + bookAttDefOffset;
  float bookScaleMini;
  float bookScaleBig;
  float bookHeightMini;
  float bookHeightBig;
  u32 voiceInfoOffset;
  u32 voiceInfoCount;
  // struct List_1_BTL_UNIT_STATUS_VOICE_INFO_ *voiceInfo;
  u32 dicLabelNameOffset;
  //NullString dicLabelName @ addressof(dicLabelNameOffset) + dicLabelNameOffset;
  u32 dicLabelExplOffset;
  //NullString dicLabelExpl @ addressof(dicLabelExplOffset) + dicLabelExplOffset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
UnitStatus data[1] @ addressof(dataOffset) + dataOffset;