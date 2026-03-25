#ifndef _CGUIWIDGETDRAWPARMS
#define _CGUIWIDGETDRAWPARMS

#include "Kyoto/Math/CVector3f.hpp"

class CGuiWidgetDrawParms {
public:
  static CGuiWidgetDrawParms sDefaultDrawParms;

  CGuiWidgetDrawParms(float alpha) : mAlpha(alpha), mCameraOffset(0.f, 0.f, 0.f) {}
  CGuiWidgetDrawParms(float alpha, const CVector3f& offset) : mAlpha(alpha), mCameraOffset(offset) {}
  float GetAlpha() const { return mAlpha; }
  const CVector3f& GetCameraOffset() const { return mCameraOffset; }
  static CGuiWidgetDrawParms Default() { return sDefaultDrawParms; }

private:
  float mAlpha;
  CVector3f mCameraOffset;
};

#endif // _CGUIWIDGETDRAWPARMS
