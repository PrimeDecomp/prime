#ifndef _CWARP
#define _CWARP

#include "rstl/vector.hpp"

class CParticle;

class CWarp {
public:
  virtual ~CWarp();
  virtual bool UpdateWarp() = 0;
  virtual void ModifyParticles(const rstl::vector< CParticle >& particles) = 0;
  virtual void Activate(bool) = 0;
  virtual bool IsActivated() = 0;
  virtual int Get4CharID() = 0;
};

#endif // _CWARP
