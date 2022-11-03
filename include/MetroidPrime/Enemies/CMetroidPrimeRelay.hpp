#ifndef _CMETROIDPRIMERELAY
#define _CMETROIDPRIMERELAY

#include "MetroidPrime/CEntity.hpp"

class CMetroidPrimeRelay : public CEntity {
public:
  TUniqueId GetMetroidPrimeExoId() const { return x34_mpUid; }

private:
  TUniqueId x34_mpUid;
};

#endif // _CMETROIDPRIMERELAY
