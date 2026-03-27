#include "MetroidPrime/CAnimData.hpp"

#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "Kyoto/Animation/CAnimTreeTweenBase.hpp"
#include "Kyoto/Animation/CAnimationManager.hpp"
#include "Kyoto/Animation/CFBStreamedCompression.hpp"
#include "Kyoto/Animation/CPrimitive.hpp"
#include "Kyoto/Animation/CSegIdList.hpp"
#include "Kyoto/Animation/CSegStatementSet.hpp"
#include "Kyoto/Animation/CTransitionManager.hpp"
#include "Kyoto/Animation/IMetaAnim.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "MetroidPrime/Factories/CCharacterFactory.hpp"

#include <math.h>

#include "Kyoto/Math/CloseEnough.hpp"

#include "rstl/algorithm.hpp"
#include "rstl/math.hpp"

typedef rstl::vector< rstl::pair< rstl::string, CAABox > > TAabbList;
typedef rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > > TEffectList;

static TAabbList::const_iterator FindByKeyAabb(const TAabbList& container,
                                               const rstl::string& key) {
  return rstl::binary_find(container.begin(), container.end(), key,
                           rstl::default_pair_sorter_finder< TAabbList >());
}

static TEffectList::const_iterator FindByKeyEffect(const TEffectList& container,
                                                   const rstl::string& key) {
  return rstl::binary_find(container.begin(), container.end(), key,
                           rstl::default_pair_sorter_finder< TEffectList >());
}

rstl::reserved_vector< CBoolPOINode, 8 > CAnimData::mBoolPOINodes;
rstl::reserved_vector< CInt32POINode, 16 > CAnimData::mInt32POINodes;
rstl::reserved_vector< CParticlePOINode, 20 > CAnimData::mParticlePOINodes;
rstl::reserved_vector< CSoundPOINode, 20 > CAnimData::mSoundPOINodes;
static rstl::reserved_vector< CInt32POINode, 16 > sInt32TransientCache;
static int skPOICacheReferenceCount;
static CInt32POINode* sInt32TransientCacheData;

rstl::ncrc_ptr< CAnimTreeNode > Cast(const rstl::ownership_transfer< IAnimReader >& ptr);

extern const int lbl_805AE3D8;
extern const int lbl_805AE3DC;

class CAnimTreeBlend : public CAnimTreeTweenBase {
public:
  static rstl::string CreatePrimitiveName(const rstl::ncrc_ptr< CAnimTreeNode >&,
                                          const rstl::ncrc_ptr< CAnimTreeNode >&, float);

  CAnimTreeBlend(bool b1, const rstl::ncrc_ptr< CAnimTreeNode >& a,
                 const rstl::ncrc_ptr< CAnimTreeNode >& b, float blendWeight,
                 const rstl::string& name)
  : CAnimTreeTweenBase(b1, a, b, lbl_805AE3D8 | lbl_805AE3DC, name), x24_blendWeight(blendWeight) {}

  SAdvancementResults VAdvanceView(const CCharAnimTime& dt);
  CCharAnimTime VGetTimeRemaining() const;
  CSteadyStateAnimInfo VGetSteadyStateAnimInfo() const;
  rstl::ownership_transfer< IAnimReader > VClone() const;
  void SetBlendingWeight(float w);
  float VGetBlendingWeight() const;

private:
  float x24_blendWeight;
};

namespace rstl {
template <>
void uninitialized_fill_n< CInt32POINode*, CInt32POINode >(CInt32POINode* dest, int n,
                                                           const CInt32POINode& value) {
  int count = *reinterpret_cast< int* >(dest);
  if (count < n) {
    int fillCount = n - count;
    CInt32POINode* cur =
        reinterpret_cast< CInt32POINode* >(reinterpret_cast< uchar* >(dest) + count * 0x4c + 4);

    for (int i = 0; i < fillCount; ++i, ++cur) {
      construct(cur, value);
    }
  }

  *reinterpret_cast< int* >(dest) = n;
}
} // namespace rstl

void CAnimData::InitializeCache() {
  CInt32POINode* transientData =
      reinterpret_cast< CInt32POINode* >(reinterpret_cast< uchar* >(&sInt32TransientCache) + 4);
  sInt32TransientCache.clear();

  rstl::uninitialized_fill_n< CInt32POINode*, CInt32POINode >(
      reinterpret_cast< CInt32POINode* >(&sInt32TransientCache), 16,
      CInt32POINode(rstl::string_l(""), kPT_EmptyInt32, CCharAnimTime(0.f), -1, false, 1.f, -1, 0,
                    0, rstl::string_l("root")));

  sInt32TransientCacheData = transientData;
}

void CAnimData::FreeCache() {
  sInt32TransientCache.clear();
  sInt32TransientCacheData = static_cast< CInt32POINode* >(0);
}

void CAnimData::SubstituteModelData(const TCachedToken< CSkinnedModel >& model) {
  static_cast< CToken& >(xd8_modelData) = static_cast< const CToken& >(model);
  *reinterpret_cast< CSkinnedModel** >(reinterpret_cast< uchar* >(&xd8_modelData) + 8) =
      model.GetObject();

  xd8_modelData->CalculateDefault();
  x108_aabb = CAABox::MakeMaxInvertedBox();

  struct SSkinRulesHack {
    uchar x0_pad[0x10];
    int x10_vertexCount;
  };

  const CVector3f* pointItr =
      reinterpret_cast< const CVector3f* >(xd8_modelData->GetModel()->GetPositions());
  int i = 0;
  while (i < reinterpret_cast< const SSkinRulesHack* >(
                 *reinterpret_cast< const void* const* >(
                     reinterpret_cast< const uchar* >(*xd8_modelData) + 0x18))
                 ->x10_vertexCount) {
    x108_aabb.AccumulateBounds(*pointItr);
    pointItr += 1;
    ++i;
  }
}

void CAnimData::SetInfraModel(const TLockedToken< CModel >& model,
                              const TLockedToken< CSkinRules >& skinRules) {
  CSkinnedModel* skinnedModel = rs_new CSkinnedModel(
      model, skinRules, xd8_modelData->GetLayoutInfo(), CSkinnedModel::kDO_Owned);
  skinnedModel->CalculateDefault();
  xf8_infraModel = rstl::rc_ptr< CSkinnedModel >(skinnedModel);
}

void CAnimData::SetXRayModel(const TLockedToken< CModel >& model,
                             const TLockedToken< CSkinRules >& skinRules) {
  CSkinnedModel* skinnedModel = rs_new CSkinnedModel(
      model, skinRules, xd8_modelData->GetLayoutInfo(), CSkinnedModel::kDO_Owned);
  skinnedModel->CalculateDefault();
  xf4_xrayModel = rstl::rc_ptr< CSkinnedModel >(skinnedModel);
}

static uchar GetSegIdCountFromLayout(const TLockedToken< CCharLayoutInfo >& layoutData) {
  return *reinterpret_cast< const uchar* >(reinterpret_cast< const uchar* >(*layoutData) + 0xc);
}

CAnimData::CAnimData(
    uint selfId, const CCharacterInfo& charInfo, int defaultAnim, int charIdx, bool loop,
    const TLockedToken< CCharLayoutInfo >& layoutData, const TToken< CSkinnedModel >& modelData,
    const rstl::optional_object< TLockedToken< CSkinnedModelWithAvgNormals > >& iceModelData,
    const rstl::ncrc_ptr< CAnimSysContext >& animCtx,
    const rstl::rc_ptr< CAnimationManager >& animMgr,
    const rstl::rc_ptr< CTransitionManager >& transMgr,
    const TLockedToken< CCharacterFactory >& charFactory)
