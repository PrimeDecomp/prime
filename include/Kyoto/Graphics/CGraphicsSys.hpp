#ifndef _CGRAPHICSSYS
#define _CGRAPHICSSYS

#include "types.h"

class CGraphicsSys {
public:
  CGraphicsSys(const COsContext& osContext, const CMemorySys& memorySys, uint, void*);
  ~CGraphicsSys();

private:
  uint pad;
};

#endif // _CGRAPHICSSYS
