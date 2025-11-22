#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (FAMEDATA.DAT)
#pragma endian big
// Last update: Nov 21, 2025

#include <std/string>

using NullString = std::string::NullString;

struct FameData {
  s32 mId;
  u32 mNameOffset;
  NullString mName @ addressof(mNameOffset) + mNameOffset;
  u32 mExplainOffset;
  NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;
  s32 mGrade;
  bool mSecret;
  padding[3];
  s32 mTrophy;
  u32 mTrophyNo;
  s32 mValue;
  s32 mRecordLink;
  s32 mEncountGroup;
  s32 mOpenConditionFame;
  u32 mOpenConditionBitFlagArrayOffset;
  u32 mOpenConditionBitFlagArrayCount;
  s32 mOpenConditionBitFlagArray[mOpenConditionBitFlagArrayCount] @ addressof(mOpenConditionBitFlagArrayOffset) + mOpenConditionBitFlagArrayOffset;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;

FameData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;