: x0_charFactory(charFactory)
, xc_charInfo(charInfo)
, xcc_layoutData(layoutData)
, xd8_modelData(modelData)
, xe4_iceModelData(iceModelData)
, xf4_xrayModel(static_cast< const CSkinnedModel* >(0))
, xf8_infraModel(static_cast< const CSkinnedModel* >(0))
, xfc_animCtx(animCtx)
, x100_animMgr(animMgr)
, x104_animDir(kAD_Forward)
, x108_aabb(CAABox::MakeMaxInvertedBox())
, x120_particleDB()
, x1d8_selfId(selfId)
, x1dc_alignPos(CVector3f::Zero())
, x1e8_alignRot(CQuaternion::NoRotation())
, x1f8_animRoot()
, x1fc_transMgr(transMgr)
, x200_speedScale(1.f)
, x204_charIdx(charIdx)
, x208_currentAnim(defaultAnim)
, x20c_passedBoolCount(0)
, x210_passedIntCount(0)
, x214_passedParticleCount(0)
, x218_passedSoundCount(0)
, x21c_particleLightIdx(0)
, x220_24_animating(false)
, x220_25_loop(loop)
, x220_26_aligningPos(false)
, x220_27_(false)
, x220_28_(false)
, x220_29_animationJustStarted(false)
, x220_30_poseBuilt(false)
, x220_31_poseCached(false)
, x224_pose(GetSegIdCountFromLayout(layoutData))
, x2fc_poseBuilder(CLayoutDescription(layoutData))
, x40c_playbackParms(-1, -1, 1.f, true)
, x434_additiveAnims() {
  if (skPOICacheReferenceCount == 0) {
    const CBoolPOINode boolNode(rstl::string_l(""), kPT_EmptyBool, CCharAnimTime(0.f), -1, false,
                                1.f, -1, 0, false);
    if (mBoolPOINodes.size() < mBoolPOINodes.capacity()) {
      mBoolPOINodes.resize(mBoolPOINodes.capacity(), boolNode);
    }

    const CInt32POINode int32Node(rstl::string_l(""), kPT_EmptyInt32, CCharAnimTime(0.f), -1, false,
                                  1.f, -1, 0, 0, rstl::string_l("root"));
    mInt32POINodes.resize(mInt32POINodes.capacity(), int32Node);

    const CParticleData particleData(0, SObjectTag(0, 0), rstl::string_l("root"), 1.f,
                                     CParticleData::kPM_Initial);
    const CParticlePOINode particleNode(rstl::string_l(""), kPT_Particle, CCharAnimTime(0.f), -1,
                                        false, 1.f, -1, 0, particleData);
    mParticlePOINodes.resize(mParticlePOINodes.capacity(), particleNode);

    const CSoundPOINode soundNode(rstl::string_l(""), kPT_Sound, CCharAnimTime(0.f), -1, false, 1.f,
                                  -1, 0, 0, 0.f, 0.f);
    mSoundPOINodes.resize(mSoundPOINodes.capacity(), soundNode);
  }
  ++skPOICacheReferenceCount;

  xd8_modelData->CalculateDefault();
  const CVector3f* pointItr =
      reinterpret_cast< const CVector3f* >(xd8_modelData->GetModel()->GetPositions());
  for (int i = 0; i < xd8_modelData->GetNumPoints(); ++i) {
    x108_aabb.AccumulateBounds(*pointItr++);
  }

  x120_particleDB.CacheParticleDesc(xc_charInfo.GetParticleResData());

  CLayoutDescription layoutDesc(xcc_layoutData);
  CHierarchyPoseBuilder pb(layoutDesc);
  pb.BuildNoScale(x224_pose);
  x220_30_poseBuilt = true;

  if (defaultAnim == -1) {
    defaultAnim = 0;
    rstl::string warning =
        rstl::string_l("Character ") + xc_charInfo.GetCharacterName() +
        rstl::string_l(" has invalid initial animation, so defaulting to first.\n");
  }

  const uint animRes = xc_charInfo.GetAnimationIndexList()[defaultAnim];
  const rstl::rc_ptr< CAnimTreeNode > animTree =
      x100_animMgr->GetAnimationTree(animRes, CMetaAnimTreeBuildOrders::NoSpecialOrders());
  if (animTree != x1f8_animRoot) {
    x1f8_animRoot = animTree;
  }
}

void CAnimData::SetParticleEffectState(const rstl::string& name, bool active, CStateManager& mgr) {
  rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > > effects =
      xc_charInfo.GetEffectList();

  rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > >::const_iterator it =
      FindByKeyEffect(effects, name);
  if (it != effects.end()) {
    const rstl::vector< CEffectComponent >& components = it->second;
    rstl::vector< CEffectComponent >::const_iterator compIt = components.begin();
    rstl::vector< CEffectComponent >::const_iterator compEnd = components.end();
    for (; compIt != compEnd; ++compIt) {
      x120_particleDB.SetParticleEffectState(compIt->GetComponentName(), active, mgr);
    }
  }
}

void CAnimData::InitializeEffects(CStateManager& mgr, TAreaId areaId, const CVector3f& scale) {
  const rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > >& effects =
      xc_charInfo.GetEffectList();

  rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > >::const_iterator
      fxIt = effects.begin();
  rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > >::const_iterator
      fxEnd = effects.end();
  for (; fxIt != fxEnd; ++fxIt) {
    const rstl::vector< CEffectComponent >& components = fxIt->second;
    rstl::vector< CEffectComponent >::const_iterator compIt = components.begin();
    rstl::vector< CEffectComponent >::const_iterator compEnd = components.end();
    for (; compIt != compEnd; ++compIt) {
      x120_particleDB.CacheParticleDesc(compIt->GetParticleTag());
      {
        const CParticleData data(0, compIt->GetParticleTag(), compIt->GetSegmentName(),
                                 compIt->GetScale(), compIt->GetParentedMode());
        x120_particleDB.AddParticleEffect(compIt->GetComponentName(), compIt->GetFlags(), data,
                                          scale, mgr, areaId, true, x21c_particleLightIdx);
      }
      x120_particleDB.SetParticleEffectState(compIt->GetComponentName(), false, mgr);
    }
  }
}

CAnimData::~CAnimData() {
  if (--skPOICacheReferenceCount == 0) {
    mBoolPOINodes.clear();
    mInt32POINodes.clear();
    mParticlePOINodes.clear();
    mSoundPOINodes.clear();
  }
}

CPoseAsTransforms::~CPoseAsTransforms() {}

CAABox CAnimData::GetBoundingBox() const {
  const rstl::vector< rstl::pair< rstl::string, CAABox > >& aabbList =
      xc_charInfo.GetAnimBBoxList();

  if (aabbList.size() > 0) {
    CAnimTreeEffectiveContribution contrib = x1f8_animRoot->GetContributionOfHighestInfluence();
    rstl::string name = contrib.GetPrimitiveName();

    rstl::vector< rstl::pair< rstl::string, CAABox > >::const_iterator search =
        FindByKeyAabb(aabbList, rstl::string(name));
    if (search != aabbList.end()) {
      return search->second;
    }
  }
  return x108_aabb;
}

CAABox CAnimData::GetBoundingBox(const CTransform4f& xf) const {
  return GetBoundingBox().GetTransformedAABox(xf);
}

CSegId CAnimData::GetLocatorSegId(const rstl::string& name) const {
  return xcc_layoutData->GetSegIdFromString(name);
}

