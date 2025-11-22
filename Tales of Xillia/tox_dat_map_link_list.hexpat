#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (MAPLINKLIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct MapLinkListData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mLocationOffset;
  NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mRoute;
  u16 mBitFlagNumber;
  u16 mBitFlagBool;
  padding[2];
  u32 mCheckScriptNameOffset;
  NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;
  NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  Vector3f mVec1;
  Vector3f mVec2;
  Vector3f mVec3;
  Vector3f mVec4;
  bool mEnableNavi;
  bool mEnableInformation;
  u16 mActInfo;
  u16 mNoEntry;
  padding[2];
  u32 mNoEntryValueOffset;

  if (mNoEntryValueOffset > 0) {
    NullString mNoEntryValue @ addressof(mNoEntryValueOffset) + mNoEntryValueOffset;
  }

  u32 mCMapIDOffset;

  if (mCMapIDOffset > 0) {
    NullString mCMapID @ addressof(mCMapIDOffset) + mCMapIDOffset;
  }

  u16 mCCamBase;
  padding[2];
  float mCCamDir;
  Vector3f mCVec;
  float mCDir;
  Vector3f mDVec;
  float mDDir;
  u32 mDSeOffset;

  if (mDSeOffset > 0) {
    NullString mDSe @ addressof(mDSeOffset) + mDSeOffset;
  }

  float mDVol;
};

u32 mMapLinkListOffset @ $;
u32 mMapLinkListCount @ $;
MapLinkListData mMapLinkList[mMapLinkListCount] @ addressof(mMapLinkListOffset) + mMapLinkListOffset;