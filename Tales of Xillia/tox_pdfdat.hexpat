#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Footprint Definition (.PDFDAT)
#pragma endian big
// Last update: Nov 26, 2025

#include <std/string>

using NullString = std::string::NullString;

struct tlColor {
  float r, g, b, a;
};

struct FootprintDefData {
  u16 mKind;
  padding[2];
  u32 mGadgetOffset;

  if (mGadgetOffset > 0) {
    NullString mGadget @ addressof(mGadgetOffset) + mGadgetOffset;
  }

  float mScale;
  tlColor mColor;
};

struct FootprintDefSEData {
  u16 mKind;
  u16 mVolume;

  u32 mSoundOffset;

  if (mSoundOffset > 0) {
    NullString mSound @ addressof(mSoundOffset) + mSoundOffset;
  }
};

u32 mPrintListOffset @ $;
u32 mPrintListCount @ $;

u32 mEffectListOffset @ $;
u32 mEffectListCount @ $;

u32 mSEListOffset @ $;
u32 mSEListCount @ $;

FootprintDefData mPrintList[mPrintListCount] @ addressof(mPrintListOffset) + mPrintListOffset;
FootprintDefData mEffectList[mEffectListCount] @ addressof(mEffectListOffset) + mEffectListOffset;
FootprintDefSEData mSEList[mSEListCount] @ addressof(mSEListOffset) + mSEListOffset;