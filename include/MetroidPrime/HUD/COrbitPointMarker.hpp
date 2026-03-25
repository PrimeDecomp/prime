#ifndef _CORBITPOINTMARKER
#define _CORBITPOINTMARKER

#include "types.h"

class CStateManager;

class COrbitPointMarker {
public:
  COrbitPointMarker();
  ~COrbitPointMarker();

  bool CheckLoadComplete() const;
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr);

private:
  uchar x0_data[0x34];
};

#endif // _CORBITPOINTMARKER