void CAnimData::ResetPOILists() {
  x20c_passedBoolCount = 0;
  x210_passedIntCount = 0;
  x214_passedParticleCount = 0;
  x218_passedSoundCount = 0;
}

float CAnimData::GetAverageVelocity(int animIn) const {
  struct SAnimFormatUnionHack {
    int x0_format;
    CCharAnimTime x4_duration;
    uchar xC_pad[0x8];
    float x14_streamedAvgVelocity;
    uchar x18_pad[0x4c];
    float x64_normalAvgVelocity;

    CCharAnimTime GetAnimationDuration() const {
      switch (x0_format) {
      case 0:
        return x4_duration;
      case 2:
        return reinterpret_cast< const CFBStreamedCompression* >(
                   reinterpret_cast< const uchar* >(this) + 4)
            ->GetAnimationDuration();
      default:
        return x4_duration;
      }
    }

    float GetAverageVelocity() const {
      switch (x0_format) {
      case 0:
        return x64_normalAvgVelocity;
      case 2:
        return x14_streamedAvgVelocity;
      default:
        return x64_normalAvgVelocity;
      }
    }
  };

  const uint animRes = xc_charInfo.GetAnimationIndexList()[animIn];
  rstl::rc_ptr< IMetaAnim > anim = x100_animMgr->GetMetaAnimation(animRes);

  rstl::set< CPrimitive > primitiveSet;
  anim->GetUniquePrimitives(primitiveSet);

  float ret = 0.f;
  float weightedVel = 0.f;
  float totalDur = 0.f;
  rstl::set< CPrimitive >::const_iterator it = primitiveSet.begin();
  rstl::set< CPrimitive >::const_iterator end = primitiveSet.end();
  while (it != end) {
    const SObjectTag animTag('ANIM', it->GetAnimResId());

    IObjectStore* store = *reinterpret_cast< IObjectStore* const* >(
        reinterpret_cast< const uchar* >(xfc_animCtx.GetPtr()) + 0xc);

    CToken token = store->GetObj(animTag);
    CObjOwnerDerivedFromIObjUntyped* obj = token.GetObj();
    const SAnimFormatUnionHack* animData =
        static_cast< const SAnimFormatUnionHack* >(obj->GetContents());

    weightedVel += animData->GetAverageVelocity() * animData->GetAnimationDuration().GetSeconds();
    totalDur += animData->GetAnimationDuration().GetSeconds();
    ++it;
  }

  if (totalDur > 0.f) {
    ret = weightedVel / totalDur;
  }

  return ret;
}

int CAnimData::GetEventResourceIdForAnimResourceId(int id) const {
  return x0_charFactory->GetEventResourceIdForAnimResourceId(id);
}

void CAnimData::AddAdditiveSegData(const CSegIdList& list, CSegStatementSet& setOut) const {
  float zero = 0.f;
  float close = 0.00001f;

  const uint count = x434_additiveAnims.size();
  uint i = 0;
  while (i < count) {
    const CAdditiveAnimPlayback& playback = x434_additiveAnims[i].second;
    if (fabsf(playback.xc_targetWeight - zero) < close) {
    } else {
      playback.AddToSegStatementSet(list, **xcc_layoutData, setOut);
    }
    ++i;
  }
}

rstl::optional_object< rstl::ownership_transfer< IAnimReader > > IAnimReader::Simplified() {
  return VSimplified();
}

SAdvancementResults CAnimData::AdvanceAdditiveAnim(rstl::rc_ptr< CAnimTreeNode >& anim,
                                                   const CCharAnimTime& time) {
  SAdvancementResults ret = anim->VAdvanceView(time);

  rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simplified = anim->Simplified();
  if (simplified.valid()) {
    anim = Cast(simplified.data());
  }

  return ret;
}

rstl::pair< uint, CAdditiveAnimPlayback >*
fn_80029C18(rstl::reserved_vector< rstl::pair< uint, CAdditiveAnimPlayback >, 8 >* vec,
            rstl::pair< uint, CAdditiveAnimPlayback >* it) {
  return vec->erase(it);
}

SAdvancementDeltas CAnimData::UpdateAdditiveAnims(float dt) {
  float zero = 0.f;
  float close = 0.00001f;

  rstl::pair< uint, CAdditiveAnimPlayback >* it = x434_additiveAnims.begin();
  rstl::pair< uint, CAdditiveAnimPlayback >* const begin = x434_additiveAnims.begin();

  while (it != begin + x434_additiveAnims.size()) {
    CAdditiveAnimPlayback& playback = it->second;
    playback.Update(dt);

    const CCharAnimTime remTime = playback.x8_anim->VGetTimeRemaining();
    if (fabsf(remTime.GetSeconds() - zero) < close && playback.x20_needsFadeOut != 0) {
      playback.FadeOut();
    }

    if (playback.x1c_phase == CAdditiveAnimPlayback::kPP_FadedOut) {
      it = fn_80029C18(&x434_additiveAnims, it);
    } else {
      ++it;
    }
  }

  return AdvanceAdditiveAnims(dt);
}

SAdvancementDeltas CAnimData::AdvanceAdditiveAnims(float dt) {
  CQuaternion rotDelta(CQuaternion::NoRotation());
  float posDeltaX = 0.f;
  float posDeltaY = 0.f;
  float posDeltaZ = 0.f;

  const uint count = x434_additiveAnims.size();
  for (uint i = 0; i < count; ++i) {
    CAdditiveAnimPlayback& playback = x434_additiveAnims[i].second;
    rstl::rc_ptr< CAnimTreeNode >& anim = playback.x8_anim;

    CCharAnimTime time(dt);

    if (playback.x14_active != 0) {
      float zero = 0.f;
      float close = 0.00001f;
      while (time.GreaterThanZero() && fabsf(time.GetSeconds() - zero) >= close) {
        x210_passedIntCount +=
            anim->GetInt32POIList(time, mInt32POINodes.data(), 16, x210_passedIntCount, 0);
        x20c_passedBoolCount +=
            anim->GetBoolPOIList(time, mBoolPOINodes.data(), 8, x20c_passedBoolCount, 0);
        x214_passedParticleCount += anim->GetParticlePOIList(time, mParticlePOINodes.data(), 20,
                                                             x214_passedParticleCount, 0);
        x218_passedSoundCount +=
            anim->GetSoundPOIList(time, mSoundPOINodes.data(), 20, x218_passedSoundCount, 0);

        CCharAnimTime copyTime(time);
        const SAdvancementResults advResult = AdvanceAdditiveAnim(anim, copyTime);
        const SAdvancementDeltas deltas = advResult.x8_deltas;
        const CQuaternion thisRot = deltas.xc_rotDelta;

        posDeltaX += deltas.x0_posDelta.GetX();
        posDeltaY += deltas.x0_posDelta.GetY();
        posDeltaZ += deltas.x0_posDelta.GetZ();
        rotDelta = rotDelta * thisRot;
        time = advResult.x0_remTime;
      }
    } else {
      float zero = 0.f;
      float close = 0.00001f;
      CCharAnimTime remTime = anim->VGetTimeRemaining();

      while (fabsf(remTime.GetSeconds() - zero) >= close &&
             fabsf(time.GetSeconds() - zero) >= close) {
        x210_passedIntCount +=
            anim->GetInt32POIList(time, mInt32POINodes.data(), 16, x210_passedIntCount, 0);
        x20c_passedBoolCount +=
            anim->GetBoolPOIList(time, mBoolPOINodes.data(), 8, x20c_passedBoolCount, 0);
        x214_passedParticleCount += anim->GetParticlePOIList(time, mParticlePOINodes.data(), 20,
                                                             x214_passedParticleCount, 0);
        x218_passedSoundCount +=
            anim->GetSoundPOIList(time, mSoundPOINodes.data(), 20, x218_passedSoundCount, 0);

        CCharAnimTime copyTime(time);
        const SAdvancementResults advResult = AdvanceAdditiveAnim(anim, copyTime);
        const SAdvancementDeltas deltas = advResult.x8_deltas;
        const CQuaternion thisRot = deltas.xc_rotDelta;

        posDeltaX += deltas.x0_posDelta.GetX();
        posDeltaY += deltas.x0_posDelta.GetY();
        posDeltaZ += deltas.x0_posDelta.GetZ();
        rotDelta = rotDelta * thisRot;
        time = advResult.x0_remTime;

        remTime = anim->VGetTimeRemaining();
        time = CCharAnimTime(rstl::min_val(time.GetSeconds(), remTime.GetSeconds()));
      }
    }
  }

  SAdvancementDeltas ret;
  ret.x0_posDelta = CVector3f(posDeltaX, posDeltaY, posDeltaZ);
  ret.xc_rotDelta = rotDelta;

  return ret;
}

