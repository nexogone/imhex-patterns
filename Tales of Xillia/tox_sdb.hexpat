#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - String Dictionary Data (.SDB)
#pragma endian big
// Last update: Nov 14, 2025

#include <std/string>

using NullString = std::string::NullString;

struct StringDictionary {
  u32 mStringKeyOffset;
  u32 mStringValueOffset;
  NullString mStringKey @ addressof(mStringKeyOffset) + mStringKeyOffset;
  NullString mStringValue @ addressof(mStringValueOffset) + mStringValueOffset;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
StringDictionary mStringDictionary[mDataCount] @ $;