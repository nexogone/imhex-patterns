#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLBGSTATUS.BTLDB)
#pragma endian big
// Last update: Nov 10, 2025

#include <std/string>

using NullString = std::string::NullString;

struct BG_STATUS {
  s32  id;
  u32  dataOffset;

  if (dataOffset != 0x0) {
    NullString data @ addressof(dataOffset) + dataOffset;
  }
  else {
    char data = '\0' [[export]];
  }

  s32  size;
  s32  height;
  bool bFall;
  bool bCrack;
  bool bFragment;
  padding[1];
  u32  fragmentModelOffset;

  if (fragmentModelOffset != 0x0) {
    NullString fragmentModel @ addressof(fragmentModelOffset) + fragmentModelOffset;
  }
  else {
    char fragmentModel = '\0' [[export]];
  }

  bool bNoDust;
  bool bFootEffect;
  padding[2];
};

u32 dataOffset @ $;
u32 dataCount @ $;
BG_STATUS data[dataCount] @ addressof(dataOffset) + dataOffset;