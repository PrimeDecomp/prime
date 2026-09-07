#ifndef _CLAYOUTDESCRIPTION
#define _CLAYOUTDESCRIPTION

#include "Kyoto/TToken.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"

class CCharLayoutInfo;
class CLayoutScaleInfo;

class CLayoutDescription {
public:
  CLayoutDescription(const TLockedToken< CCharLayoutInfo >& layout) : x0_layoutToken(layout) {}

  class CScaledLayoutDescription {
  public:
    const TLockedToken< CCharLayoutInfo >& ScaledLayout() const { return x0_layoutToken; }
    float GlobalScale() const { return xc_scale; }

  private:
    TLockedToken< CCharLayoutInfo > x0_layoutToken;
    float xc_scale;
    rstl::optional_object<
        rstl::pair< rstl::pair< const CLayoutScaleInfo*, const CLayoutScaleInfo* >, float > >
        x10_scaleInfo;
  };

  uchar GetNumSegments() const;
  bool UsesScale() const { return xc_scaled.valid(); }
  float GlobalScale() const { return UsesScale() ? xc_scaled->GlobalScale() : 1.f; }
  const TLockedToken< CCharLayoutInfo >& ScaledLayout() const {
    return UsesScale() ? xc_scaled->ScaledLayout() : x0_layoutToken;
  }

private:
  TLockedToken< CCharLayoutInfo > x0_layoutToken;
  rstl::optional_object< CScaledLayoutDescription > xc_scaled;
};
CHECK_SIZEOF(CLayoutDescription, 0x30)
NESTED_CHECK_SIZEOF(CLayoutDescription, CScaledLayoutDescription, 0x20)

#endif // _CLAYOUTDESCRIPTION
