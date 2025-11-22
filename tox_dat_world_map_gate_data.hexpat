#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (WORLDMAPGATEDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y ,z;
};

struct WorldMapGateData {
  s32 mId;
  u32 mLabelOffset;

  if (mLabelOffset> 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }

  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  s32 mWorldMapIconDataId;
  s32 mOppositeGateId;
  s32 mModelLocatorNo;
  u32 mMoveMapIdOffset;

  if (mMoveMapIdOffset > 0) {
    NullString mMoveMapId @ addressof(mMoveMapIdOffset) + mMoveMapIdOffset;
  }

  Vector3f mMovePosition;
  s32 mCharacterDirection;
  s32 mCameraBase;
  s32 mCameraDirection;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
WorldMapGateData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;