rstl::rc_ptr< CAnimationManager > CAnimData::GetAnimationManager() const { return x100_animMgr; }

rstl::ncrc_ptr< CAnimSysContext > CAnimData::GetAnimSysContext() const { return xfc_animCtx; }

float CAnimData::GetAnimationDuration(int animIn) const {
  const uint animRes = xc_charInfo.GetAnimationIndexList()[animIn];
  rstl::rc_ptr< IMetaAnim > anim = GetAnimationManager()->GetMetaAnimation(animRes);

  struct SAnimFormatUnionHack {
    int x0_format;
    CCharAnimTime x4_duration;

    CCharAnimTime GetAnimationDuration() const {
      switch (x0_format) {
      case 0:
        return x4_duration;
      case 2:
        return reinterpret_cast< const CFBStreamedCompression* >(
                   reinterpret_cast< const uchar* >(this) + 4)
            ->GetAnimationDuration();
      default:
        return x4_duration;
      }
    }
  };

  rstl::set< CPrimitive > primitiveSet;
  anim->GetUniquePrimitives(primitiveSet);

  float duration = 0.f;
  rstl::set< CPrimitive >::const_iterator it = primitiveSet.begin();
  rstl::set< CPrimitive >::const_iterator end = primitiveSet.end();
  while (it != end) {
    const SObjectTag animTag('ANIM', it->GetAnimResId());

    const rstl::ncrc_ptr< CAnimSysContext >& animCtx = GetAnimSysContext();
    IObjectStore* store = *reinterpret_cast< IObjectStore* const* >(
        reinterpret_cast< const uchar* >(animCtx.GetPtr()) + 0xc);

    CToken token = store->GetObj(animTag);
    const SAnimFormatUnionHack* animData =
        static_cast< const SAnimFormatUnionHack* >(token.GetObj()->GetContents());

    duration += animData->GetAnimationDuration().GetSeconds();
    ++it;
  }

  if (anim->GetType() == kMAT_Random) {
    duration /= primitiveSet.size();
  }

  return duration;
}

float CAnimData::GetAnimTimeRemaining(const rstl::string&) const {
  float remTime = x1f8_animRoot->VGetTimeRemaining().GetSeconds();
  if (x200_speedScale > 0.f) {
    remTime /= x200_speedScale;
  }
  return remTime;
}

bool CAnimData::IsAnimTimeRemaining(float rem, const rstl::string&) const {
  if (x1f8_animRoot.GetPtr() != 0) {
    const float remTime = x1f8_animRoot->VGetTimeRemaining().GetSeconds();
    return !close_enough(remTime, 0.f, rem);
  }

  return false;
}

CTransform4f CAnimData::GetLocatorTransform(const rstl::string& name,
                                            const CCharAnimTime* time) const {
  CSegId seg = xcc_layoutData->GetSegIdFromString(name);
  CSegId segCopy = seg;
  return GetLocatorTransform(segCopy, time);
}

CTransform4f CAnimData::GetLocatorTransform(CSegId seg, const CCharAnimTime* time) const {
  CTransform4f xf = CTransform4f::Identity();

  if (seg.val() != 0xFF) {
    if (time != static_cast< const CCharAnimTime* >(0) || !x220_31_poseCached) {
      CAnimData* self = const_cast< CAnimData* >(this);
      self->RecalcPoseBuilder(time);
      self->x220_31_poseCached = !time;
    }

    if (!x220_30_poseBuilt) {
      x2fc_poseBuilder.BuildTransform(seg, xf);
    } else {
      const CMatrix3f& rot = x224_pose.GetTransformMinusOffset(seg);
      const CVector3f& offset = x224_pose.GetOffset(seg);
      xf.SetRotation(rot);
      xf.SetTranslation(offset);
    }
  }

  return xf;
}

