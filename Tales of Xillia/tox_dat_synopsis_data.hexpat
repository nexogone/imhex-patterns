#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (SYNOPSISDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Synopsis {
  u32 mSynopsisOffset;
  NullString mSynopsisString @ addressof(mSynopsisOffset) + mSynopsisOffset;
};

struct SynopsisData {
  s32 mId;
  s32 mMainEpisodeNo;
  s32 mMainSceneNo;
  s32 mMainRoute;
  s32 mSubBitFlag;
  u32 mSynopsisListOffset;
  u32 mSynopsisListCount;

  if (mSynopsisListOffset > 0) {
    Synopsis mSynopsis[mSynopsisListCount] @ addressof(mSynopsisListOffset) + mSynopsisListOffset;
  }
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
SynopsisData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;