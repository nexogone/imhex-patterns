#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLSTRATEGY.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Strategy {
    s32 id;
    s32 kind;
    u32 party;
    u32 dicLabelNameOffset;
    NullString dicLabelName @ addressof(dicLabelNameOffset) + dicLabelNameOffset;
    u32 dicLabelExplOffset;
    NullString dicLabelExpl @ addressof(dicLabelExplOffset) + dicLabelExplOffset;
    u32 dicLabelExpl2Offset;
    NullString dicLabelExpl2 @ addressof(dicLabelExpl2Offset) + dicLabelExpl2Offset;
};

u32 dataOffset @ $;
u32 dataCount @ $;
Strategy data[dataCount] @ addressof(dataOffset) + dataOffset;