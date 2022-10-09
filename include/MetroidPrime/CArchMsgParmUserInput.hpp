#ifndef _CARCHMSGPARMUSERINPUT
#define _CARCHMSGPARMUSERINPUT

#include "MetroidPrime/CArchitectureMessage.hpp"

#include "Kyoto/Input/CFinalInput.hpp"

class CArchMsgParmUserInput : public IArchitectureMessageParm {
public:
  CArchMsgParmUserInput(const CFinalInput& in);
  ~CArchMsgParmUserInput();

  const CFinalInput& GetUserInput() const;

private:
  CFinalInput mInput;
};

#endif // _CARCHMSGPARMUSERINPUT
