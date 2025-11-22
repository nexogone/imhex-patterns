#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (INFORMATIONAREALIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct InformationAreaListData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mLocationOffset;
  NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u32 mStringOffset;
  NullString mString @ addressof(mStringOffset) + mStringOffset;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mRoute;
  u16 mBitFlagNumber;
  u16 mActInfo;
  u8 mBitFlagBool;
  u8 mKind;
  u32 mCheckScriptNameOffset;

  if (mCheckScriptNameOffset > 0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset > 0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }

  u32 mVerticesOffset;
  u32 mVerticesCount;
  Vector3f mVertices[mVerticesCount] @ addressof(mVerticesOffset) + mVerticesOffset;
};

u32 mInformationAreaListOffset @ $;
u32 mInformationAreaListCount @ $;
InformationAreaListData mInformationAreaList[mInformationAreaListCount] @ addressof(mInformationAreaListOffset) + mInformationAreaListOffset;