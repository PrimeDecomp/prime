#ifndef _CSCRIPTMAILBOX
#define _CSCRIPTMAILBOX

#include "MetroidPrime/TGameTypes.hpp"

class CScriptMailbox {
public:
  void AddRelay(TEditorId id);
  void RemoveRelay(TEditorId id);
};

#endif // _CSCRIPTMAILBOX
