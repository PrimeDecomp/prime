#include "Kyoto/Animation/CSkinnedModel.hpp"

#include "Kyoto/Alloc/CCircularBuffer.hpp"

#include <dolphin/gx.h>
#include <rstl/optional_object.hpp>

struct SSkinnedAllocation {
  SSkinnedAllocation(void* ptr, int w1, ushort w2) : x0_ptr(ptr), x4_unk1(w1), x8_unk2(w2) {}

  void* x0_ptr;
  int x4_unk1;
  ushort x8_unk2;
};

namespace Skinning {
static ushort skCurrentToken = 0;
static int sNumSkinnedObjects = 0;
static bool sSkinningInitialized = false;
static char sStaticSkinningData[0x80000] ATTRIBUTE_ALIGN(32);
static rstl::optional_object< CCircularBuffer > sSkinningBuffer;
static rstl::list< SSkinnedAllocation > sAllocations;

void AddSkinnedRef();
void DelSkinnedRef();
} // namespace Skinning

void Skinning::AddSkinnedRef() {
  if (!sSkinningInitialized) {
    GXSetDrawSync(0xFFFF);
    while (GXReadDrawSync() != 0xFFFF) {
    }
    skCurrentToken = 1;
    sSkinningInitialized = true;
  }

  if (sNumSkinnedObjects == 0) {
    sSkinningBuffer = CCircularBuffer(sStaticSkinningData, sizeof(sStaticSkinningData));
  }
  ++sNumSkinnedObjects;
}

void Skinning::DelSkinnedRef() {
  --sNumSkinnedObjects;
  if (sNumSkinnedObjects == 0) {
    sSkinningBuffer.clear();
    sAllocations.clear();
  }
}
