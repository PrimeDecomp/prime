#ifndef _CCALLSTACK
#define _CCALLSTACK

class CCallStack {
public:
  CCallStack(uint lineNum, const char* lineStr, const char* type);

  const char* GetFileAndLineText() const;
  const char* GetTypeText() const;

private:
  const char* x0_line;
  const char* x4_type;
};

#endif // _CCALLSTACK
