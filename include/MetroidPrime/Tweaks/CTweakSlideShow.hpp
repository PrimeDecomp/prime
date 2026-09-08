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
  const rstl::string& GetPakName() const { return x4_pakName; }
  const rstl::string& GetFont() const { return x14_fontAssetName; }
  const CColor& GetFontColor() const { return x24_fontColor; }
  const CColor& GetOutlineColor() const { return x28_outlineColor; }
  float GetScanPercentInterval() const { return x2c_scanPercentInterval; }
  float GetPanSpeed() const { return x34_; }
  float GetZoomSpeed() const { return x38_; }
  float GetSlideRepeatTime() const { return x3c_; }
  const CColor& GetBorderColor() const { return x40_; }
  float GetControlsFadeTime() const { return x44_; }
  const float& GetCrossfadeTime() const { return x48_; }
  float GetSlideNumberIdleTime() const { return x4c_; }
  const float& GetSlideNumberFadeTime() const { return x50_; }
  float GetFadeTime() const { return x54_; }
  float GetMusicFadeTime() const { return x58_; }
};

extern CTweakSlideShow* gpTweakSlideShow;

#endif // _CTWEAKSLIDESHOW
