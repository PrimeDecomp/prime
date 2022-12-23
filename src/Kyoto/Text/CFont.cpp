#include "Kyoto/Text/CFont.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CFont::CFont(float scale) : mFontSize(scale * 16.f), mScale(scale) {}

CFont::~CFont() {}

int CFont::CharWidth(char c) const { return mScale * 15.f; }

void CFont::DrawString(const char* str, long x, long y, const CColor& col) const {}
