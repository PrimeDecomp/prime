#ifndef _CTEXTRENDERBUFFER
#define _CTEXTRENDERBUFFER

#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Math/CVector2i.hpp"
#include "Kyoto/TToken.hpp"
#include "Kyoto/Text/CFontImageDef.hpp"
#include "Kyoto/Text/CTextColor.hpp"

#include <rstl/reserved_vector.hpp>
#include <rstl/vector.hpp>
class CRasterFont;
class CTextRenderBuffer {
public:
  enum ECmd {
    kC_CharacterRender,
    kC_ImageRender,
    kC_FontChange,
    kC_PaletteChange,
    kC_Invalid = -1,
  };
  enum EMode {
    kM_AllocTally,
    kM_BufferFill,
  };

  struct Primitive {
    Primitive(ECmd cmd, short x, short y, short chr, uint color, schar index)
    : mCmd(cmd), mX(x), mY(y), mChar(chr), mColor(color), mIndex(index) {}

    ECmd mCmd;
    short mX;
    short mY;
    short mChar;
    uint mColor;
    schar mIndex;
  };

  CTextRenderBuffer(EMode mode);

  CGraphicsPalette* GetNextAvailablePalette() const;
  int GetMatchingPaletteIndex(const CGraphicsPalette& palette) const;
  void AddFontChange(const TToken< CRasterFont >& font);
  void AddPaletteChange(const CGraphicsPalette& palette);
  void AddCharacter(const CVector2i&, short chr, uint color);
  void AddImage(const CVector2i& offset, const CFontImageDef& image);

  void* GetOutStream();
  size_t GetCurLen();

private:
  void SetPrimitive(const Primitive& prim, int offset) {}

  EMode mMode;
  rstl::vector< TToken< CRasterFont > > mFonts;
  rstl::vector< CFontImageDef > mImages;
  rstl::vector< int > mPrimOffsets;
  rstl::vector< signed char > mBytecode;
  uint mBlobSize;
  uint mCurBytecodeOffset;
  char mActiveFont;
  char mActivePalette;
  char mQueuedFont;
  char mQueuedPalette;
  mutable rstl::reserved_vector< rstl::auto_ptr< CGraphicsPalette >, 64 > mPalettes;
  mutable int mNextPalette;
};

#endif // _CTEXTRENDERBUFFER
