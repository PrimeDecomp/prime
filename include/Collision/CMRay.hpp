#ifndef __CMRAY_HPP__
#define __CMRAY_HPP__

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

#endif // __CMRAY_HPP__
