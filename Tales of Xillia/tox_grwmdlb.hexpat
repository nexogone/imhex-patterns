#pragma author NeXoGone
#pragma description Tales of Xillia (PS3) - Growth Model Binary (.GRWMDLB)
#pragma endian big
// Last update: Nov 25, 2025

#include <std/string>

using NullString = std::string::NullString;

struct Vector3f {
  float x, y, z;
};

struct Color {
  float r, g, b, a;
};

struct GrowthModelNodeData {
  u32 mID;
  u32 mType;
  u32 mTypeInID;
  float mDepth;
  u32 mDepthType;
  u32 mDepthInID;
  u32 mTransformOffset;

  if (mTransformOffset > 0) {
    NullString mTransform @ addressof(mTransformOffset) + mTransformOffset;
  }

  float mCollisionRadius;
  float mAbsorbRadius;
  Vector3f mPosition;
  u32 mLineListOffset;
  u32 mLineListCount;
  u32 mLineList[mLineListCount] @ addressof(mLineListOffset) + mLineListOffset;
  u32 mPlaneListOffset;
  u32 mPlaneListCount;
  u32 mPlaneList[mPlaneListCount] @ addressof(mPlaneListOffset) + mPlaneListOffset;
  u32 mVirtualNodeListOffset;
  u32 mVirtualNodeListCount;
  u32 mVirtualNodeList[mVirtualNodeListCount] @ addressof(mVirtualNodeListOffset) + mVirtualNodeListOffset;
  u32 mDirectionNodeListOffset;
  u32 mDirectionNodeListCount;
  u32 mDirectionNodeList[mDirectionNodeListCount] @ addressof(mDirectionNodeListOffset) + mDirectionNodeListOffset;
};

struct GrowthNodePair {
  u32 mNode1;
  u32 mNode2;
};

struct GrowthModelLineData {
  u32 mID;
  u32 mDirection;
  u32 mModelID;
  float mDepth;
  u32 mDepthType;
  GrowthNodePair mNodePair;
  float mDistance;
  u32 mPlaneListOffset;
  u32 mPlaneListCount;
  u32 mPlaneList[mPlaneListCount] @ addressof(mPlaneListOffset) + mPlaneListOffset;
};

struct GrowthModelPlaneData {
  u32 mID;
  u32 mModelID;
  u32 mSkillNodeID;
  float mDepth;
  u32 mDepthType;
  Vector3f mMidpoint;
  u32 mNodeListOffset;
  u32 mNodeListCount;
  u32 mNodeList[mNodeListCount] @ addressof(mNodeListOffset) + mNodeListOffset;
  u32 mLineListOffset;
  u32 mLineListCount;
  u32 mLineList[mLineListCount] @ addressof(mLineListOffset) + mLineListOffset;
};

struct GrowthModelSkillNodeData {
  u32 mID;
  u32 mPlaneID;
  u32 mType;
  u32 mTypeInID;
  float mDepth;
  u32 mDepthType;
  u32 mDepthInID;
  u32 mTransformOffset;

  if (mTransformOffset > 0) {
    NullString mTransform @ addressof(mTransformOffset) + mTransformOffset;
  }

  float mCollisionRadius;
  float mAbsorbRadius;
};

struct GrowthModelBuildData {
  u32 mID;
  float mAngle;
  u32 mInNodeListOffset;
  u32 mInNodeListCount;
  u32 mInNodeList[mInNodeListCount] @ addressof(mInNodeListOffset) + mInNodeListOffset;
  u32 mInLineListOffset;
  u32 mInLineListCount;
  u32 mInLineList[mInLineListCount] @ addressof(mInLineListOffset) + mInLineListOffset;
  u32 mInPlaneListOffset;
  u32 mInPlaneListCount;
  u32 mInPlaneList[mInPlaneListCount] @ addressof(mInPlaneListOffset) + mInPlaneListOffset;
  u32 mInSkillNodeListOffset;
  u32 mInSkillNodeListCount;
  u32 mInSkillNodeList[mInSkillNodeListCount] @ addressof(mInSkillNodeListOffset) + mInSkillNodeListOffset;
};

struct GrowthModelWidgetData {
  u32 mID;
  u32 mFileNameOffset;

