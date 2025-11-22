#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (SKILLDATA.DAT)
#pragma endian big
// Last update: Nov 22, 2025

#include <std/string>

using NullString = std::string::NullString;

struct SkillData {
  s32 mId;
  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  u32 mExplainOffset;

  if (mExplainOffset > 0) {
    NullString mExplain @ addressof(mExplainOffset) + mExplainOffset;
  }

  s32 mSP;
  s32 mType;
  s32 mParamater[4];
  s32 mRecommend[18];
  bool mLearnParty[8];
  bool mLinkFlag;
  padding[3];
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
SkillData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;