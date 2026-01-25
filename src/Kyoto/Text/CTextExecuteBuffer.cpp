#include "Kyoto/Text/CTextExecuteBuffer.hpp"

#include "Kyoto/Text/CLineInstruction.hpp"
#include "Kyoto/Text/CPopStateInstruction.hpp"
#include "Kyoto/Text/CPushStateInstruction.hpp"

CTextExecuteBuffer::CTextExecuteBuffer()
: xa0_curBlock(nullptr)
, xa4_curLine(nullptr)
, xa8_curWordIt(x0_instructions.end())
// , xac_curY(0)
// , xb0_curX(0)
, xb4_curWordX(0)
, xb8_curWordY(0)
, xbc_spaceDistance(0)
, xc0_imageBaseline(0) {}

void CTextExecuteBuffer::Clear() {
  x0_instructions.clear();
  x18_ = CSaveableState();
  xa0_curBlock = nullptr;
  xa4_curLine = nullptr;
  xa8_curWordIt = x0_instructions.end();
  xb4_curWordX = 0;
  xb8_curWordY = 0;
  xbc_spaceDistance = 0;
}

void CTextExecuteBuffer::AddPushState() {
  const rstl::ncrc_ptr< CInstruction > newInst = rs_new CPushStateInstruction();
  x0_instructions.push_front(newInst);
  xc4_stateStack.push(x18_);
}

void CTextExecuteBuffer::AddPopState() {
  const rstl::ncrc_ptr< CInstruction > newInst = rs_new CPopStateInstruction();
  x0_instructions.push_front(newInst);
  x18_ = *xc4_stateStack.top();
  xc4_stateStack.pop();
  
  if (xa4_curLine->GetX() == 0) {
    xa4_curLine->SetJustification(x18_.GetJustification());
    xa4_curLine->SetVerticalJustification(x18_.GetVerticalJustification());
  }
}