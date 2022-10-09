#include "Kyoto/Graphics/CColor.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/math.hpp"

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
  return CColor(omt * a.GetRed() + t * b.GetRed(), omt * a.GetGreen() + t * b.GetGreen(),
                omt * a.GetBlue() + t * b.GetBlue(), omt * a.GetAlpha() + t * b.GetAlpha());
}

uint CColor::Lerp(uint a, uint b, float t) {
  uint alpha = t * 256.f;

  uint dstrb = a & 0xff00ff;
  uint dstag = a >> 8 & 0xff00ff;

  uint srcrb = b & 0xff00ff;
  uint srcag = b >> 8 & 0xff00ff;

  uint drb = srcrb - dstrb;
  uint dag = srcag - dstag;

  drb *= alpha;
  dag *= alpha;
  drb >>= 8;
  dag >>= 8;

  const uint rb = (drb + dstrb) & 0x00ff00ff;
  const uint ag = (dag + dstag) << 8 & 0xff00ff00;

  return rb | ag;
}

CColor CColor::Modulate(const CColor& a, const CColor& b) {
  return CColor((uchar)((a.GetRedu8() * b.GetRedu8()) / (uchar)255),
                (a.GetGreenu8() * b.GetGreenu8()) / (uchar)255,
                (a.GetBlueu8() * b.GetBlueu8()) / (uchar)255,
                (a.GetAlphau8() * b.GetAlphau8()) / (uchar)255);
}

CColor CColor::Add(const CColor& arg0, const CColor& arg1) {
  return CColor((uchar)rstl::min_val< uint >(255, arg0.GetRedu8() + arg1.GetRedu8()),
                (uchar)rstl::min_val< uint >(255, arg0.GetGreenu8() + arg1.GetGreenu8()),
                (uchar)rstl::min_val< uint >(255, arg0.GetBlueu8() + arg1.GetBlueu8()),
                (uchar)rstl::min_val< uint >(255, arg0.GetAlphau8() + arg1.GetAlphau8()));
}

ushort CColor::ToRGB5A3() const {
  uchar r = GetRedu8();
  uchar g = GetGreenu8();
  uchar b = GetBlueu8();
  uchar a = GetAlphau8();
  ushort ret = (1 << 15) | ((b & 0xf8) >> 3) | ((g & 0xf8) << 2) | ((r & 0xf8) << 7);
  if (a != 0xFF) {
    ret = ((a & 0xe0) << 7) | ((b & 0xf0) >> 4) | (g & 0xf0) | ((r & 0xf0) << 4);
  }
  return ret;
}
