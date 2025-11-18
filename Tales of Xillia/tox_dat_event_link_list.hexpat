#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (EVENTLINKLIST.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct EventLinkListData {
  s32 mID;
  u32 mCommentOffset;
  NullString mComment @ addressof(mCommentOffset) + mCommentOffset;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mRoute;
  u16 mBitFlagNumber0;
  u16 mBitFlagNumber1;
  bool mBitFlagBool0;
  bool mBitFlagBool1;
  u8 mBootEffect;
  padding[3];
  u32 mStreamPackOffset;

  if (mStreamPackOffset > 0) {
    NullString mStreamPack @ addressof(mStreamPackOffset) + mStreamPackOffset;
  }

  u32 mCheckScriptNameOffset;

  if (mCheckScriptNameOffset > 0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset > 0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }

  u32 mPartyOffset;
  u32 mPartyCount;
  u8 mParty[mPartyCount] @ addressof(mPartyOffset) + mPartyOffset;
  u32 mLocationOffset;
  NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  u32 mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u16 mBootType;
  u16 mBootActinfo;
  u32 mBootCharaOffset;

  if (mBootCharaOffset > 0) {
    NullString mBootChara @ addressof(mBootCharaOffset) + mBootCharaOffset;
  }

  u32 mVerticesOffset;
  u32 mVerticesCount;
  Vector3f mVertices[mVerticesCount] @ addressof(mVerticesOffset) + mVerticesOffset;
  Vector3f mCameraFrom;
  Vector3f mCameraAt;
};

u32 mListOffset @ $;
u32 mListCount @ $;
EventLinkListData mList[mListCount] @ addressof(mListOffset) + mListOffset;