void CAnimData::CalcPlaybackAlignmentParms(const CAnimPlaybackParms& parms,
                                           const rstl::ncrc_ptr< CAnimTreeNode >& node) {
  const CQuaternion* const deltaOrient = *reinterpret_cast< const CQuaternion* const* >(
      reinterpret_cast< const uchar* >(&parms) + 0x1c);
  const CTransform4f* const objectXf = *reinterpret_cast< const CTransform4f* const* >(
      reinterpret_cast< const uchar* >(&parms) + 0x20);

  CQuaternion alignRot = CQuaternion::NoRotation();
  x1e8_alignRot = CQuaternion::NoRotation();
  x220_27_ = false;

  if (deltaOrient != static_cast< const CQuaternion* >(0) &&
      objectXf != static_cast< const CTransform4f* >(0)) {
    ResetPOILists();
    x210_passedIntCount += node->GetInt32POIList(CCharAnimTime::Infinity(), mInt32POINodes.data(),
                                                 16, x210_passedIntCount, 64);

    if (x210_passedIntCount > 0) {
      CInt32POINode* poi = mInt32POINodes.data();
      for (int i = x210_passedIntCount; i > 0; --i, ++poi) {
        if (poi->GetPoiType() == kPT_UserEvent && poi->GetValue() == kUE_AlignTargetRot) {
          const CCharAnimTime poiTime = poi->GetTime();
          const SAdvancementResults adv = node->VGetAdvancementResults(poiTime, CCharAnimTime(0.f));
          const CQuaternion invObjRot =
              CQuaternion::FromMatrix(objectXf->BuildMatrix3f().Inverse());
          const CQuaternion targetRot = (*deltaOrient) * invObjRot;
          const CQuaternion animInvRot = adv.x8_deltas.xc_rotDelta.BuildInverted();
          const CQuaternion fullRot = targetRot * animInvRot;

          alignRot = CQuaternion::Slerp(CQuaternion::NoRotation(), fullRot,
                                        1.f / (60.f * poiTime.GetSeconds()));
          x1e8_alignRot = alignRot;
          x220_27_ = true;
          break;
        }
      }
    }
  }

  const CVector3f* const targetPos =
      *reinterpret_cast< const CVector3f* const* >(reinterpret_cast< const uchar* >(&parms) + 0x14);
  const bool useLocator =
      *reinterpret_cast< const bool* >(reinterpret_cast< const uchar* >(&parms) + 0x18);

  if (!x220_27_) {
    bool foundStart = false;
    bool foundAlign = false;
    CVector3f startPos = CVector3f::Zero();
    CVector3f alignPos = CVector3f::Zero();
    CCharAnimTime startTime;
    CCharAnimTime alignTime;

    if (targetPos == static_cast< const CVector3f* >(0) ||
        objectXf == static_cast< const CTransform4f* >(0)) {
      x1dc_alignPos = CVector3f::Zero();
      x220_28_ = false;
      x220_26_aligningPos = false;
    } else {
      ResetPOILists();
      x210_passedIntCount += node->GetInt32POIList(CCharAnimTime::Infinity(), mInt32POINodes.data(),
                                                   16, x210_passedIntCount, 64);

      if (x210_passedIntCount > 0) {
        CInt32POINode* poi = mInt32POINodes.data();
        for (int i = 0; i < x210_passedIntCount; ++i, ++poi) {
          if (poi->GetPoiType() == kPT_UserEvent) {
            if (poi->GetValue() == kUE_AlignTargetPosStart) {
              startTime = poi->GetTime();
              foundStart = true;

              const SAdvancementResults adv =
                  node->VGetAdvancementResults(startTime, CCharAnimTime(0.f));
              startPos = adv.x8_deltas.x0_posDelta;

              if (useLocator) {
                startPos += GetLocatorTransform(poi->GetLocatorName(), &startTime).GetTranslation();
              }

              if (foundAlign) {
                break;
              }
            } else if (poi->GetValue() == kUE_AlignTargetPos) {
              alignTime = poi->GetTime();
              foundAlign = true;

              const SAdvancementResults adv =
                  node->VGetAdvancementResults(alignTime, CCharAnimTime(0.f));
              alignPos = adv.x8_deltas.x0_posDelta;

              if (useLocator) {
                alignPos += GetLocatorTransform(poi->GetLocatorName(), &alignTime).GetTranslation();
              }

              if (foundStart) {
                break;
              }
            }
          }
        }

        if (foundStart && foundAlign) {
          const CVector3f* const objectScale = *reinterpret_cast< const CVector3f* const* >(
              reinterpret_cast< const uchar* >(&parms) + 0x24);

          const float startX = objectScale->GetX() * startPos.GetX();
          const float startY = objectScale->GetY() * startPos.GetY();
          const float startZ = objectScale->GetZ() * startPos.GetZ();
          const float alignX = objectScale->GetX() * alignPos.GetX();
          const float alignY = objectScale->GetY() * alignPos.GetY();
          const float alignZ = objectScale->GetZ() * alignPos.GetZ();

          const CVector3f target = objectXf->GetInverse() * (*targetPos);
          const float timeScale = 1.f / (alignTime.GetSeconds() - startTime.GetSeconds());

          x1dc_alignPos.SetX(
              (((target.GetX() - startX) - (alignX - startX)) / objectScale->GetX()) * timeScale);
          x1dc_alignPos.SetY(
              (((target.GetY() - startY) - (alignY - startY)) / objectScale->GetY()) * timeScale);
          x1dc_alignPos.SetZ(
              (((target.GetZ() - startZ) - (alignZ - startZ)) / objectScale->GetZ()) * timeScale);
          x220_28_ = true;
          x220_26_aligningPos = false;
        } else {
          x1dc_alignPos = CVector3f::Zero();
          x220_28_ = false;
          x220_26_aligningPos = false;
        }
      }
    }
  } else {
    bool foundStart = false;
    bool foundAlign = false;
    CVector3f startPos = CVector3f::Zero();
    CCharAnimTime startTime;
    CCharAnimTime alignTime;

    if (targetPos == static_cast< const CVector3f* >(0) ||
        objectXf == static_cast< const CTransform4f* >(0)) {
      x1dc_alignPos = CVector3f::Zero();
      x220_28_ = false;
      x220_26_aligningPos = false;
    } else {
      ResetPOILists();
      x210_passedIntCount += node->GetInt32POIList(CCharAnimTime::Infinity(), mInt32POINodes.data(),
                                                   16, x210_passedIntCount, 64);

      if (x210_passedIntCount > 0) {
        CInt32POINode* poi = mInt32POINodes.data();
        for (int i = x210_passedIntCount; i > 0; --i, ++poi) {
          if (poi->GetPoiType() == kPT_UserEvent) {
            if (poi->GetValue() == kUE_AlignTargetPosStart) {
              startTime = poi->GetTime();
              foundStart = true;
              if (foundAlign) {
                break;
              }
            } else if (poi->GetValue() == kUE_AlignTargetPos) {
              alignTime = poi->GetTime();
              foundAlign = true;
              if (foundStart) {
                break;
              }
            }
          }
        }

        if (foundStart && foundAlign) {
          alignRot = CQuaternion::NoRotation();
          x1e8_alignRot = CQuaternion::NoRotation();
          x220_27_ = true;

          const CCharAnimTime frameDt(1.f / 60.f);
          CCharAnimTime time(0.f);
          CVector3f alignPos = CVector3f::Zero();
          CQuaternion curRot = CQuaternion::NoRotation();
          bool foundStartPos = false;

          while (time < alignTime) {
            const SAdvancementResults adv = node->VGetAdvancementResults(frameDt, time);
            alignPos += curRot.BuildTransform() * adv.x8_deltas.x0_posDelta;
            curRot = curRot * (adv.x8_deltas.xc_rotDelta * alignRot);

            if (!foundStartPos && time >= startTime) {
              foundStartPos = true;
              startPos = alignPos;
            }

            time += frameDt;
          }

          const CVector3f* const objectScale = *reinterpret_cast< const CVector3f* const* >(
              reinterpret_cast< const uchar* >(&parms) + 0x24);

          const float startX = objectScale->GetX() * startPos.GetX();
          const float startY = objectScale->GetY() * startPos.GetY();
          const float startZ = objectScale->GetZ() * startPos.GetZ();
          const float alignX = objectScale->GetX() * alignPos.GetX();
          const float alignY = objectScale->GetY() * alignPos.GetY();
          const float alignZ = objectScale->GetZ() * alignPos.GetZ();

          const CVector3f target = objectXf->GetInverse() * (*targetPos);
          const float timeScale = 1.f / (alignTime.GetSeconds() - startTime.GetSeconds());

          x1dc_alignPos.SetX(
              (((target.GetX() - startX) - (alignX - startX)) / objectScale->GetX()) * timeScale);
          x1dc_alignPos.SetY(
              (((target.GetY() - startY) - (alignY - startY)) / objectScale->GetY()) * timeScale);
          x1dc_alignPos.SetZ(
              (((target.GetZ() - startZ) - (alignZ - startZ)) / objectScale->GetZ()) * timeScale);
          x220_28_ = true;
          x220_26_aligningPos = false;
        } else {
          x1dc_alignPos = CVector3f::Zero();
          x220_28_ = false;
          x220_26_aligningPos = false;
        }
      }
    }
  }
}

CMatrix3f CMatrix3f::Inverse() const {
  const float detScale = 1.f / Determinant();

  const float _m00 = (m11 * m22 - m12 * m21) * detScale;
  const float _m01 = (m02 * m21 - m01 * m22) * detScale;
  const float _m02 = (m01 * m12 - m02 * m11) * detScale;

  const float _m10 = (m12 * m20 - m10 * m22) * detScale;
  const float _m11 = (m00 * m22 - m02 * m20) * detScale;
  const float _m12 = (m02 * m10 - m00 * m12) * detScale;

  const float _m20 = (m10 * m21 - m11 * m20) * detScale;
  const float _m21 = (m01 * m20 - m00 * m21) * detScale;
  const float _m22 = (m00 * m11 - m01 * m10) * detScale;

  return CMatrix3f(_m00, _m01, _m02, _m10, _m11, _m12, _m20, _m21, _m22);
}

void CAnimData::SetPhase(float phase) { x1f8_animRoot->VSetPhase(phase); }

