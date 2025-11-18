#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (BATTLEBOOKDATA.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

struct BattleBookImageData {
  u32 mImageOffset;
  NullString mImage @ addressof(mImageOffset) + mImageOffset;
  float mWait;
};

struct BattleBookContentsData {
  s32 mId;

  u32 mTitleOffset;
  NullString mTitle @ addressof(mTitleOffset) + mTitleOffset;

  u32 mTextOffset;
  NullString mText @ addressof(mTextOffset) + mTextOffset;

  u32 mImageDataOffset;
  u32 mImageDataCount;
  BattleBookImageData mImageData[mImageDataCount] @ addressof(mImageDataOffset) + mImageDataOffset;
  s32 mBitFlag;
  s32 mBattleResultBitFlag;
};

u32 dataOffset @ $;
u32 dataCount @ $;
BattleBookContentsData data[dataCount] @ addressof(dataOffset) + dataOffset;