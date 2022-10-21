#ifndef _CMIDIMANAGER
#define _CMIDIMANAGER

#include "Kyoto/Audio/CSfxHandle.hpp"

class CMidiManager {
public:
  class CMidiWrapper {};
  class CMidiData {};

  static CSfxHandle Play(const CMidiData&, unsigned short fadeTime, bool stopExisting, short volume);
  static void Stop(const CSfxHandle&, unsigned short);
};

#endif // _CMIDIMANAGER
