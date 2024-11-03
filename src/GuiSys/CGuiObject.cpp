#include "GuiSys/CGuiObject.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CGuiObject::CGuiObject()
: x4_localXF(CTransform4f::Identity())
, x34_worldXF(CTransform4f::Identity())
, x64_parent(nullptr)
, x68_child(nullptr)
, x6c_nextSibling(nullptr) {}

CGuiObject::~CGuiObject() {
  delete x68_child;
  x68_child = nullptr;
  delete x6c_nextSibling;
  x6c_nextSibling = nullptr;
}

void CGuiObject::Update(float dt) {
  if (x68_child) {
    x68_child->Update(dt);
  }
  if (x6c_nextSibling) {
    x6c_nextSibling->Update(dt);
  }
}

void CGuiObject::Draw(const CGuiWidgetDrawParms& parms) const {
  if (x68_child) {
    x68_child->Draw(parms);
  }

  if (x6c_nextSibling) {
    x6c_nextSibling->Draw(parms);
  }
}

void CGuiObject::MoveInWorld(const CVector3f& offset) {
  CVector3f pos;
  if (GetParent() != nullptr) {
    pos = GetParent()->RotateW2O(offset);
  }
  x4_localXF.AddTranslation(offset);
  RecalculateTransforms();
}

CVector3f CGuiObject::GetWorldPosition() const { return x34_worldXF.GetTranslation(); }

CVector3f CGuiObject::GetLocalPosition() const { return x4_localXF.GetTranslation(); }

void CGuiObject::SetLocalPosition(const CVector3f& pos) {
  MoveInWorld(pos - x4_localXF.GetTranslation());
}

void CGuiObject::RotateReset() {
  CVector3f tmpPos = x4_localXF.GetTranslation();
  x4_localXF = CTransform4f::Identity();
  x4_localXF.SetTranslation(tmpPos);
  RecalculateTransforms();
}

CVector3f CGuiObject::RotateO2P(const CVector3f& vec) const {
  CVector3f tmp = x4_localXF.Rotate(vec);
  return tmp;
}

CVector3f CGuiObject::RotateTranslateW2O(const CVector3f& vec) const {
  CVector3f tmp = x34_worldXF.TransposeRotate(vec - x34_worldXF.GetTranslation());
  return tmp;
}

void CGuiObject::MultiplyO2P(const CTransform4f& xf) {
  x4_localXF = xf * x4_localXF;
  RecalculateTransforms();
}

void CGuiObject::AddChildObject(CGuiObject* obj, bool makeWorldLocal, bool atEnd) {
  obj->SetParent(this);

  if (!x68_child) {
    x68_child = obj;
  } else if (atEnd) {
    CGuiObject* prev = nullptr;
    CGuiObject* cur = x68_child;
    for (; cur; cur = cur->x6c_nextSibling) {
      prev = cur;
    }

    if (prev) {
      prev->x6c_nextSibling = obj;
    }
  } else {
  }
}

const CGuiObject* CGuiObject::GetChildObject() const { return x68_child; }

CGuiObject* CGuiObject::ChildObject() { return x68_child; }
const CGuiObject* CGuiObject::GetNextSibling() const { return x6c_nextSibling; }
CGuiObject* CGuiObject::NextSibling() { return x6c_nextSibling; }

CGuiObject* CGuiObject::Parent() { return x64_parent; }

void CGuiObject::RecalculateTransforms() {

}

void CGuiObject::SetLocalTransform(const CTransform4f& xf) {
  x4_localXF = xf;
  RecalculateTransforms();
}

void CGuiObject::SetO2WTransform(const CTransform4f& worldXf) {
  const CTransform4f invXf = x64_parent->x34_worldXF.GetQuickInverse();
  const CTransform4f localXf = invXf * worldXf;
  SetLocalTransform(localXf);
}
