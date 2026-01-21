#ifndef _CFONTIMAGEDEF
#define _CFONTIMAGEDEF

#include <Kyoto/Graphics/CTexture.hpp>
#include <Kyoto/Math/CVector2f.hpp>
#include <Kyoto/TToken.hpp>
#include <rstl/vector.hpp>

class CTexture;
class CVector2f;
class CFontImageDef {
public:
  CFontImageDef(const TToken< CTexture >& texture, const CVector2f& cropFactor);
  CFontImageDef(const rstl::vector< TToken< CTexture > >& texture, float fps,
                const CVector2f& cropFactor);

  bool IsLoaded() const;
  // inline short GetWidth() { }
  int GetHeight() {
    TToken< CTexture > tex = mTextures[0];
    return tex.GetT()->GetHeight() * mCropFactor.GetY();
  }
  int CalculateBaseline();

private:
  float mFPS;
  rstl::vector< TToken< CTexture > > mTextures;
  CVector2f mCropFactor;
};

#endif // _CFONTIMAGEDEF
