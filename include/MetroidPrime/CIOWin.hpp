#ifndef _CIOWIN_HPP
#define _CIOWIN_HPP

#include "types.h"

#include "rstl/string.hpp"

class CArchitectureMessage;
class CArchitectureQueue;

class CIOWin {
public:
  enum EMessageReturn {
    kMR_Normal = 0,
    kMR_Exit = 1,
    kMR_RemoveIOWinAndExit = 2,
    kMR_RemoveIOWin = 3,
  };

  CIOWin(const rstl::string& name);
  virtual ~CIOWin();

  const rstl::string& GetName() const;
  virtual EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) = 0;
  virtual bool GetIsContinueDraw() const;
  virtual void Draw() const;
  virtual void PreDraw() const;

private:
  rstl::string x4_name;
};

#endif
