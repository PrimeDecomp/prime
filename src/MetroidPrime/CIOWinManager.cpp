#include "MetroidPrime/CIOWinManager.hpp"

#include "MetroidPrime/CIOWin.hpp"
#include "MetroidPrime/Decode.hpp"

#include "rstl/string.hpp"

CIOWinManager::CIOWinManager()
: x0_drawRoot(nullptr), x4_pumpRoot(nullptr), x8_localGatherQueue() {}

CIOWinManager::~CIOWinManager() { RemoveAllIOWins(); }

CIOWinManager::IOWinPQNode::IOWinPQNode(rstl::ncrc_ptr< CIOWin > iowin, int prio,
                                        CIOWinManager::IOWinPQNode* next)
: x0_iowin(iowin), x4_prio(prio), x8_next(next) {}

void CIOWinManager::AddIOWin(rstl::ncrc_ptr< CIOWin > chIow, int pumpPrio, int drawPrio) {
  IOWinPQNode* node;
  IOWinPQNode* prevNode = nullptr;
  for (node = x4_pumpRoot; node && node->x4_prio > pumpPrio; node = node->x8_next)
    prevNode = node;
  IOWinPQNode* newNode = new IOWinPQNode(chIow, pumpPrio, node);
  if (prevNode)
    prevNode->x8_next = newNode;
  else
    x4_pumpRoot = newNode;

  prevNode = nullptr;
  for (node = x0_drawRoot; node && drawPrio < node->x4_prio; node = node->x8_next)
    prevNode = node;
  newNode = new IOWinPQNode(chIow, drawPrio, node);
  if (prevNode)
    prevNode->x8_next = newNode;
  else
    x0_drawRoot = newNode;
}

void CIOWinManager::RemoveIOWin(rstl::ncrc_ptr< CIOWin > chIow) {
  IOWinPQNode* prevNode = nullptr;
  for (IOWinPQNode* node = x4_pumpRoot; node; node = node->x8_next) {
    if (node->GetIOWin() == chIow) {
      if (prevNode)
        prevNode->x8_next = node->x8_next;
      else
        x4_pumpRoot = node->x8_next;
      delete node;
      break;
    }
    prevNode = node;
  }

  prevNode = nullptr;
  for (IOWinPQNode* node = x0_drawRoot; node; node = node->x8_next) {
    if (node->GetIOWin() == chIow) {
      if (prevNode)
        prevNode->x8_next = node->x8_next;
      else
        x0_drawRoot = node->x8_next;
      delete node;
      break;
    }
    prevNode = node;
  }
}

void CIOWinManager::RemoveAllIOWins() {
  while (x0_drawRoot) {
    RemoveIOWin(x0_drawRoot->GetIOWin());
  }
  while (x4_pumpRoot) {
    RemoveIOWin(x4_pumpRoot->GetIOWin());
  }
}

void CIOWinManager::ChangeIOWinPriority(rstl::ncrc_ptr< CIOWin > toChange, int pumpPrio,
                                        int drawPrio) {
  IOWinPQNode* prevNode = nullptr;

  for (IOWinPQNode* node = x4_pumpRoot; node; node = node->x8_next) {
    if (node->GetIOWin() == toChange) {
      if (prevNode == nullptr)
        x4_pumpRoot = node->x8_next;
      else
        prevNode->x8_next = node->x8_next;

      node->x4_prio = pumpPrio;
      IOWinPQNode* testNode = x4_pumpRoot;
      IOWinPQNode* testPrevNode = nullptr;
      for (; testNode && testNode->x4_prio > pumpPrio; testNode = testNode->x8_next) {
        testPrevNode = testNode;
      }
      node->x8_next = testNode;

      if (testPrevNode == nullptr)
        x4_pumpRoot = node;
      else
        testPrevNode->x8_next = node;
      break;
    }
    prevNode = node;
  }

  prevNode = nullptr;
  for (IOWinPQNode* node = x0_drawRoot; node; node = node->x8_next) {
    if (node->GetIOWin() == toChange) {
      if (prevNode == nullptr)
        x0_drawRoot = node->x8_next;
      else
        prevNode->x8_next = node->x8_next;

      node->x4_prio = drawPrio;
      IOWinPQNode* testNode = x0_drawRoot;
      IOWinPQNode* testPrevNode = nullptr;
      for (; testNode && testNode->x4_prio > drawPrio; testNode = testNode->x8_next) {
        testPrevNode = testNode;
      }
      node->x8_next = testNode;
      if (testPrevNode == nullptr)
        x0_drawRoot = node;
      else
        testPrevNode->x8_next = node;
      break;
    }
    prevNode = node;
  }
}

