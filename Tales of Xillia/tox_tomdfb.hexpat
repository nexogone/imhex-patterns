#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Body Definition (.TOMDFB)
#pragma endian big
// Last update: Nov 27, 2025

#include <std/string>

using NullString = std::string::NullString;

struct MotionDefNameIndexMap {
  u32 keyOffset;
  NullString key @ addressof(keyOffset) + keyOffset;
  u32 val;
};

struct MotionDefAnimation {
  u32 mAnimationFileIndex;
  u32 mFlag;
  float mSpeed;
  float mStartTime;
  float mEndTime;
  float mRestartTime;
  float mLifeTime;
  float mDelayTime;
};

struct MotionDef {
  u16 mChannel;
  u16 mFlag;
  u32 mAnimationOffset;
  u32 mAnimationCount;
  MotionDefAnimation mAnimation[mAnimationCount] @ addressof(mAnimationOffset) + mAnimationOffset;
};

struct AnimationFileName {
  u32 mAnimationFileNameOffset;
  NullString mAnimationFileName @ addressof(mAnimationFileNameOffset) + mAnimationFileNameOffset;
};

u32 mMotionDefNameIndexMapOffset @ $;
u32 mMotionDefNameIndexMapCount @ $;

u32 mMotionDefOffset @ $;
u32 mMotionDefCount @ $;

u32 mAnimationFileNameOffset @ $;
u32 mAnimationFileNameCount @ $;

MotionDefNameIndexMap mMotionDefNameIndexMap[mMotionDefNameIndexMapCount] @ addressof(mMotionDefNameIndexMapOffset) + mMotionDefNameIndexMapOffset;
MotionDef mMotionDef[mMotionDefCount] @ addressof(mMotionDefOffset) + mMotionDefOffset;
AnimationFileName mAnimationFileName[mAnimationFileNameCount] @ addressof(mAnimationFileNameOffset) + mAnimationFileNameOffset;