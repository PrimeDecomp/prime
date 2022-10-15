#ifndef _CCALLSTACK
#define _CCALLSTACK

#include <types.h>

class CCallStack {
  static const char kUnknownType[];
public:
  CCallStack(uint lineNum, const char* lineStr, const char* type = kUnknownType);

  const char* GetFileAndLineText() const;
  const char* GetTypeText() const;
  
private:
  const char* x0_line;
  const char* x4_type;
};

#endif // _CCALLSTACK
