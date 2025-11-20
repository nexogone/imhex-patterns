#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Message Data (.MSGDATB)
#pragma endian big
// Last update: Nov 20, 2025

#include <std/string>

using NullString = std::string::NullString;

struct MessageDataValue {
  u32 mCaptionIDOffset;
  NullString mCaptionID @ addressof(mCaptionIDOffset) + mCaptionIDOffset;
  u32 mCharacterIDOffset;
  NullString mCharacterID @ addressof(mCharacterIDOffset) + mCharacterIDOffset;
  u32 mTextIDOffset;
  NullString mTextID @ addressof(mTextIDOffset) + mTextIDOffset;
  u32 mVoiceIDOffset;
  NullString mVoiceID @ addressof(mVoiceIDOffset) + mVoiceIDOffset;
};

struct MessageData {
  u32 mDataKeyOffset;
  NullString mDataKey @ addressof(mDataKeyOffset) + mDataKeyOffset;
  MessageDataValue mDataValue;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
MessageData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;