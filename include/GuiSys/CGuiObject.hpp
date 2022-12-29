#ifndef _CGUIOBJECT
#define _CGUIOBJECT

#include "Kyoto/Math/CTransform4f.hpp"

class CGuiWidgetDrawParms;
class CMatrix4f;
class CVector2f;

class CGuiObject {
public:
  CGuiObject();
  virtual ~CGuiObject();
  virtual void Update(float dt);
  virtual void Draw(const CGuiWidgetDrawParms& parms) const;
  virtual void Initialize() = 0;
  void MoveInWorld(const CVector3f& offset);
  CVector3f GetWorldPosition() const;
  CVector3f GetLocalPosition() const;
  void SetLocalPosition(const CVector3f& pos);
  void SetLocalTransform(const CTransform4f& xf);

  void RotateReset();

  CVector3f RotateO2P(const CVector3f& vec) const;
  CVector3f RotateW2O(const CVector3f& offset) const {
    CVector3f ret = x34_worldXF.TransposeRotate(offset);
    return ret;
  }
  CVector3f RotateTranslateW2O(const CVector3f& vec) const;
  void MultiplyO2P(const CTransform4f& xf);
  void RecalculateTransforms();

  void AddChildObject(CGuiObject* child, bool a, bool b);

  void SetParent(CGuiObject* obj) {
    x64_parent = obj;
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
