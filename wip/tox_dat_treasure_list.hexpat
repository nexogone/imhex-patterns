#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (TREASURELIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct TreasureListLayoutData {
  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u16 mKind;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  padding[2];
  Vector3f mPosition;
  float mDir;
  float mSearchFindDistance;
  float mSearchGetDistance;
  s32 mGetItem0;
  s32 mGetCount0;
  s32 mGetItem1;
  s32 mGetCount1;
  s32 mGetItem2;
  s32 mGetCount2;

  u32 mOratorioSEOffset;

  if (mOratorioSEOffset > 0) {
    NullString mOratorioSE @ addressof(mOratorioSEOffset) + mOratorioSEOffset;
  }

  bool mDisable;
  padding[3];
};

struct TreasureListItemData {
  s32 mItem;
  s32 mCount;
  u16 mPercentage;
};

struct TreasureListRandomData {
  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u16 mMax;
  padding[2];
  u32 mListOffset;
  u32 mListCount;
  TreasureListItemData mList[mListCount] @ addressof(mListOffset) + mListOffset;
};

u32 mLayoutListOffset @ $;
u32 mLayoutListCount @ $;

u32 mNormalRandomListOffset @ $;
u32 mNormalRandomListCount @ $;

u32 mSearchRandomListOffset @ $;
u32 mSearchRandomListCount @ $;

TreasureListLayoutData mLayoutList[mLayoutListCount] @ addressof(mLayoutListOffset) + mLayoutListOffset;
TreasureListRandomData mNormalRandomList[mNormalRandomListCount] @ addressof(mNormalRandomListOffset) + mNormalRandomListOffset;
TreasureListRandomData mSearchRandomList[mSearchRandomListCount] @ addressof(mSearchRandomListOffset) + mSearchRandomListOffset;