#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (WORLDMAPICONDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct WorldMapIconData {
  s32 mId;
  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }

  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  u32 mExplainOffset;

  if (mExplainOffset > 0) {
    NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;;
  }

  u32 mLocationIdOffset;

  if (mLocationIdOffset > 0) {
    NullString mLocationId @ addressof(mLocationIdOffset) + mLocationIdOffset;
  }

  s32 mCategory;
  s32 mWorld;
  s32 mModelLocatorNo;
  u32 mImageFileOffset;

  if (mImageFileOffset > 0) {
    NullString mImageFile @ addressof(mImageFileOffset) + mImageFileOffset;
  }
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
WorldMapIconData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;