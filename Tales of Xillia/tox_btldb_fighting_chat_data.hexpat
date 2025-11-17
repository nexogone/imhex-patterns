#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLFIGHTINGCHATDATA.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct CommandData {
  float perc;
  s32 sce_start;
  s32 sce_end;
  u32 entry_member_offset;
  u32 entry_member_count;
  s32 entry_member[entry_member_count] @ addressof(entry_member_offset) + entry_member_offset;
  u32 sub_member_offset;
  u32 sub_member_count;
  s32 sub_member[sub_member_count] @ addressof(sub_member_offset) + sub_member_offset;
  u32 party_in_member_offset;
  u32 party_in_member_count;
  s32 party_in_member[party_in_member_count] @ addressof(party_in_member_offset) + party_in_member_offset;
  s32 tipo_flag;
  s32 enemy_level;
  s32 encount_type;
  s32 encount_link;
  s32 enemy_group_type;
  s32 levelup_member;
  s32 dying_member;
  s32 serial_sub_member;
  bool exec_one;
  padding[3];
  s32 command_kind;
  u32 command_var_str_00_offset;
  
  if (command_var_str_00_offset > 0) {
    NullString command_var_str_00 @ addressof(command_var_str_00_offset) + command_var_str_00_offset;
  }

  u32 command_var_str_01_offset;

  if (command_var_str_01_offset > 0) {
    NullString command_var_str_01 @ addressof(command_var_str_01_offset) + command_var_str_01_offset;
  }

  u32 command_var_str_02_offset;

  if (command_var_str_02_offset > 0) {
    NullString command_var_str_02 @ addressof(command_var_str_02_offset) + command_var_str_02_offset;
  }

  u32 command_var_str_03_offset;

  if (command_var_str_03_offset > 0) {
    NullString command_var_str_03 @ addressof(command_var_str_03_offset) + command_var_str_03_offset;
  }

  s32 command_var_chara_id;
  s32 command_var_int_00;
};

struct FightingChatData {
  u32 id;
  u32 name_offset;
  NullString name @ addressof(name_offset) + name_offset;
  bool start_only;
  bool exec_priority;
  bool play_voice_priority;
  bool play_on_resume;
  s32 encount_group;
  s32 f_chat_flag;
  u32 command_array_offset;
  u32 command_array_count;
  CommandData command_array[command_array_count] @ addressof(command_array_offset) + command_array_offset;
};

u32 data_offset @ $;
u32 data_count @ $;
FightingChatData data[data_count] @ addressof(data_offset) + data_offset;