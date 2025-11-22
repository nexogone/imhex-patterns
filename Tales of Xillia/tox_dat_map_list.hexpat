#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (MAPLIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct MapListData {
  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u32 mLocationOffset;

  if (mLocationOffset > 0) {
    NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  }

  float mNaviMapScale;
  s32 mNaviMapRotation;
  bool mNaviMask;
  bool mLocationMapShow;
  padding[2];
  Vector3f mLocationMapOffset;
  float mNaviAlphaLowStart;
  float mNaviAlphaLowEnd;
  float mNaviAlphaHighStart;
  float mNaviAlphaHighEnd;

  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  u32 mTownTextureOffset;

  if (mTownTextureOffset > 0) {
    NullString mTownTexture @ addressof(mTownTextureOffset) + mTownTextureOffset;
  }

  u32 mStringOffset;

  if (mStringOffset > 0) {
    NullString mString;
  }
};

u32 mMapDataListOffset @ $;
u32 mMapDataListCount @ $;
MapListData mMapLinkList[mMapDataListCount] @ addressof(mMapDataListOffset) + mMapDataListOffset;