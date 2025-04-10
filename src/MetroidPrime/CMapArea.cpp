#include "MetroidPrime/CMapArea.hpp"

#include "Kyoto/Basics/CBasics.hpp"
#include "MetroidPrime/CMappableObject.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Tweaks/CTweakAutoMapper.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/CFrameDelayedKiller.hpp"
#include "Kyoto/CResFactory.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include <dolphin/gx/GXEnum.h>
#include <dolphin/os.h>

#include <stdint.h>

static const CVector3f MinesPostTransforms[3] = {
    CVector3f(0.f, 0.f, 200.f),
    CVector3f(0.f, 0.f, 0.f),
    CVector3f(0.f, 0.f, -200.f),
};

static const uchar MinesPostTransformIndices[42] = {
    0, // 00 Transport to Tallon Overworld South
    0, // 01 Quarry Access
    0, // 02 Main Quarry
    0, // 03 Waste Disposal
    0, // 04 Save Station Mines A
    0, // 05 Security Access A
    0, // 06 Ore Processing
    0, // 07 Mine Security Station
    0, // 08 Research Access
    0, // 09 Storage Depot B
    0, // 10 Elevator Access A
    0, // 11 Security Access B
    0, // 12 Storage Depot A
    0, // 13 Elite Research
    0, // 14 Elevator A
    1, // 15 Elite Control Access
    1, // 16 Elite Control
    1, // 17 Maintenance Tunnel
    1, // 18 Ventilation Shaft
    2, // 19 Phazon Processing Center
    1, // 20 Omega Research
    2, // 21 Transport Access
    2, // 22 Processing Center Access
    1, // 23 Map Station Mines
    1, // 24 Dynamo Access
    2, // 25 Transport to Magmoor Caverns South
    2, // 26 Elite Quarters
    1, // 27 Central Dynamo
    2, // 28 Elite Quarters Access
    1, // 29 Quarantine Access A
    1, // 30 Save Station Mines B
    2, // 31 Metroid Quarantine B
    1, // 32 Metroid Quarantine A
    2, // 33 Quarantine Access B
    2, // 34 Save Station Mines C
    1, // 35 Elevator Access B
    2, // 36 Fungal Hall B
    1, // 37 Elevator B
    2, // 38 Missile Station Mines
    2, // 39 Phazon Mining Tunnel
    2, // 40 Fungal Hall Access
    2, // 41 Fungal Hall A
};

static CAssetId gHackAssetId = kInvalidAssetId;

CMapArea::CMapArea(CInputStream& in, uint size)
: x0_magic(in.ReadLong())
, x4_version(in.ReadLong())
, x8_(in.ReadLong())
, xc_visibilityMode(static_cast<EVisMode>(in.ReadLong()))
, x10_box(in)
, x28_mappableObjCount(in.ReadLong())
, x2c_vertexCount(in.ReadLong())
, x30_surfaceCount(in.ReadLong()) {
  x34_size = size - 52;
  x44_buf = rs_new uchar[x34_size];
  in.Get(x44_buf.get(), x34_size);
  PostConstruct();

  DCFlushRange(x3c_vertexStart, x2c_vertexCount * 0xc);
  lbl_805A8EB0 += x34_size + sizeof(*this);
}

CMapArea::~CMapArea() {
  lbl_805A8EB0 -= x34_size + sizeof(*this);
  CFrameDelayedKiller::fn_8036CC1C(true, x44_buf.release());
}

void CMapArea::PostConstruct() {
  CMappableObject* moStart = x38_moStart = reinterpret_cast< CMappableObject* >(x44_buf.get());
  CVector3f* vertexStart = x3c_vertexStart =
      reinterpret_cast< CVector3f* >(moStart + x28_mappableObjCount);
  x40_surfaceStart = reinterpret_cast< CMapAreaSurface* >(vertexStart + x2c_vertexCount);

  for (int i = 0; i < x28_mappableObjCount; ++i) {
    x38_moStart[i].PostConstruct(x44_buf.get());
  }
  float* floatStart = reinterpret_cast< float* >(x3c_vertexStart);
  for (int i = 0; i < x2c_vertexCount * 3; ++i) {
    floatStart[i] = CBasics::SwapBytes(floatStart[i]);
  }
  for (int i = 0; i < x30_surfaceCount; ++i) {
    x40_surfaceStart[i].PostConstruct(x44_buf.get());
  }
}

bool CMapArea::GetIsVisibleToAutoMapper(bool worldVis, bool areaVis) const {
  switch (xc_visibilityMode) {
  case kVM_Always:
    return true;
  case kVM_MapStationOrVisit:
    return worldVis || areaVis;
  case kVM_Visit:
    return areaVis;
  case kVM_Never:
    return false;
  default:
    return true;
  }
}

CVector3f CMapArea::GetAreaCenterPoint() const { return x10_box.GetCenterPoint(); }

