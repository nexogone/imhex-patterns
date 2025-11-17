#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Menu Widget Definition (.WGTDEFB)
#pragma endian big
// Last update: Nov 14, 2025

#include <std/string>

using NullString = std::string::NullString;

struct MenuWidgetDefinitionData {
  u32 mFileType;
  u32 mFileNameOffset;
  NullString mFileName @ addressof(mFileNameOffset) + mFileNameOffset;
};

u32 mDataOffset @ $;
u32 mDataCount @ $;
MenuWidgetDefinitionData mData[mDataCount] @ addressof(mDataOffset) + mDataOffset;