  if (mFileNameOffset > 0) {
    NullString mFileName @ addressof(mFileNameOffset) + mFileNameOffset;
  }
};

struct GrowthAnimationRange {
  float mBegin;
  float mEnd;
};

struct GrowthModelHorizontalLineModelData {
  u32 mID;
  u32 mWidgetID;
  float mDepth;
  u32 mDepthType;
  u32 mMoveLocatorOffset;

  if (mMoveLocatorOffset > 0) {
    NullString mMoveLocator @ addressof(mMoveLocatorOffset) + mMoveLocatorOffset;
  }

  u32 mAlphaUVMaterialOffset;

  if (mAlphaUVMaterialOffset > 0) {
    NullString mAlphaUVMaterial @ addressof(mAlphaUVMaterialOffset) + mAlphaUVMaterialOffset;
  }

  float mBaseSpeed;
  float mMotionSpeed;
  GrowthAnimationRange mInitialRange;
  GrowthAnimationRange mReleaseRnage;
  GrowthAnimationRange mLeftToRightRange;
  GrowthAnimationRange mLeftToRightMoveRange;
  GrowthAnimationRange mRightToLeftRange;
  GrowthAnimationRange mRightToLeftMoveRange;
};

struct GrowthModelVerticalLineModelData {
  u32 mID;
  u32 mWidgetID;
  float mDepth;
  u32 mDepthType;
  u32 mMoveLocatorOffset;

  if (mMoveLocatorOffset > 0) {
    NullString mMoveLocator @ addressof(mMoveLocatorOffset) + mMoveLocatorOffset;
  }

  u32 mAlphaUVMaterialOffset;

  if (mAlphaUVMaterialOffset > 0) {
    NullString mAlphaUVMaterial @ addressof(mAlphaUVMaterialOffset) + mAlphaUVMaterialOffset;
  }

  float mBaseSpeed;
  float mMotionSpeed;
  GrowthAnimationRange mInitialRange;
  GrowthAnimationRange mReleaseRnage;
  GrowthAnimationRange mDownToTopRange;
  GrowthAnimationRange mDownToTopMoveRange;
  GrowthAnimationRange mTopToDownRange;
  GrowthAnimationRange mTopToDownMoveRange;
};

struct GrowthReplaceTexture {
  u32 mTargetOffset;

  if (mTargetOffset > 0) {
    NullString mTarget @ addressof(mTargetOffset) + mTargetOffset;
  }

  u32 mReplaceOffset;

  if (mReplaceOffset > 0) {
    NullString mReplace @ addressof(mReplaceOffset) + mReplaceOffset;
  }
};

struct GrowthModelPlaneModelData {
  u32 mID;
  u32 mWidgetID;
  u32 mNodeLocatorOffset;

  if (mNodeLocatorOffset > 0) {
    NullString mNodeLocator @ addressof(mNodeLocatorOffset) + mNodeLocatorOffset;
  }

  float mDepth;
  u32 mDepthType;
  float mMotionSpeed;
  GrowthAnimationRange mHideRange;
  GrowthAnimationRange mTriggerRange;
  GrowthAnimationRange mReleasedRange;
  u32 mReplaceTextureListOffset;
  u32 mReplaceTextureListCount;
  GrowthReplaceTexture mReplaceTextureList[mReplaceTextureListCount] @ addressof(mReplaceTextureListOffset) + mReplaceTextureListOffset;
};

struct GrowthModelGrowUpModelData {
  u32 mID;
  u32 mWidgetID;
  float mDepth;
  u32 mDepthType;
  float mMotionSpeed;
  GrowthAnimationRange mTriggerRange;
  float mGenerateTime;
  float mCollisionRate;
  u32 mCollisionNodePairListOffset;
  u32 mCollisionNodePairListCount;
  GrowthNodePair mCollisionNodePairList[mCollisionNodePairListCount] @ addressof(mCollisionNodePairListOffset) + mCollisionNodePairListOffset;
  u32 mTerrainOffset;

  if (mTerrainOffset > 0) {
    NullString mTerrain @ addressof(mTerrainOffset) + mTerrainOffset;
  }

