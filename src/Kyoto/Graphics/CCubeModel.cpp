#include "Kyoto/Graphics/CCubeModel.hpp"

#include "Kyoto/Graphics/CCubeSurface.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

static bool sDrawingOccluders = false;
static bool sDrawingWireframe = false;
bool CCubeModel::sUsingPackedLightmaps = false;

inline uint GetMaterialOffset(const uchar* materialData, const int idx) {
  materialData += (idx * 4);
  return *reinterpret_cast< const uint* >(materialData - 4);
}

CCubeModel::CCubeModel(rstl::vector< void* >* surfaces,
                       rstl::vector< TCachedToken< CTexture > >* textures, const void* materialData,
                       const void* positions, const void* normals, const void* colors,
                       const void* uvs, const void* compressedUvs, const CAABox& bounds,
                       const uchar visorFlags, const bool texturesLoaded, const uint idx)
: x0_instance(*surfaces, materialData, positions, normals, colors, uvs, compressedUvs)
, x1c_textures(textures)
, x20_bounds(bounds)
, x38_firstUnsorted(nullptr)
, x3c_firstSorted(nullptr)
, x40_24_loadTextures(static_cast< uchar >(!texturesLoaded))
, x40_25_visible(false)
, x41_visorFlags(visorFlags)
, x44_idx(idx) {
  for (AUTO(it, x0_instance.Surfaces().begin()); it != x0_instance.Surfaces().end(); ++it) {
    static_cast< CCubeSurface::SSurfaceData* >(*it)->mParent = this;
  }

  for (int i = x0_instance.Surfaces().size(); i > 0; i--) {
    CCubeSurface surf(x0_instance.Surfaces()[i - 1]);
    if (GetMaterialByIndex(surf.GetMaterialIndex()).IsFlagSet(kStateFlag_DepthSorting)) {
      surf.x0_data->mNextSurface = x3c_firstSorted.x0_data;
      x3c_firstSorted.x0_rawdata = surf.x0_rawdata;
    } else {
      surf.x0_data->mNextSurface = x38_firstUnsorted.x0_data;
      x38_firstUnsorted.x0_rawdata = surf.x0_rawdata;
    }
  }
}

void CCubeModel::MakeTexturesFromMats(const void* data,
                                      rstl::vector< TCachedToken< CTexture > >& textures,
                                      IObjectStore& store, const bool cache) {
  const uint* textureIds = static_cast< const uint* >(data);
  const uint textureCount = *static_cast< const int* >(data);
  textureIds++;
  textures.reserve(textureCount);

  for (int i = 0; i < textureCount; i++) {
    textures.push_back(store.GetObj(SObjectTag('TXTR', *textureIds)));
    if (!cache && !textures.back().GetObject()) {
      textures.back().ForceCache();
    }
    ++textureIds;
  }
}

void CCubeModel::SetStaticArraysCurrent() const {
  CGX::SetArray_Inline(GX_VA_CLR0, x0_instance.GetColorPointer(), sizeof(CColor));
  const void* packed = x0_instance.GetPackedTCPointer();
  const void* unpacked = x0_instance.GetTCPointer();
  if (!packed) {
    sUsingPackedLightmaps = false;
  }

  if (sUsingPackedLightmaps) {
    CGX::SetArray_Inline(GX_VA_TEX0, packed, sizeof(ushort) * 2);
  } else {
    CGX::SetArray_Inline(GX_VA_TEX0, unpacked, sizeof(CVector2f));
  }

  if (unpacked) {
    for (int i = 1; i <= GX_VA_TEX7 - GX_VA_TEX0; ++i) {
      CGX::SetArray_Inline(static_cast< GXAttr >(i + GX_VA_TEX0), unpacked, sizeof(CVector2f));
    }
  }

  CCubeMaterial::KillCachedViewDepState();
}

void CCubeModel::SetArraysCurrent() const {
  CGX::SetArray_Inline(GX_VA_POS, x0_instance.GetVertexPointer(), sizeof(CVector3f));
  const int stride = (x41_visorFlags & 1) ? sizeof(short) * 3 : sizeof(CVector3f);
  CGX::SetArray_Inline(GX_VA_NRM, x0_instance.GetNormalPointer(), stride);
  SetStaticArraysCurrent();
}

void CCubeModel::SetSkinningArraysCurrent(const float* positions, const float* normals) const {
  CGraphics::sRenderState.SetVtxState(positions, normals,
                                      static_cast< const uint* >(x0_instance.GetColorPointer()));
  SetStaticArraysCurrent();
}

void CCubeModel::SetUsingPackedLightmaps(const bool use) const {
  sUsingPackedLightmaps = use;
  if (sUsingPackedLightmaps) {
    CGX::SetArray_Inline(GX_VA_TEX0, x0_instance.GetPackedTCPointer(), sizeof(ushort) * 2);
  } else {
    CGX::SetArray_Inline(GX_VA_TEX0, x0_instance.GetTCPointer(), sizeof(CVector2f));
  }
}

