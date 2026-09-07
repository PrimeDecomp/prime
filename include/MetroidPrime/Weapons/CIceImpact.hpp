#ifndef _CICEIMPACT
#define _CICEIMPACT

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CEffect.hpp"
#include "rstl/single_ptr.hpp"

#include <Kyoto/Math/CAABox.hpp>
#include <Kyoto/Math/CSphere.hpp>

#include <rstl/reserved_vector.hpp>

class CMarkerGrid {
public:
  CMarkerGrid(const CAABox& bounds);

  uint GetValue(const uint x, const uint y, const uint z) const;
  void SetValue(uint x, uint y, uint z, uint val);
  bool GetCoords(const CVector3f& point, uint& x, uint& y, uint& z) const;
  bool AABoxTouchesData(const CAABox& bounds, const uint val) const;
  void MarkCells(const CSphere& sphere, const uint val);
  CVector3f GetWorldPositionForCell(const uint x, const uint y, const uint z);

  const CAABox& GetBounds() const { return mBounds; }
  // uint GetNumSubdivisions() const;

private:
  CAABox mBounds;
  CVector3f mGridUnits;
  rstl::reserved_vector< uchar, 1024 > mGridState;
};
CHECK_SIZEOF(CMarkerGrid, 0x428)

class CElementGen;
class CGenDescription;

class CIceImpact : public CEffect {
public:
  ~CIceImpact() override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;
  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) override;
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const override;
  void Render(const CStateManager& mgr) const override;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void Touch(CActor& actor, CStateManager& mgr) override;
  void CalculateRenderBounds() override;

  CIceImpact(const TLockedToken< CGenDescription >& particle, TUniqueId uid, TAreaId aid,
             bool active, const rstl::string& name, const CTransform4f& xf, uint flags,
             const CVector3f& scale, const CColor& color);

private:
  struct SImpactSphere {
    CVector3f x0_pos;
    float xc_a;
    float x10_b;
    float x14_c;
    float x18_d;
  };

  rstl::single_ptr< CElementGen > xe8_elementGen;
  TUniqueId xec_lightId;
  CAssetId xf0_genAssetId;
  float xf4_lifeTimer;
  float xf8_latestDamageTime;
  uint xfc_searchDirection;
  float x100_halfBounds;
  float x104_;
  CSphere x108_sphereGenRange;
  CMarkerGrid x118_grid;
  rstl::reserved_vector< SImpactSphere, 3 > x540_impactSpheres;
  bool x598_24_ : 1;
  bool x598_25_hasRenderBounds : 1;
};
CHECK_SIZEOF(CIceImpact, 0x5a0)

#endif // _CICEIMPACT
