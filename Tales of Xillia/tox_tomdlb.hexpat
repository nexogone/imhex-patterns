#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Model Binary (.TOMDLB)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

struct ModelBinFormat {
  u32 mPartsNameOffset;
  NullString mPartsName @ addressof(mPartsNameOffset) + mPartsNameOffset;
};

u32 mListOffset @ $;
u32 mListCount @ $;
ModelBinFormat mList[mListCount] @ addressof(mListOffset) + mListOffset;