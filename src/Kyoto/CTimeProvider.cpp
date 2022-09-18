#include <Kyoto/Alloc/CMemory.hpp>
#include <Kyoto/CTimeProvider.hpp>
#include <Kyoto/Graphics/CGraphics.hpp>

CTimeProvider* CTimeProvider::gCurrentTimeProvider = nullptr;

CTimeProvider::CTimeProvider(const float& time)
: x0_currentTime(time), x4_first(true), x8_lastProvider(gCurrentTimeProvider) {
  if (x8_lastProvider != nullptr) {
    x8_lastProvider->x4_first = false;
  }

  gCurrentTimeProvider = this;

  CGraphics::SetExternalTimeProvider(this);
}

CTimeProvider::~CTimeProvider() {
  gCurrentTimeProvider = x8_lastProvider;
  if (gCurrentTimeProvider != nullptr) {
    gCurrentTimeProvider->x4_first = true;
    CGraphics::SetExternalTimeProvider(gCurrentTimeProvider);
  } else {
    CGraphics::SetExternalTimeProvider(nullptr);
  }
}
