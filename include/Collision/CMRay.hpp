#ifndef _CMRAY
#define _CMRAY

#include "Kyoto/Math/CVector3f.hpp"

class CTransform4f;
class CMRay {
public:
  CMRay(const CVector3f& start, const CVector3f& end, float, float);
  CMRay(const CVector3f& start, const CVector3f& end, float);
  CMRay GetInvUnscaledTransformRay(const CTransform4f&) const;

private:
  CVector3f mStart;
  CVector3f mEnd;
  CVector3f mDelta;
  float mLength;
  float mInvLength;
  CVector3f mDir;
};

#endif // _CMRAY
