#ifndef _CIOWINMANAGER_HPP
#define _CIOWINMANAGER_HPP

#include "types.h"

#include "rstl/list.hpp"
#include "rstl/rc_ptr.hpp"

class CIOWin;

class CIOWinManager {
public:
  CIOWinManager();

  void Draw() const;
  void AddIOWin(rstl::ncrc_ptr< CIOWin >, int, int);

  inline bool IsEmpty() const { return x4_ == 0 && x0_ == 0; }

private:
  uint x0_;
  uint x4_;
  rstl::list< unkptr > x8_;
};
CHECK_SIZEOF(CIOWinManager, 0x20)

#endif
