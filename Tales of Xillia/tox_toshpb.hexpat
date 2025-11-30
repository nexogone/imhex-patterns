#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Shape Set Binary (.TOSHPB)
#pragma endian big
// Last update: Nov 29, 2025

#include <std/mem.pat>
#include <std/string>

using NullString = std::string::NullString;

struct Vector2f {
  float x, y;
};

struct Vector3f {
  float x, y, z;
};

struct Color {
  float r, g, b, a;
};

struct PackColor {
  u8 r, g, b, a;
};

struct ShapeSetHeader {
  u32 mMagicNumber;
  u32 mSize;
  u32 mVersion;
  u32 mMeshSet;
  u32 mMorphSet;
  u32 mMaterialSet;
  u32 mParticleSet;
  u32 mLightSet;
  u32 mCameraSet;
  u32 mLineSet;
};

struct MeshSetHeader {
  u16 mNumMesh;
  u16 mNumInfluence;
};

struct MeshSetMeshSort {
  s32 mPriority;
  Vector3f mBasePosition;
};

struct MeshSetMeshInfo {
  u32 mID;
  u16 mSubID;
  u16 mFlag;
  u16 mMaterialIndex;
  u16 mMaterialVariationID;
  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }
};

struct GPUMeshBufferMeshVertexInfo {
  u16 mNumVertex;
  u16 mNumIndex;
  u32 mVertexOffset;
  u32 mIndexOffset;
  u32 mBlendVertexOffset;
};

struct MorphSetHeader {
  u16 mNumMorph;
  u16 mNumAnimationTarget;
  u32 mReserve;
};

struct MorphSetMorph {
  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  s32 mBufferOffset;
  u32 mID;
};

struct MaterialSetHeader {
  u16 mNumMaterial;
  u16 mNumLayer;
  u16 mNumAnimationMaterial;
  u16 mNumAnimationLayer;
  u16 mNumTexture;
  u16 mNumAnimationTarget;
  u32 mReserve;
};

// ================ WIP ================
struct ShaderManagerMaterialParameter {
  s32 mFog;
  s32 mShadowTarget;
  s32 mProjectionTarget;
  s32 mLocalZPass;
  s32 mWaterReflect;
  s32 mGlow;
  s32 mStencilOrder;
  s32 mOutline;
  s32 mHighlightTarget;
  s32 mInvisible;
};

struct ShaderManagerNormalParameter {
  s32 mMaterialType;
  s32 mUseSpecularTexture;
  float mSpecularColorR;
  float mSpecularColorG;
  float mSpecularColorB;
  float mSpecularPower;
};

struct ShaderManagerToonParameter {
  s32 mToonPreset;
  s32 mToonColorPreset;
  s32 mRimLightPreset;
  s32 mMaterialType;
  s32 mUseSpecularTexture;
  float mSpecularColorR;
  float mSpecularColorG;
  float mSpecularColorB;
  float mSpecularPower;
};

struct ShaderManagerProjectionParameter {
  s32 mPreset;
};

struct MaterialSetMaterial {
  u32 mID;
  u16 mVariationID;
  u16 mFlag;
  u16 mNumLayer;
  u16 mAnimationMaterialIndex;
  u16 mFirstLayerIndex;
  u16 mShaderType;
  u16 mRenderPass;
  u16 mPad;

  u32 unk1Offset;
  // ShaderManagerMaterialParameter mAppendParameter @ addressof(unk1Offset) + unk1Offset;

  u32 unk2Offset;
  // ShaderManagerNormalParameter mNormalShaderParameter @ addressof(unk2Offset) + unk2Offset;

  // ShaderManagerToonParameter mToonShaderParameter;
  // ShaderManagerProjectionParameter mProjectionParameter;
};
// =====================================

struct MaterialSetLayer {
  u8 mBlendType;
  u8 mPad;
  u16 mTextureIndex;
  u16 mNumLayerFrame;
  u16 mAnimationLayerIndex;
};

struct MaterialSetMaterialInfo {
  s32 mVertexShaderParameterVariation;
  s32 mPixelShaderParameterVariation;
  u32 mNameOffset;

  if (mNameOffset > 0) {
    NullString mName @ addressof(mNameOffset) + mNameOffset;
  }

  u32 mExtraStringOffset;

  if (mExtraStringOffset > 0) {
    NullString mExtraString @ addressof(mExtraStringOffset) + mExtraStringOffset;
  }
};

struct MaterialSetMaterialAnimation {
  Color mBaseColor;
};

struct MaterialSetLayerAnimation {
  Vector2f mLayerScale;
  float mLayerRotate;
  Vector2f mLayerTranslate;
  float mLayerFrame;
};

struct MaterialSetTextureName {
  std::mem::AlignTo<4>;
  u32 mTextureNameOffset;

  if (mTextureNameOffset > 0) {
    NullString mTextureName @ addressof(mTextureNameOffset) + mTextureNameOffset;
  }
};

struct ParticleSetHeader {
  u16 mNumParticle;
  u16 mNumAnimationTarget;
  u16 mNumParticleField;
  u16 mReserve[5];
};

struct ParticleSetParticleColor {
  float mTime;
  Color mColor;
  Color mColorRand;
};

struct ParticleSetParticleSize {
  float mTime;
  Vector2f mSize;
  Vector2f mSizeRand;
};

