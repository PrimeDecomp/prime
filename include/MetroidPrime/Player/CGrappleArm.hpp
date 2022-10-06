#ifndef _CGRAPPLEARM_HPP_
#define _CGRAPPLEARM_HPP_

#include "types.h"

class CVector3f;

class CGrappleArm {
public:
  CGrappleArm(const CVector3f& scale);
  ~CGrappleArm();

private:
  u8 x0_pad[0x3b4];
};
CHECK_SIZEOF(CGrappleArm, 0x3b4)

#endif // _CGRAPPLEARM_HPP_
