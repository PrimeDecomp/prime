#ifndef _CMODELFLAGS
#define _CMODELFLAGS

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"

class CModelFlags {
public:
  enum ETrans {
    kT_Opaque = 0,
    kT_One = 1, // ?
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

  CModelFlags(ETrans trans, float rgba)
  : x0_blendMode(trans)
  , x1_matSetIdx(0)
  , x2_flags(kF_DepthCompare | kF_DepthUpdate)
  , x4_color(1.f, 1.f, 1.f, rgba) {}
  CModelFlags(ETrans trans, CColor color)
  : x0_blendMode(trans)
  , x1_matSetIdx(0)
  , x2_flags(kF_DepthCompare | kF_DepthUpdate)
  , x4_color(color) {}

  CModelFlags(ETrans blendMode, uchar shadIdx, EFlags flags, const CColor& col)
  : x0_blendMode(blendMode), x1_matSetIdx(shadIdx), x2_flags(flags), x4_color(col) {}

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

  // CModelFlags(const CModelFlags& other)
  // : x0_blendMode(other.x0_blendMode)
  // , x1_matSetIdx(other.x1_matSetIdx)
  // , x2_flags(other.x2_flags)
  // , x4_color(other.x4_color) {}
  CModelFlags& operator=(const CModelFlags& other) {
    x0_blendMode = other.x0_blendMode;
    x1_matSetIdx = other.x1_matSetIdx;
    x2_flags = other.x2_flags;
    x4_color = other.x4_color;
    return *this;
  }

  CModelFlags UseShaderSet(int matSet) const { return CModelFlags(*this, false, matSet); }
  CModelFlags DontLoadTextures() const {
    return CModelFlags(*this, GetOtherFlags() | kF_NoTextureLock);
  }
  CModelFlags DepthCompareUpdate(bool compare, bool update) const {
    uint newFlags = 0;
    if (compare) {
      newFlags |= kF_DepthCompare;
    }
    if (update) {
      newFlags |= kF_DepthUpdate;
    }
    return CModelFlags(*this, (x2_flags & ~(kF_DepthCompare | kF_DepthUpdate)) | newFlags);
  }
  CModelFlags DepthBackwards() const {
    return CModelFlags(*this, GetOtherFlags() | kF_DepthGreater);
  }

  ETrans GetTrans() const { return static_cast< ETrans >(x0_blendMode); }
  int GetShaderSet() const { return x1_matSetIdx; }
  uint GetOtherFlags() const { return x2_flags; }
  CColor GetColor() const { return x4_color; }

  bool operator==(const CModelFlags& other) const {
    // TODO: cast to char for extsb; see CScriptActor::PreRender
    return static_cast< char >(x0_blendMode) == static_cast< char >(other.x0_blendMode) &&
           static_cast< char >(x1_matSetIdx) == static_cast< char >(other.x1_matSetIdx) &&
           x2_flags == other.x2_flags && x4_color == other.x4_color;
  }

  static CModelFlags Normal() { return CModelFlags(kT_Opaque, 1.f); }
  static CModelFlags AlphaBlended(float alpha) { return CModelFlags(kT_Blend, alpha); }
  static CModelFlags AlphaBlended(const CColor& color) { return CModelFlags(kT_Blend, color); }
  static CModelFlags Additive(float f) { return CModelFlags(CModelFlags::kT_Additive, f); }
  static CModelFlags Additive(const CColor& color) { return CModelFlags(CModelFlags::kT_Additive, color); }
  static CModelFlags AdditiveRGB(const CColor& color);
  static CModelFlags ColorModulate(const CColor& color);

private:
  uchar x0_blendMode;
  uchar x1_matSetIdx;
  ushort x2_flags;
  CColor x4_color;
};
CHECK_SIZEOF(CModelFlags, 0x8)

#endif // _CMODELFLAGS