CCubeMaterial CCubeModel::GetMaterialByIndex(const int idx) const {
  uint materialCount = 0;
  uint materialOffset = 0;
  const uchar* materialData = static_cast< const uchar* >(x0_instance.GetMaterialPointer()) +
                              (x1c_textures->size() + 1) * 4;
  materialCount = *reinterpret_cast< const uint* >(materialData++);
  materialData++;
  materialData++;
  materialData++;
  if (idx != 0) {
    materialOffset = GetMaterialOffset(materialData, idx);
  }

  materialData += (materialCount * 4);
  materialData += materialOffset;
  return CCubeMaterial(materialData);
}

void CCubeModel::DrawSurface(const CCubeSurface& surface, const CModelFlags& modelFlags) const {
  const CCubeMaterial material = GetMaterialByIndex(surface.GetMaterialIndex());
  if (material.IsFlagSet(kStateFlag_ShadowOccluderMesh) && !sDrawingOccluders) {
    return;
  }

  material.SetCurrent(modelFlags, surface, *this);
  CGX::CallDisplayList_Inline(surface.GetDisplayList(), surface.GetDisplayListSize());
}

void CCubeModel::DrawSurfaceWireframe(const CCubeSurface& surface) const {
  const CCubeMaterial material = GetMaterialByIndex(surface.GetMaterialIndex());

  static uint sLastDesc = 0;
  static uint sAttrCount = 0;
  const uint vertexAttributes = material.GetVertexDesc();

  if (vertexAttributes != sLastDesc) {
    sAttrCount = 0;
    for (int i = 0; i < 16; ++i, sLastDesc = vertexAttributes) {
      if ((vertexAttributes >> (i * 2)) & 3) {
        sAttrCount++;
      }
    }
  }

  uint attrCount = sAttrCount;
  uint attrCountTimes2 = sAttrCount * 2;
  static const GXVtxDescList sDesc[] = {
      {GX_VA_POS, GX_INDEX16},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(sDesc);
  CGX::SetTevDirect_Inline(GX_TEVSTAGE0);
  CGX::SetNumIndStages_Inline(0);
  CGX::SetTevColorIn_Inline(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ONE);
  CGX::SetTevColorOp_Inline(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE,
                            GX_TEVPREV);
  CGX::SetNumChans_Inline(0);
  CGX::SetNumTexGens_Inline(1);
  CGX::SetBlendMode_Inline(GX_BM_BLEND, GX_BL_ONE, GX_BL_ZERO, GX_LO_CLEAR);
}

bool CCubeModel::TryLockTextures() const {
  if (!x40_24_loadTextures) {
    bool texturesLoading = false;
    for (int i = 0; i < GetTextures().size(); ++i) {
      GetTextures()[i].Lock();
      if (!GetTextures()[i].TryCache()) {
        texturesLoading = true;
      } else if (!GetTextures()[i].GetObject()->LoadToMRAM()) {
        texturesLoading = true;
      }
    }

    if (!texturesLoading) {
      x40_24_loadTextures = true;
    }
  }

  return !!x40_24_loadTextures;
}

struct Test {
  CCubeSurface* surface;
  Test(CCubeSurface* surface) : surface(surface) {};
};
void CCubeModel::DrawSurfaces(const CModelFlags& flags) const {
  if (sDrawingWireframe) {
    for (CCubeSurface surface = GetNormalSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurfaceWireframe(surface);
    }
    for (CCubeSurface surface = GetAlphaSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurfaceWireframe(surface);
    }
  } else if ((flags.GetOtherFlags() & CModelFlags::kF_NoTextureLock) || TryLockTextures()) {
    for (CCubeSurface surface = GetNormalSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurface(surface, flags);
    }
    for (CCubeSurface surface = GetAlphaSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurface(surface, flags);
    }
  }
}

void CCubeModel::DrawNormalSurfaces(const CModelFlags& flags) const {
  if (sDrawingWireframe) {
    for (CCubeSurface surface = GetNormalSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurfaceWireframe(surface);
    }
  } else if (TryLockTextures()) {
    for (CCubeSurface surface = GetNormalSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurface(surface, flags);
    }
  }
}

void CCubeModel::DrawAlphaSurfaces(const CModelFlags& flags) const {
  if (sDrawingWireframe) {
    for (CCubeSurface surface = GetAlphaSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurfaceWireframe(surface);
    }
  } else if (TryLockTextures()) {
    for (CCubeSurface surface = GetAlphaSurfaces(); surface.IsValid();
         surface = surface.GetNextSurface()) {
      DrawSurface(surface, flags);
    }
  }
}