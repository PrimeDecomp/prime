#ifndef _CIOWINMANAGER
#define _CIOWINMANAGER

#include "types.h"

#include "MetroidPrime/CArchitectureQueue.hpp"

#include "rstl/list.hpp"
#include "rstl/rc_ptr.hpp"

class CIOWin;

class CIOWinManager {
public:
  struct IOWinPQNode {
    rstl::rc_ptr<CIOWin> x0_iowin;
    int x4_prio;
    IOWinPQNode* x8_next;
    
    IOWinPQNode(rstl::ncrc_ptr<CIOWin> iowin, int prio, IOWinPQNode* next);
    
    rstl::ncrc_ptr<CIOWin> GetIOWin() const;
  };

  CIOWinManager();
  ~CIOWinManager();

  void Draw() const;
  void AddIOWin(rstl::ncrc_ptr< CIOWin >, int, int);
  void RemoveIOWin(rstl::ncrc_ptr<CIOWin> chIow);
  void RemoveAllIOWins();
  void ChangeIOWinPriority(rstl::ncrc_ptr<CIOWin> toChange, int pumpPrio, int drawPrio);
  rstl::ncrc_ptr<CIOWin> FindIOWin(const char* name);
  
  void PumpMessages(CArchitectureQueue& queue);
  bool DistributeOneMessage(const CArchitectureMessage& msg, CArchitectureQueue& queue);
  bool OnIOWinMessage(const CArchitectureMessage& msg);

  inline bool IsEmpty() const { return x4_pumpRoot == nullptr && x0_drawRoot == nullptr; }

private:
  IOWinPQNode* x0_drawRoot;
  IOWinPQNode* x4_pumpRoot;
  CArchitectureQueue x8_localGatherQueue;
};
CHECK_SIZEOF(CIOWinManager, 0x20)

#endif // _CIOWINMANAGER
