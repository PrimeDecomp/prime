#ifndef _CGAMEGLOBALOBJECTS_HPP
#define _CGAMEGLOBALOBJECTS_HPP

#include "types.h"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/CMemoryCardSys.hpp"
#include "Kyoto/CMemorySys.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/CToken.hpp"
#include "Kyoto/Graphics/CGraphicsSys.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Factories/CCharacterFactoryBuilder.hpp"
#include "MetroidPrime/Player/CGameState.hpp"

class CGameGlobalObjects : public TOneStatic< CGameGlobalObjects > {
public:
  CGameGlobalObjects(COsContext&, CMemorySys&);

  void PostInitialize(COsContext&, CMemorySys&);

  rstl::single_ptr< CGameState >& GameState() { return x134_gameState; }

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
