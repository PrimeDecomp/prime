#ifndef _CPARTICLEDATABASE
#define _CPARTICLEDATABASE

#include "types.h"

#include "Kyoto/Animation/CCharacterInfo.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/TToken.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/map.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/string.hpp"

class CElectricDescription;
class CGenDescription;
class CParticleGenInfo;
class CStateManager;
class CSwooshDescription;
class CCharLayoutInfo;
class CColor;
class CFrustumPlanes;
class CPoseAsTransforms;
class CTransform4f;
class CVector3f;

class CParticleDatabase {
public:
  typedef rstl::map< rstl::string, rstl::auto_ptr< CParticleGenInfo > > DrawMap;

  CParticleDatabase();

  void CacheParticleDesc(const CCharacterInfo::CParticleResData& partData);
  void CacheParticleDesc(const SObjectTag& tag);
  void SetParticleEffectState(const rstl::string& name, bool active, CStateManager& mgr);
  void SuspendAllActiveEffects(CStateManager& mgr);
  void AddParticleEffect(const rstl::string& name, int flags, const CParticleData& data,
                         const CVector3f& scale, CStateManager& mgr, TAreaId areaId,
                         bool active, int particleLightIdx);
  void Update(float dt, const CPoseAsTransforms& pose, const CCharLayoutInfo& layoutInfo,
              const CTransform4f& xf, const CVector3f& scale, CStateManager& mgr);
  void AddToRendererClipped(const CFrustumPlanes&) const;
  void RenderSystemsToBeDrawnFirst() const;
  void RenderSystemsToBeDrawnLast() const;
  void DeleteAllLights(CStateManager& mgr);
  void AddToRendererClippedMasked(const CFrustumPlanes&, int mask, int target) const;
  void RenderSystemsToBeDrawnFirstMasked(int mask, int target) const;
  void RenderSystemsToBeDrawnLastMasked(int mask, int target) const;
  void SetModulationColorAllActiveEffects(const CColor& color);
  void SetUpdatesEnabled(bool enabled) { xb4_24_updatesEnabled = enabled; }

  bool AreAnySystemsDrawnWithModel() const { return xb4_25_anySystemsDrawnWithModel; }

private:
  rstl::map< CAssetId, rstl::rc_ptr< TLockedToken< CGenDescription > > > x0_particleDescs;
  rstl::map< CAssetId, rstl::rc_ptr< TLockedToken< CSwooshDescription > > > x14_swooshDescs;
  rstl::map< CAssetId, rstl::rc_ptr< TLockedToken< CElectricDescription > > > x28_electricDescs;
  DrawMap x3c_rendererDrawLoop;
  DrawMap x50_firstDrawLoop;
  DrawMap x64_lastDrawLoop;
  DrawMap x78_rendererDraw;
  DrawMap x8c_firstDraw;
  DrawMap xa0_lastDraw;
  bool xb4_24_updatesEnabled : 1;
  bool xb4_25_anySystemsDrawnWithModel : 1;
};
CHECK_SIZEOF(CParticleDatabase, 0xb8)

#endif // _CPARTICLEDATABASE
