#ifndef _CCAMERABLURPASS
#define _CCAMERABLURPASS

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"

class CTexture;

class CCameraBlurPass {
public:
  enum EBlurType {
    kBT_NoBlur,
    kBT_LoBlur,
    kBT_HiBlur,
    kBT_XRay,
  };
  CCameraBlurPass();

  void SetBlur(EBlurType type, float amount, float duration, bool usePersistentFb);
  void DisableBlur(float duration);
  void Draw() const;

  static void DrawWideScreen(const CColor& color, const CTexture* tex, float v);
  
  EBlurType GetCurrType() const { return x10_curType; }
  bool GetNoPersistentCopy() const { return x2d_noPersistentCopy; }

private:
  rstl::optional_object< TLockedToken< CTexture > > x0_paletteTex;
  EBlurType x10_curType;
  EBlurType x14_endType;
  float x18_endValue;
  float x1c_curValue;
  float x20_startValue;
  float x24_totalTime;
  float x28_remainingTime;
  bool x2c_usePersistent;
  bool x2d_noPersistentCopy;
  uint x30_persistentBuf;
};
CHECK_SIZEOF(CCameraBlurPass, 0x34)

#endif // _CCAMERABLURPASS
