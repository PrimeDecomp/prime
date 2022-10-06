#ifndef _CGUNMOTION_HPP
#define _CGUNMOTION_HPP

#include "Kyoto/CObjectReference.hpp"

class CVector3f;

class CGunMotion {
public:
  CGunMotion(CAssetId ancsId, const CVector3f& scale);
  ~CGunMotion();

private:
  u8 x0_pad[0xbc];
};
CHECK_SIZEOF(CGunMotion, 0xbc)

#endif // _CGUNMOTION_HPP
