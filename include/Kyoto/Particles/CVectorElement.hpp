#ifndef _CVECTORELEMENT
#define _CVECTORELEMENT

#include "Kyoto/Streams/CInputStream.hpp"
#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/IElement.hpp"

#include "rstl/single_ptr.hpp"

class CVEFastConstant : public CVectorElement {
public:
  CVEFastConstant(float x, float y, float z);
  ~CVEFastConstant() override;
  bool GetValue(int frame, CVector3f& valOut) const override;
  bool IsFastConstant() const override { return true; }

private:
  CVector3f x4_val;
};

class CVEParticleLocation : public CVectorElement {
public:
  ~CVEParticleLocation() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleColor : public CVectorElement {
public:
  ~CVEParticleColor() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleVelocity : public CVectorElement {
public:
  ~CVEParticleVelocity() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationFront : public CVectorElement {
public:
  ~CVEParticleSystemOrientationFront() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationUp : public CVectorElement {
public:
  ~CVEParticleSystemOrientationUp() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationRight : public CVectorElement {
public:
  ~CVEParticleSystemOrientationRight() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemTranslation : public CVectorElement {
public:
  ~CVEParticleSystemTranslation() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEConstant : public CVectorElement {
public:
  CVEConstant(CRealElement* x, CRealElement* y, CRealElement* z);
  ~CVEConstant();
  bool GetValue(int frame, CVector3f& valOut) const override;

public:
  CRealElement* x4_x;
  CRealElement* x8_y;
  CRealElement* xc_z;
};

class CVECircleCluster : public CVectorElement {
public:
  CVECircleCluster(CVectorElement* circleOffset, CVectorElement* circleNormal,
                   CIntElement* cycleFrames, CRealElement* randomFactor);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mCircleOffset;
  CVector3f mXVec;
  CVector3f mYVec;
  CIntElement* mCycleFrames;
  CRealElement* mRandomFactor;
};

class CVECone : public CVectorElement {
  CVectorElement* x4_direction;
  CRealElement* x8_magnitude;
  CVector3f xc_xVec;
  CVector3f x18_yVec;

public:
  CVECone(CVectorElement* direction, CRealElement* magnitude);
  ~CVECone();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEAngleCone : public CVectorElement {
public:
  CVEAngleCone(CRealElement* angleXConstant, CRealElement* angleYConstant,
               CRealElement* angleXRange, CRealElement* angleYRange, CRealElement* magnitude);
  ~CVEAngleCone();
  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CRealElement* x4_angleXConstant;
  CRealElement* x8_angleYConstant;
  CRealElement* xc_angleXRange;
  CRealElement* x10_angleYRange;
  CRealElement* x14_magnitude;
};

class CVECircle : public CVectorElement {
public:
  CVECircle(CVectorElement* circleOffset, CVectorElement* circleNormal, CRealElement* angleConstant,
            CRealElement* angleLinear, CRealElement* radius);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mCircleOffset;
  CVector3f mXVec;
  CVector3f mYVec;
  CRealElement* mAngleConstant;
  CRealElement* mAngleLinear;
  CRealElement* mRadius;
};

class CVEKeyframeEmitter : public CVectorElement {
public:
  CVEKeyframeEmitter(CInputStream& in);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  uint mPercent;
  uint mUnk1;
  bool mLoop;
  bool mUnk2;
  uint mLoopEnd;
  uint mLoopStart;
  rstl::vector< CVector3f > mKeys;
};

class CVEAdd : public CVectorElement {
public:
  CVEAdd(CVectorElement* a, CVectorElement* b);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mA;
  CVectorElement* mB;
};

class CVEMultiply : public CVectorElement {
public:
  CVEMultiply(CVectorElement* a, CVectorElement* b);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mA;
  CVectorElement* mB;
};

class CVETimeChain : public CVectorElement {
public:
  CVETimeChain(CVectorElement* a, CVectorElement* b, CIntElement* mSwitchFrame);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mA;
  CVectorElement* mB;
  CIntElement* mSwitchFrame;
};

class CVEPulse : public CVectorElement {
public:
  CVEPulse(CIntElement* durationA, CIntElement* durationB, CVectorElement* a, CVectorElement* b);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CIntElement* mDurationA;
  CIntElement* mDurationB;
  CVectorElement* mA;
  CVectorElement* mB;
};
class CVERealToVector : public CVectorElement {
public:
  CVERealToVector(CRealElement* value);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CRealElement* mValue;
};

class CVESubtract : public CVectorElement {
public:
  CVESubtract(CVectorElement* a, CVectorElement* b);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CVectorElement* mA;
  CVectorElement* mB;
};

class CVEColorToVector : public CVectorElement {
public:
  CVEColorToVector(CColorElement* value);

  bool GetValue(int frame, CVector3f& valOut) const override;

private:
  CColorElement* mValue;
};
#endif // _CVECTORELEMENT
