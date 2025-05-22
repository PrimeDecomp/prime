#ifndef _CLINEINSTRUCTION
#define _CLINEINSTRUCTION

#include "Kyoto/Text/CInstruction.hpp"
class CLineInstruction : public CInstruction {
public:
  int GetBaseline() const;

  int GetX() const { return x8_x; }
  int GetY() const { return xc_y; }

private:
  int x4_unk;
  int x8_x;
  int xc_y;
};

#endif // _CLINEINSTRUCTION
