#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Facial Definition Data (.FDFDAT)
#pragma endian big
// Last update: Nov 20, 2025

#include <std/string>

using NullString = std::string::NullString;

struct FacialDefEyeData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mEyeMotionOffset;
  NullString mEyeMotion @ addressof(mEyeMotionOffset) + mEyeMotionOffset;
  u32 mBlinkMotionOffset;
  NullString mBlinkMotion @ addressof(mBlinkMotionOffset) + mBlinkMotionOffset;
};

struct FacialDefMouthData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mMouthMotionOffset;
  NullString mMouthMotion @ addressof(mMouthMotionOffset) + mMouthMotionOffset;
  u32 mTalkMotionOffset;
  NullString mTalkMotion @ addressof(mTalkMotionOffset) + mTalkMotionOffset;
};

u32 mEyeListOffset @ $;
u32 mEyeListCount @ $;

u32 mMouthListOffset @ $;
u32 mMouthListCount @ $;

FacialDefEyeData mEyeList[mEyeListCount] @ addressof(mEyeListOffset) + mEyeListOffset;
FacialDefMouthData mMouthList[mMouthListCount] @ addressof(mMouthListOffset) + mMouthListOffset;