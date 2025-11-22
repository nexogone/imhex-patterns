#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (GRADESHOPDATA.DAT)
#pragma endian big
// Last update: Nov 21, 2025

#include <std/string>

using NullString = std::string::NullString;

struct GradeShopData {
  s32 mId;
  u32 mNameOffset;
  NullString mName @ addressof(mNameOffset) + mNameOffset;
  u32 mExplainOffset;
  NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;
  s32 mPrice;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
GradeShopData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;