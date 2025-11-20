#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Slash Definition (.SLADAT)
#pragma endian big
// Last update: Nov 20, 2025

#include <std/string>

using NullString = std::string::NullString;

struct SlashDefData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mTransform;
  u16 mPlotTime;
  u16 mFadeInStart;
  u16 mFadeInEnd;
  u16 mFadeOutStart;
  u16 mFadeOutEnd;
  u16 mDivide;
  float mAlpha;
};

u32 mListOffset @ $;
u32 mListCount @ $;
SlashDefData mList[mListCount] @ addressof(mListOffset) + mListOffset;