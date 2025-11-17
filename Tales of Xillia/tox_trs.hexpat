#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Terrain Data (.TRS)
#pragma endian big
// Last update: Nov 9, 2025

#include <std/mem.pat>
#include <std/string.pat>

using NullString = std::string::NullString;

fn string(char text) {
  return std::format("{}", text);
};

enum ETrsType : s32 {
  MESH = 0
};

enum ETerrainShapeType : u8 {
  TR_SHAPE_BEGIN    = 0,
  TR_SHAPE_SPHERE   = 1,
  TR_SHAPE_CYLINDER = 2,
  TR_SHAPE_BOX      = 3,
  TR_SHAPE_AABB     = 4,
  TR_SHAPE_PLANE    = 5,
  TR_SHAPE_MESH     = 6,
  TR_SHAPE_MAX_ID   = 7,
  TR_SHAPE_ALL      = 8
};

struct Vector2 {
  s32 x, y; // float
};

struct CTerrainAABB {
  Vector2 mMin[3];
  Vector2 mMax[3];
};

struct Vector3 {
  s32 x, y, z; // float
};

struct STriData {
  ETerrainShapeType mShapeType;
  u8  mIsDynamic;
  u8  mDataLevel;
  u8  mPad3;
  Vector3 mPos[3];
  u32 mAttr0;
  u32 mAttr1;
  u32 mAttr2Offset;

  if (mAttr2Offset != 0xFFFFFFFF) {
    NullString mAttr2 @ mAttr2Offset [[format("string")]];
  }
  else {
    char mAttr2 = '\0' [[format("string"), export]];
  }

  u32 mTouch;
  s32 mCollideOwner;
};

struct SGridChunk {
  u32 mInnerCount;
  u32 mEdgeCount;
  u32 mIndexOffset;
  u32 mEdgeIndexOffset;
  u16 indexTblList[mInnerCount] @ mIndexOffset;
  u16 edgeIndexTblList[mEdgeCount] @ mEdgeIndexOffset;
};

// struct TerrainCollectIndexTable {
//   std::Array<T, u16 tbl> {} [[format]];
// };

struct STrsHeader {
  u8  mId[4];
  u32 mVersion;
  ETrsType     mTrsType;
  CTerrainAABB mGridAABB;
  s32 mDivideSizeX; // float
  u32 mDivideCountX;
  s32 mDivideSizeY; // float
  u32 mDivideCountY;
  s32 mDivideSizeZ; // float
  u32 mDivideCountZ;
  u32 mTriCount;
  u32 mEdgeCount;
  u32 mGridGroupOffset;
  u32 mTriListOffset;
  u32 mInit;
  u32 mUniqNumber;
  s32 mDebugGridSelect;
  u32 mSGridChunkCount = mDivideCountX * mDivideCountZ [[export]];
  STriData   triList[mTriCount] @ mTriListOffset;
  SGridChunk chunkList[mSGridChunkCount] @ mGridGroupOffset;
};

STrsHeader header @ $;