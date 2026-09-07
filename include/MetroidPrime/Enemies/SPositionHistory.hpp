#ifndef _SPOSITIONHISTORY
#define _SPOSITIONHISTORY

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

struct SPositionHistory {
private:
  float x0_magSquared;
  rstl::reserved_vector< CVector3f, 16 > x4_values;

public:
  explicit SPositionHistory(float mag);
  CVector3f GetValue(CVector3f pos, CVector3f face);
  void AddValue(CVector3f pos);
  void Clear() { x4_values.clear(); }
};

#endif // _SPOSITIONHISTORY
