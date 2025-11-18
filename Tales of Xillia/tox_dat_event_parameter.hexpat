#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (EVENTPARAMETER.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct EventParameterScenarioFlagData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u16 mHigh;
  u16 mLow;
};

struct EventParameterBitFlagData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u16 mNumber;
  bool mEnable;
  padding[1];
};

struct EventParameterPartyData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mStateOffset;
  u32 mStateCount;
  u8 mState[mStateCount] @ addressof(mStateOffset) + mStateOffset;
  bool mInformation;
  padding[3];
};

struct EventParameterItemData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  s32 mItem0;
  s32 mCount0;
  s32 mItem1;
  s32 mCount1;
  s32 mItem2;
  s32 mCount2;
  bool mInformation;
  padding[3];
};

struct EventParameterBattleData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  s16 mEncountGroup;
  bool mOpenMenu;
  bool mLoseOK;
  bool mResultNG;
  padding[3];
  u32 mMusicOffset;

  if (mMusicOffset > 0) {
    NullString mMusic @ addressof(mMusicOffset) + mMusicOffset;
  }

  u32 mResultMusicOffset;

  if (mResultMusicOffset > 0) {
    NullString mResultMusic @ addressof(mResultMusicOffset) + mResultMusicOffset;
  }

  u32 mAfterMusicOffset;

  if (mAfterMusicOffset > 0) {
    NullString mAfterMusic @ addressof(mAfterMusicOffset) + mAfterMusicOffset;
  }
};

struct EventParameterSkillData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  s16 mMagicArts;
  s16 mSkill;
  s16 mPartyID;
  padding[2];
};

struct EventParameterRefreshData {
  u32 mIDOffset;

  if (mIDOffset > 0) {
    NullString mID @ addressof(mIDOffset) + mIDOffset;
  }

  u32 mMapIDOffset;

  if (mMapIDOffset > 0) {
    NullString mMapID @ addressof(mMapIDOffset) + mMapIDOffset;
  }

  s16 mCharaID;
  s16 mDirection;
  Vector3f mPosition;
  Vector3f mFrom;
  Vector3f mAt;
};

struct EventParameterSaveData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
};

struct EventParameterLevelData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  s32 mChangeID;
};

u32 mScenarioFlagOffset @ $;
u32 mScenarioFlagCount @ $;

u32 mBitFlagOffset @ $;
u32 mBitFlagCount @ $;

u32 mPartyOfset @ $;
u32 mPartyCount @ $;

u32 mItemOfset @ $;
u32 mItemCount @ $;

u32 mBattleOfset @ $;
u32 mBattleCount @ $;

u32 mSkillOffset @ $;
u32 mSkillCount @ $;

u32 mRefreshOffset @ $;
u32 mRefreshCount @ $;

u32 mSaveOffset @ $;
u32 mSaveCount @ $;

u32 mLevelOffset @ $;
u32 mLevelCount @ $;

EventParameterScenarioFlagData mScenarioFlag[mScenarioFlagCount] @ addressof(mScenarioFlagOffset) + mScenarioFlagOffset;
EventParameterBitFlagData mBitFlag[mBitFlagCount] @ addressof(mBitFlagOffset) + mBitFlagOffset;
EventParameterPartyData mParty[mPartyCount] @ addressof(mPartyOfset) + mPartyOfset;
EventParameterItemData mItem[mItemCount] @ addressof(mItemOfset) + mItemOfset;
EventParameterBattleData mBattle[mBattleCount] @ addressof(mBattleOfset) + mBattleOfset;
EventParameterSkillData mSkill[mSkillCount] @ addressof(mSkillOffset) + mSkillOffset;
EventParameterRefreshData mRefresh[mRefreshCount] @ addressof(mRefreshOffset) + mRefreshOffset;
EventParameterSaveData mSave[mSaveCount] @ addressof(mSaveOffset) + mSaveOffset;
EventParameterLevelData mLevel[mLevelCount] @ addressof(mLevelOffset) + mLevelOffset;