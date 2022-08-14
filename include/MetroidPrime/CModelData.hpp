#ifndef _CMODELDATA_HPP
#define _CMODELDATA_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"

class CAnimData;
class CModel;

// TODO move
#include "Kyoto/Math/CQuaternion.hpp"
struct SAdvancementDeltas {
  CVector3f x0_posDelta;
  CQuaternion xc_rotDelta;
};
CHECK_SIZEOF(SAdvancementDeltas, 0x1c)

class CModelData {
public:
  bool IsStaticModel() const { return xc_animData.get() == nullptr && !x1c_normalModel; }

  CModelData() {
    // TODO
  }
  CModelData(const CModelData& other);
  ~CModelData();

  SAdvancementDeltas AdvanceAnimation(float dt, CStateManager& mgr, TAreaId aid, bool advTree);
  void AdvanceParticles(const CTransform4f& xf, float dt, CStateManager& mgr);

  CAnimData* GetAnimationData() const { return xc_animData.get(); }

  void SetXRayModel(const rstl::pair< CAssetId, CAssetId >& assets);
  void SetInfraModel(const rstl::pair< CAssetId, CAssetId >& assets);
  void SetAmbientColor(const CColor& color) { x18_ambientColor = color; }
  void SetSortThermal(bool b) { x14_25_sortThermal = b; }

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