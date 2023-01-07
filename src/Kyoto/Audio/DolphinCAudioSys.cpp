#include "Kyoto/Audio/CAudioSys.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include "dolphin/ai.h"
#include "dolphin/dtk.h"
#include "dolphin/os.h"

#include "musyx/musyx.h"

bool CAudioSys::mInitialized = false;
bool CAudioSys::mIsLIstenerActive = false;
bool CAudioSys::mVerbose = false;
uchar CAudioSys::mMaxNumEmitters = 0;
rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >* CAudioSys::mpGroupSetDB = nullptr;
rstl::map< uint, rstl::string >* CAudioSys::mpGroupSetResNameDB = nullptr;
rstl::map< rstl::string, rstl::ncrc_ptr< CAudioSys::CTrkData > >* CAudioSys::mpDVDTrackDB = nullptr;

const uchar CAudioSys::kMaxVolume = 0x7f;
bool CAudioSys::mProLogic2 = true;

const rstl::string CAudioSys::mpDefaultInvalidString(rstl::string_l("NULL"));

void* DoMalloc(size_t len) { return new char[len]; }

void DoFree(void* ptr) {
  if (!ptr) {
    return;
  }
  delete[] ptr;
}

CAudioSys::CAudioSys(char numVoices, char numMusic, char numSfx, char maxNumEmitters,
                     uint aramSize) {
  mInitialized = true;
  SND_HOOKS hooks = {DoMalloc, DoFree};
  AIInit(NULL);
  sndSetHooks(&hooks);
  if (mProLogic2) {
    sndInit(numVoices, numMusic, numSfx, 1, 1, aramSize);
  } else {
    sndInit(numVoices, numMusic, numSfx, 1, 0, aramSize);
  }
  DTKInit();

  mpGroupSetDB = new rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >();
  mpGroupSetResNameDB = new rstl::map< uint, rstl::string >();
  mpDVDTrackDB = new rstl::map< rstl::string, rstl::ncrc_ptr< CTrkData > >();
  mpEmitterDB = new rstl::vector< CEmitterData >(maxNumEmitters);
  mpListener = nullptr; // TODO: Add listener allocation
  mIsLIstenerActive = false;

  if (OSGetSoundMode() == OS_SOUND_MODE_MONO) {
    sndOutputMode(SND_OUTPUTMODE_MONO);
    mSurroundMode = kSM_Mono;
  } else {
    sndOutputMode(SND_OUTPUTMODE_SURROUND);
    mSurroundMode = kSM_Surround;
  }

  mMaxAramUsage = aramSize;
}
