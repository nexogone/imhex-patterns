#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Battle Database (BTLEFFECTINFO.BTLDB)
#pragma endian big
// Last update: Nov 10, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct EffectInfo {
  s32 id;
  u32 filename_offset;
  NullString filename @ addressof(filename_offset) + filename_offset;
  u32 personal_name_offset;

  if (personal_name_offset != 0x0) {
    NullString personal_name @ addressof(personal_name_offset) + personal_name_offset;
  }

  Vector3f dg_color;
  float speed;
  Vector3f scale;
  u32 colors_offset;
  u32 colors_count;
  Vector3f colors[colors_count] @ addressof(colors_offset) + colors_offset;
  bool resident;
  padding[3];
  float camera_range;
  float camera_angle;
  bool unit_element;
  bool stencil_use;
  bool no_dust;
  bool no_ground_clip;
};

u32 data_offset @ $;
u32 data_count @ $;
EffectInfo data[data_count] @ addressof(data_offset) + data_offset;