void CAnimData::Touch(const CSkinnedModel& model, int shaderIdx) const {
  model.GetModel()->Touch(shaderIdx);
}

CCharAnimTime CAnimData::GetTimeOfUserEvent(EUserEventType type, const CCharAnimTime& time) const {
  const int count = x1f8_animRoot->GetInt32POIList(time, sInt32TransientCacheData, 16, 0, 64);
  for (int i = 0; i < count; ++i) {
    CInt32POINode& poi = sInt32TransientCacheData[i];
    if (poi.GetPoiType() == kPT_UserEvent && poi.GetValue() == static_cast< int >(type)) {
      CCharAnimTime ret = poi.GetTime();
      for (; i < count; ++i) {
        sInt32TransientCacheData[i] =
            CInt32POINode(rstl::string_l(""), kPT_EmptyInt32, CCharAnimTime(0.f), -1, false, 1.f,
                          -1, 0, 0, rstl::string_l("root"));
      }
      return ret;
    } else {
      sInt32TransientCacheData[i] =
          CInt32POINode(rstl::string_l(""), kPT_EmptyInt32, CCharAnimTime(0.f), -1, false, 1.f, -1,
                        0, 0, rstl::string_l("root"));
    }
  }
  return CCharAnimTime::Infinity();
}

void CAnimData::SetPlaybackRate(float set) { x200_speedScale = set; }

void CAnimData::MultiplyPlaybackRate(float scale) { x200_speedScale *= scale; }

void CAnimData::SetRandomPlaybackRate(CRandom16& random) {
  for (int i = 0; i < x210_passedIntCount; ++i) {
    const CInt32POINode& poi = mInt32POINodes[i];
    if (poi.GetPoiType() == kPT_RandRate) {
      const float scale = static_cast< float >(random.Next() % poi.GetValue()) / 100.f;
      if ((random.Next() % 100) < 50) {
        x200_speedScale = 1.f + scale;
      } else {
        x200_speedScale = 1.f - scale;
      }
      break;
    }
  }
}

rstl::rc_ptr< CAnimationManager > CAnimData::GetAnimationManager() { return x100_animMgr; }

bool CAnimData::IsAdditiveAnimation(uint idx) const {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];

  typedef rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > > TAdditiveInfoList;
  const TAdditiveInfoList& infoList = *reinterpret_cast< const TAdditiveInfoList* >(
      reinterpret_cast< const uchar* >(*x0_charFactory) + 0x40);

  rstl::less< uint > less;
  rstl::pair_sorter_finder< rstl::pair< uint, CAdditiveAnimationInfo >, rstl::less< uint > > finder(
      less);

  TAdditiveInfoList::const_iterator found =
      rstl::binary_find(infoList.begin(), infoList.end(), animIdx, finder);
  return found != infoList.end();
}

const rstl::ncrc_ptr< CAnimTreeNode >& CAnimData::GetRootAnimationTree() const {
  return x1f8_animRoot;
}

const rstl::rc_ptr< CAnimTreeNode >& CAnimData::GetAdditiveAnimationTree(uint idx) const {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];
  const rstl::pair< uint, CAdditiveAnimPlayback >* end =
      x434_additiveAnims.data() + x434_additiveAnims.size();
  const rstl::pair< uint, CAdditiveAnimPlayback >* search = x434_additiveAnims.data();

  while (search != end) {
    if (animIdx == search->first) {
      break;
    }
    ++search;
  }

  return search->second.x8_anim;
}

bool CAnimData::IsAdditiveAnimationAdded(uint idx) const {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];
  const rstl::pair< uint, CAdditiveAnimPlayback >* end =
      x434_additiveAnims.data() + x434_additiveAnims.size();
  const rstl::pair< uint, CAdditiveAnimPlayback >* search = x434_additiveAnims.data();

  while (search != end) {
    if (animIdx == search->first) {
      return true;
    }
    ++search;
  }

  return false;
}

float CAnimData::GetAdditiveAnimationWeight(uint idx) {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];
  rstl::pair< uint, CAdditiveAnimPlayback >* end =
      x434_additiveAnims.data() + x434_additiveAnims.size();
  rstl::pair< uint, CAdditiveAnimPlayback >* search = x434_additiveAnims.data();

  while (search != end) {
    if (animIdx == search->first) {
      return search->second.xc_targetWeight;
    }
    ++search;
  }

  return 0.f;
}

void CAnimData::DelAdditiveAnimation(uint idx) {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];
  rstl::pair< uint, CAdditiveAnimPlayback >* end =
      x434_additiveAnims.data() + x434_additiveAnims.size();
  rstl::pair< uint, CAdditiveAnimPlayback >* search = x434_additiveAnims.data();

  while (search != end) {
    if (animIdx == search->first) {
      break;
    }
    ++search;
  }

  if (search != end) {
    CAdditiveAnimPlayback& playback = search->second;
    const int phase = playback.x1c_phase;
    if (phase != CAdditiveAnimPlayback::kPP_FadingOut &&
        phase != CAdditiveAnimPlayback::kPP_FadedOut) {
      playback.FadeOut();
    }
  }
}

void CAnimData::AddAdditiveAnimation(uint idx, float weight, bool active, bool fadeOut) {
  const uint animIdx = xc_charInfo.GetAnimationIndexList()[idx];
  rstl::pair< uint, CAdditiveAnimPlayback >* end =
      x434_additiveAnims.data() + x434_additiveAnims.size();
  rstl::pair< uint, CAdditiveAnimPlayback >* search = x434_additiveAnims.data();

  while (search != end) {
    if (animIdx == search->first) {
      break;
    }
    ++search;
  }

  if (search != end) {
    CAdditiveAnimPlayback& playback = search->second;
    playback.SetLoop(active);
    playback.SetWeight(weight);
    playback.SetFadeOutWhenAnimOver(!playback.IsLoop() && fadeOut);
  } else {
    rstl::ncrc_ptr< CAnimTreeNode > animTree(GetAnimationManager()->GetAnimationTree(
        animIdx, CMetaAnimTreeBuildOrders::NoSpecialOrders()));

    typedef rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > > TAdditiveInfoList;
    const TAdditiveInfoList& infoList = *reinterpret_cast< const TAdditiveInfoList* >(
        reinterpret_cast< const uchar* >(*x0_charFactory) + 0x40);

    rstl::less< uint > less;
    rstl::pair_sorter_finder< rstl::pair< uint, CAdditiveAnimationInfo >, rstl::less< uint > >
        finder(less);

    TAdditiveInfoList::const_iterator infoSearch =
        rstl::binary_find(infoList.begin(), infoList.end(), animIdx, finder);

    const CAdditiveAnimationInfo& infoRef =
        infoSearch == infoList.end() ? *reinterpret_cast< const CAdditiveAnimationInfo* >(
                                           reinterpret_cast< const uchar* >(*x0_charFactory) + 0x50)
                                     : infoSearch->second;
    const CAdditiveAnimationInfo info(infoRef);

    x434_additiveAnims.push_back(rstl::pair< uint, CAdditiveAnimPlayback >(
        animIdx, CAdditiveAnimPlayback(animTree, weight, active, info, fadeOut)));
  }
}

