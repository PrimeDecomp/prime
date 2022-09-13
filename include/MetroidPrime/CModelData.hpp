#ifndef _CMODELDATA_HPP
#define _CMODELDATA_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"

class CAABox;
class CActorLights;
class CAnimData;
class CFrustumPlanes;
class CModel;
class CModelFlags;

// TODO move
#include "Kyoto/Math/CQuaternion.hpp"
struct SAdvancementDeltas {
  CVector3f x0_posDelta;
  CQuaternion xc_rotDelta;
};
CHECK_SIZEOF(SAdvancementDeltas, 0x1c)

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
  // __ct__10CModelDataFRC8CAnimRes
  // __ct__10CModelDataFRC10CStaticRes
  CModelData(const CModelData& other);
  ~CModelData();

  SAdvancementDeltas AdvanceAnimation(float dt, CStateManager& mgr, TAreaId aid, bool advTree);
  void AdvanceParticles(const CTransform4f& xf, float dt, CStateManager& mgr);
  void RenderParticles(const CFrustumPlanes& planes) const;
  void RenderUnsortedParts(EWhichModel which, const CTransform4f& xf, const CActorLights* lights, const CModelFlags& flags) const;
  void RenderThermal(const CTransform4f& xf, const CColor& mulColor, const CColor& addColor, const CModelFlags& flags) const;
  void Render(const CStateManager&, const CTransform4f&, const CActorLights*, const CModelFlags&) const;
  void Render(CModelData::EWhichModel, const CTransform4f&, const CActorLights*, const CModelFlags&) const;

  const CAnimData* GetAnimationData() const { return xc_animData.get(); }
  CAnimData* AnimationData() { return xc_animData.get(); }
  CAABox GetBounds(const CTransform4f& xf) const;
  CAABox GetBounds() const;

  bool HasAnimation() const { return !xc_animData.null(); }
  bool IsNull() const { return xc_animData.null() && !x1c_normalModel; }

  void SetXRayModel(const rstl::pair< CAssetId, CAssetId >& assets);
  void SetInfraModel(const rstl::pair< CAssetId, CAssetId >& assets);

  void SetAmbientColor(const CColor& color) { x18_ambientColor = color; }
  bool GetSortThermal() const { return x14_25_sortThermal; }
  void SetSortThermal(bool b) { x14_25_sortThermal = b; }

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

#endif
