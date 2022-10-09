#ifndef _IELEMENT
#define _IELEMENT

#include "types.h"

class CColor;
class CVector3f;

class IElement {
public:
  virtual ~IElement(){};

  // -> CFrameDelayedKiller
  void* operator new(unsigned long sz);
  void operator delete(void* ptr, size_t sz);
};

class CRealElement : public IElement {
public:
  virtual bool GetValue(int frame, float& valOut) const = 0;
  virtual bool IsConstant() const { return false; }
};

class CIntElement : public IElement {
public:
  ~CIntElement() override{};
  virtual bool GetValue(int frame, int& valOut) const = 0;
};

class CVectorElement : public IElement {
public:
  virtual bool GetValue(int frame, CVector3f& valOut) const = 0;
  virtual bool IsFastConstant() const { return false; }
};

class CModVectorElement : public IElement {
public:
  virtual bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const = 0;
};

class CColorElement : public IElement {
public:
  virtual bool GetValue(int frame, CColor& colorOut) const = 0;
};

class CEmitterElement : public IElement {
public:
  virtual bool GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const = 0;
};

#endif // _IELEMENT