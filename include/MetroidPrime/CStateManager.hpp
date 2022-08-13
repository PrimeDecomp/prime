#ifndef _CSTATEMANAGER_HPP
#define _CSTATEMANAGER_HPP

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/list.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CObjectList;
class CPlayer;
class CWorld;
class CStateManagerContainer;

class CStateManager {
public:
  void SendScriptMsg(TUniqueId uid, TEditorId target, EScriptObjectMessage msg, EScriptObjectState state);

private:
  u16 x0_nextFreeIndex;
  rstl::reserved_vector< u16, 1024 > x8_objectIndexArray;
  rstl::reserved_vector< rstl::auto_ptr< CObjectList >, 8 > x808_objectLists;
  CPlayer* x84c_player;
  rstl::single_ptr< CWorld > x850_world;
  rstl::list< rstl::reserved_vector< TUniqueId, 32 > > x854_graveyard;
  rstl::single_ptr< CStateManagerContainer > x86c_stateManagerContainer;
};

#endif