  u32 mLevel;
  GrowthAnimationRange mAlphaEraseRange;
  GrowthAnimationRange mLoopRange;
};

struct GrowthModelIconModelData {
  u32 mID;
  u32 mWidgetID;
  u32 mType;
  float mScale;
  Color mColor;
};

struct GrowthModelEffectModelData {
  u32 mID;
  u32 mWidgetID;
  float mMotionSpeed;
  u32 mAnimationType;
  GrowthAnimationRange mAnimationRange;
};

struct Single {
  float m_value;
};

struct GrowthModelFlowerModelData {
  u32 mID;
  u32 mWidgetID;
  GrowthReplaceTexture mReplaceTexture;
  u32 mMotionSpeedListOffset;
  u32 mMotionSpeedListCount;
  Single mMotionSpeedList[mMotionSpeedListCount] @ addressof(mMotionSpeedListOffset) + mMotionSpeedListOffset;
  u32 mLoopAnimationRangeOffset;
  u32 mLoopAnimationRangeCount;
  GrowthAnimationRange mLoopAnimationRange[mLoopAnimationRangeCount] @ addressof(mLoopAnimationRangeOffset) + mLoopAnimationRangeOffset;
  u32 mTriggerAnimationRangeOffset;
  u32 mTriggerAnimationRangeCount;
  GrowthAnimationRange mTriggerAnimationRange[mTriggerAnimationRangeCount] @ addressof(mTriggerAnimationRangeOffset) + mTriggerAnimationRangeOffset;
};

struct GrowthModelCameraData {
  u32 mID;
  u32 mLevel;
  u32 mPositionMethod;
  u32 mBaseID;
  float mValue;
  float mRadius;
  u32 unk1; // Unknown
  // u32 mNodeListOffset;
  // u32 mNodeListCount;
  // u32 mNodeList[mNodeListCount] @ addressof(mNodeListOffset) + mNodeListOffset;
};

struct GrowthCameraZoom {
  u32 mCalculateMethod;
  u32 mCollisionID;
  u32 mDistanceMethod;
  float mLength;
};

struct GrowthModelCameraEnvironmentData {
  u32 mID;
  u32 mLevel;
  float mHorizontalAngle;
  float mVerticalAngle;
  Vector3f mOrigin;
  Vector3f mMaximum;
  float mMaxSpeedRate;
  //u32 mZoomListOffset;
  u32 mZoomListCount;
  GrowthCameraZoom mZoomList[1];
};

struct GrowthModelEggModelData {
  u32 mID;
  u32 mWidgetID;
  s32 mRenderPriority;
  float mMotionSpeed;
  u32 mAnimationType;
  GrowthAnimationRange mAnimationRange;
};

struct GrowthEdge {
  u32 mGroup;
  u32 mLineListOffset;
  u32 mLineListCount;
  u32 mLineList[mLineListCount] @ addressof(mLineListOffset) + mLineListOffset;
};

struct GrowthModelEdgeData {
  u32 mLevel;
  u32 mEdgeDataListOffset;
  u32 mEdgeDataListCount;
  GrowthEdge mEdgeDataList[mEdgeDataListCount] @ addressof(mEdgeDataListOffset) + mEdgeDataListOffset;
};

struct GrowthModelHexagonData {
  u32 mLevel;
  u32 mPlaneIDListOffset;
  u32 mPlaneIDListCount;
  u32 mPlaneIDList[mPlaneIDListCount] @ addressof(mPlaneIDListOffset) + mPlaneIDListOffset;
};

u32 mNodeDataListOffset @ $;
u32 mNodeDataListCount @ $;

u32 mLineDataListOffset @ $;
u32 mLineDataListCount @ $;

u32 mPlaneDataListOffset @ $;
u32 mPlaneDataListCount @ $;

u32 mSkillNodeDataListOffset @ $;
u32 mSkillNodeDataListCount @ $;

u32 mBuildDataListOffset @ $;
u32 mBuildDataListCount @ $;

u32 mWidgetDataListOffset @ $;
u32 mWidgetDataListCount @ $;

u32 mHorizontalLineModelDataListOffset @ $;
u32 mHorizontalLineModelDataListCount @ $;

