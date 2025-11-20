#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Menu Command Database (.MNUCDBB)
#pragma endian big
// Last update: Nov 20, 2025

#include <std/string>

using NullString = std::string::NullString;

struct MenuInputInfoId {
  u32 mInputInfoIdOffset;
  NullString mInputInfoId @ addressof(mInputInfoIdOffset) + mInputInfoIdOffset;
};

struct MenuCommandData {
  u32 mIdOffset;
  NullString mId @ addressof(mIdOffset) + mIdOffset;
  u32 mInputInfoIdOffset;
  u32 mInputInfoIdCount;
  MenuInputInfoId mInputInfoId[mInputInfoIdCount] @ addressof(mInputInfoIdOffset) + mInputInfoIdOffset;
};

struct MenuButtonIconId {
  u32 mButtonIconIdOffset;
  NullString mButtonIconId @ addressof(mButtonIconIdOffset) + mButtonIconIdOffset;
};

struct MenuStringId {
  u32 mButtonIconIdOffset;
  NullString mButtonIconId @ addressof(mButtonIconIdOffset) + mButtonIconIdOffset;
};

struct MenuInputInfoData {
  u32 mIdOffset;
  NullString mId @ addressof(mIdOffset) + mIdOffset;
  u32 mButtonIconIdOffset;
  u32 mButtonIconIdCount;
  // MenuButtonIconId mButtonIconId[mButtonIconIdCount] @ addressof(mButtonIconIdOffset) + mButtonIconIdOffset;
  u32 mStringIdOffset;
  u32 mStringIdCount;
  MenuStringId mStringId[mStringIdCount] @ addressof(mStringIdOffset) + mStringIdOffset;
};

u32 mCommandDataOffset @ $;
u32 mCommandDataCount @ $;

u32 mInputInfoDataOffset @ $;
u32 mInputInfoDataCount @ $;

MenuCommandData mCommandData[mCommandDataCount] @ addressof(mCommandDataOffset) + mCommandDataOffset;
MenuInputInfoData mInputInfoData[mInputInfoDataCount] @ addressof(mInputInfoDataOffset) + mInputInfoDataOffset;