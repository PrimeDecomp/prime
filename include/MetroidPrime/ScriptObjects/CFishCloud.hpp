#ifndef _CFISHCLOUD
#define _CFISHCLOUD

#include "MetroidPrime/CActor.hpp"

class CFishCloud : public CActor {
public:
  bool AddRepulsor(TUniqueId source, bool swirl, float radius, float priority);
  bool AddAttractor(TUniqueId source, bool swirl, float radius, float priority);
  void RemoveRepulsor(TUniqueId source);
  void RemoveAttractor(TUniqueId source);
};
#endif
