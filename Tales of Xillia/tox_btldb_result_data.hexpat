#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLRESULTDATA.BTLDB)
#pragma endian big
// Last update: Nov 13, 2025

#include <std/string>

using NullString = std::string::NullString;

struct IfStateData {
  s32 if_state_kind;
  u32 if_state_value_offset;

  if (if_state_value_offset > 0) {
    NullString if_state_value @ addressof(if_state_value_offset) + if_state_value_offset;
  }
};

struct CommandData {
  float perc;
  s32 sce_start;
  s32 sce_end;
  u32 if_state_data_offset;
  u32 if_state_data_count;
  IfStateData if_state_data[if_state_data_count] @ addressof(if_state_data_offset) + if_state_data_offset;
  u32 entry_member_offset;
  u32 entry_member_count;
  s32 entry_member[entry_member_count] @ addressof(entry_member_offset) + entry_member_offset;
  s32 finish_member;
  s32 finish_kind;
  s32 link_member_00;
  s32 link_member_01;
  s32 command_kind;
  u32 command_var_str_00_offset;
  NullString command_var_str_00 @ addressof(command_var_str_00_offset) + command_var_str_00_offset;
  s32 command_var_chara_id_00;
  s32 command_var_int_00;
  s32 command_var_int_01;
  s32 command_var_int_02;
  s32 command_var_int_03;
  s32 command_var_int_04;
  s32 command_var_int_05;
  s32 command_var_int_06;
  s32 command_var_int_07;
};

struct ResultData {
  s32 id;
  bool dialogue_flag;
  bool serious_check_flag;
  padding[2];
  u32 name_offset;
  NullString name @ addressof(name_offset) + name_offset;
  s32 priority;
  s32 encount_group;
  s32 bg_id;
  bool entry_member_only_flag;
  padding[3];
  u32 fixed_pos_offset;
  u32 fixed_pos_count;
  s32 fixed_pos[fixed_pos_count] @ addressof(fixed_pos_offset) + fixed_pos_offset;
  u32 command_array_offset;
  u32 command_array_count;
  CommandData command_array[command_array_count] @ addressof(command_array_offset) + command_array_offset;
};

u32 data_offset @ $;
u32 data_count @ $;
ResultData data[data_count] @ addressof(data_offset) + data_offset;