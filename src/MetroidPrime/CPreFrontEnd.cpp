#include "MetroidPrime/CPreFrontEnd.hpp"

#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CMemoryCard.hpp"

#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

CPreFrontEnd::CPreFrontEnd()
: CIOWin(rstl::string_l("Pre front-end window")), x14_resourceTweaksRegistered(false) {}

CIOWin::EMessageReturn CPreFrontEnd::OnMessage(const CArchitectureMessage& msg,
                                               CArchitectureQueue&) {
  if (msg.GetType() == kAM_TimerTick) {
    if (!gpResourceFactory->GetResLoader().AreAllPaksLoaded())
      return kMR_Exit;

    if (!x14_resourceTweaksRegistered) {
      gpMain->RegisterResourceTweaks();
      x14_resourceTweaksRegistered = true;
    }

    gpResourceFactory->AsyncIdle(1000000);

    gpMain->MemoryCardInitializePump();
    if (!gpMemoryCard)
      return kMR_Exit;

    if (!gpMain->LoadAudio())
      return kMR_Exit;

    return kMR_RemoveIOWinAndExit;

  } else {
    return kMR_Normal;
  }
}

void CPreFrontEnd::Draw() const {
  CGraphics::SetIsBeginSceneClearFb(true);
}

CPreFrontEnd::~CPreFrontEnd() {}
