#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Collision (.BTLCOL)
#pragma endian big
// Last update: Nov 9, 2025

struct Vector3f {
  float x, y, z;
};

struct btlCollisionMO {
  u32   boneID;
  Vector3f pos;
  u32   label;
  float size;
  u32   flg;
};

struct btlCollisionAT {
  u32   boneID;
  Vector3f pos;
  u32   label;
  float size;
};

u32 btlCollisionMOOffset @ $;
u32 btlCollisionMOCount @ $;

u32 btlCollisionATOffset @ $;
u32 btlCollisionATCount @ $;

btlCollisionMO btlCollisionMO[btlCollisionMOCount] @ addressof(btlCollisionMOOffset) + btlCollisionMOOffset;
btlCollisionAT btlCollisionAT[btlCollisionATCount] @ addressof(btlCollisionATOffset) + btlCollisionATOffset;