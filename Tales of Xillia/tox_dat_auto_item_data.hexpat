#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (AUTOITEMDATA.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

struct AutoItemData {
  s32 mId;
  u32 mNameOffset;
  NullString mName @ addressof(mNameOffset) + mNameOffset;
  u32 mExplainOffset;
  NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;
  s32 mConditionLabel;
  s32 mConditionData;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
AutoItemData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;