#ifndef _CPARTICLEDATABASE_HPP
#define _CPARTICLEDATABASE_HPP

#include "types.h"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/map.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/string.hpp"

class CElectricDescription;
class CGenDescription;
class CParticleGenInfo;
class CStateManager;
class CSwooshDescription;

class CParticleDatabase {
public:
  typedef rstl::map< rstl::string, rstl::auto_ptr< CParticleGenInfo > > DrawMap;

  void SetParticleEffectState(const rstl::string& name, bool active, CStateManager& mgr);
  void RenderSystemsToBeDrawnFirst() const;
  void RenderSystemsToBeDrawnLast() const;

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
CHECK_SIZEOF(CParticleDatabase, 0xb5)

#endif
