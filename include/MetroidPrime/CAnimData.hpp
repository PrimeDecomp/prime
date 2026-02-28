#ifndef _CANIMDATA
#define _CANIMDATA

#include "types.h"

#include "Kyoto/Animation/CBoolPOINode.hpp"
#include "Kyoto/Animation/CCharacterInfo.hpp"
#include "Kyoto/Animation/CInt32POINode.hpp"
#include "Kyoto/Animation/CParticlePOINode.hpp"
#include "Kyoto/Animation/CSoundPOINode.hpp"
#include "MetroidPrime/ActorCommon.hpp"
#include "MetroidPrime/CAdditiveAnimPlayback.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CHierarchyPoseBuilder.hpp"
#include "MetroidPrime/CParticleDatabase.hpp"
#include "MetroidPrime/CPoseAsTransforms.hpp"

#include "Kyoto/Animation/CCharAnimTime.hpp"
#include "Kyoto/Animation/CCharLayoutInfo.hpp"
#include "Kyoto/Animation/CSkinnedModel.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/set.hpp"

class CAnimationManager;
class CAnimSysContext;
class CAnimTreeNode;
class CCharacterFactory;
class CCharLayoutInfo;
class CRandom16;
class CSegIdList;
class CSegStatementSet;
class CSkinnedModel;
class CSkinnedModelWithAvgNormals;
class CTransitionManager;
class CVertexMorphEffect;
class CModelFlags;
class CPrimitive;
class CFrustumPlanes;

struct SAdvancementDeltas;
struct SAdvancementResults;

class CAnimData {
public:
  enum EAnimDir {
    kAD_Forward,
    kAD_Backward,
  };

  CAnimData(uint, const CCharacterInfo&, int, int, bool, const TLockedToken< CCharLayoutInfo >&,
            const TToken< CSkinnedModel >&, const rstl::optional_object< TLockedToken< CSkinnedModelWithAvgNormals > >&,
            const rstl::ncrc_ptr< CAnimSysContext >&, const rstl::rc_ptr< CAnimationManager >&,
            const rstl::rc_ptr< CTransitionManager >&, const TLockedToken< CCharacterFactory >&);
  ~CAnimData();

  void PreRender();
  void EnableLooping(bool v) {
    x220_25_loop = v;
    x220_24_animating = true;
  }

  const TLockedToken< CSkinnedModel >& GetModelData() const { return xd8_modelData; }

  void SetIsAnimating(bool v) { x220_24_animating = v; }
  void SetParticleEffectState(const rstl::string& name, bool active, CStateManager& mgr);

  int GetCharacterIndex() const { return x204_charIdx; }
  float GetAverageVelocity(int idx) const;

