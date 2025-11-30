#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Sound Data XML (.TSDXMLB)
#pragma endian big
// Last update: Nov 29, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  s32 x, y, z;
};

struct TSDXMLSEData {
  u32 mIDOffset;

  if (mIDOffset > 0) {
    NullString mID @ addressof(mIDOffset) + mIDOffset;
  }

  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u32 mCheckScriptNameOffset;

  if (mCheckScriptNameOffset > 0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset > 0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }

  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }

  u32 mGadgetOffset;

  if (mGadgetOffset > 0) {
    NullString mGadget @ addressof(mGadgetOffset) + mGadgetOffset;
  }

  u8 mEventType;
  u8 mType;
  u8 mCrossfade;
  u8 mVolume;
  u8 mRoute;
  Vector3f mPosition;
  Vector3f mDirection;
  padding[3];
};

struct TSDXMLListData {
  u32 mIDOffset;

  if (mIDOffset > 0) {
    NullString mID @ addressof(mIDOffset) + mIDOffset;
  }

  u8 mPlayType;
  u8 mType;
  u8 mVolume;
  s16 mPanpot;
  padding[1];
  u16 mMin;
  u16 mMax;
  padding[2];
  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }

  Vector3f mPosition;
};

struct TSDXMLBGMData {
  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u8 mVolume;
  u8 mCrossfade;
  u8 mRoute;
  padding[1];
  u32 mCheckScriptNameOffset;

  if (mCheckScriptNameOffset > 0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset > 0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }

  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }
};

struct TSDXMLActionData {
  u32 mIDOffset;

  if (mIDOffset > 0) {
    NullString mID @ addressof(mIDOffset) + mIDOffset;
  }

  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }
};

struct TSDXMLReverbData {
  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u32 mCheckScriptNameOffset;

  if (mCheckScriptNameOffset > 0) {
    NullString mCheckScriptName @ addressof(mCheckScriptNameOffset) + mCheckScriptNameOffset;
  }

  s32 mCheckScriptInt;
  u32 mCheckScriptStringOffset;

  if (mCheckScriptStringOffset > 0) {
    NullString mCheckScriptString @ addressof(mCheckScriptStringOffset) + mCheckScriptStringOffset;
  }

  u32 mLabelOffset;

  if (mLabelOffset > 0) {
    NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  }

  u8 mDepth;
  u8 mRoute;
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