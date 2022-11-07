#ifndef _CGUIOBJECT
#define _CGUIOBJECT

#include "Kyoto/Math/CTransform4f.hpp"

class CGuiWidgetDrawParms;
class CMatrix4f;
class CVector2f;

class CGuiObject {
public:
  virtual ~CGuiObject();
  virtual void Update(float dt);
  virtual void Draw(const CGuiWidgetDrawParms& parms);
  virtual bool TestCursorHit(const CMatrix4f& vp, const CVector2f& point) const { return false; }
  virtual void Initialize() = 0;

  void RecalculateTransforms();
  const CVector3f& GetLocalPosition() const;

  void SetLocalTransform(const CTransform4f& xf) {
    x4_localXF = xf;
    RecalculateTransforms();
  }

private:
  CTransform4f x4_localXF;
  CTransform4f x34_worldXF;
  CGuiObject* x64_parent;
  CGuiObject* x68_child;
  CGuiObject* x6c_nextSibling;
};
CHECK_SIZEOF(CGuiObject, 0x70)

#endif // _CGUIOBJECT
