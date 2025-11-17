#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLENCOUNTGROUP.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Member {
  s32 id;
  s32 group;
};

struct EncounterGroup {
  s32 id;
  u32 nameOffset;
  NullString name @ addressof(nameOffset) + nameOffset;
  s32 map;
  s32 bgm;
  u32 m_event_offset;
 
  if (m_event_offset > 0) {
    NullString m_event @ addressof(m_event_offset) + m_event_offset;
  }

  bool bEscape;
  bool bRetry;
  bool bNoAdvantage;
  bool bRare;
  bool bRandom;
  padding[3];
  u32 MemberOffset;
  u32 MemberCount;
  Member memberTable[MemberCount] @ addressof(MemberOffset) + MemberOffset;
  u32 dicLabelNameOffset;
  NullString dicLabelName @ addressof(dicLabelNameOffset) + dicLabelNameOffset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
EncounterGroup data[dataCount] @ addressof(dataOffset) + dataOffset;