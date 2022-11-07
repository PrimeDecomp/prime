#ifndef _CGRAPHICS
#define _CGRAPHICS

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

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
  kP_Quads = GX_QUADS,
  kP_Triangles = GX_TRIANGLES,
  kP_TriangleStrip = GX_TRIANGLESTRIP,
  kP_TriangleFan = GX_TRIANGLEFAN,
  kP_Lines = GX_LINES,
  kP_LineStrip = GX_LINESTRIP,
  kP_Points = GX_POINTS,
};

enum ERglBlendMode {
  kBM_None = GX_BM_NONE,
  kBM_Blend = GX_BM_BLEND,
  kBM_Logic = GX_BM_LOGIC,
  kBM_Subtract = GX_BM_SUBTRACT,
  kBM_Max = GX_MAX_BLENDMODE,
};

enum ERglBlendFactor {
  kBF_Zero = GX_BL_ZERO,
  kBF_One = GX_BL_ONE,
  kBF_SrcColor = GX_BL_SRCCLR,
  kBF_InvSrcColor = GX_BL_INVSRCCLR,
  kBF_SrcAlpha = GX_BL_SRCALPHA,
  kBF_InvSrcAlpha = GX_BL_INVSRCALPHA,
  kBF_DstAlpha = GX_BL_DSTALPHA,
  kBF_InvDstAlpha = GX_BL_INVDSTALPHA,
  kBF_DstColor = GX_BL_DSTCLR,
  kBF_InvDstColor = GX_BL_INVDSTCLR,
};

enum ERglLogicOp {
  kLO_Clear = GX_LO_CLEAR,
  kLO_And = GX_LO_AND,
  kLO_RevAnd = GX_LO_REVAND,
  kLO_Copy = GX_LO_COPY,
  kLO_InvAnd = GX_LO_INVAND,
  kLO_NoOp = GX_LO_NOOP,
  kLO_Xor = GX_LO_XOR,
  kLO_Or = GX_LO_OR,
  kLO_Nor = GX_LO_NOR,
  kLO_Equiv = GX_LO_EQUIV,
  kLO_Inv = GX_LO_INV,
  kLO_RevOr = GX_LO_REVOR,
  kLO_InvCopy = GX_LO_INVCOPY,
  kLO_InvOr = GX_LO_INVOR,
  kLO_NAnd = GX_LO_NAND,
  kLO_Set = GX_LO_SET,
};

enum ERglAlphaFunc {
  kAF_Never = GX_NEVER,
  kAF_Less = GX_LESS,
  kAF_Equal = GX_EQUAL,
  kAF_LEqual = GX_LEQUAL,
  kAF_Greater = GX_GREATER,
  kAF_NEqual = GX_NEQUAL,
  kAF_GEqual = GX_GEQUAL,
  kAF_Always = GX_ALWAYS,
};

enum ERglAlphaOp {
  kAO_And = GX_AOP_AND,
  kAO_Or = GX_AOP_OR,
  kAO_Xor = GX_AOP_XOR,
  kAO_XNor = GX_AOP_XNOR,
  kAO_Max = GX_MAX_ALPHAOP,
};

enum ERglEnum {
  kE_Never = GX_NEVER,
  kE_Less = GX_LESS,
  kE_Equal = GX_EQUAL,
  kE_LEqual = GX_LEQUAL,
  kE_Greater = GX_GREATER,
  kE_NEqual = GX_NEQUAL,
  kE_GEqual = GX_GEQUAL,
  kE_Always = GX_ALWAYS,
};

enum ERglCullMode {
  kCM_None = GX_CULL_NONE,
  kCM_Front = GX_CULL_FRONT,
  kCM_Back = GX_CULL_BACK,
  kCM_All = GX_CULL_ALL,
};


struct CViewport {
  int mLeft;
  int mTop;
  int mWidth;
  int mHeight;
  float mHalfWidth;
  float mHalfHeight;
};

class CTimeProvider;

class CGraphics {
public:
  static void SetIsBeginSceneClearFb(bool);
  static void BeginScene();
  static void EndScene();
  static void SetTevOp(ERglTevStage stage, const CTevCombiners::CTevPass& pass);
  static void StreamBegin(ERglPrimitive primitive);
  static void StreamColor(const CColor& color);
  static void StreamTexcoord(float u, float v);
  static void StreamVertex(float, float, float);
  static void StreamVertex(const CVector3f& vtx);
  static void StreamVertex(const float*);
  static void StreamEnd();

  static const CViewport& GetViewport() { return mViewport; }
  static const CTransform4f& GetViewMatrix() { return mViewMatrix; }
  static const CTransform4f& GetModelMatrix() { return mModelMatrix; }
  static void SetBrightness(float b) { mBrightness = b; }

  static float GetSecondsMod900();
  static void SetExternalTimeProvider(CTimeProvider* provider);
  static void DisableAllLights();

  static void SetModelMatrix(const CTransform4f& xf);
  static void SetAlphaCompare(ERglAlphaFunc comp0, u8 ref0, ERglAlphaOp op, ERglAlphaFunc comp1,
                              u8 ref1);
  static void SetDepthWriteMode(bool test, ERglEnum comp, bool write);
  static void SetBlendMode(ERglBlendMode, ERglBlendFactor, ERglBlendFactor, ERglLogicOp);
  static void SetCullMode(ERglCullMode);

  // Screen Position
  static void sub_80309564(uint* stretch, uint* xOffset, uint* yOffset);
  static void sub_803094b0(uint stretch, uint xOffset, uint yOffset);

  static CTevCombiners::CTevPass& kEnvPassthru;
  static CTevCombiners::CTevPass kEnvModulateConstColor;
  static CTevCombiners::CTevPass kEnvConstColor;
  static CTevCombiners::CTevPass kEnvModulate;
  static CTevCombiners::CTevPass kEnvDecal;
  static CTevCombiners::CTevPass kEnvBlend;
  static CTevCombiners::CTevPass kEnvReplace;
  static CTevCombiners::CTevPass kEnvModulateAlpha;
  static CTevCombiners::CTevPass kEnvModulateColor;
  static CTevCombiners::CTevPass kEnvModulateColorByalpha;

private:
  static CTransform4f mViewMatrix;
  static CTransform4f mModelMatrix;
  static CViewport mViewport;
  static float mBrightness;
};

#endif // _CGRAPHICS
