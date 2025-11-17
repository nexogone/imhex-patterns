#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - ITMDB
#pragma endian big
// Last update: Nov 9, 2025

#include <std/string>

using NullString = std::string::NullString;

enum mKind : u32 {
  Gummi           = 0,
  Bottle          = 1,
  Herb            = 2,
  Battle          = 3,
  Tent            = 4,
  Liquid          = 5,
  IceCandy        = 6,
  Sword           = 7,
  Knuckle         = 8,
  LargeSword      = 9,
  Stick           = 10,
  SmallSword      = 11,
  Club            = 12,
  Circlet         = 13,
  Helmet          = 14,
  Ribbon          = 15,
  Hat             = 16,
  Coat            = 17,
  Guard           = 18,
  Mail            = 19,
  Loeb            = 20,
  Ring            = 21,
  Jewel           = 22,
  Doll            = 23,
  Charm           = 24,
  Cloak           = 25,
  Boots           = 26,
  Symbol          = 27,
  KeyItem         = 28,
  MaterialMineral = 29,
  AttachmentMain  = 30,
  AttachmentSub   = 31,
  Costume         = 32,
  Hairdo          = 33,
  DLC             = 34,
  MaterialPlant   = 35,
  MaterialBeast   = 36,
  MaterialBird    = 37,
  MaterialAquatic = 38,
  MaterialMystery = 39,
  MaterialInsect  = 40,
  Cook            = 41,
  Max             = 42
};

struct mCommonData {
  u32  mLabel;
  u32  mLabelStringOffset;
  NullString mLabelString @ addressof(mLabelStringOffset) + mLabelStringOffset;
  u32  mNameOffset;
  NullString mName @ addressof(mNameOffset) + mNameOffset;
  u32  mPrice;
  u32  mSellRate;
  le u32 mKind;
  u32  mFlag;
  u32  mExplanationOffset;
  NullString mExplanation @ addressof(mExplanationOffset) + mExplanationOffset;
  bool mDeleteFlag;
  padding[3];
  u32  mBuyLevel;
  u32  mPriceCutLevelOffset;
  u32  mPriceCutLevelCount;
  u32  mPriceCutLevel[mPriceCutLevelCount] @ addressof(mPriceCutLevelOffset) + mPriceCutLevelOffset;
  u32  mPriceCutRateOffset;
  u32  mPriceCutRateCount;
  u32  mPriceCutRate[mPriceCutRateCount] @ addressof(mPriceCutRateOffset) + mPriceCutRateOffset;
  u32  mIconFileOffset;
  NullString mIconFile @ addressof(mIconFileOffset) + mIconFileOffset;
};

struct EquipmentEffectData {
  u32 mEffect;
  u32 mData[2];
};

struct CookItemEffectData {
  u32 mCookEffect;
  u32 mCookEffectParam;
};

struct mItemData {
  mCommonData mCommonData;

