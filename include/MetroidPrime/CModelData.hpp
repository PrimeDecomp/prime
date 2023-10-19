#ifndef _CMODELDATA
#define _CMODELDATA

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Animation/IAnimReader.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/string.hpp"

class CAABox;
class CActorLights;
class CAnimData;
class CAnimRes;
class CFrustumPlanes;
class CModel;
class CModelFlags;
class CStateManager;
class CSkinnedModel;
class CRandom16;

// TODO move
#include "Kyoto/Math/CQuaternion.hpp"
struct CAdvancementDeltas {
public:
  CAdvancementDeltas(const CVector3f& posDelta, const CQuaternion& rotDelta)
  : x0_posDelta(posDelta), xc_rotDelta(rotDelta) {}

  const CVector3f& GetOffsetDelta() const { return x0_posDelta; }
  const CQuaternion& GetOrientationDelta() const { return xc_rotDelta; }

private:
  CVector3f x0_posDelta;
  CQuaternion xc_rotDelta;
};
CHECK_SIZEOF(CAdvancementDeltas, 0x1c)

class CStaticRes {
  CAssetId x0_cmdlId;
  CVector3f x4_scale;

public:
  CStaticRes(CAssetId id, const CVector3f& scale) : x0_cmdlId(id), x4_scale(scale) {}
};

class CModelData {
public:
  enum EWhichModel {
    kWM_Normal,
    kWM_XRay,
    kWM_Thermal,
    kWM_ThermalHot,
  };

  // TODO these probably aren't real
  bool HasNormalModel() const { return x1c_normalModel; }

  CModelData();
  CModelData(const CAnimRes&);
  CModelData(const CStaticRes&);
  CModelData(const CModelData& other);
  ~CModelData();

  CAdvancementDeltas AdvanceAnimation(float dt, CStateManager& mgr, TAreaId aid, bool advTree);
  void AdvanceParticles(const CTransform4f& xf, float dt, CStateManager& mgr);
  void RenderParticles(const CFrustumPlanes& planes) const;
  void RenderUnsortedParts(EWhichModel which, const CTransform4f& xf, const CActorLights* lights,
                           const CModelFlags& flags) const;
  void RenderThermal(const CTransform4f& xf, const CColor& mulColor, const CColor& addColor,
                     const CModelFlags& flags) const;
  void Render(const CStateManager&, const CTransform4f&, const CActorLights*,
              const CModelFlags&) const;
  void Render(EWhichModel, const CTransform4f&, const CActorLights*, const CModelFlags&) const;
  void FlatDraw(EWhichModel which, const CTransform4f& xf, bool unsortedOnly,
                const CModelFlags& flags) const;
  CSkinnedModel& PickAnimatedModel(EWhichModel which) const;
  void Touch(const CStateManager& mgr, int) const;
  SAdvancementDeltas AdvanceAnimationIgnoreParticles(float dt, CRandom16& rand, bool advTree);

  const CAnimData* GetAnimationData() const { return xc_animData.get(); }
  CAnimData* AnimationData() { return xc_animData.get(); }
  CAABox GetBounds(const CTransform4f& xf) const;
  CAABox GetBounds() const;
  bool IsLoaded(int shaderIdx) const;
  bool IsDefinitelyOpaque(EWhichModel which) const;

  CTransform4f GetLocatorTransform(const rstl::string& name) const;
  CTransform4f GetScaledLocatorTransform(const rstl::string& name) const;

  bool HasAnimation() const { return !xc_animData.null(); }
  bool IsNull() const { return xc_animData.null() && !x1c_normalModel; }

  void SetXRayModel(const rstl::pair< CAssetId, CAssetId >& assets);
  void SetInfraModel(const rstl::pair< CAssetId, CAssetId >& assets);

  void SetAmbientColor(const CColor& color) { x18_ambientColor = color; }
  bool GetSortThermal() const { return x14_25_sortThermal; }
  void SetSortThermal(bool b) { x14_25_sortThermal = b; }

  CVector3f GetScale() const { return x0_scale; }
  void SetScale(const CVector3f& scale) { x0_scale = scale; }

  bool GetIsLoop() const;
  void EnableLooping(bool enable);
  static CModelData CModelDataNull();
  static EWhichModel GetRenderingModel(const CStateManager& mgr);

private:
  CVector3f x0_scale;
  rstl::auto_ptr< CAnimData > xc_animData;
  bool x14_24_renderSorted : 1;
  bool x14_25_sortThermal : 1;
  CColor x18_ambientColor;
  rstl::optional_object< TCachedToken< CModel > > x1c_normalModel;
  rstl::optional_object< TCachedToken< CModel > > x2c_xrayModel;
  rstl::optional_object< TCachedToken< CModel > > x3c_infraModel;
};
CHECK_SIZEOF(CModelData, 0x4c)

#endif // _CMODELDATA
