#ifndef _CSTATEMANAGER_HPP
#define _CSTATEMANAGER_HPP

#include "types.h"

class CStateManager {
public:
  void SendScriptMsg(TUniqueId uid, TEditorId target, EScriptObjectMessage msg, EScriptObjectState state);
};

#endif
