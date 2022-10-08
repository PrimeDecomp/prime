#include "MetroidPrime/CArchMsgParmUserInput.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

CArchMsgParmUserInput::CArchMsgParmUserInput(const CFinalInput& input)
: mInput(input) {}

CArchMsgParmUserInput::~CArchMsgParmUserInput() {}

const CFinalInput& CArchMsgParmUserInput::GetUserInput() const {
  return mInput;
}
