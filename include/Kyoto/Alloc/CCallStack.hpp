#ifndef _CCALLSTACK
#define _CCALLSTACK

#include <types.h>

class CCallStack {
public:
  CCallStack(uint lineNum, const char* lineStr, const char* type = "UnknownType");

  const char* GetFileAndLineText() const;
  const char* GetTypeText() const;
  
private:
  const char* x0_line;
  const char* x4_type;
};

#endif // _CCALLSTACK
