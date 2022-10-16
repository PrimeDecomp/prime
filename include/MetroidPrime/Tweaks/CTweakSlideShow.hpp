#ifndef _CTWEAKSLIDESHOW
#define _CTWEAKSLIDESHOW

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/TOneStatic.hpp"


#include "rstl/string.hpp"

class CInputStream;
class CTweakSlideShow;

class CTweakSlideShow : public ITweakObject, public TOneStatic< CTweakSlideShow > {
  rstl::string x4_pakName;
  rstl::string x14_fontAssetName;
  CColor x24_fontColor;
  CColor x28_outlineColor;
  float x2c_scanPercentInterval;
  float x30_;
  float x34_;
  float x38_;
  float x3c_;
  CColor x40_;
  float x44_;
  float x48_;
  float x4c_;
  float x50_;
  float x54_;
  float x58_;

public:
  CTweakSlideShow(CInputStream&);
  ~CTweakSlideShow();
};

#endif // _CTWEAKSLIDESHOW
