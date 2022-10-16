#include "MetroidPrime/Tweaks/CTweakSlideShow.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

CTweakSlideShow::~CTweakSlideShow() {}

CTweakSlideShow::CTweakSlideShow(CInputStream& in)
  : x4_pakName()
  , x14_fontAssetName()
  , x24_fontColor(CColor::White())
  , x28_outlineColor(CColor::White())
  , x2c_scanPercentInterval(0.0f)
  , x30_(0.0f)
  , x34_(0.0f)
  , x38_(0.0f)
  , x3c_(0.0f)
  , x40_(CColor::White())
  , x44_(0.0f)
  , x48_(0.0f)
  , x4c_(0.0f)
  , x50_(0.0f)
  , x54_(0.001f)
  , x58_(0.001f)
{
  x4_pakName.assign(rstl::string(in));
  x14_fontAssetName.assign(rstl::string(in));
  x24_fontColor = CColor(in);
  x28_outlineColor = CColor(in);
  x2c_scanPercentInterval = in.ReadFloat();
  x30_ = in.ReadFloat();
  x34_ = in.ReadFloat();
  x38_ = in.ReadFloat();
  x3c_ = in.ReadFloat();
  x40_ = CColor(in);
  x44_ = in.ReadFloat();
  x48_ = in.ReadFloat();
  x4c_ = in.ReadFloat();
  x50_ = in.ReadFloat();
  x54_ = in.ReadFloat();
  x58_ = in.ReadFloat();
}
