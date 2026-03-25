#ifndef _CCOMPOUNDTARGETRETICLE
#define _CCOMPOUNDTARGETRETICLE

#include "types.h"

class CStateManager;

class CCompoundTargetReticle {
public:
  explicit CCompoundTargetReticle(const CStateManager& mgr);
  ~CCompoundTargetReticle();

  bool CheckLoadComplete() const { return true; }
  void Update(float dt, const CStateManager& mgr);
  void Draw(const CStateManager& mgr, bool hideLockon);
  void Touch();

private:
  uchar x0_data[0x21C];
};

#endif // _CCOMPOUNDTARGETRETICLE
