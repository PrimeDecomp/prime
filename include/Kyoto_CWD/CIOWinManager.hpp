#ifndef _CIOWINMANAGER_HPP
#define _CIOWINMANAGER_HPP

#include "types.h"

#include "rstl/list.hpp"

class CIOWinManager {
public:
  void Draw() const;

  inline bool IsEmpty() const { return x4_ == 0 && x0_ == 0; }

private:
  u32 x0_;
  u32 x4_;
  rstl::list< unkptr > x8_;
};

#endif
