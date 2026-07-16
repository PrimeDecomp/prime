#include "Kyoto/Graphics/CCubeModel.hpp"

#include "Kyoto/Graphics/CCubeSurface.hpp"
#include "Kyoto/Graphics/CGX.hpp"
#include "Kyoto/Graphics/CGX_Impl.hpp" // IWYU pragma: keep
#include "Kyoto/Graphics/CGraphics.hpp"
#include "dolphin/gx/GXVert.h"

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
  rstl::vector< void* >& surf = x0_instance.Surfaces();
  for (AUTO(it, surf.begin()); it != surf.end(); ++it) {
    CCubeSurface::SSurfaceData* data = static_cast< CCubeSurface::SSurfaceData* >(*it);
    data->mParent = this;
  }

  for (int i = surf.size(); i > 0; i--) {
    void*& data = surf[i - 1];
    uint materialIndex = static_cast< CCubeSurface::SSurfaceData* >(data)->mMaterialIndex;
    if (GetMaterialByIndex(materialIndex).IsFlagSet(kStateFlag_DepthSorting)) {
      static_cast< CCubeSurface::SSurfaceData* >(data)->mNextSurface = x3c_firstSorted.x0_rawdata;
      x3c_firstSorted.x0_rawdata = static_cast< uchar* >(data);
    } else {
      static_cast< CCubeSurface::SSurfaceData* >(data)->mNextSurface = x38_firstUnsorted.x0_rawdata;
      x38_firstUnsorted.x0_rawdata = static_cast< uchar* >(data);
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
  CGX::SetArray(GX_VA_CLR0, x0_instance.GetColorPointer(), sizeof(CColor));
  const void* packed = x0_instance.GetPackedTCPointer();
  const void* unpacked = x0_instance.GetTCPointer();
  if (!packed) {
    sUsingPackedLightmaps = false;
  }

  if (sUsingPackedLightmaps) {
    CGX::SetArray(GX_VA_TEX0, packed, sizeof(ushort) * 2);
  } else {
    CGX::SetArray(GX_VA_TEX0, unpacked, sizeof(CVector2f));
  }

  if (unpacked) {
    for (int i = 1; i <= GX_VA_TEX7 - GX_VA_TEX0; ++i) {
      CGX::SetArray(static_cast< GXAttr >(i + GX_VA_TEX0), unpacked, sizeof(CVector2f));
    }
  }

  CCubeMaterial::KillCachedViewDepState();
}

void CCubeModel::SetArraysCurrent() const {
  CGX::SetArray(GX_VA_POS, x0_instance.GetVertexPointer(), sizeof(CVector3f));
  const int stride = (x41_visorFlags & 1) ? sizeof(short) * 3 : sizeof(CVector3f);
  CGX::SetArray(GX_VA_NRM, x0_instance.GetNormalPointer(), stride);
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
    CGX::SetArray(GX_VA_TEX0, x0_instance.GetPackedTCPointer(), sizeof(ushort) * 2);
  } else {
    CGX::SetArray(GX_VA_TEX0, x0_instance.GetTCPointer(), sizeof(CVector2f));
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
  CGX::CallDisplayList(surface.GetDisplayList(), surface.GetDisplayListSize());
}

void CCubeModel::DrawSurfaceWireframe(const CCubeSurface& surface) const {
  const CCubeMaterial material = GetMaterialByIndex(surface.GetMaterialIndex());

  static uint sLastDesc = 0;
  static uint sAttrCount = 0;
  uint vertexAttributes = material.GetVertexDesc();

  if (vertexAttributes != sLastDesc) {
    sAttrCount = 0;
    for (int i = 0; i < 16; ++i, sLastDesc = vertexAttributes) {
      if ((vertexAttributes >> (i * 2)) & 3) {
        sAttrCount++;
      }
    }
  }

  uint attrCount = sAttrCount;
  uint attrCountTimes2 = attrCount * 2;
  static const GXVtxDescList sDesc[] = {
      {GX_VA_POS, GX_INDEX16},
      {GX_VA_NULL, GX_NONE},
  };
  CGX::SetVtxDescv(sDesc);
  CGX::SetTevDirect(GX_TEVSTAGE0);
  CGX::SetNumIndStages(0);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ONE);
  CGX::SetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
  CGX::SetNumChans(0);
  CGX::SetNumTexGens(1);
  CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ONE, GX_BL_ZERO, GX_LO_CLEAR);

  const ushort* dispList = static_cast< const ushort* >(surface.GetDisplayList());

  for (int i = 0;
       i < surface.GetDisplayListSize() && *reinterpret_cast< const uchar* >(dispList) & 0xf8;
       ++i) {
    const ushort* indices = dispList + 3;
    const GXPrimitive pType = static_cast< GXPrimitive >(dispList[i] & 0xf8);
    const ushort elementCount = *reinterpret_cast< ushort* >(pType + 1);
    if (elementCount < 3) {
      break;
    }

    CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, 4);
    i += 3 + elementCount * attrCountTimes2;
    GXPosition1x16(indices[i]);
    GXPosition1x16(indices[i + 1]);
    GXPosition1x16(indices[i + 2]);
    dispList = indices + i * 3;
    GXPosition1x16(indices[i]);
    CGX::End();
    switch (pType) {
    case GX_TRIANGLESTRIP: {
      uint uVar5 = 1;
      for (int j = 0; j < elementCount - 3;) {
        CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, 3);
        uint iVar2 = uVar5 + 1;
        uint uVar3 = uVar5 ^ 1;
        uVar5 ^= 1;
        j++;
        indices = dispList - attrCountTimes2 * (uVar3 + 1);
        GXPosition1x16(indices[iVar2]);
        GXPosition1x16(indices[iVar2 + 1]);
        GXPosition1x16(indices[0]);
        CGX::End();
      }
      break;
    }
    case GX_TRIANGLES: {
      for (int j = 0; j < elementCount - 3;) {
        CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, 4);
        j += 3;
        GXPosition1x16(dispList[0]);
        GXPosition1x16(dispList[attrCount * 2]);
        GXPosition1x16(dispList[attrCount * 3]);
        dispList += attrCountTimes2;
        CGX::End();
      }
      break;
    }
    case GX_TRIANGLEFAN: {
      indices = dispList + attrCount * -3;

      for (int j = 0; j < elementCount - 3;) {
        CGX::Begin(GX_LINESTRIP, GX_VTXFMT0, 3);
        j += 3;
        GXPosition1x16(dispList[-attrCount]);
        GXPosition1x16(dispList[0]);
        dispList += attrCount;
        GXPosition1x16(indices[0]);
      }
      break;
    }
    default:
      break;
    }
  }
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

