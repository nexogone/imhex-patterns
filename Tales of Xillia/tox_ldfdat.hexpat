#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - LookAt Definition (.LDFDAT)
#pragma endian big
// Last update: Nov 20, 2025

struct LookatDefDirectionData {
  float mSpeed;
  float mAngle;
};

struct LookatDefEyeData {
  float mAngle;
};

struct LookatDefLookatData {
  float mPower;
  float mAngle;
  float mRate0;
  float mRate1;
  float mRate2;
  float mRate3;
  float mRate4;
  float mRate5;
};

LookatDefDirectionData mDirection @ $;
LookatDefEyeData mEye @ $;
u32 mLookatListOffset @ $;
u32 mLookatListCount @ $;
LookatDefLookatData mLookatList[mLookatListCount] @ addressof(mLookatListOffset) + mLookatListOffset;