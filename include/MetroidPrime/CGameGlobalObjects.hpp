#ifndef _CGAMEGLOBALOBJECTS
#define _CGAMEGLOBALOBJECTS

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
#include "Kyoto/TOneStatic.hpp"
#include "Kyoto/Text/CRasterFont.hpp"
#include "MetroidPrime/CInGameTweakManager.hpp"
#include "MetroidPrime/CMemoryCard.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Factories/CCharacterFactoryBuilder.hpp"
#include "MetroidPrime/Player/CGameState.hpp"

class IRenderer;
class CStringTable;

class CGameGlobalObjects : public TOneStatic< CGameGlobalObjects > {
public:
  CGameGlobalObjects(COsContext&, CMemorySys&);

  void PostInitialize(COsContext&, CMemorySys&);
  void AddPaksAndFactories();
  void LoadStringTable();

  rstl::single_ptr< CGameState >& GameState() { return x134_gameState; }

  static CRasterFont* LoadDefaultFont();

private:
  CMemoryCardSys x0_memoryCardSys;
  CResFactory x4_resFactory;
  CSimplePool xcc_simplePool;
  CCharacterFactoryBuilder xec_characterFactoryBuilder;
  CAiFuncMap x110_aiFuncMap;
  CGraphicsSys x130_graphicsSys;
  rstl::single_ptr< CGameState > x134_gameState;
  rstl::single_ptr< CMemoryCard > x138_;
  rstl::optional_object< TLockedToken< CStringTable > > x13c_stringTable;
  rstl::single_ptr< IRenderer > x14c_renderer;
  rstl::single_ptr< CInGameTweakManager > x150_inGameTweakManager;
  TToken< CRasterFont > x154_defaultFont;
};
CHECK_SIZEOF(CGameGlobalObjects, 0x15c)

// TODO move to related headers
extern unkptr gpController;
extern unkptr gpDefaultFont;

#endif // _CGAMEGLOBALOBJECTS
