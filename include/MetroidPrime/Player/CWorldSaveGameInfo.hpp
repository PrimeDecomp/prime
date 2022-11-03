#ifndef _CWORLDSAVEGAMEINFO
#define _CWORLDSAVEGAMEINFO

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CWorldSaveGameInfo {
public:
  enum EScanCategory { kSC_None, kSC_Data, kSC_Lore, kSC_Creature, kSC_Research, kSC_Artifact };

  int GetRelayIndex(const TEditorId&) const;
  
  const rstl::vector<TEditorId>& GetRelays() const { return x14_relays; }

private:
  uint x0_areaCount;
  rstl::vector<TEditorId> x4_cinematics;
  rstl::vector<TEditorId> x14_relays;
};

#endif // _CWORLDSAVEGAMEINFO
