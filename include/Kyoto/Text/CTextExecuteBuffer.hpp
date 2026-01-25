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

namespace rstl {
template < typename T, typename _Container = list< T > >
class stack {
public:
  typename _Container::iterator top() { return container.begin(); }
  typename _Container::const_iterator top() const { return container.begin(); }

  void pop() { return container.pop_front(); }

  void push(const T& item) { container.push_front(item); }

  void clear() { container.clear(); }

private:
  _Container container;
};
} // namespace rstl
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

  void Clear();

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
  char xc0_imageBaseline;
  rstl::stack< CSaveableState > xc4_stateStack;
};

#endif // _CTEXTEXECUTEBUFFER
