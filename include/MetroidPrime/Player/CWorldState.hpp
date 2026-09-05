#ifndef _CWORLDSTATE
#define _CWORLDSTATE

#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"

namespace rstl {
template < typename T >
class rc_ptr;
} // namespace rstl

class CMapWorldInfo;
class CScriptLayerManager;

class CWorldState {
public:
  ~CWorldState();
  rstl::rc_ptr< CScriptLayerManager >& GetLayerState();
  void SetDesiredAreaAssetId(CAssetId id);
  void SetAreaId(TAreaId id);
  rstl::rc_ptr< CMapWorldInfo >& MapWorldInfo();
  rstl::rc_ptr< CMapWorldInfo > GetMapWorldInfo() const;

private:
  uchar pad[0x18];
};

#endif // _CWORLDSTATE
