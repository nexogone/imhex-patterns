#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (WORLDMAPCLOSEDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct WorldMapCloseData {
  s32 mId;
  s32 mBeginEpisode;
  s32 mBeginScene;
  s32 mEndEpisode;
  s32 mEndScene;
  s32 mRoute;
  s32 mBitFlag;
  s32 mWorldMapGateDataId;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
WorldMapCloseData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;