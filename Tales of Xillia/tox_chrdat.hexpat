#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Character Definition Data (.CHRDAT)
#pragma endian big
// Last update: Nov 17, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct Color {
  float r, g, b, a;
};

struct CharaDefData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mKind;
  u32 mKK;
  Vector3f mTranslate;
  Vector3f mRotate;
  Vector3f mScale;
  Color mColor;
  float mNear;
  float mFar;
  u32 mTextOffset;
  NullString mText @ addressof(mTextOffset) + mTextOffset;
};

u32 mListOffset @ $;
u32 mListCount @ $;
CharaDefData mList[mListCount] @ addressof(mListOffset) + mListOffset;