void CCubeModel::DrawFlat(const float* positions, const float* normals,
                          ESurfaceSelection which) const {
  if (positions != nullptr) {
    SetSkinningArraysCurrent(positions, normals);
  } else {
    SetArraysCurrent();
  }

  if (which != kSS_Sorted) {
    for (CCubeSurface surface = x38_firstUnsorted; surface.IsValid();
         surface = surface.GetNextSurface()) {
      CCubeMaterial material = GetMaterialByIndex(surface.GetMaterialIndex());
      CGX::SetVtxDescv_Compressed(material.GetVertexDescLwzx());
      CGX::CallDisplayList(surface.GetDisplayList(), surface.GetDisplayListSize());
    }
  }

  if (which != kSS_Unsorted) {
    for (CCubeSurface surface = x3c_firstSorted; surface.IsValid();
         surface = surface.GetNextSurface()) {
      CCubeMaterial material = GetMaterialByIndex(surface.GetMaterialIndex());
      CGX::SetVtxDescv_Compressed(material.GetVertexDescLwzx());
      CGX::CallDisplayList(surface.GetDisplayList(), surface.GetDisplayListSize());
    }
  }
}

void CCubeModel::Draw(const CModelFlags& flags) const {
  CCubeMaterial::KillCachedViewDepState();
  SetArraysCurrent();
  DrawSurfaces(flags);
}

void CCubeModel::Draw(const float* positions, const float* normals,
                      const CModelFlags& flags) const {
  CCubeMaterial::KillCachedViewDepState();
  SetSkinningArraysCurrent(positions, normals);
  DrawSurfaces(flags);
}

void CCubeModel::DrawNormal(const CModelFlags& flags) const {
  CCubeMaterial::KillCachedViewDepState();
  SetArraysCurrent();
  DrawNormalSurfaces(flags);
}

void CCubeModel::DrawAlpha(const CModelFlags& flags) const {
  CCubeMaterial::KillCachedViewDepState();
  SetArraysCurrent();
  DrawAlphaSurfaces(flags);
}

void CCubeModel::SetDrawingOccluders(const bool drawOccluders) {
  sDrawingOccluders = drawOccluders;
}

void CCubeModel::SetModelWireframe(const bool drawWireframe) { sDrawingWireframe = drawWireframe; }

void CCubeModel::UnlockTextures() const {
  for (AUTO(texture, x1c_textures->begin()); texture != x1c_textures->end(); ++texture) {
    texture->Unlock();
  }

  x40_24_loadTextures = false;
}

void CCubeModel::RemapMaterialData(const void* data,
                                   rstl::vector< TCachedToken< CTexture > >* texture) {

  x0_instance.SetMaterialPointer(data);
  x1c_textures = texture;
  x40_24_loadTextures = false;
}

void CCubeModel::DrawNormal(const float* positions, const float* normals,
                            ESurfaceSelection which) const {
  CGX::SetNumIndStages(0);
  CGX::SetNumTevStages(1);
  CGX::SetNumTexGens(1);
  CGX::SetZMode(true, GX_LEQUAL, true);
  CGX::SetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
  CGX::SetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO, GX_CC_ZERO);
  CGX::SetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
  CGX::SetStandardTevColorAlphaOp(GX_TEVSTAGE0);
  CGX::SetBlendMode(GX_BM_BLEND, GX_BL_ZERO, GX_BL_ONE, GX_LO_CLEAR);
  DrawFlat(positions, normals, which);
}