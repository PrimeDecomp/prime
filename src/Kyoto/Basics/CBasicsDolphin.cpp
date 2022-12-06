#include "Kyoto/Basics/CBasics.hpp"

#include "Kyoto/Basics/CStopwatch.hpp"

#include "dolphin/os.h"
#include "dolphin/dvd.h"

static bool gInitialized = false;
bool CBasics::Init() {
  if (!gInitialized) {
    OSInit();
    OSInitFastCast();
    DVDInit();

    CStopwatch::InitGlobalTimer();
    gInitialized = true;
  }
  return gInitialized;
}
