#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (GROWTHDATA.DAT)
#pragma endian big
// Last update: Nov 21, 2025

#include <std/string>

using NullString = std::string::NullString;

struct GrowthExperienceData {
  s32 mTotal;
};

struct GrowthPartyExperienceData {
  u32 mDataOffset;
  u32 mDataCount;
  GrowthExperienceData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
};

struct GrowthGrowUpPointData {
  s32 mGP;
};

struct GrowthInitialStatusData {
  s32 mStrength;
  s32 mStamina;
  s32 mIntelligence;
  s32 mSpirit;
  s32 mAgility;
  s32 mDexterity;
  s32 mHP;
  s32 mTP;
  s32 mSP;
  s32 mAC;
};

struct GrowthPowerData {
  s32 mPlane;
  s32 mNo;
  float mStrength;
  float mStamina;
  float mIntelligence;
  float mSpirit;
  float mAgility;
  float mDexterity;
  float mHP;
  float mTP;
  s32 mSP;
};

struct GrowthPartyPowerData {
  u32 mDataOffset;
  u32 mDataCount;
  GrowthPowerData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
};

struct GrowthLearnData {
  s32 mPlane;
  s32 mNo;
  bool mEssentialFlag;
  padding[3];
  s32 mSkillId;
  s32 mMagicArtsId;
};

struct GrowthPartyLearnData {
  u32 mDataOffset;
  u32 mDataCount;
  GrowthLearnData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
};

struct GrowthRecommendData {
  s32 mOrbSheet;
  s32 mDestinationNode;
  s32 mLineId;
};

struct GrowthPartyRecommendData {
  u32 mDataOffset;
  u32 mDataCount;
  GrowthRecommendData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
};

struct GrowthPriorityData {
  s32 mNo;
  s32 mParameter;
};

struct GrowthPartyPriorityData {
  u32 mDataOffset;
  u32 mDataCount;
  GrowthPriorityData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
};

u32 mExperienceDataListOffset @ $;
u32 mExperienceDataListCount @ $;

u32 mGrowUpPointDataListOffset @ $;
u32 mGrowUpPointDataListCount @ $;

u32 mPartyInitializeStatusDataListOffset @ $;
u32 mPartyInitializeStatusDataListCount @ $;

u32 mPartyPowerDataListOffset @ $;
u32 mPartyPowerDataListCount @ $;

u32 mPartyLearnDataListOffset @ $;
u32 mPartyLearnDataListCount @ $;

u32 mPartyRecommendDataListOffset @ $;
u32 mPartyRecommendDataListCount @ $;

u32 mPartyPriorityDataListOffset @ $;
u32 mPartyPriorityDataListCount @ $;

GrowthPartyExperienceData mExperienceDataList[mExperienceDataListCount] @ addressof(mExperienceDataListOffset) + mExperienceDataListOffset;
GrowthGrowUpPointData mGrowUpPointDataList[mGrowUpPointDataListCount] @ addressof(mGrowUpPointDataListOffset) + mGrowUpPointDataListOffset;
GrowthInitialStatusData mPartyInitializeStatusDataList[mPartyInitializeStatusDataListCount + 1] @ addressof(mPartyInitializeStatusDataListOffset) + mPartyInitializeStatusDataListOffset;
GrowthPartyPowerData mPartyPowerDataList[mPartyPowerDataListCount] @ addressof(mPartyPowerDataListOffset) + mPartyPowerDataListOffset;
GrowthPartyLearnData mPartyLearnDataList[mPartyLearnDataListCount] @ addressof(mPartyLearnDataListOffset) + mPartyLearnDataListOffset;
GrowthPartyRecommendData mPartyRecommendDataList[mPartyRecommendDataListCount] @ addressof(mPartyRecommendDataListOffset) + mPartyRecommendDataListOffset;
GrowthPartyPriorityData mPartyPriorityDataList[mPartyPriorityDataListCount] @ addressof(mPartyPriorityDataListOffset) + mPartyPriorityDataListOffset;