  const CBoolPOINode* GetBoolPOIList(int& count) const {
    count = x20c_passedBoolCount;
    return mBoolPOINodes.data();
  }
  const CInt32POINode* GetInt32POIList(int& count) const {
    count = x210_passedIntCount;
    return mInt32POINodes.data();
  }
  const CParticlePOINode* GetParticlePOIList(int& count) const {
    count = x214_passedParticleCount;
    return mParticlePOINodes.data();
  }
  const CSoundPOINode* GetSoundPOIList(int& count) const {
    count = x218_passedSoundCount;
    return mSoundPOINodes.data();
  }
  CParticleDatabase& GetParticleDB() { return x120_particleDB; }
  const CParticleDatabase& GetParticleDB() const { return x120_particleDB; }
  // SetIsAnimating__9CAnimDataFb
  // SetAnimDir__9CAnimDataFQ29CAnimData8EAnimDir
  CAABox GetBoundingBox() const;
  CAABox GetBoundingBox(const CTransform4f& xf) const;
  CSegId GetLocatorSegId(const rstl::string& name) const;
  void ResetPOILists();
  // GetAverageVelocity__9CAnimDataCFi
  void AdvanceParticles(const CTransform4f&, float, const CVector3f&, CStateManager&);
  void PoseSkinnedModel(const CSkinnedModel&, const CPoseAsTransforms&,
                        const rstl::optional_object< CVertexMorphEffect >&, const float*) const;
  void DrawSkinnedModel(const CSkinnedModel&, const CModelFlags&) const;
  // InitializeCache__9CAnimDataFv
  // FreeCache__9CAnimDataFv
  void SetInfraModel(const TLockedToken< CModel >&, const TLockedToken< CSkinRules >&);
  void SetXRayModel(const TLockedToken< CModel >&, const TLockedToken< CSkinRules >&);
  void SubstituteModelData(const TCachedToken< CSkinnedModel >&);
  void AdvanceAnim(CCharAnimTime&, CVector3f&, CQuaternion&);
  SAdvancementDeltas Advance(float, const CVector3f&, CStateManager&, TAreaId, bool);
  SAdvancementDeltas AdvanceIgnoreParticles(float, CRandom16&, bool);
  SAdvancementDeltas DoAdvance(float, bool&, CRandom16&, bool);
  void SetAnimation(const CAnimPlaybackParms& parms, const bool noTrans);
  void GetAnimationPrimitives(const CAnimPlaybackParms& parms,
                              rstl::set< CPrimitive >& primsOut) const;
  static void PrimitiveSetToTokenVector(const rstl::set< CPrimitive >&,
                                        rstl::vector< CToken >&, bool);
  void BuildPose();
  // PreRender__9CAnimDataFv
  void SetupRender(const CSkinnedModel&, const rstl::optional_object< CVertexMorphEffect >&,
                   const float*) const;
  // Render__9CAnimDataCFRC13CSkinnedModelRC11CModelFlagsRCQ24rstl37optional_object<18CVertexMorphEffect>PCf
  void Render(const CSkinnedModel&, const CModelFlags&,
              const rstl::optional_object< CVertexMorphEffect >&, const float*) const;
  void RenderAuxiliary(const CFrustumPlanes&) const;
  void RecalcPoseBuilder(const CCharAnimTime*) const;
  float GetAnimationDuration(int animIn) const;
  float GetAnimTimeRemaining(const rstl::string& name) const;
  // IsAnimTimeRemaining__9CAnimDataCFfRCQ24rstl66basic_string<c,Q24rstl14char_traits<c>,Q24rstl17rmemory_allocator>
  bool IsAnimTimeRemaining(float, const rstl::string&) const;
  CTransform4f GetLocatorTransform(const rstl::string&, const CCharAnimTime*) const;
  CTransform4f GetLocatorTransform(CSegId, const CCharAnimTime*) const;
  void CalcPlaybackAlignmentParms(const CAnimPlaybackParms&, const rstl::ncrc_ptr< CAnimTreeNode >&);
  void SetRandomPlaybackRate(CRandom16& random);
  void SetPlaybackRate(float set);
  void MultiplyPlaybackRate(float scale);
  CCharAnimTime GetTimeOfUserEvent(EUserEventType type, const CCharAnimTime& time) const;
  // GetAdvancementDeltas__9CAnimDataCFRC13CCharAnimTimeRC13CCharAnimTime
  void Touch(const CSkinnedModel&, int) const;
  void InitializeEffects(CStateManager&, TAreaId, const CVector3f&);
  // SetPhase__9CAnimDataFf -> SetPhase__11IAnimReaderFf
  void SetPhase(float ph);
  void AddAdditiveAnimation(uint idx, float weight, bool active, bool fadeOut);
  void DelAdditiveAnimation(uint idx);
  bool IsAdditiveAnimation(uint idx) const;
  const rstl::rc_ptr< CAnimTreeNode >& GetAdditiveAnimationTree(uint idx) const;
  const rstl::ncrc_ptr< CAnimTreeNode >& GetRootAnimationTree() const;
  // GetAnimationTree__9CAnimDataCFv
  // AnimationTree__9CAnimDataFv
  // IsAdditiveAnimation__9CAnimDataCFUi
  bool IsAdditiveAnimationAdded(uint idx) const;
  SAdvancementDeltas UpdateAdditiveAnims(float);
  SAdvancementDeltas AdvanceAdditiveAnims(float);
  static SAdvancementResults AdvanceAdditiveAnim(rstl::rc_ptr< CAnimTreeNode >&,
                                                 const CCharAnimTime&);
  void AddAdditiveSegData(const CSegIdList&, CSegStatementSet&) const;
  int GetEventResourceIdForAnimResourceId(int id) const;
  rstl::rc_ptr< CAnimationManager > GetAnimationManager();
  // SetPoseValid__9CAnimDataFb

  float GetAdditiveAnimationWeight(uint idx);

