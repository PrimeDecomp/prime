#ifndef _CGUISYS
#define _CGUISYS

#include "types.h"

class IFactory;
class CSimplePool;

class CGuiSys;
extern CGuiSys* gGuiSystem;

class CGuiSys {
public:
  enum EUsageMode {
    kUM_Zero,
    kUM_One,
    kUM_Two,
  };

  CGuiSys(IFactory*, CSimplePool*, EUsageMode);
  ~CGuiSys();

  static void SetGlobalGuiSys(CGuiSys* ptr) {
    gGuiSystem = ptr;
    spGuiSys = ptr;
  }

private:
  uchar pad[0x14];

  static CGuiSys* spGuiSys;
};

#endif // _CGUISYS
