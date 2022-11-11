#ifndef _CMATERIALLIST
#define _CMATERIALLIST

#include "types.h"

enum EMaterialTypes {
  kMT_NoStepLogic = 0,
  kMT_Stone = 1,
  kMT_Metal = 2,
  kMT_Grass = 3,
  kMT_Ice = 4,
  kMT_Pillar = 5,
  kMT_MetalGrating = 6,
  kMT_Phazon = 7,
  kMT_Dirt = 8,
  kMT_Lava = 9,
  kMT_LavaStone = 10,
  kMT_Snow = 11,
  kMT_MudSlow = 12,
  kMT_HalfPipe = 13,
  kMT_Mud = 14,
  kMT_Glass = 15,
  kMT_Shield = 16,
  kMT_Sand = 17,
  kMT_ProjectilePassthrough = 18,
  kMT_Solid = 19,
  kMT_NoPlatformCollision = 20,
  kMT_CameraPassthrough = 21,
  kMT_Wood = 22,
  kMT_Organic = 23,
  kMT_NoEdgeCollision = 24,
  kMT_RedundantEdgeOrFlippedTri = 25,
  kMT_SeeThrough = 26,
  kMT_ScanPassthrough = 27,
  kMT_AIPassthrough = 28,
  kMT_Ceiling = 29,
  kMT_Wall = 30,
  kMT_Floor = 31,
  kMT_Player = 32,
  kMT_Character = 33,
  kMT_Trigger = 34,
  kMT_Projectile = 35,
  kMT_Bomb = 36,
  kMT_GroundCollider = 37,
  kMT_NoStaticCollision = 38,
  kMT_Scannable = 39,
  kMT_Target = 40,
  kMT_Orbit = 41,
  kMT_Occluder = 42,
  kMT_Immovable = 43,
  kMT_Debris = 44,
  kMT_PowerBomb = 45,
  kMT_Unknown46 = 46,
  kMT_CollisionActor = 47,
  kMT_AIBlock = 48,
  kMT_Platform = 49,
  kMT_NonSolidDamageable = 50,
  kMT_RadarObject = 51,
  kMT_PlatformSlave = 52,
  kMT_AIJoint = 53,
  kMT_Unknown54 = 54,
  kMT_SolidCharacter = 55,
  kMT_ExcludeFromLineOfSightTest = 56,
  kMT_ExcludeFromRadar = 57,
  kMT_NoPlayerCollision = 58,
  kMT_SixtyThree = 63
};

// TODO: how else would they end up in .data?
static EMaterialTypes SolidMaterial = kMT_Solid;

class CMaterialList {
public:
  CMaterialList() : value(0) {}
  explicit CMaterialList(const EMaterialTypes& m1) : value(0) { Add(m1); }
  CMaterialList(const EMaterialTypes& m1, const EMaterialTypes& m2) : value(0) {
    Add(m1);
    Add(m2);
  }
  CMaterialList(const EMaterialTypes& m1, const EMaterialTypes& m2, const EMaterialTypes& m3)
  : value(0) {
    Add(m1);
    Add(m2);
    Add(m3);
  }
  CMaterialList(const EMaterialTypes& m1, const EMaterialTypes& m2, const EMaterialTypes& m3,
                const EMaterialTypes& m4)
  : value(0) {
    Add(m1);
    Add(m2);
    Add(m3);
    Add(m4);
  }
  CMaterialList(const EMaterialTypes& m1, const EMaterialTypes& m2, const EMaterialTypes& m3,
                const EMaterialTypes& m4, const EMaterialTypes& m5)
  : value(0) {
    Add(m1);
    Add(m2);
    Add(m3);
    Add(m4);
    Add(m5);
  }
  explicit CMaterialList(u64 value) : value(value) {}

  void Add(EMaterialTypes material) { value |= u64(1) << material; }
  void Add(const CMaterialList& material) { value |= material.value; }
  void Remove(EMaterialTypes material) { value &= ~(u64(1) << material); }
  void Remove(const CMaterialList& material) { value &= ~material.value; }
  const CMaterialList& Union(const CMaterialList& other) {
    value |= other.value;
    return *this;
  }
  bool HasMaterial(EMaterialTypes material) const {
    return (value & (u64(1) << material)) ? true : false;
  }
  // HasMaterials__13CMaterialListCFv weak
  // GetField__13CMaterialListCFUxUx weak
  // Intersection__13CMaterialListCFRC13CMaterialList weak
  static int BitPosition(u64 flags);
  // GetMaterialString__13CMaterialListCFv weak
  bool SharesMaterials(const CMaterialList& other) const {
    return (other.value & value) ? true : false;
  }

private:
  u64 value;

  // static CMaterialList kEverything;
};
CHECK_SIZEOF(CMaterialList, 0x8)

#endif // _CMATERIALLIST