struct ParticleSetParticle {
  u32 mEmitterID;
  u32 mParticleID;
  s16 mMaterialIndex;
  u16 mFlag;
  s32 mPriority;
  Vector3f mSize;
  float mCountRand;
  float mIntervalRand;
  float mVelocity;
  float mVelocityRand;
  Vector3f mDirection;
  Vector3f mDirectionRand;
  float mRotateStart;
  float mRotateVelocity;
  float mRotateVelocityRand;
  float mLife;
  float mLifeRand;
  u32 mRandSeed;
  ParticleSetParticleColor mParticleColor[5];
  ParticleSetParticleSize mParticleSize[5];
  float mTexcoordAnimationStepTime;
  s32 mTexcoordAnimationSplitHeight;
  s32 mTexcoordAnimationSplitWidth;
  //u32 mElementDataCount;
  s32 mElementData[1];
};

struct ParticleSetParticleAnimation {
  float mCount;
  float mInterval;
};

struct ParticleSetParticleField {
  u32 mID;
  u32 mFlag;
  Vector3f mSize;
  float mPower;
  u32 mNumTarget;
  u16 mTargetIndex[2];
};

struct LightSetHeader {
  u16 mNumLight;
  u16 mNumAnimationTarget;
  u32 mReserve;
};

struct ShaderManagerLightParameter {
  s32 mShadowDirection;
  s32 mLightDirection;
  s32 mObjectHighlight;
  s32 mMapHighlight;
};

struct LightSetLight {
  u32 mID;
  ShaderManagerLightParameter mParameter;
};

struct LightSetLightAnimation {
  float mIntensity;
  Vector3f mColor;
};

struct CameraSetHeader {
  u16 mNumCamera;
  u16 mNumAnimationTarget;
  u32 mReserve;
};

struct LineSetHeader {
  u16 mNumLine;
  u16 mReserve[3];
};

struct LineSetLineVertex {
  Vector3f mPosition;
  Vector3f mNormal;
  PackColor mColor;
  Vector2f mTexcoord;
};

struct LineSetLine {
  u32 mID;
  u16 mMaterialIndex;
  u16 mNumVertex;
  LineSetLineVertex mVertex;
};

ShapeSetHeader mHeader @ 0x0;

MeshSetHeader mMeshHeader @ addressof(mHeader.mMeshSet) + mHeader.mMeshSet;
MeshSetMeshSort mMeshSort[mMeshHeader.mNumMesh] @ $;
MeshSetMeshInfo mMeshInfo[mMeshHeader.mNumMesh] @ $;
GPUMeshBufferMeshVertexInfo mMeshVertexInfo[mMeshHeader.mNumMesh] @ $;
u32 mInfluenceID[mMeshHeader.mNumInfluence] @ $;

MorphSetHeader mMorphHeader @ addressof(mHeader.mMorphSet) + mHeader.mMorphSet;
u64 mMorphAnimationTargetFlag[mMorphHeader.mNumAnimationTarget] @ $;
MorphSetMorph mMorph[mMorphHeader.mNumMorph] @ $;
u32 mMorphAnimationInitialize[mMorphHeader.mNumAnimationTarget] @ $;

// ---
MaterialSetHeader mMaterialHeader @ addressof(mHeader.mMaterialSet) + mHeader.mMaterialSet;
u64 mMaterialAnimationTargetFlag[mMaterialHeader.mNumAnimationTarget] @ $;

MaterialSetMaterial mMaterial[mMaterialHeader.mNumMaterial] @ $;
MaterialSetLayer mLayer[mMaterialHeader.mNumLayer] @ $;

MaterialSetMaterialInfo mMaterialInfo[mMaterialHeader.mNumMaterial] @ $;

MaterialSetMaterialAnimation mMaterialAnimationInitialize[mMaterialHeader.mNumAnimationMaterial] @ $;
MaterialSetLayerAnimation mLayerAnimationInitialize[mMaterialHeader.mNumAnimationLayer] @ $;

u16 mIndexFromMaterialAnimation[mMaterialHeader.mNumAnimationMaterial] @ $;
u16 mIndexFromLayerAnimation[mMaterialHeader.mNumAnimationLayer] @ $;

MaterialSetTextureName mTextureName[mMaterialHeader.mNumTexture] @ $; // WIP
// ---

ParticleSetHeader mParticleHeader @ addressof(mHeader.mParticleSet) + mHeader.mParticleSet;
//u64 mParticleAnimationTargetFlag[mParticleHeader.mNumAnimationTarget] @ $;
//ParticleSetParticle mParticle[mParticleHeader.mNumParticle] @ $;
//ParticleSetParticleAnimation mParticleAnimationInitialize[mParticleHeader.mNumAnimationTarget] @ $;
//ParticleSetParticleField mParticleField[mParticleHeader.mNumParticleField] @ 0x72C;

LightSetHeader mLightHeader @ addressof(mHeader.mLightSet) + mHeader.mLightSet;
//u64 mLightSetAnimationTargetFlag[mLightHeader.mNumAnimationTarget] @ $;
//LightSetLight mLight[mLightHeader.mNumLight] @ $;
//LightSetLightAnimation mLightAnimationInitialize[mLightHeader.mNumLight] @ $;

CameraSetHeader mCameraHeader @ addressof(mHeader.mCameraSet) + mHeader.mCameraSet;

LineSetHeader mLineHeader @ addressof(mHeader.mLineSet) + mHeader.mLineSet;
//LineSetLine mLine[mLineHeader.mNumLine] @ $;