void CMapArea::CMapAreaSurface::PostConstruct(const void* buf) {
  x18_surfOffset = reinterpret_cast< const int* >(static_cast< const uchar* >(buf) +
                                                  reinterpret_cast< uintptr_t >(x18_surfOffset));
  x1c_outlineOffset = reinterpret_cast< const int* >(
      static_cast< const uchar* >(buf) + reinterpret_cast< uintptr_t >(x1c_outlineOffset));

  int numSurfaces = *x18_surfOffset;
  const int* surfOffset = x18_surfOffset + 1;
  for (int i = 0; i < numSurfaces; ++i) {
    int numVertices = *++surfOffset;
    surfOffset++; // skip primitive type
    surfOffset += ((numVertices + 3) & ~3) / 4;
  }

  int numOutlines = *x1c_outlineOffset;
  const int* outlineOffset = x1c_outlineOffset + 1;
  for (int i = 0; i < numOutlines; ++i) {
    int numVertices = *outlineOffset++;
    outlineOffset += ((numVertices + 3) & ~3) / 4;
  }
}

struct Surface {
  GXPrimitive primitive;
  int numVertices;
};

void CMapArea::CMapAreaSurface::Draw(const CVector3f* verts, const CColor& surfColor,
                                     const CColor& lineColor, float lineWidth) const {
  bool hasSurfAlpha = surfColor.GetAlpha() > 0.0f;
  bool hasLineAlpha = lineColor.GetAlpha() > 0.0f;
  int numSurfaces = *x18_surfOffset;
  int numOutlines = *x1c_outlineOffset;
  if (verts) {
    CGX::SetArray(GX_VA_POS, verts, '\f');
  }
  if (hasSurfAlpha) {
    CGX::SetTevKColor(GX_KCOLOR0, surfColor.GetGXColor());
    const int* surface = &x18_surfOffset[1];
    for (int i = 0; i < numSurfaces; ++i) {
      GXPrimitive primType = static_cast< GXPrimitive >(*surface++);
      int numVertices = *surface++;
      const uchar* data = reinterpret_cast< const uchar* >(surface);
      surface += ((numVertices + 3) & ~3) / 4;

      CGX::Begin(primType, GX_VTXFMT0, numVertices);
      for (int v = 0; v < numVertices; ++v) {
        GXPosition1x8(data[v]);
      }
      CGX::End();
    }
  }
  if (hasLineAlpha) {
    bool thickLine = lineWidth > 1.f;
    for (int j = 0; j < (thickLine ? 1 : 0) + 1; ++j) {
      const int* outline = &x1c_outlineOffset[1];

      if (thickLine) {
        CGraphics::SetLineWidth(lineWidth - j, kTO_One);
      }
      CGX::SetTevKColor(GX_KCOLOR0,
                        lineColor.WithAlphaModulatedBy(thickLine ? 0.5f : 1.0f).GetGXColor());

      for (int i = 0; i < numOutlines; ++i) {
        int numVertices = *outline++;
        const uchar* data = reinterpret_cast< const uchar* >(outline);
        outline += ((numVertices + 3) & ~3) / 4;

        CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, numVertices);
        for (int v = 0; v < numVertices; ++v) {
          GXPosition1x8(data[v]);
        }
        CGX::End();
      }
    }
  }
}

void CMapArea::CMapAreaSurface::SetupGXMaterial() {
  const GXVtxDescList list[2] = {
      {GX_VA_POS, GX_INDEX8},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(list);
  CGX::SetNumChans(1);
  CGX::SetNumTexGens(0);
  CGX::SetNumTevStages(1);
  CGX::SetChanCtrl(CGX::Channel0, false, GX_SRC_REG, GX_SRC_VTX, GX_LIGHT_NULL, GX_DF_NONE,
                   GX_AF_NONE);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_KONST);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_KONST);
  CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
  CGX::SetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, true, GX_TEVPREV);
  CGX::SetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
  CGX::SetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
}

CTransform4f CMapArea::GetAreaPostTransform(const IWorld& world, int aid) {
  if (world.IGetWorldAssetId() == 0xB1AC4D65) // Phazon Mines
  {
    return CTransform4f::Translate(MinesPostTransforms[MinesPostTransformIndices[aid]]) *
           world.IGetAreaAlways(aid)->IGetTM();
  } else {
    return world.IGetAreaAlways(aid)->IGetTM();
  }
}

const CVector3f& CMapArea::GetAreaPostTranslate(const IWorld& world, int aid) {
  if (world.IGetWorldAssetId() == 0xB1AC4D65) // Phazon Mines
  {
    return MinesPostTransforms[MinesPostTransformIndices[aid]];
  } else {
    return CVector3f::Zero();
  }
}

CFactoryFnReturn FMapAreaFactory(const SObjectTag& objTag, CInputStream& in,
                                 const CVParamTransfer&) {
  gHackAssetId = objTag.GetId();
  return CFactoryFnReturn(rs_new CMapArea(in, gpResourceFactory->ResourceSize(objTag)));
}
