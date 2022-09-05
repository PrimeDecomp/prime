#ifndef _CGRAPHICS_HPP
#define _CGRAPHICS_HPP

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CTransform4f.hpp"

#include "Kyoto/Graphics/CTevCombiners.hpp"

enum ERglTevStage {
  kTS_Stage0,
  kTS_Stage1,
  kTS_Stage2,
  kTS_Stage3,
  kTS_Stage4,
  kTS_Stage5,
  kTS_Stage6,
  kTS_Stage7,
  kTS_Stage8,
  kTS_Stage9,
  kTS_Stage10,
  kTS_Stage11,
  kTS_Stage12,
  kTS_Stage13,
  kTS_Stage14,
  kTS_Stage15,
  kTS_MaxStage,
};

enum ERglPrimitive {
  kP_Quads = 0x80,
  kP_Triangles = 0x90,
  kP_TriangleStrip = 0x98,
  kP_TriangleFan = 0xA0,
  kP_Lines = 0xA8,
  kP_LineStrip = 0xB0,
  kP_Points = 0xB8,
};

class CGraphics {
public:
  static void SetIsBeginSceneClearFb(bool);
  static void BeginScene();
  static void EndScene();
  static void SetTevOp(ERglTevStage stage, const CTevCombiners::CTevPass& pass);
  static void StreamBegin(ERglPrimitive primitive);
  static void StreamColor(const CColor& color);
  static void StreamTexcoord(f32 u, f32 v);
  static void StreamVertex(const CVector3f& vtx);
  static void StreamEnd();

  static const CTransform4f& GetViewMatrix() { return mViewMatrix; }
  static const CTransform4f& GetModelMatrix() { return mModelMatrix; }

  static float GetSecondsMod900();

private:
  static CTransform4f mViewMatrix;
  static CTransform4f mModelMatrix;
};

#endif
