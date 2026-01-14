#ifndef _CCUBEMATERIAL
#define _CCUBEMATERIAL

#include "types.h"

#include "Kyoto/Graphics/CModelFlags.hpp"
#include "Kyoto/Math/CVector3f.hpp"

extern CVector3f sPlayerPosition;

enum EStateFlags {
  kStateFlag_KonstValues = (1 << 3),
  kStateFlag_DepthSorting = (1 << 4),
  kStateFlag_AlphaTest = (1 << 5),
  kStateFlag_Reflection = (1 << 6),
  kStateFlag_DepthWrite = (1 << 7),
  kStateFlag_ReflectionSurfaceEye = (1 << 8),
  kStateFlag_ShadowOccluderMesh = (1 << 9),
  kStateFlag_ReflectionIndirectTexture = (1 << 10),
  kStateFlag_Lightmap = (1 << 11),
  kStateFlag_LightmapUvArray = (1 << 12),
  kStateFlag_TextureSlotMask = static_cast< uint >(~kStateFlag_LightmapUvArray),
};

class CCubeSurface;
class CCubeModel;
class CCubeMaterial {
public:
  explicit CCubeMaterial(const void* data) : x0_data(data) {}
  static void ResetCachedMaterials();
  static void EnsureTevsDirect();
  static void KillCachedViewDepState();

  inline const uchar* GetData() const { return static_cast< const uchar* >(x0_data); }
  uint GetFlags() const { return *reinterpret_cast< const uint* >(GetData()); }
  bool IsFlagSet(const EStateFlags flag) const { return (GetFlags() & flag) != 0; }
  void SetCurrent(const CModelFlags& flags, const CCubeSurface& surface,
                  const CCubeModel& mode) const;
  uint GetTextureCount() const { return *reinterpret_cast< const u32* >(GetData() + 4); }
  uint GetVertexDesc() const {
    return *reinterpret_cast< const uint* >(GetData() + (GetTextureCount() * 4 + 8));
  }

private:
  static void SetupBlendMode(uint blendFactors, const CModelFlags& flags, bool alphaTest);

  static CVector3f sViewingFrom;
  const void* x0_data;
};

#endif // _CCUBEMATERIAL
