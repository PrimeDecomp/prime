#ifndef _CGRAPHICSSYS_HPP
#define _CGRAPHICSSYS_HPP

#include "types.h"

class CGraphicsSys {
public:
  CGraphicsSys(const COsContext& osContext, const CMemorySys& memorySys, uint, void*);
  ~CGraphicsSys();

private:
  uint pad;
};

#endif