void CAnimData::RecalcPoseBuilder(const CCharAnimTime* time) const {
  const CSegIdList* segIdList =
      reinterpret_cast< const CSegIdList* >(reinterpret_cast< const uchar* >(*xcc_layoutData) + 8);

  CStackSegStatementSet statementSet;
  if (time == static_cast< const CCharAnimTime* >(0)) {
    x1f8_animRoot->VGetSegStatementSet(*segIdList, statementSet);
  } else {
    x1f8_animRoot->VGetSegStatementSet(*segIdList, statementSet, *time);
  }

  AddAdditiveSegData(*segIdList, statementSet);

  CSegId seg;
  int i = 0;
  const int segCount = segIdList->x0_segList.size();
  while (i < segCount) {
    seg = segIdList->x0_segList[i];
    if (seg.val() != 3) {
      const_cast< CHierarchyPoseBuilder& >(x2fc_poseBuilder)
          .Insert(seg, statementSet[seg].mRotation);
      if (statementSet[seg].mStatus != 0) {
        const_cast< CHierarchyPoseBuilder& >(x2fc_poseBuilder)
            .Insert(seg, statementSet[seg].mOffset);
      }
    }
    ++i;
  }
}

void CAnimData::BuildPose() {
  if (!x220_31_poseCached) {
    RecalcPoseBuilder(static_cast< const CCharAnimTime* >(0));
    x220_31_poseCached = true;
    x220_30_poseBuilt = false;
  }

  if (!x220_30_poseBuilt) {
    x2fc_poseBuilder.BuildNoScale(x224_pose);
    x220_30_poseBuilt = true;
  }
}

void CAnimData::PrimitiveSetToTokenVector(const rstl::set< CPrimitive >& primSet,
                                          rstl::vector< CToken >& tokensOut, bool preLock) {
  tokensOut = rstl::vector< CToken >();
  tokensOut.reserve(primSet.size());

  rstl::set< CPrimitive >::const_iterator it = primSet.begin();
  rstl::set< CPrimitive >::const_iterator end = primSet.end();
  for (; it != end; ++it) {
    CToken token = gpSimplePool->GetObj(SObjectTag('ANIM', it->GetAnimResId()));
    if (preLock) {
      token.Lock();
    }
    tokensOut.push_back(token);
  }
}

void CAnimData::GetAnimationPrimitives(const CAnimPlaybackParms& parms,
                                       rstl::set< CPrimitive >& primsOut) const {
  const int animB = *reinterpret_cast< const int* >(reinterpret_cast< const uchar* >(&parms) + 4);

  const uint animResA = xc_charInfo.GetAnimationIndexList()[parms.GetAnimationId()];
  GetAnimationManager()->GetMetaAnimation(animResA)->GetUniquePrimitives(primsOut);

  if (animB != -1) {
    const uint animResB = xc_charInfo.GetAnimationIndexList()[animB];
    GetAnimationManager()->GetMetaAnimation(animResB)->GetUniquePrimitives(primsOut);
  }
}

void CAnimData::SetAnimation(const CAnimPlaybackParms& parms, bool noTrans) {
  if (parms.GetAnimationId() == x40c_playbackParms.GetAnimationId() ||
      (parms.GetSecondAnimationId() == x40c_playbackParms.GetSecondAnimationId() &&
       parms.GetSecondAnimationId() != -1) ||
      (parms.GetBlendFactor() == x40c_playbackParms.GetBlendFactor() &&
       parms.GetBlendFactor() != 1.f)) {
    if (x220_29_animationJustStarted)
      return;
  }

  x40c_playbackParms.SetAnimationId(parms.GetAnimationId());
  x40c_playbackParms.SetSecondAnimationId(parms.GetSecondAnimationId());
  x40c_playbackParms.SetBlendFactor(parms.GetBlendFactor());

  const int animA = parms.GetAnimationId();
  const bool animating = parms.GetIsPlayAnimation();
  x200_speedScale = 1.f;
  x208_currentAnim = animA;

  const int animB = parms.GetSecondAnimationId();
  const float blendFactor = parms.GetBlendFactor();
  const uint animResA = xc_charInfo.GetAnimationIndexList()[animA];
  ResetPOILists();

  rstl::ncrc_ptr< CAnimTreeNode > newAnimTree;

  if (animB != -1) {
    const uint animResB = xc_charInfo.GetAnimationIndexList()[animB];

    rstl::ncrc_ptr< CAnimTreeNode > treeA(GetAnimationManager()->GetAnimationTree(
        animResA, CMetaAnimTreeBuildOrders::NoSpecialOrders()));
    rstl::ncrc_ptr< CAnimTreeNode > treeB(GetAnimationManager()->GetAnimationTree(
        animResB, CMetaAnimTreeBuildOrders::NoSpecialOrders()));

    newAnimTree = rstl::ncrc_ptr< CAnimTreeNode >(
        rs_new CAnimTreeBlend(false, treeA, treeB, blendFactor,
                              CAnimTreeBlend::CreatePrimitiveName(treeA, treeB, blendFactor)));
  } else {
    newAnimTree = GetAnimationManager()->GetAnimationTree(
        animResA, CMetaAnimTreeBuildOrders::NoSpecialOrders());
  }

  if (!noTrans) {
    x1f8_animRoot = x1fc_transMgr->GetTransitionTree(x1f8_animRoot, newAnimTree);
  } else {
    x1f8_animRoot = newAnimTree;
  }

  x220_24_animating = animating;
  CalcPlaybackAlignmentParms(parms, newAnimTree);
  ResetPOILists();
  x220_29_animationJustStarted = true;
}

void CAnimData::PreRender() {
  if (!x220_31_poseCached) {
    RecalcPoseBuilder(static_cast< const CCharAnimTime* >(0));
    x220_31_poseCached = true;
    x220_30_poseBuilt = false;
  }
}

void CAnimData::SetupRender(const CSkinnedModel& model,
                            const rstl::optional_object< CVertexMorphEffect >& morphEffect,
                            const float* avgNormals) const {
  if (!x220_30_poseBuilt) {
    CAnimData* self = const_cast< CAnimData* >(this);
    self->x2fc_poseBuilder.BuildNoScale(self->x224_pose);
    self->x220_30_poseBuilt = true;
  }

  PoseSkinnedModel(model, x224_pose, morphEffect, avgNormals);
}

void CAnimData::Render(const CSkinnedModel& model, const CModelFlags& flags,
                       const rstl::optional_object< CVertexMorphEffect >& morphEffect,
                       const float* avgNormals) const {
  SetupRender(model, morphEffect, avgNormals);
  DrawSkinnedModel(model, flags);
}

void CAnimData::RenderAuxiliary(const CFrustumPlanes& frustum) const {
  x120_particleDB.AddToRendererClipped(frustum);
}

void CAnimData::AdvanceAnim(CCharAnimTime& time, CVector3f& offset, CQuaternion& rotation) {
  SAdvancementResults results(CCharAnimTime(0.f));
  rstl::optional_object< rstl::ownership_transfer< IAnimReader > > simplified;

  if (x104_animDir == kAD_Forward) {
    results = x1f8_animRoot->VAdvanceView(time);
    simplified = x1f8_animRoot->Simplified();
  }

  if (simplified.valid()) {
    rstl::rc_ptr< CAnimTreeNode > newRoot = Cast(simplified.data());
    if (newRoot != x1f8_animRoot) {
      x1f8_animRoot = newRoot;
    }
  }

  if ((x220_27_ || x220_28_) && x210_passedIntCount > 0) {
    CInt32POINode* node = mInt32POINodes.data();
    for (int i = 0; i < x210_passedIntCount; ++i, ++node) {
      if (node->GetPoiType() == kPT_UserEvent) {
        switch (node->GetValue()) {
        case kUE_AlignTargetPosStart:
          x220_26_aligningPos = true;
          break;
        case kUE_AlignTargetPos:
          x1dc_alignPos = CVector3f::Zero();
          x220_28_ = false;
          x220_26_aligningPos = false;
          break;
        case kUE_AlignTargetRot:
          x1e8_alignRot = CQuaternion::NoRotation();
          x220_27_ = false;
          break;
        }
      }
    }
  }

  CVector3f deltaPos = results.x8_deltas.x0_posDelta;
  CQuaternion deltaRot = results.x8_deltas.xc_rotDelta;

  offset += deltaPos;
  if (x220_26_aligningPos) {
    offset += x1dc_alignPos * time.GetSeconds();
  }

  CQuaternion alignRot = deltaRot * x1e8_alignRot;
  rotation = rotation * alignRot;
  x1dc_alignPos = alignRot.BuildInverted().Transform(x1dc_alignPos);

  time = results.x0_remTime;
}

