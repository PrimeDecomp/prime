#include "Kyoto/CFrameDelayedKiller.hpp"

#include "Kyoto/Particles/CParticleDataFactory.hpp"
#include "Kyoto/Particles/IElement.hpp"

#include <dolphin/gx/GXManage.h>
#include <rstl/list.hpp>

#pragma force_active on
/* TODO: This is a hack we need to see what's throwing off the alignment and fix it */
static char unused[32] = {0};
#pragma force_active reset

static uint sCurList = 0;
static rstl::list< void* > sFrameDelayedList[2];
struct Something {
  Something();

  bool fn_8036CB50(uint x);
  bool fn_8036CB28(uint x);
  uint unk1;
  uint unk2;
  uint unk3;
  uint* v;
};

void CFrameDelayedKiller::Initialize() { fn_8036CCFC(); }
void CFrameDelayedKiller::ShutDown() { fn_8036CCFC(); }

void CFrameDelayedKiller::fn_8036CD20() {
  for (int i = 0; i < 2; ++i) {
    fn_8036CB90();
  }
}
void CFrameDelayedKiller::fn_8036CCFC() {
  GXDrawDone();
  fn_8036CD20();
}

void CFrameDelayedKiller::fn_8036CC1C(const int frame, void* ptr) {
  uint index = frame == 1 ? sCurList : sCurList ^ 1;

  sFrameDelayedList[index].push_back(ptr);
}
void CFrameDelayedKiller::fn_8036CB90() {
  sCurList ^= 1;
  rstl::list< void* >& list = sFrameDelayedList[sCurList];
  for (rstl::list< void* >::iterator t = list.begin(); t != list.end(); ++t) {
    CMemory::Free(*t);
  }

  rstl::list< void* >::node* it = list.begin().get_node();
  const rstl::list< void* >::node* last = list.end().get_node();
  while (it != last) {
    it = list.do_erase(it);
  }
}
Something::Something() : unk1(256), unk2(0), unk3(0) {}

bool Something::fn_8036CB50(uint x) { return unk1 > unk2 + (x + 3) / 4; }

bool Something::fn_8036CB28(uint x) {
  int r0 = (uintptr_t)&v;
  int r3 = unk1;
  r0 = x - r0;
  r0 >>= 2;
  r0 += r0;
  r0 = r3 ^ r0;
  r0 = __cntlzw(r0);
  r0 = r3 << r0;
  return r0 ? false : true;
}

void* IElement::operator new(size_t sz, const char* fileAndLine, const char* type) {
  return CElementAllocator::Alloc(sz, fileAndLine, type);
}

void IElement::operator delete(void* ptr, const size_t sz) { CElementAllocator::Free(ptr, sz); }