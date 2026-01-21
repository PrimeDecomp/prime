#include "Kyoto/Text/CTextRenderBuffer.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Graphics/CGraphicsPalette.hpp"
#include "Kyoto/Streams/CMemoryStreamOut.hpp"
#include "Kyoto/Text/CFontImageDef.hpp"
#include "Kyoto/Text/CTextColor.hpp"
#include <string.h>

CTextRenderBuffer::CTextRenderBuffer(EMode mode)
: mMode(mode)
, mBlobSize(0)
, mCurBytecodeOffset(0)
, mActiveFont(-1)
, mActivePalette(-1)
, mQueuedFont(-1)
, mQueuedPalette(-1)
, mNextPalette(0) {}

CGraphicsPalette* CTextRenderBuffer::GetNextAvailablePalette() const {
  if (mNextPalette >= 64) {
    mNextPalette = 0;
  } else {
    mPalettes.push_back(rstl::auto_ptr< CGraphicsPalette >(rs_new CGraphicsPalette(kPF_RGB5A3, 4)));
  }

  ++mNextPalette;
  CGraphicsPalette* ret = mPalettes[mNextPalette - 1].get();
  return ret;
}

int CTextRenderBuffer::GetMatchingPaletteIndex(const CGraphicsPalette& palette) const {
  for (int i = 0; i < mPalettes.size(); ++i) {
    if (!memcmp(mPalettes[i]->GetPaletteData(), palette.GetPaletteData(), 8)) {
      return i;
    }
  }
  return -1;
}

void CTextRenderBuffer::AddFontChange(const TToken< CRasterFont >& font) {
  if (mMode == kM_BufferFill) {
    CMemoryStreamOut out(GetOutStream(), GetCurLen(), CMemoryStreamOut::kOS_NotOwned, 64);
    bool found = false;

    for (int fontIndex = 0; fontIndex < mFonts.size(); ++fontIndex) {
      if (mFonts[fontIndex].GetRef() == font.GetRef()) {
        out.WriteUint8(kC_FontChange);
        out.WriteInt8(fontIndex);
        found = true;
        break;
      }
    }

    if (!found) {
      mFonts.reserve(mFonts.size() + 1);
      int fontIndex = mFonts.size();
      mFonts.push_back(font);
      out.WriteUint8(kC_FontChange);
      out.WriteInt8(fontIndex);
    }
    mCurBytecodeOffset += out.GetWrittenBytes();
  } else {
    // Command + index
    mBlobSize += sizeof(char) + sizeof(char);
  }
}

void CTextRenderBuffer::AddPaletteChange(const CGraphicsPalette& palette) {
  if (mMode == kM_BufferFill) {
    CMemoryStreamOut out(GetOutStream(), GetCurLen(), CMemoryStreamOut::kOS_NotOwned, 64);

    int paletteIndex = GetMatchingPaletteIndex(palette);
    if (paletteIndex == -1) {
      GetNextAvailablePalette();
      paletteIndex = mNextPalette - 1;
      CGraphicsPalette* destPalette = mPalettes[paletteIndex].get();
      void* data = destPalette->Lock();
      memcpy(data, palette.GetPaletteData(), 8);
      destPalette->UnLock();
    }

    out.WriteUint8(kC_PaletteChange);
    out.WriteInt8(paletteIndex);
    mCurBytecodeOffset += out.GetWrittenBytes();
  } else {
    // Command + index
    mBlobSize += sizeof(char) + sizeof(char);
  }
}

void CTextRenderBuffer::AddCharacter(const CVector2i& offset, short chr, uint color) {
  if (mMode == kM_BufferFill) {
    CMemoryStreamOut out(GetOutStream(), GetCurLen(), CMemoryStreamOut::kOS_NotOwned, 64);
    int tmp = mCurBytecodeOffset;
    mPrimOffsets.reserve(mPrimOffsets.size() + 1);
    mPrimOffsets.push_back(tmp);
    out.WriteUint8(kC_CharacterRender);
    out.WriteInt16(offset.GetX());
    out.WriteInt16(offset.GetY());
    out.WriteInt16(chr);
    out.WriteInt32(color);
    mCurBytecodeOffset += out.GetWrittenBytes();
  } else {
    // Command + x + y + char + color
    mBlobSize += sizeof(char) + sizeof(short) + sizeof(short) + sizeof(short) + sizeof(CTextColor);
  }
}

void CTextRenderBuffer::AddImage(const CVector2i& offset, const CFontImageDef& image) {
  if (mMode == kM_BufferFill) {
    CMemoryStreamOut out(GetOutStream(), GetCurLen(), CMemoryStreamOut::kOS_NotOwned, 64);
    const int tmp = mCurBytecodeOffset;
    mPrimOffsets.reserve(mPrimOffsets.size() + 1);
    mPrimOffsets.push_back(tmp);
    mImages.reserve(mImages.size() + 1);
    int imageIdx = mImages.size();
    mImages.push_back(image);
    out.WriteUint8(kC_ImageRender);
    out.WriteInt16(offset.GetX());
    out.WriteInt16(offset.GetY());
    out.WriteInt8(imageIdx);
    out.WriteUint32(CColor::White().GetColor_u32());
    mCurBytecodeOffset += out.GetWrittenBytes();
  } else {
    // Command + x + y + index + color
    mBlobSize += sizeof(char) + sizeof(short) + sizeof(short) + sizeof(char) + sizeof(uint);
  }
}
