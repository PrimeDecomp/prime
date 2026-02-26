#ifndef _CWORLDSTATE
#define _CWORLDSTATE

#include "Kyoto/SObjectTag.hpp"

namespace rstl {
template < typename T >
class rc_ptr;
} // namespace rstl

class CMapWorldInfo;

class CWorldState {
public:
  ~CWorldState();
  void SetDesiredAreaAssetId(CAssetId id);
  rstl::rc_ptr< CMapWorldInfo > GetMapWorldInfo() const;

private:
  uchar pad[0x18];
};

#endif // _CWORLDSTATE
