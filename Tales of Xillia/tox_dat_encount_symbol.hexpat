#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (ENCOUNTSYMBOL.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct EncountSymbolLayoutData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mLocationOffset;
  NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  Vector3f mPosition;
  u16 mSetRadius;
  u16 mDir;
  float mScale;
  u16 mChaseRange;
  u16 mChaseTime;
  u16 mPercentage;
  u16 mReviveCount;
  u16 mReviveTime;
  u16 mReviveDistance;
  s32 mBattleMapID;
  s32 mGroupIDStart;
  s32 mGroupIDEnd;
  u16 mEnemyMax;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mBitFlagNumber;
  bool mBitFlagBool;
  bool mOnce;
  padding[2];
};

struct EncountSymbolStatusData {
  s32 mID;
  s32 mState;
  u16 mSearchDistance;
  u16 mSearchAngle;
  u16 mHeightAngle;
  u16 mEarDistance;
  u16 mActionTime;
  u16 mStopTime;
  u16 mStopTimeRandom;
  u16 mSearchSpeed;
  u16 mChaseSpeed;
  u16 mChaseSpeedRandom;
  u16 mChaseDelay;
  u16 mTerrainRadius;
  u16 mEBOffset;
  padding[2];
};

struct EncountSymbolMapData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  s16 mRareMax;
  u16 mRarePercentage;
  s32 mGroupID;
  u16 mStrongMax;
  u16 mStrongPercentage;
};

u32 mLayoutListOffset @ $;
u32 mLayoutListCount @ $;

u32 mStatusListOffset @ $;
u32 mStatusListCount @ $;

u32 mMapListOffset @ $;
u32 mMapListCount @ $;

EncountSymbolLayoutData mLayoutList[mLayoutListCount] @ addressof(mLayoutListOffset) + mLayoutListOffset;
EncountSymbolStatusData mStatusList[mStatusListCount] @ addressof(mStatusListOffset) + mStatusListOffset;
EncountSymbolMapData mMapList[mMapListCount] @ addressof(mMapListOffset) + mMapListOffset;