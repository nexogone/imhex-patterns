#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (WORLDMAPALLCLOSEDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct WorldMapAllCloseData {
  s32 mId;
  s32 mBeginEpisode;
  s32 mBeginScene;
  s32 mEndEpisode;
  s32 mEndScene;
  s32 mRoute;
  s32 mBitFlag;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
WorldMapAllCloseData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;