rstl::ncrc_ptr< CIOWin > CIOWinManager::FindIOWin(const char* name) {
  const rstl::string& nameStr = reinterpret_cast<const rstl::string&>(*name);

  for (IOWinPQNode* node = x4_pumpRoot; node; node = node->x8_next) {
    if (node->GetIOWin()->GetName() == nameStr) {
      return node->GetIOWin();
    }
  }
  for (IOWinPQNode* node = x0_drawRoot; node; node = node->x8_next) {
    if (node->GetIOWin()->GetName() == nameStr) {
      return node->GetIOWin();
    }
  }
  return rstl::ncrc_ptr< CIOWin >();
}

void CIOWinManager::PumpMessages(CArchitectureQueue& queue) {
  while (!queue.IsEmpty()) {
    CArchitectureMessage msg = queue.Pop();
    DistributeOneMessage(msg, queue);
  }
}

bool CIOWinManager::DistributeOneMessage(const CArchitectureMessage& msg,
                                         CArchitectureQueue& queue) {
  for (IOWinPQNode* node = x4_pumpRoot; node;) {
    rstl::ncrc_ptr< CIOWin > iow = node->GetIOWin();
    CIOWin::EMessageReturn mret = iow->OnMessage(msg, x8_localGatherQueue);

    while (!x8_localGatherQueue.IsEmpty()) {
      CArchitectureMessage msg = x8_localGatherQueue.Pop();
      if (msg.GetTarget() == kAMT_IOWinManager) {
        if (OnIOWinMessage(msg)) {
          x8_localGatherQueue.Clear();
          queue.Clear();
          return true;
        }
      } else {
        queue.Push(msg);
      }
    }

    if (mret == CIOWin::kMR_RemoveIOWinAndExit || mret == CIOWin::kMR_RemoveIOWin) {
      node = node->x8_next;
      RemoveIOWin(iow);
    } else {
      node = node->x8_next;
    }
    if (mret == CIOWin::kMR_Exit || mret == CIOWin::kMR_RemoveIOWinAndExit) {
      break;
    }
  }

  return false;
}

void CIOWinManager::Draw() const {
  for (IOWinPQNode* node = x0_drawRoot; node; node = node->x8_next) {
    node->GetIOWin()->PreDraw();
    if (!node->GetIOWin()->GetIsContinueDraw())
      break;
  }
  for (IOWinPQNode* node = x0_drawRoot; node; node = node->x8_next) {
    node->GetIOWin()->Draw();
    if (!node->GetIOWin()->GetIsContinueDraw())
      break;
  }
}

bool CIOWinManager::OnIOWinMessage(const CArchitectureMessage& msg) {
  switch (msg.GetType()) {
  case kAM_RemoveIOWin: {
    const CArchMsgParmNull& parm = MakeMsg::GetParmDeleteIOWin(msg);
    rstl::ncrc_ptr< CIOWin > iow = FindIOWin((char*)&parm + 4);
    if (iow)
      RemoveIOWin(iow);
    break;
  }
  case kAM_CreateIOWin: {
    const CArchMsgParmInt32Int32VoidPtr& parm = MakeMsg::GetParmCreateIOWin(msg);
    int pumpPrio = parm.GetInt1();
    int drawPrio = parm.GetInt2();
    rstl::rc_ptr< CIOWin > ptr(static_cast< CIOWin* >(const_cast< void* >(parm.GetPtr())));
    AddIOWin(ptr, pumpPrio, drawPrio);
    break;
  }
  case kAM_ChangeIOWinPriority: {
    const CArchMsgParmInt32Int32VoidPtr& parm = MakeMsg::GetParmChangeIOWinPriority(msg);
    int pumpPrio = parm.GetInt1();
    int drawPrio = parm.GetInt2();
    const void* ptr = parm.GetPtr();
    rstl::ncrc_ptr< CIOWin > iow = FindIOWin((char*)&parm + 0xc);
    if (iow)
      ChangeIOWinPriority(iow, pumpPrio, drawPrio);
    break;
  }
  case kAM_RemoveAllIOWins: {
    RemoveAllIOWins();
    return true;
  }
  default:
    break;
  }
  return false;
}

rstl::ncrc_ptr<CIOWin> CIOWinManager::IOWinPQNode::GetIOWin() const {
  return x0_iowin;
}
