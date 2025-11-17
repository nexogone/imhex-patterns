#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Scenario Character List (.CHRLSTB)
#pragma endian big
// Last update: Nov 17, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

struct CharacterIDSet {
  NullString mString;
};

struct MessageData {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;
  u32 mCharacterIDOffset;
  CharacterIDSet mCharacterID @ addressof(mCharacterIDOffset) + mCharacterIDOffset;
  u32 mNumber;
  u32 mStringIDOffset;
  NullString mStringID @ addressof(mStringIDOffset) + mStringIDOffset;
  u32 mSystemStringIDOffset;
  
  if (mSystemStringIDOffset > 0) {
    NullString mSystemStringID @ addressof(mSystemStringIDOffset) + mSystemStringIDOffset;
  }
};

u32 mDataListOffset @ $;
u32 mDataListCount @ $;
MessageData mDataList[mDataListCount] @ addressof(mDataListOffset) + mDataListOffset;