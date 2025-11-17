#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - FPS Data (.FPSDAT)
#pragma endian big
// Last update: Nov 12, 2025

#include <std/string.pat>

using NullString = std::string::NullString;

enum TO11FPS_SRCEXT : s32 {
  NONE    = 0,
  TO11PDF = 1,
  TO11FDF = 2,
  TO11FPS = 3,
  TO11LDF = 4,
  TLANMX  = 5,
  TLENVX  = 6,
  TLMDLX  = 7,
  TLMDFX  = 8,
  TLMDPX  = 9,
  TLMPDT  = 10,
  TLVPCKT = 11,
  BTLCOLX = 12,
  CHR     = 13,
  ATR     = 14,
  SFB     = 15,
  SLASH   = 16,
  TGA     = 17,
  BMP     = 18
};

struct TO11FPS_DSTEXT {
  u32 mDstExtOffset;
  NullString mDstExt @ addressof(mDstExtOffset) + mDstExtOffset;
};

struct TO11FPS_LISTDATA {
  u32 mBaseNameOffset;
  NullString mBaseName @ addressof(mBaseNameOffset) + mBaseNameOffset;

  u32 mSrcExtOffset;
  NullString mSrcExt @ addressof(mSrcExtOffset) + mSrcExtOffset;

  u32 mDstExtOffset;
  u32 mDstExtCount;
  TO11FPS_DSTEXT mDstExt[mDstExtCount] @ addressof(mDstExtOffset) + mDstExtOffset;

  //s32 mSrcExtId = TO11FPS_SRCEXT::???;
};

struct TO11FPS_FILEDATA {
  u32 mIDOffset;
  NullString mID @ addressof(mIDOffset) + mIDOffset;

  u32 mListOffset;
  u32 mListCount;
  TO11FPS_LISTDATA mList[mListCount] @ addressof(mListOffset) + mListOffset;

  u32 mVpkNameOffset;
  NullString mVpkName @ addressof(mVpkNameOffset) + mVpkNameOffset;

  u32 mLoadListOffset;
  u32 mLoadListCount;
  TO11FPS_LISTDATA mLoadList[mLoadListCount] @ addressof(mLoadListOffset) + mLoadListOffset;
};

TO11FPS_FILEDATA root @ 0x0;