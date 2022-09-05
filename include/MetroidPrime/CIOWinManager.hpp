#ifndef _CIOWINMANAGER_HPP
#define _CIOWINMANAGER_HPP

#include "types.h"

#include "rstl/list.hpp"

class CIOWinManager {
public:
  void Draw() const;

  inline bool IsEmpty() const { return x4_ == 0 && x0_ == 0; }

private:
  uint x0_;
  uint x4_;
  rstl::list< unkptr > x8_;
};

#endif
