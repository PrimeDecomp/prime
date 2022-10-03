#ifndef __CWARP_HPP__
#define __CWARP_HPP__

#include "rstl/vector.hpp"
class CParticle;
class CWarp {
public:
  virtual ~CWarp();
  virtual bool UpdateWarp() = 0;
  virtual void ModifyParticles(const rstl::vector<CParticle>& particles) = 0;
  virtual void Activate(bool) = 0;
  virtual bool IsActivated() =0;
  virtual int Get4CharID() = 0;
};

#endif // __CWARP_HPP__