u32 mVerticalLineModelDataListOffset @ $;
u32 mVerticalLineModelDataListCount @ $;

u32 mPlaneModelDataListOffset @ $;
u32 mPlaneModelDataListCount @ $;

u32 mGrowUpModelDataListOffset @ $;
u32 mGrowUpModelDataListCount @ $;

u32 mIconModelDataListOffset @ $;
u32 mIconModelDataListCount @ $;

u32 mEffectModelDataListOffset @ $;
u32 mEffectModelDataListCount @ $;

u32 mFlowerModelDataListOffset @ $;
u32 mFlowerModelDataListCount @ $;

u32 mCameraDataListOffset @ $;
u32 mCameraDataListCount @ $;

u32 mCameraEnvironmentDataListOffset @ $;
u32 mCameraEnvironmentDataListCount @ $;

u32 mEggModelDataListOffset @ $;
u32 mEggModelDataListCount @ $;

u32 mEdgeDataListOffset @ $;
u32 mEdgeDataListCount @ $;

u32 mHexagonDataListOffset @ $;
u32 mHexagonDataListCount @ $;

GrowthModelNodeData mNodeDataList[mNodeDataListCount] @ addressof(mNodeDataListOffset) + mNodeDataListOffset;
GrowthModelLineData mLineDataList[mLineDataListCount] @ addressof(mLineDataListOffset) + mLineDataListOffset;
GrowthModelPlaneData mPlaneDataList[mPlaneDataListCount] @ addressof(mPlaneDataListOffset) + mPlaneDataListOffset;
GrowthModelSkillNodeData mSkillNodeDataList[mSkillNodeDataListCount] @ addressof(mSkillNodeDataListOffset) + mSkillNodeDataListOffset;
GrowthModelBuildData mBuildDataList[mBuildDataListCount] @ addressof(mBuildDataListOffset) + mBuildDataListOffset;
GrowthModelWidgetData mWidgetDataList[mWidgetDataListCount] @ addressof(mWidgetDataListOffset) + mWidgetDataListOffset;
GrowthModelHorizontalLineModelData mHorizontalLineModelDataList[mHorizontalLineModelDataListCount] @ addressof(mHorizontalLineModelDataListOffset) + mHorizontalLineModelDataListOffset;
GrowthModelVerticalLineModelData mVerticalLineModelDataList[mVerticalLineModelDataListCount] @ addressof(mVerticalLineModelDataListOffset) + mVerticalLineModelDataListOffset;
GrowthModelPlaneModelData mPlaneModelDataList[mPlaneModelDataListCount] @ addressof(mPlaneModelDataListOffset) + mPlaneModelDataListOffset;
GrowthModelGrowUpModelData mGrowUpModelDataList[mGrowUpModelDataListCount] @ addressof(mGrowUpModelDataListOffset) + mGrowUpModelDataListOffset;
GrowthModelIconModelData mIconModelDataList[mIconModelDataListCount] @ addressof(mIconModelDataListOffset) + mIconModelDataListOffset;
GrowthModelEffectModelData mEffectModelDataList[mEffectModelDataListCount] @ addressof(mEffectModelDataListOffset) + mEffectModelDataListOffset;
GrowthModelFlowerModelData mFlowerModelDataList[mFlowerModelDataListCount] @ addressof(mFlowerModelDataListOffset) + mFlowerModelDataListOffset;
GrowthModelCameraData mCameraDataList[mCameraDataListCount] @ addressof(mCameraDataListOffset) + mCameraDataListOffset;
//GrowthModelCameraEnvironmentData mCameraEnvironmentDataList[mCameraEnvironmentDataListCount] @ addressof(mCameraEnvironmentDataListOffset) + mCameraEnvironmentDataListOffset;
GrowthModelEggModelData mEggModelDataList[mEggModelDataListCount] @ addressof(mEggModelDataListOffset) + mEggModelDataListOffset;
GrowthModelEdgeData mEdgeDataList[mEdgeDataListCount] @ addressof(mEdgeDataListOffset) + mEdgeDataListOffset;
GrowthModelHexagonData mHexagonDataList[mHexagonDataListCount] @ addressof(mHexagonDataListOffset) + mHexagonDataListOffset;