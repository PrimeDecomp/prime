#ifndef _CGUIWIDGETDRAWPARMS
#define _CGUIWIDGETDRAWPARMS

#include "Kyoto/Math/CVector3f.hpp"

class CGuiWidgetDrawParms {
private:
  static CGuiWidgetDrawParms sDefaultDrawParms;

public:
  float mAlpha;
  CVector3f mCameraOffset;

  CGuiWidgetDrawParms(float alpha) : mAlpha(alpha), mCameraOffset(0.f, 0.f, 0.f) {}
  CGuiWidgetDrawParms(float alpha, const CVector3f& offset) : mAlpha(alpha), mCameraOffset(offset) {}
  float GetAlpha() const { return mAlpha; }
  const CVector3f& GetCameraOffset() const { return mCameraOffset; }
  static CGuiWidgetDrawParms Default() { return sDefaultDrawParms; }
};

#endif // _CGUIWIDGETDRAWPARMS
