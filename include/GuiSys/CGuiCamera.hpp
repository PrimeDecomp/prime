#ifndef _CGUICAMERA
#define _CGUICAMERA

#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

class CGuiCamera : public CGuiWidget {
public:
  enum EProjection {
    kProjection_Perspective,
    kProjection_Orthographic,
  };

  union UCameraParms {
    struct {
      EProjection type;
      float fov;
      float aspect;
      float znear;
      float zfar;
    } perspective;
    struct {
      EProjection type;
      float left;
      float right;
      float top;
      float bottom;
      float znear;
      float zfar;
    } orthographic;
  };

  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);
  CGuiCamera(const CGuiWidgetParms& parms, float fov, float aspect, float znear, float zfar);
  CGuiCamera(const CGuiWidgetParms& parms, float left, float right, float top, float bottom,
             float znear, float zfar);

  void Draw(const CGuiWidgetDrawParms& parms) const override;
  const UCameraParms& GetParms() const { return mCameraParms; }
  void SetParms(const UCameraParms& parms) { mCameraParms = parms; }

  FourCC GetWidgetTypeID() const override { return 'CAMR'; }

  CVector3f ConvertToScreenSpace(const CVector3f& point) const;

public:
  UCameraParms mCameraParms;
};

#endif // _CGUICAMERA
