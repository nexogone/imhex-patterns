#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - DLC Header Data (.DLCDAT)
#pragma endian big
// Last update: Nov 25, 2025

#include <std/string>

using NullString = std::string::NullString;

struct DLCHeaderData {
  u32 keyOffset;
  NullString key @ addressof(keyOffset) + keyOffset;
  u32 valueOffset;
  NullString value @ addressof(valueOffset) + valueOffset;
};

u32 mListOffset @ $;
u32 mListCount @ $;

DLCHeaderData mList[mListCount] @ addressof(mListOffset) + mListOffset;