SAdvancementDeltas CAnimData::DoAdvance(float dt, bool& suspendParticles, CRandom16& random,
                                        bool advTree) {
  suspendParticles = false;

  CVector3f offset(0.f, 0.f, 0.f);
  CQuaternion rotation(CQuaternion::NoRotation());

  float additiveOffsetX = 0.f;
  float additiveOffsetY = 0.f;
  float additiveOffsetZ = 0.f;
  CQuaternion additiveRotation(CQuaternion::NoRotation());

  const float scaledDt = dt * x200_speedScale;
  const float zero = 0.f;
  const float close = 0.00001f;

  ResetPOILists();

  if (x434_additiveAnims.size() > 0) {
    const SAdvancementDeltas additiveDeltas = UpdateAdditiveAnims(scaledDt);
    additiveOffsetX = additiveDeltas.x0_posDelta.GetX();
    additiveOffsetY = additiveDeltas.x0_posDelta.GetY();
    additiveOffsetZ = additiveDeltas.x0_posDelta.GetZ();
    additiveRotation = additiveDeltas.xc_rotDelta;
    x220_31_poseCached = false;
    x220_30_poseBuilt = false;
  }

  if (!x220_24_animating) {
    suspendParticles = true;
    SAdvancementDeltas ret;
    ret.x0_posDelta = offset;
    ret.xc_rotDelta = rotation;
    return ret;
  }

  if (x220_29_animationJustStarted) {
    x220_29_animationJustStarted = false;
    suspendParticles = true;
  }

  if (advTree) {
    SetRandomPlaybackRate(random);

    CCharAnimTime time(scaledDt);

    if (x220_25_loop) {
      while (time.GreaterThanZero() && fabsf(time.GetSeconds() - zero) >= close) {
        x210_passedIntCount +=
            x1f8_animRoot->GetInt32POIList(time, mInt32POINodes.data(), 16, x210_passedIntCount, 0);
        x20c_passedBoolCount +=
            x1f8_animRoot->GetBoolPOIList(time, mBoolPOINodes.data(), 8, x20c_passedBoolCount, 0);
        x214_passedParticleCount += x1f8_animRoot->GetParticlePOIList(
            time, mParticlePOINodes.data(), 20, x214_passedParticleCount, 0);
        x218_passedSoundCount += x1f8_animRoot->GetSoundPOIList(time, mSoundPOINodes.data(), 20,
                                                                x218_passedSoundCount, 0);

        AdvanceAnim(time, offset, rotation);
      }
    } else {
      CCharAnimTime remTime = x1f8_animRoot->VGetTimeRemaining();

      while (fabsf(remTime.GetSeconds() - zero) >= close &&
             fabsf(time.GetSeconds() - zero) >= close) {
        x210_passedIntCount +=
            x1f8_animRoot->GetInt32POIList(time, mInt32POINodes.data(), 16, x210_passedIntCount, 0);
        x20c_passedBoolCount +=
            x1f8_animRoot->GetBoolPOIList(time, mBoolPOINodes.data(), 8, x20c_passedBoolCount, 0);
        x214_passedParticleCount += x1f8_animRoot->GetParticlePOIList(
            time, mParticlePOINodes.data(), 20, x214_passedParticleCount, 0);
        x218_passedSoundCount += x1f8_animRoot->GetSoundPOIList(time, mSoundPOINodes.data(), 20,
                                                                x218_passedSoundCount, 0);

        AdvanceAnim(time, offset, rotation);

        remTime = x1f8_animRoot->VGetTimeRemaining();
        time = CCharAnimTime(
            rstl::max_val(zero, rstl::min_val(remTime.GetSeconds(), time.GetSeconds())));

        if (fabsf(remTime.GetSeconds() - zero) < close) {
          x220_24_animating = false;
          x1dc_alignPos = CVector3f::Zero();
          x220_28_ = false;
          x220_26_aligningPos = false;
        }
      }
    }

    x220_31_poseCached = false;
    x220_30_poseBuilt = false;
  }

  const CQuaternion totalRotation = rotation * additiveRotation;

  SAdvancementDeltas ret;
  ret.x0_posDelta = CVector3f(offset.GetX() + additiveOffsetX, offset.GetY() + additiveOffsetY,
                              offset.GetZ() + additiveOffsetZ);
  ret.xc_rotDelta = totalRotation;

  return ret;
}

SAdvancementDeltas CAnimData::Advance(float dt, const CVector3f& scale, CStateManager& mgr,
                                      TAreaId aid, bool advTree) {
  bool suspendParticles;
  SAdvancementDeltas deltas = DoAdvance(
      dt, suspendParticles,
      **reinterpret_cast< CRandom16** >(reinterpret_cast< uchar* >(&mgr) + 0x900), advTree);

  if (suspendParticles) {
    x120_particleDB.SuspendAllActiveEffects(mgr);
  }

  const int passedParticleCount = x214_passedParticleCount;
  for (int i = 0; i < passedParticleCount; ++i) {
    const CParticlePOINode& node = mParticlePOINodes[i];
    const int charIdx = node.GetCharacterIndex();
    if (charIdx == -1 || charIdx == x204_charIdx) {
      x120_particleDB.AddParticleEffect(node.GetString(), node.GetFlags(), node.GetParticleData(),
                                        scale, mgr, aid, false, x21c_particleLightIdx);
    }
  }

  return deltas;
}

SAdvancementDeltas CAnimData::AdvanceIgnoreParticles(float dt, CRandom16& random, bool advTree) {
  bool suspendParticles;
  return DoAdvance(dt, suspendParticles, random, advTree);
}

void CAnimData::DrawSkinnedModel(const CSkinnedModel& model, const CModelFlags& flags) const {
  GXLightID light = static_cast< GXLightID >(CGraphics::GetLightMask());

  GXAttnFn attnFn = GX_AF_NONE;
  if (static_cast< uint >(light) != 0) {
    attnFn = GX_AF_SPOT;
  }

  GXDiffuseFn diffFn = GX_DF_NONE;
  if (static_cast< uint >(light) != 0) {
    diffFn = GX_DF_CLAMP;
  }

  CGX::SetChanCtrl(CGX::Channel0, static_cast< uint >(light) != 0, GX_SRC_REG, GX_SRC_REG, light,
                   diffFn, attnFn);
  model.Draw(flags);
}

void CAnimData::PoseSkinnedModel(const CSkinnedModel& model, const CPoseAsTransforms& pose,
                                 const rstl::optional_object< CVertexMorphEffect >& morphEffect,
                                 const float* avgNormals) const {
  const_cast< CSkinnedModel& >(model).Calculate(pose, morphEffect, avgNormals,
                                                static_cast< float* >(0));
}

void CAnimData::AdvanceParticles(const CTransform4f& xf, float dt, const CVector3f& scale,
                                 CStateManager& mgr) {
  x120_particleDB.Update(dt, x224_pose, **xcc_layoutData, xf, scale, mgr);
}
