#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (CHATLINKLIST.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct ChatLinkListData {
  u32 mID;
  u32 mChatOffset;
  NullString mChat @ addressof(mChatOffset) + mChatOffset;
  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mRoute;
  u16 mBitFlagNumber;
  u32 mTime;
  bool mBitFlagBool;
  u8 mKind;
  bool mAuto;
  bool mLocationClear;
  u8 mPercentage;
  u8 mGroup;
  padding[2];
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

  if (mLocationOffset > 0) {
    NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  }

  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u32 mVerticesOffset;
  u32 mVerticesCount;
  Vector3f mVertices[mVerticesCount] @ addressof(mVerticesOffset) + mVerticesOffset;
};

u32 mListOffset @ $;
u32 mListCount @ $;
ChatLinkListData mList[mListCount] @ addressof(mListOffset) + mListOffset;