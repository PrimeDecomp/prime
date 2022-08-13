#include "Kyoto/Graphics/CColor.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/algorithm.hpp"

CColor::CColor(CInputStream& in) {
  float r = in.ReadFloat();
  float g = in.ReadFloat();
  float b = in.ReadFloat();
  Set(r, g, b, in.ReadFloat());
}

CColor::CColor(float r, float g, float b, float a) {
  mR = r * 255.f;
  mG = g * 255.f;
  mB = b * 255.f;
  mA = a * 255.f;
}

void CColor::Set(float r, float g, float b, float a) {
  mR = CCast::ToUint8(r * 255.f);
  mG = CCast::ToUint8(g * 255.f);
  mB = CCast::ToUint8(b * 255.f);
  mA = CCast::ToUint8(a * 255.f);
}

void CColor::Get(float& r, float& g, float& b, float& a) const {
  r = CCast::ToReal32(mR) * (1 / 255.f);
  g = CCast::ToReal32(mG) * (1 / 255.f);
  b = CCast::ToReal32(mB) * (1 / 255.f);
  a = CCast::ToReal32(mA) * (1 / 255.f);
}

void CColor::Get(float& r, float& g, float& b) const {
  r = CCast::ToReal32(mR) * (1 / 255.f);
  g = CCast::ToReal32(mG) * (1 / 255.f);
  b = CCast::ToReal32(mB) * (1 / 255.f);
}

CColor CColor::Lerp(const CColor& a, const CColor& b, float t) {
  const float omt = 1.f - t;
  return CColor(omt * a.GetRed() + t * b.GetRed(), omt * a.GetGreen() + t * b.GetGreen(), omt * a.GetBlue() + t * b.GetBlue(),
                omt * a.GetAlpha() + t * b.GetAlpha());
}

/* non-matching https://decomp.me/scratch/WGIlL */
u32 CColor::Lerp(u32 a, u32 b, float t) {
  u32 t256 = t * 256.f;
  u32 uVar3 = a & 0x00FF00FF;
  u32 uVar4 = b & 0x00FF00FF;
  u32 uVar1 = (a >> 8) & 0x00FF00FF;
  u32 uVar2 = (b >> 8) & 0x00FF00FF;
  u32 new_var = (t256 * (uVar2 - uVar1)) >> 8;
  u32 new_var2 = (t256 * (uVar4 - uVar3)) >> 8;
  return ((new_var2 + uVar3) & 0x00FF00FF) | (((new_var + uVar1) * 256) & 0xFF00FF00);
}

CColor CColor::Modulate(const CColor& a, const CColor& b) {
  return CColor((u8)((a.GetRedu8() * b.GetRedu8()) / (u8)255), (a.GetGreenu8() * b.GetGreenu8()) / (u8)255,
                (a.GetBlueu8() * b.GetBlueu8()) / (u8)255, (a.GetAlphau8() * b.GetAlphau8()) / (u8)255);
}

CColor CColor::Add(const CColor& arg0, const CColor& arg1) {
  return CColor((u8)rstl::min_val< u32 >(255, arg0.GetRedu8() + arg1.GetRedu8()),
                (u8)rstl::min_val< u32 >(255, arg0.GetGreenu8() + arg1.GetGreenu8()),
                (u8)rstl::min_val< u32 >(255, arg0.GetBlueu8() + arg1.GetBlueu8()),
                (u8)rstl::min_val< u32 >(255, arg0.GetAlphau8() + arg1.GetAlphau8()));
}

u16 CColor::ToRGB5A3() const {
  u8 r = GetRedu8();
  u8 g = GetGreenu8();
  u8 b = GetBlueu8();
  u8 a = GetAlphau8();
  u16 ret = (1 << 15) | ((b & 0xf8) >> 3) | ((g & 0xf8) << 2) | ((r & 0xf8) << 7);
  if (a != 0xFF) {
    ret = ((a & 0xe0) << 7) | ((b & 0xf0) >> 4) | (g & 0xf0) | ((r & 0xf0) << 4);
  }
  return ret;
}
