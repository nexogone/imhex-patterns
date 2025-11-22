#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (NPCLAYOUTLIST.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct NpcLayoutListData {
  u32 mIDOffset;

  if (mIDOffset > 0) {
    NullString mID @ addressof(mIDOffset) + mIDOffset;
  }

  u32 mLocationOffset;

  if (mLocationOffset > 0) {
    NullString mLocation @ addressof(mLocationOffset) + mLocationOffset;
  }

  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  u32 mCharaDefOffset;

  if (mCharaDefOffset > 0) {
    NullString mCharaDef @ addressof(mCharaDefOffset) + mCharaDefOffset;
  }

  u16 mStartHigh;
  u16 mStartLow;
  u16 mEndHigh;
  u16 mEndLow;
  u16 mRoute;
  u16 mBitFlagNumber0;
  
  u16 mBitFlagNumber1;
  bool mBitFlagBool0;
  bool mBitFlagBool1;
  
  bool mTerrain;
  padding[1];
  u16 mLook;
  u16 mShadow;
  u16 mCopyRadius;
  u16 mCopyNum;
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

  Vector3f mPosition;
  float mDir;
  float mRange;
  float mArc;
  float mView;
  float mHeight;

  u32 mEyeOffset;

  if (mEyeOffset > 0) {
    NullString mEye @ addressof(mEyeOffset) + mEyeOffset;
  }

  u32 mMouthOffset;

  if (mMouthOffset > 0) {
    NullString mMouth @ addressof(mMouthOffset) + mMouthOffset;
  }

  u32 mCaptionOffset;

  if (mCaptionOffset > 0) {
    NullString mCaption @ addressof(mCaptionOffset) + mCaptionOffset;
  }

  u32 mMessageOffset;

  if (mMessageOffset > 0) {
    NullString mMessage @ addressof(mMessageOffset) + mMessageOffset;
  }

  u32 mAINameOffset;

  if (mAINameOffset > 0) {
    NullString mAIName @ addressof(mAINameOffset) + mAINameOffset;
  }

  u32 mAIStringOffset;

  if (mAIStringOffset > 0) {
    NullString mAIString @ addressof(mAIStringOffset) + mAIStringOffset;
  }

  u32 mGadgetDefOffset;

  if (mGadgetDefOffset > 0) {
    NullString mGadgetDef @ addressof(mGadgetDefOffset) + mGadgetDefOffset;
  }

  u32 mMotionDefOffset;

  if (mMotionDefOffset > 0) {
    NullString mMotionDef @ addressof(mMotionDefOffset) + mMotionDefOffset;
  }
};

u32 mNpcLayoutListOffset @ $;
u32 mNpcLayoutListCount @ $;
NpcLayoutListData mNpcLayoutList[mNpcLayoutListCount] @ addressof(mNpcLayoutListOffset) + mNpcLayoutListOffset;