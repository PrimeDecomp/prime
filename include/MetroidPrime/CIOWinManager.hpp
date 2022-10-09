#ifndef _CIOWINMANAGER
#define _CIOWINMANAGER

#include "types.h"

#include "rstl/list.hpp"
#include "rstl/rc_ptr.hpp"

class CIOWin;
// TODO
class IOWinPQNode;

class CIOWinManager {
public:
  CIOWinManager();
  ~CIOWinManager();

  void Draw() const;
  void AddIOWin(rstl::ncrc_ptr< CIOWin >, int, int);
  void RemoveAllIOWins();

  inline bool IsEmpty() const { return x4_pumpRoot == nullptr && x0_drawRoot == nullptr; }

private:
  IOWinPQNode* x0_drawRoot;
  IOWinPQNode* x4_pumpRoot;
  CArchitectureQueue x8_localGatherQueue;
};
CHECK_SIZEOF(CIOWinManager, 0x20)

#endif // _CIOWINMANAGER
