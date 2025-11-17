#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLUNITABILITY.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct MaTable {
  s32 magicArts;
  s32 key;
  s32 rank;
  u32 frequencyOffset;
  u32 frequencyCount;
  s32 frequency[frequencyCount] @ addressof(frequencyOffset) + frequencyOffset;
};

struct SkillTable {
  s32 skill;
  s32 rank;
};

struct UnitAbility {
  s32 id;
  u32 magicArtsTableOffset;
  u32 magicArtsTableCount;
  MaTable magicArtsTable[magicArtsTableCount] @ addressof(magicArtsTableOffset) + magicArtsTableOffset;
  u32 skillTableOffset;
  u32 skillTableCount;
  SkillTable skillTable[skillTableCount] @ addressof(skillTableOffset) + skillTableOffset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
UnitAbility data[dataCount] @ addressof(dataOffset) + dataOffset;