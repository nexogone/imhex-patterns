#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - FPS Data (.FPSDAT)
#pragma endian big
// Last update: Nov 27, 2025

#include <std/string.pat>

using NullString = std::string::NullString;

struct FPSDstExt {
  u32 mDstExtOffset;
  NullString mDstExt @ addressof(mDstExtOffset) + mDstExtOffset;
};

struct FPSListData {
  u32 mBaseNameOffset;

  if (mBaseNameOffset > 0) {
    NullString mBaseName @ addressof(mBaseNameOffset) + mBaseNameOffset;
  }

  u32 mSrcExtOffset;

  if (mSrcExtOffset > 0) {
    NullString mSrcExt @ addressof(mSrcExtOffset) + mSrcExtOffset;
  }

  u32 mDstExtOffset;
  u32 mDstExtCount;
  FPSDstExt mDstExt[mDstExtCount] @ addressof(mDstExtOffset) + mDstExtOffset;
};

u32 mIDOffset @ $;

u32 mListOffset @ $;
u32 mListCount @ $;

u32 mVpkNameOffset @ $;

u32 mLoadListOffset @ $;
u32 mLoadListCount @ $;

NullString mID @ addressof(mIDOffset) + mIDOffset;
FPSListData mList[mListCount] @ addressof(mListOffset) + mListOffset;
NullString mVpkName @ addressof(mVpkNameOffset) + mVpkNameOffset;
FPSListData mLoadList[mLoadListCount] @ addressof(mLoadListOffset) + mLoadListOffset;