  if (
    mCommonData.mKind == mKind::Gummi    || // 0
    mCommonData.mKind == mKind::Bottle   || // 1
    mCommonData.mKind == mKind::Herb     || // 2
    mCommonData.mKind == mKind::Battle   || // 3
    // mCommonData.mKind == mKind::Tent   || // 4
    mCommonData.mKind == mKind::Liquid   || // 5
    mCommonData.mKind == mKind::IceCandy    // 6
  ) {
    u32 mTarget;
    u32 mDataOffset;
    u32 mDataCount;
    u32 mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;
    u32 mConditionOffset;
    u32 mConditionCount;
    u32 mCondition[mConditionCount] @ addressof(mConditionOffset) + mConditionOffset;
    u32 mBattleMagicArts;
  }
  else if (
    mCommonData.mKind == mKind::Sword      || // 7
    mCommonData.mKind == mKind::Knuckle    || // 8
    mCommonData.mKind == mKind::LargeSword || // 9
    mCommonData.mKind == mKind::Stick      || // 10
    mCommonData.mKind == mKind::SmallSword || // 11
    mCommonData.mKind == mKind::Club          // 12
  ) {
    u32  mCharaDefOffset;
    NullString mCharaDef @ addressof(mCharaDefOffset) + mCharaDefOffset;
    u32  mAttack;
    u32  mMagic;
    u32  mDefense;
    u32  mMagicDefense;
    u32  mElementAttack;
    u32  mEffectOffset;
    u32  mEffectCount;
    EquipmentEffectData mEffect[mEffectCount] @ addressof(mEffectOffset) + mEffectOffset;
    u32  mEquipCharacter;
    u32  mSEFileOffset;
    NullString mSEFile @ addressof(mSEFileOffset) + mSEFileOffset;
  }
  else if (
    mCommonData.mKind == mKind::Circlet || // 13
    mCommonData.mKind == mKind::Helmet  || // 14
    mCommonData.mKind == mKind::Ribbon  || // 15
    mCommonData.mKind == mKind::Hat     || // 16
    mCommonData.mKind == mKind::Coat    || // 17
    mCommonData.mKind == mKind::Guard   || // 18
    mCommonData.mKind == mKind::Mail    || // 19
    mCommonData.mKind == mKind::Loeb       // 20
  ) {
    u32 mAttack;
    u32 mMagic;
    u32 mDefense;
    u32 mMagicDefense;
    u32 mElementDefenseOffset;
    u32 mElementDefenseCount;
    u32 mElementDefense[mElementDefenseCount] @ addressof(mElementDefenseOffset) + mElementDefenseOffset;
    u32 mEffectOffset;
    u32 mEffectCount;
    EquipmentEffectData mEffect[mEffectCount] @ addressof(mEffectOffset) + mEffectOffset;
    u32 mEquipCharacter;
  }
  else if (
    mCommonData.mKind == mKind::Ring   || // 21
    mCommonData.mKind == mKind::Jewel  || // 22
    mCommonData.mKind == mKind::Doll   || // 23
    mCommonData.mKind == mKind::Charm  || // 24
    mCommonData.mKind == mKind::Cloak  || // 25
    mCommonData.mKind == mKind::Boots  || // 26
    mCommonData.mKind == mKind::Symbol    // 27
  ) {
    u32 mAttack;
    u32 mMagic;
    u32 mDefense;
    u32 mMagicDefense;
    u32 mAgility;
    u32 mElementAttack;
    u32 mElementDefenseOffset;
    u32 mElementDefenseCount;
    u32 mElementDefense[mElementDefenseCount] @ addressof(mElementDefenseOffset) + mElementDefenseOffset;
    u32 mEffectOffset;
    u32 mEffectCount;
    EquipmentEffectData mEffect[mEffectCount] @ addressof(mEffectOffset) + mEffectOffset;
    u32 mEquipCharacter;
  }
  else if (
    mCommonData.mKind == mKind::AttachmentMain || // 30
    mCommonData.mKind == mKind::AttachmentSub  || // 31
    mCommonData.mKind == mKind::Costume        || // 32
    mCommonData.mKind == mKind::Hairdo            // 33
  ) {
    u32   mCharaDefOffset;
    char  mCharaDef[] @ addressof(mCharaDefOffset) + mCharaDefOffset;
    u32   mEquipCharacter;
    u32   mVoiceFileOffset;
    char  mVoiceFile[] @ addressof(mVoiceFileOffset) + mVoiceFileOffset;
    u32   mFootFileOffset;
    char  mFootFile[] @ addressof(mFootFileOffset) + mFootFileOffset;
    u32   mBattleBGMFileOffset;
    char  mBattleBGMFile[] @ addressof(mBattleBGMFileOffset) + mBattleBGMFileOffset;
    u32   mBattleBGMControlOffset;
    char  mBattleBGMControl[] @ addressof(mBattleBGMControlOffset) + mBattleBGMControlOffset;
    float mMinimumScale;
    float mMaximumScale;
  }
  else if (
    mCommonData.mKind == mKind::MaterialMineral || // 29
    mCommonData.mKind == mKind::MaterialPlant   || // 35
    mCommonData.mKind == mKind::MaterialBeast   || // 36
    mCommonData.mKind == mKind::MaterialBird    || // 37
    mCommonData.mKind == mKind::MaterialAquatic || // 38
    mCommonData.mKind == mKind::MaterialMystery || // 39
    mCommonData.mKind == mKind::MaterialInsect     // 40
  ) {
    u32 mShopPoint;
  }
  else if (
    mCommonData.mKind == mKind::Cook // 41
    // mCommonData.mKind == mKind::Max // 42
  ) {
    u32  mCookEffectOffset;
    u32  mCookEffectCount;
    CookItemEffectData mCookEffect[mCookEffectCount] @ addressof(mCookEffectOffset) + mCookEffectOffset;
    u32  mBattleNum;
    u32  mBattleExplanationOffset;
    NullString mBattleExplanation @ addressof(mBattleExplanationOffset) + mBattleExplanationOffset;
  }
};

u32 mItemDataOffset @ $;
u32 mItemDataCount @ $;
mItemData mItemData[mItemDataCount] @ addressof(mItemDataOffset) + mItemDataOffset;