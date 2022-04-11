#ifndef _CGAMEGLOBALOBJECTS_HPP
#define _CGAMEGLOBALOBJECTS_HPP

#include "types.h"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

#include "CAiFuncMap.hpp"
#include "CCharacterFactoryBuilder.hpp"
#include "CGameState.hpp"
#include "CGraphicsSys.hpp"
#include "CInGameTweakManager.hpp"
#include "CMemoryCardSys.hpp"
#include "CMemorySys.hpp"
#include "COsContext.hpp"
#include "CRasterFont.hpp"
#include "CResFactory.hpp"
#include "CSimplePool.hpp"
#include "CToken.hpp"
#include "TOneStatic.hpp"

class CGameGlobalObjects : public TOneStatic< CGameGlobalObjects > {
public:
  CGameGlobalObjects(COsContext&, CMemorySys&);

  void PostInitialize(COsContext&, CMemorySys&);

  CGameState* GameState() { return x134_gameState.get(); }

  void SetGameState(CGameState* gameState) {
    x134_gameState = gameState;
    gpGameState = x134_gameState.get();
  }

private:
  rstl::single_ptr< CMemoryCardSys > x0_memoryCardSys;
  CResFactory x4_resFactory;
  CSimplePool xcc_simplePool;
  CCharacterFactoryBuilder xec_characterFactoryBuilder;
  CAiFuncMap x110_aiFuncMap;
  CGraphicsSys x130_graphicsSys;
  rstl::single_ptr< CGameState > x134_gameState;
  u32 x138_;
  rstl::optional_object< TCachedToken< unkptr > > x13c_;
  u32 x14c_;
  rstl::single_ptr< CInGameTweakManager > x150_inGameTweakManager;
  TToken< CRasterFont > x154_defaultFont;
};

// TODO move to related headers
extern unkptr gGuiSystem;
extern unkptr gpController;
extern unkptr gpDefaultFont;

#endif
