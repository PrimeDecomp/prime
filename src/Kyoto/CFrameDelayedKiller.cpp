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
};

void CFrameDelayedKiller::Initialize() { StallAndFlushAllAllocations(); }
void CFrameDelayedKiller::ShutDown() { StallAndFlushAllAllocations(); }

void CFrameDelayedKiller::FlushAllAllocations() {
  for (int i = 0; i < 2; ++i) {
    FlushAllocationsForFrame();
  }
}
void CFrameDelayedKiller::StallAndFlushAllAllocations() {
  GXDrawDone();
  FlushAllAllocations();
}

void CFrameDelayedKiller::ScheduleDeletion(const EWhichFrame thisFrame, void* victim) {
  uint index = thisFrame == true ? sCurList : sCurList ^ 1;

  sFrameDelayedList[index].push_back(victim);
}
void CFrameDelayedKiller::FlushAllocationsForFrame() {
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
bool Something::fn_8036CB28(unsigned int x) {
  int endAddr = reinterpret_cast< uintptr_t >(reinterpret_cast< uchar* >(this) + sizeof(*this));
  endAddr = (x - endAddr);
  int index = endAddr / 4;

  return (unk1 > index);
}

void* IElement::operator new(size_t sz, const char* fileAndLine, const char* type) {
  return CElementAllocator::Alloc(sz, fileAndLine, type);
}

void IElement::operator delete(void* ptr, const size_t sz) { CElementAllocator::Free(ptr, sz); }