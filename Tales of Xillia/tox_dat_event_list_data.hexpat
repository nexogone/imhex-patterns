#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Data (EVENTLISTDATA.DAT)
#pragma endian big
// Last update: Nov 18, 2025

#include <std/string>

using NullString = std::string::NullString;

struct PurposeData {
  u32 mPurposeOffset;
  NullString mPurpose @ addressof(mPurposeOffset) + mPurposeOffset;
  s32 mMainStartEP;
  s32 mMainStartSCE;
  s32 mMainEndEP;
  s32 mMainEndSCE;
  s32 mSubStartBitFlag;
  s32 mSubEndBitFlag;
  s32 mSubEndEP;
  s32 mSubEndSCE;
};

struct OperationData {
  s32 mEventListId;
  s32 mCondition;
  s32 mOperation;
};

struct EventListData {
  s32 mId;
  s32 mCategory;
  s32 mRoute;
  s32 mEpisode;
  u32 mTitleOffset;
  NullString mTitle @ addressof(mTitleOffset) + mTitleOffset;
  u32 mPurposeOffset;
  u32 mPurposeCount;
  PurposeData mPurpose[mPurposeCount] @ addressof(mPurposeOffset) + mPurposeOffset;
  u32 mSynopsisOffset;
  u32 mSynopsisCount;
  s32 mSynopsis[mSynopsisCount] @ addressof(mSynopsisOffset) + mSynopsisOffset;
  u32 mOperationOffset;
  u32 mOperationCount;
  OperationData mOperation[mOperationCount] @ addressof(mOperationOffset) + mOperationOffset;
};

u32 mListOffset @ $;
u32 mListCount @ $;
EventListData mList[mListCount] @ addressof(mListOffset) + mListOffset;