#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLEFFECTGLOWCOLOR.BTLDB)
#pragma endian big
// Last update: Nov 10, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct EffectGlowColorItem {
  u32  nameOffset;
  u32  colorsOffset;
  u32  colorsCount;
  NullString name @ addressof(nameOffset) + nameOffset;
  Vector3f colors[colorsCount] @ addressof(colorsOffset) + colorsOffset;
};

struct EffectGlowColor {
  s32 id;
  u32 itemsOffset;
  u32 itemsCount;
  EffectGlowColorItem items[itemsCount] @ addressof(itemsOffset) + itemsOffset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
EffectGlowColor data[dataCount] @ addressof(dataOffset) + dataOffset;