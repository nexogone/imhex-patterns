#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (PLAYRECORDDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct PlayRecordData {
  s32 mId;
  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  u32 mExplainOffset;

  if (mExplainOffset > 0) {
    NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;
  }

  s32 mMin;
  s32 mMax;

  u32 mOpenConditionBitFlagArrayOffset;
  u32 mOpenConditionBitFlagArrayCount;
  s32 mOpenConditionBitFlagArray[mOpenConditionBitFlagArrayCount] @ addressof(mOpenConditionBitFlagArrayOffset) + mOpenConditionBitFlagArrayOffset;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
PlayRecordData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;