#ifndef __CARCMSGPARMUSERINPUT_HPP__
#define __CARCMSGPARMUSERINPUT_HPP__

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

#endif // __CARCMSGPARMUSERINPUT_HPP__
