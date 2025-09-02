#ifndef _CTEXTEXECUTEBUFFER
#define _CTEXTEXECUTEBUFFER

#include "Kyoto/Text/TextCommon.hpp"
#include "rstl/list.hpp"
#include "rstl/rc_ptr.hpp"

#include "Kyoto/Text/CSaveableState.hpp"

class CInstruction;
class CBlockInstruction;
class CLineInstruction;
class CFontImageDef;

class CTextExecuteBuffer {
  typedef rstl::list< rstl::ncrc_ptr< CInstruction > > InstList;

public:
  CTextExecuteBuffer();

  void AddFont(const TToken< CRasterFont >& font);
  void AddLineSpacing(float spacing);
  void AddLineExtraSpace(int space);
  void AddJustification(EJustification just);
  void AddVerticalJustification(EVerticalJustification just);
  void AddPushState();
  void AddPopState();
  void AddImage(const CFontImageDef& image);
  void AddColor(EColorType type, const CTextColor& color);
  void AddRemoveColorOverride(int idx);
  void AddColorOverride(int idx, const CTextColor& color);
  void AddString(const wchar_t* str, const int len);

private:
  InstList x0_instructions;
  CSaveableState x18_;
  CBlockInstruction* xa0_curBlock;
  CLineInstruction* xa4_curLine;
  InstList::const_iterator xa8_curWordIt;
  int xac_curY;
  int xb0_curX;
  int xb4_curWordX;
  int xb8_curWordY;
  int xbc_spaceDistance;
  bool xc0_imageBaseline;
  rstl::list< CSaveableState > xc4_stateStack;
};

#endif // _CTEXTEXECUTEBUFFER
