#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Initialize Status Database (.ISDDBB)
#pragma endian big
// Last update: Nov 9, 2025

#include <std/string>

using NullString = std::string::NullString;

struct InitializeLevelData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mLevel;
};

struct InitializeFormationData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mFormationX;
  u32  mFormationY;
};

struct InitializeStrategyData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mStrategyId[7];
};

struct InitializeEquipmentData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mItemId[6];
};

struct InitializeGrowthPairData {
  u32 mSheetNo;
  u32 mNodeNoOffset;
  u32 mNodeNoCount;
  u32 mNodeNo[mNodeNoCount] @ addressof(mNodeNoOffset) + mNodeNoOffset;
};

struct InitializeGrowthData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mGrowthPairOffset;
  u32  mGrowthPairCount;
  InitializeGrowthPairData mGrowthPair[mGrowthPairCount] @ addressof(mGrowthPairOffset) + mGrowthPairOffset;
};

struct InitializeMagicArtsSetData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mMagicArtsId[4];
};

struct InitializeSkillSetData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mSkillIdOffset;
  u32  mSkillIdCount;
  u32  mSkillId[mSkillIdCount] @ addressof(mSkillIdOffset) + mSkillIdOffset;
};

struct InitializeMagicArtsLearnData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mMagicArtsIdOffset;
  u32  mMagicArtsIdCount;
  u32  mMagicArtsId[mMagicArtsIdCount] @ addressof(mMagicArtsIdOffset) + mMagicArtsIdOffset;
};

struct InitializeSkillLearnData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mPartyId;
  u32  mSkillIdOffset;
  u32  mSkillIdCount;
  u32  mSkillId[mSkillIdCount] @ addressof(mSkillIdOffset) + mSkillIdOffset;
};

struct InitializeLabelTableData {
  u32  mId;
  u32  mLabelOffset;
  NullString mLabel @ addressof(mLabelOffset) + mLabelOffset;
  u32  mNameOffset;
  NullString mName @ addressof(mNameOffset) + mNameOffset;
  u32  mLabelTableOffset;
  u32  mLabelTableCount;
  u32  mLabelTable[mLabelTableCount] @ addressof(mLabelTableOffset) + mLabelTableOffset;
};

u32 mInitializeLevelDataOffset @ $;
u32 mInitializeLevelDataCount @ $;

u32 mInitializeFormationDataOffset @ $;
u32 mInitializeFormationDataCount @ $;

u32 mInitializeStrategyDataOffset @ $;
u32 mInitializeStrategyDataCount @ $;

u32 mInitializeEquipmentDataOffset @ $;
u32 mInitializeEquipmentDataCount @ $;

u32 mInitializeGrowthDataOffset @ $;
u32 mInitializeGrowthDataCount @ $;

u32 mInitializeMagicArtsSetDataOffset @ $;
u32 mInitializeMagicArtsSetDataCount @ $;

u32 mInitializeSkillSetDataOffset @ $;
u32 mInitializeSkillSetDataCount @ $;

u32 mInitializeMagicArtsLearnDataOffset @ $;
u32 mInitializeMagicArtsLearnDataCount @ $;

u32 mInitializeSkillLearnDataOffset @ $;
u32 mInitializeSkillLearnDataCount @ $;

u32 mInitializeLabelTableDataOffset @ $;
u32 mInitializeLabelTableDataCount @ $;

InitializeLevelData           mInitializeLevelData          [mInitializeLevelDataCount]          @ addressof(mInitializeLevelDataOffset) + mInitializeLevelDataOffset;
InitializeFormationData       mInitializeFormationData      [mInitializeFormationDataCount]      @ addressof(mInitializeFormationDataOffset) + mInitializeFormationDataOffset;
InitializeStrategyData        mInitializeStrategyData       [mInitializeStrategyDataCount]       @ addressof(mInitializeStrategyDataOffset) + mInitializeStrategyDataOffset;
InitializeEquipmentData       mInitializeEquipmentData      [mInitializeEquipmentDataCount]      @ addressof(mInitializeEquipmentDataOffset) + mInitializeEquipmentDataOffset;
InitializeGrowthData          mInitializeGrowthData         [mInitializeGrowthDataCount]         @ addressof(mInitializeGrowthDataOffset) + mInitializeGrowthDataOffset;
InitializeMagicArtsSetData    mInitializeMagicArtsSetData   [mInitializeMagicArtsSetDataCount]   @ addressof(mInitializeMagicArtsSetDataOffset) + mInitializeMagicArtsSetDataOffset;
InitializeSkillSetData        mInitializeSkillSetData       [mInitializeSkillSetDataCount]       @ addressof(mInitializeSkillSetDataOffset) + mInitializeSkillSetDataOffset;
InitializeMagicArtsLearnData  mInitializeMagicArtsLearnData [mInitializeMagicArtsLearnDataCount] @ addressof(mInitializeMagicArtsLearnDataOffset) + mInitializeMagicArtsLearnDataOffset;
InitializeSkillLearnData      mInitializeSkillLearnData     [mInitializeSkillLearnDataCount]     @ addressof(mInitializeSkillLearnDataOffset) + mInitializeSkillLearnDataOffset;
InitializeLabelTableData      mInitializeLabelTableData     [mInitializeLabelTableDataCount]     @ addressof(mInitializeLabelTableDataOffset) + mInitializeLabelTableDataOffset;