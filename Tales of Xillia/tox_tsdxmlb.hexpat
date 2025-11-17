#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Sound Data XML (.TSDXMLB)
#pragma endian big
// Last update: Nov 9, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3 {
  s32 x, y, z;
};

struct TSDXMLSEData {
  u32  mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32  mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u16  mStartHigh;
  u16  mStartLow;
  u16  mEndHigh;
  u16  mEndLow;
  u32  mCheckScriptNameOffset;
  NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  s32  mCheckScriptInt;
  u32  mCheckScriptStringOffset;

  if (mCheckScriptStringOffset != 0x0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }
  else {
    char mCheckScriptString = '\0' [[export]];
  }

  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mGadgetOffset;

  if (mGadgetOffset != 0x0) {
    NullString mGadget @ addressof(mGadgetOffset) + mGadgetOffset;
  }
  else {
    char mGadget = '\0' [[export]];
  }

  u8 mEventType;
  u8 mType;
  u8 mCrossfade;
  u8 mVolume;
  u8 mRoute;
  Vector3 mPosition;
  Vector3 mDirection;
  padding[3];
};

struct TSDXMLListData {
  u32  mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u8   mPlayType;
  u8   mType;
  u8   mVolume;
  s16  mPanpot;
  padding[1];
  u16  mMin;
  u16  mMax;
  padding[2];
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  Vector3 mPosition;
};

struct TSDXMLBGMData {
  u32  mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u16  mStartHigh;
  u16  mStartLow;
  u16  mEndHigh;
  u16  mEndLow;
  u8   mVolume;
  u8   mCrossfade;
  u8   mRoute;
  padding[1];
  u32  mCheckScriptNameOffset;

  if (mCheckScriptNameOffset != 0x0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }
  else {
    char mCheckScriptName = '\0' [[export]];
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset != 0x0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }
  else {
    char mCheckScriptString = '\0' [[export]];
  }

  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
};

struct TSDXMLActionData {
  u32  mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32  mMapIDOffset;

  if (mMapIDOffset != 0x0) {
    NullString mMapID @ addressof(mMapID) + mMapID;
  }
  else {
    char mMapID = '\0' [[export]];
  }

  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
};

struct TSDXMLReverbData {
  u32  mMapIDOffset;
  NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  u16  mStartHigh;
  u16  mStartLow;
  u16  mEndHigh;
  u16  mEndLow;
  u32  mCheckScriptNameOffset;

  if (mCheckScriptNameOffset != 0x0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }
  else {
    char mCheckScriptName = '\0' [[export]];
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset != 0x0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }
  else {
    char mCheckScriptString = '\0' [[export]];
  }

  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u8   mDepth;
  u8   mRoute;
  padding[2];
};

u32 mSEListOffset @ $;
u32 mSEListCount @ $;

u32 mListListOffset @ $;
u32 mListListCount @ $;

u32 mBGMListOffset @ $;
u32 mBGMListCount @ $;

u32 mActionListOffset @ $;
u32 mActionListCount @ $;

u32 mReverbListOffset @ $;
u32 mReverbListCount @ $;

TSDXMLSEData mSEList[mSEListCount] @ addressof(mSEListOffset) + mSEListOffset;
TSDXMLListData mListList[mListListCount] @ addressof(mListListOffset) + mListListOffset;
TSDXMLBGMData mBGMList[mBGMListCount] @ addressof(mBGMListOffset) + mBGMListOffset;
TSDXMLActionData mActionList[mActionListCount] @ addressof(mActionListOffset) + mActionListOffset;
TSDXMLReverbData mReverbList[mReverbListCount] @ addressof(mReverbListOffset) + mReverbListOffset;