  short GetCurrentAnimation() const { return x208_currentAnim; }
  const CCharacterInfo& GetCharacterInfo() const { return xc_charInfo; }
  const CCharLayoutInfo* GetCharLayoutInfo() const { return *xcc_layoutData; }
  // GetDeltaRotation__9CAnimDataCFv
  // GetDeltaOffset__9CAnimDataCFv
  // IsDeltaOffsetInUse__9CAnimDataCFv
  // GetAdvancementDeltas__19CAdvancementResultsCFv
  // SetDeltaRotation__9CAnimDataFRC11CQuaternionb
  // SetDeltaOffset__9CAnimDataFRC9CVector3fb
  // SetDeltaOffsetInUse__9CAnimDataFv
  // IsDeltaRotationInUse__9CAnimDataCFv
  // IsDeltaOffsetPrimed__9CAnimDataCFv
  // GetAnimDir__9CAnimDataCFv
  // GetIsLoop__9CAnimDataCFv
  // IsAnimating__9CAnimDataCFv
  // SetPoseBuilderValid__9CAnimDataFb
  rstl::rc_ptr< CAnimationManager > GetAnimationManager() const;
  // GetPoseValid__9CAnimDataCFv
  // GetPoseBuilderValid__9CAnimDataCFv
  rstl::ncrc_ptr< CAnimSysContext > GetAnimSysContext() const;
  // CacheInt32PoiList__9CAnimDataFRC13CCharAnimTimeiRCQ24rstl25ncrc_ptr<13CAnimTreeNode>

  const rstl::optional_object< TLockedToken< CSkinnedModelWithAvgNormals > >& GetIceModel() const { return xe4_iceModelData; }
  const CPASDatabase& GetPASDatabase() const { return xc_charInfo.GetPASDatabase(); }
  // EnableLooping__9CAnimDataFb
  // GetSkinnedModel__9CAnimDataCFv
  // GetXRayModel__9CAnimDataCFv
  // GetInfraModel__9CAnimDataCFv
  // GetPose__9CAnimDataCFv
  // PoseBuilder__9CAnimDataCFv
  // GetPlaybackRate__9CAnimDataCFv
  // Pose__9CAnimDataFv
  // GetPoseBuilder__9CAnimDataCFv

  // CacheSoundPoiList__9CAnimDataFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC13CCharAnimTimei
  // CacheParticlePoiList__9CAnimDataFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC13CCharAnimTimei
  // CacheBoolPoiList__9CAnimDataFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC13CCharAnimTimei
  // CacheInt32PoiList__9CAnimDataFRCQ24rstl25ncrc_ptr<13CAnimTreeNode>RC13CCharAnimTimei

  void SetParticleLightIdx(int lightIdx) { x21c_particleLightIdx = lightIdx; }

  static void InitializeCache();
  static void FreeCache();

private:
  TLockedToken< CCharacterFactory > x0_charFactory;
  CCharacterInfo xc_charInfo;
  TLockedToken< CCharLayoutInfo > xcc_layoutData;
  TLockedToken< CSkinnedModel > xd8_modelData;
  rstl::optional_object< TLockedToken< CSkinnedModelWithAvgNormals > > xe4_iceModelData;
  rstl::rc_ptr< CSkinnedModel > xf4_xrayModel;
  rstl::rc_ptr< CSkinnedModel > xf8_infraModel;
  rstl::ncrc_ptr< CAnimSysContext > xfc_animCtx;
  rstl::rc_ptr< CAnimationManager > x100_animMgr;
  EAnimDir x104_animDir;
  CAABox x108_aabb;
  CParticleDatabase x120_particleDB;
  CAssetId x1d8_selfId;
  CVector3f x1dc_alignPos;
  CQuaternion x1e8_alignRot;
  rstl::ncrc_ptr< CAnimTreeNode > x1f8_animRoot;
  rstl::rc_ptr< CTransitionManager > x1fc_transMgr;
  float x200_speedScale;
  int x204_charIdx;
  short x208_currentAnim;
  short x20a_padding;
  int x20c_passedBoolCount;
  int x210_passedIntCount;
  int x214_passedParticleCount;
  int x218_passedSoundCount;
  int x21c_particleLightIdx;
  uchar x220_24_animating : 1;
  uchar x220_25_loop : 1;
  uchar x220_26_aligningPos : 1;
  uchar x220_27_ : 1;
  uchar x220_28_ : 1;
  uchar x220_29_animationJustStarted : 1;
  uchar x220_30_poseBuilt : 1;
  uchar x220_31_poseCached : 1;
  CPoseAsTransforms x224_pose;
  CHierarchyPoseBuilder x2fc_poseBuilder;
  CAnimPlaybackParms x40c_playbackParms;
  rstl::reserved_vector< rstl::pair< uint, CAdditiveAnimPlayback >, 8 > x434_additiveAnims;

  static rstl::reserved_vector< CBoolPOINode, 8 > mBoolPOINodes;
  static rstl::reserved_vector< CInt32POINode, 16 > mInt32POINodes;
  static rstl::reserved_vector< CParticlePOINode, 20 > mParticlePOINodes;
  static rstl::reserved_vector< CSoundPOINode, 20 > mSoundPOINodes;
  // in cpp -> rstl::reserved_vector< CInt32POINode, 16 > sInt32TransientCache;
};
CHECK_SIZEOF(CAnimData, 0x434 + 0x144)

#endif // _CANIMDATA
