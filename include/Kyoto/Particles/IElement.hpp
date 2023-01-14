#ifndef _IELEMENT
#define _IELEMENT

#include "types.h"

#include "Kyoto/TToken.hpp"

class CColor;
class CTexture;
class CVector3f;

class IElement {
public:
  virtual ~IElement(){};

  // -> CFrameDelayedKiller
  void* operator new(size_t sz, const char*, const char*);
  void* operator new(size_t sz) { return operator new(sz, "??(??)", nullptr); }
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

struct SUVElementSet {
  float xMin, yMin, xMax, yMax;

  // SUVElementSet() : xMin(0.f), yMin(1.f), xMax(0.f), yMax(1.f) {}
  //SUVElementSet(float xMin, float yMin, float xMax, float yMax)
  //: xMin(xMin), yMin(yMin), xMax(xMax), yMax(yMax) {}
  // SUVElementSet(const SUVElementSet& other)
  // : xMin(other.xMin), yMin(other.yMin), xMax(other.xMax), yMax(other.yMax) {}
};

class CUVElement : public IElement {
public:
  virtual TLockedToken< CTexture > GetValueTexture(int frame) const = 0;
  virtual void GetValueUV(int frame, SUVElementSet& valOut) const = 0;
  virtual bool HasConstantTexture() const = 0;
  virtual bool HasConstantUV() const = 0;
};

#endif // _IELEMENT
