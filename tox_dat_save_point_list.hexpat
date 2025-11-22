#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (SAVEPOINTLIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct SavePointListData {
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u32 mLocationOffset;
  NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  Vector3f mPosition;
};

u32 mSavePointListOffset @ $;
u32 mSavePointListCount @ $;
SavePointListData mSavePointList[mSavePointListCount] @ addressof(mSavePointListOffset) + mSavePointListOffset;