#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLMAGICARTS.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct CombinationInfo {
  s32 derivMA;
  s32 slaveMA;
};

struct MagicArts {
  s32 id;
  u32 scriptOffset;
  NullString script @ addressof(scriptOffset) + scriptOffset;
  s32 kind;
  s32 combinationLimit;
  s32 action;
  s32 airLimit;
  s32 element;
  s32 target;
  s32 effect;
  bool bDivergence;
  bool bNoAC;
  padding[2];
  s32 tp;
  float damageRate;
  float range;
  bool bNoTurn;
  padding[3];
  float chantFrame;
  float freeRadius;
  s32 subParam;
  float subRate;
  float trigFrame;
  u32 combinationInfoOffset;
  u32 combinationInfoCount;
  CombinationInfo combinationInfo[combinationInfoCount] @ addressof(combinationInfoOffset) + combinationInfoOffset;
  u32 dicLabelNameOffset;
  NullString dicLabelName @ addressof(dicLabelNameOffset) + dicLabelNameOffset;
  u32 dicLabelName2Offset;
  NullString dicLabelName2 @ addressof(dicLabelName2Offset) + dicLabelName2Offset;
  u32 dicLabelExplOffset;
  NullString dicLabelExpl @ addressof(dicLabelExplOffset) + dicLabelExplOffset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
MagicArts data[dataCount] @ addressof(dataOffset) + dataOffset;