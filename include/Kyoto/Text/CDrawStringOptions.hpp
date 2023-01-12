#ifndef _CDRAWSTRINGOPTIONS
#define _CDRAWSTRINGOPTIONS

#include "Kyoto/Graphics/CColor.hpp"
#include "rstl/reserved_vector.hpp"
#include "Kyoto/Text/TextCommon.hpp"

class CDrawStringOptions {
public:
  CDrawStringOptions();

  void SetTextDirection(ETextDirection dir) { x0_direction = dir; }
  ETextDirection GetTextDirection() const { return x0_direction; }
  void SetPaletteEntry(int idx, uint color) { x4_colors[idx] = color; }
private:
  ETextDirection x0_direction;
  rstl::reserved_vector<u32, 16> x4_colors;
};

#endif // _CDRAWSTRINGOPTIONS
