#ifndef _CMODELFLAGS_HPP
#define _CMODELFLAGS_HPP

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"

class CModelFlags {
public:
  enum ETrans {
    kT_Opaque = 0,
    kT_Two = 2, // ?
    kT_Blend = 5,
    kT_Additive = 7,
  };
  enum EFlags {
    kF_DepthCompare = 0x1,
    kF_DepthUpdate = 0x2,
    kF_NoTextureLock = 0x4,
    kF_DepthGreater = 0x8,
    kF_DepthNonInclusive = 0x10,
    kF_DrawNormal = 0x20,
    kF_ThermalUnsortedOnly = 0x40,
  };

  CModelFlags(ETrans trans, f32 rgba)
  : x0_blendMode(trans)
  , x1_matSetIdx(0)
  , x2_flags(kF_DepthCompare | kF_DepthUpdate)
  , x4_color(rgba, rgba, rgba, rgba) {}
  CModelFlags(ETrans trans, CColor color)
  : x0_blendMode(trans)
  , x1_matSetIdx(0)
  , x2_flags(kF_DepthCompare | kF_DepthUpdate)
  , x4_color(color) {}
  CModelFlags(const CModelFlags& flags, uint otherFlags)
  : x0_blendMode(flags.x0_blendMode)
  , x1_matSetIdx(flags.x1_matSetIdx)
  , x2_flags(otherFlags)
  , x4_color(flags.x4_color) {}
  CModelFlags(const CModelFlags& flags, bool b /* TODO what's this? */, int shaderSet)
  : x0_blendMode(flags.x0_blendMode)
  , x1_matSetIdx(shaderSet)
  , x2_flags(flags.x2_flags)
  , x4_color(flags.x4_color) {}

  // ?
  CModelFlags(const CModelFlags& flags, ETrans trans, CColor color)
  : x0_blendMode(trans)
  , x1_matSetIdx(flags.x1_matSetIdx)
  , x2_flags(flags.x2_flags)
  , x4_color(color) {}

  CModelFlags UseShaderSet(int matSet) { return CModelFlags(*this, false, matSet); }
  CModelFlags DontLoadTextures() { return CModelFlags(*this, GetOtherFlags() | kF_NoTextureLock); }
  CModelFlags DepthCompareUpdate(bool compare, bool update) {
    uint flags = GetOtherFlags();
    if (compare) {
      flags |= kF_DepthCompare;
    } else {
      flags &= ~kF_DepthCompare;
    }
    if (update) {
      flags |= kF_DepthUpdate;
    } else {
      flags &= ~kF_DepthUpdate;
    }
    return CModelFlags(*this, flags);
  }
  CModelFlags DepthBackwards() { return CModelFlags(*this, GetOtherFlags() | kF_DepthGreater); }

  ETrans GetTrans() const { return static_cast< ETrans >(x0_blendMode); }
  int GetShaderSet() const { return x1_matSetIdx; }
  uint GetOtherFlags() const { return x2_flags; }
  CColor GetColor() const { return x4_color; }

  static CModelFlags Normal() { return CModelFlags(kT_Opaque, 1.f); }
  static CModelFlags AlphaBlended(f32 f);
  static CModelFlags AlphaBlended(const CColor& color);
  static CModelFlags Additive(f32 f);
  static CModelFlags Additive(const CColor& color);
  static CModelFlags AdditiveRGB(const CColor& color);
  static CModelFlags ColorModulate(const CColor& color);

private:
  s8 x0_blendMode;
  u8 x1_matSetIdx;
  u16 x2_flags;
  CColor x4_color;
};
CHECK_SIZEOF(CModelFlags, 0x8)

#endif
