#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - TO11 Environment (.ENV005)
#pragma endian big
// Last update: Nov 30, 2025

#include <std/string>

using NullString = std::string::NullString;

struct EnvironmentDirection {
  float vectorX, vectorY, vectorZ;
};

struct EnvironmentLightTO11 {
  EnvironmentDirection mDirectionalLight;
  float mDirectionalLightPower;
  float mPointLightIntensityRate;
  float mPointLightColorRate;
  EnvironmentDirection mShadowDirectionalLight;
  float mShadowDirectionalLightPower;
};

struct Color {
  float r, g, b, a;
};

struct EnvironmentFogTO11 {
  bool mEnable;
  padding[3];
  float mPreset;
  float mNear;
  float mFar;
  float mMax;
  Color mColor;
};

struct EnvironmentShadowTO11 {
  float mSoftSize;
};

struct EnvironmentFocusRasterTO11 {
  bool mEnable;
  padding[3];
  s32 mTextureNo;
  float mSpeed;
  float mSwayX;
  float mSwayY;
  float mScaleX;
  float mScaleY;
  float mDirectionX;
  float mDirectionY;
};

struct EnvironmentFocusTO11 {
  bool mEnable;
  padding[3];
  float mNear;
  float mFocusStart;
  float mFocusEnd;
  float mFar;
  s32 mSoftType;
  float mSoftSize;
  Color mColor;
  s32 mBlend;
  EnvironmentFocusRasterTO11 mRaster;
};

struct EnvironmentProjectionTO11 {
  s32 mBlendType;
  Color mNearColor;
  Color mMiddleColor;
  Color mFarColor;
  float mMiddlePoint;
};

struct EnvironmentFilterTO11 {
  bool mEnable;
  padding[3];
  Color mColor;
  s32 mSoftType;
  float mSoftSize;
  s32 mBlend;
};

struct EnvironmentOutlineTO11 {
  float mWidth;
  float mNear;
  float mFar;
  float mNearStart;
  float mNearFade;
  float mNearSub;
  float mFarStart;
  float mFarFade;
  float mFarSub;
};

struct EnvironmentGlowTO11 {
  bool mEnable;
  padding[3];
  s32 mSoftType;
  float mSoftSize;
  Color mColor;
  bool mLuminance;
  padding[3];
  Color mLuminanceColor;
  float mLuminanceThreshold;
};

struct Vector2f {
  float x, y;
};

struct EnvironmentWaterCommonTO11 {
  s32 mTextureNo;
  float mTextureSpeed;
  Vector2f mTextureScale;
  float mTextureMipmapBias;
  s32 mTextureAnimationBaseSpeed;
  s32 mTextureAnimationWaterSpeed;
};

struct EnvironmentWaterBaseTO11 {
  float mNearLevel;
  Color mNearColor;
  Color mFarColor;
};

struct EnvironmentWaterReflectTO11 {
  bool mEnable;
  padding[3];
  Color mBackColor;
  float mWaterY;
  s32 mSoftType;
  float mSoftSize;
  Vector2f mSway;
  float mNearLevel;
  float mNearA;
  float mFarA;
};

struct EnvironmentWaterRefractTO11 {
  bool mEnable;
  padding[3];
  Color mBackColor;
  s32 mSoftType;
  float mSoftSize;
  Vector2f mSway;
};

struct EnvironmentWaterShadeTO11 {
  bool mEnable;
  padding[3];
  s32 mToonPreset;
  float mToonLightLevel;
  Color mDarkColor;
  Color mLightColor;
};

struct EnvironmentWaterSplashTO11 {
  bool mEnable;
  padding[3];
  float mNearLevel;
  float mStartHeightNear;
  float mEndHeightNear;
  float mStartHeightFar;
  float mEndHeightFar;
  Color mColor;
  float mNearA;
  float mFarA;
};

struct EnvironmentWaterSpecularTO11 {
  bool mEnable;
  padding[3];
  Color mColor;
  float mPow;
  float mFlatBias;
};

struct EnvironmentWaterTO11 {
  bool mEnable;
  padding[3];
  EnvironmentWaterCommonTO11 mCommon;
  EnvironmentWaterBaseTO11 mBase;
  EnvironmentWaterReflectTO11 mReflect;
  EnvironmentWaterRefractTO11 mRefract;
  EnvironmentWaterShadeTO11 mShade;
  EnvironmentWaterSplashTO11 mSplash;
  EnvironmentWaterSpecularTO11 mSpecular;
};

struct EnvironmentWeatherTO11 {
  bool mEnable;
  padding[3];
  s32 mType;
  float mArea_X;
  float mArea_Y;
  s32 mSplitWidth;
  s32 mSplitHeight;
  s32 mNumParticle;
  float mLife;
  float mForce_X;
  float mForce_Y;
  float mForce_Z;
  float mWave;
  float mWaveCycle_X;
  float mWaveCycle_Y;
  float mBaseRotate;
  float mStartRotateRandom;
  float mRotateSpeed;
  float mSize_X;
  float mSize_Y;
  float mSizeRandom_X;
  float mSizeRandom_Y;
  float mFadeInTime;
  float mFadeOutTime;
  s32 mTextureNo;
  float mNear;
  float mMiddle;
  float mFar;
  Color mBaseColor;
  Color mNearColor;
  Color mMiddleColor;
  Color mFarColor;
  s32 mBlendType;
};

struct LensFlareCommonDataTO11 {
  float mHorizontalAlphaPower;
  float mVerticalAlhpaPower;
  float mRandomAlphaSpeed;
  float mRandomAlphaLevel;
  float mHorizontalAngle;
  float mVerticalAngle;
  float mSize;
};

struct LensFlareDataTO11 {
  bool mEnable;
  padding[3];
  float mPosition;
  float mSize;
  Color mColor;
  s32 mTextureNo;
};

struct EnvironmentLensFlareTO11 {
  bool mEnable;
  padding[3];
  LensFlareCommonDataTO11 mCommon;
  LensFlareDataTO11 mPreset[16];
};

struct ColorDataTO11 {
  NullString mName;
  padding[60]; // Unknown
  Color mColor;
};

struct EnvironmentSystemTO11 {
  s32 mPresentInterval;
  s32 mPresentIntervalMain;
  Color mClearColor;
};

EnvironmentLightTO11 mLight @ $;
EnvironmentFogTO11 mFog @ $;
EnvironmentShadowTO11 mShadow @ $;
EnvironmentFocusTO11 mFocus @ $;
EnvironmentFilterTO11 mFilter @ $;
EnvironmentProjectionTO11 mProjectio[8] @ $;
EnvironmentOutlineTO11 mOutline @ $;
EnvironmentGlowTO11 mGlow @ $;
EnvironmentWaterTO11 mWater @ $;
EnvironmentWeatherTO11 mWeather[4] @ $;
EnvironmentLensFlareTO11 mLensFlare @ $;
// ColorDataTO11 mColorData[32] @ $;
// EnvironmentSystemTO11 mSystem @ $;