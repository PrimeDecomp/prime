#include "GuiSys/CGuiCamera.hpp"
#include "GuiSys/CGuiFrame.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include <Kyoto/Graphics/CGraphics.hpp>

#include <Kyoto/Streams/CInputStream.hpp>

CGuiWidget* CGuiCamera::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  EProjection proj = static_cast< EProjection >(in.ReadLong());
  CGuiCamera* camera = nullptr;
  if (proj == kProjection_Perspective) {
    const float fov = in.ReadFloat();
    const float aspect = in.ReadFloat();
    const float znear = in.ReadFloat();
    const float zfar = in.ReadFloat();
    camera = rs_new CGuiCamera(parms, fov, aspect, znear, zfar);
  } else if (proj == kProjection_Orthographic) {
    const float left = in.ReadFloat();
    const float right = in.ReadFloat();
    const float top = in.ReadFloat();
    const float bottom = in.ReadFloat();
    const float znear = in.ReadFloat();
    const float zfar = in.ReadFloat();
    camera = rs_new CGuiCamera(parms, left, right, top, bottom, znear, zfar);
  }

  frame->SetFrameCamera(camera);
  camera->ParseBaseInfo(frame, in, parms);
  return camera;
}

CGuiCamera::CGuiCamera(const CGuiWidgetParms& parms, float fov, float aspect, float znear,
                       float zfar)
: CGuiWidget(parms) {
  mCameraParms.perspective.type = kProjection_Perspective;
  CVector3f(1.f, 0.f, 0.f).Normalize();
  mCameraParms.perspective.fov = fov;
  mCameraParms.perspective.aspect = aspect;
  mCameraParms.perspective.znear = znear;
  mCameraParms.perspective.zfar = zfar;
}
CGuiCamera::CGuiCamera(const CGuiWidgetParms& parms, float left, float right, float top,
                       float bottom, float znear, float zfar)
: CGuiWidget(parms) {
  mCameraParms.orthographic.type = kProjection_Orthographic;
  mCameraParms.orthographic.left = left;
  mCameraParms.orthographic.right = right;
  mCameraParms.orthographic.top = top;
  mCameraParms.orthographic.bottom = bottom;
  mCameraParms.orthographic.znear = znear;
  mCameraParms.orthographic.zfar = zfar;
}

void CGuiCamera::Draw(const CGuiWidgetDrawParms& parms) const {
  if (mCameraParms.orthographic.type == kProjection_Perspective) {
    CGraphics::SetPerspective(mCameraParms.perspective.fov, mCameraParms.perspective.aspect,
                              mCameraParms.perspective.znear, mCameraParms.perspective.zfar);
  } else {
    CGraphics::SetOrtho(mCameraParms.orthographic.left, mCameraParms.orthographic.right,
                        mCameraParms.orthographic.top, mCameraParms.orthographic.bottom,
                        mCameraParms.orthographic.znear, mCameraParms.orthographic.zfar);
  }

  CGraphics::SetViewPointMatrix(CTransform4f::Translate(parms.GetCameraOffset()) *
                                GetWorldTransform());
  CGuiWidget::Draw(parms);
}

CVector3f CGuiCamera::ConvertToScreenSpace(const CVector3f& point) const {
  CVector3f rotated = RotateTranslateW2O(point);

  if (rotated.IsNonZero()) {
    CMatrix4f xf = CGraphics::CalculatePerspectiveMatrix(
        mCameraParms.perspective.fov, mCameraParms.perspective.aspect,
        mCameraParms.perspective.znear, mCameraParms.perspective.zfar);

    return xf.MultiplyOneOverW(rotated);
  }

  return CVector3f(-1.f, -1.f, 1.f);
}
