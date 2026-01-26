#include "GuiSys/CGuiObject.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "dolphin/os.h"

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

inline volatile CVector3f test(const CVector3f& vec) {
  return CVector3f(vec);
}
void CGuiObject::MoveInWorld(const CVector3f& offset) {
  if (GetParent() != nullptr) {
    GetParent()->RotateW2O(offset);
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
  const CVector3f tmpPos = x4_localXF.GetTranslation();
  x4_localXF = CTransform4f::Identity();
  x4_localXF.SetTranslation(tmpPos);
  RecalculateTransforms();
}

CVector3f CGuiObject::RotateO2P(const CVector3f& vec) const {
  const CVector3f tmp = x4_localXF.Rotate(vec);
  return tmp;
}

inline CVector3f StupidSubtract(const CVector3f& lhs, const CVector3f& rhs) {
  return CVector3f(lhs.GetX() - rhs.GetX(), lhs.GetY() - rhs.GetY(), lhs.GetZ() - rhs.GetZ());
}

CVector3f CGuiObject::RotateTranslateW2O(const CVector3f& vec) const {
  const CVector3f tmp =
      x34_worldXF.TransposeRotate(StupidSubtract(vec, x34_worldXF.GetTranslation()));
  return tmp;
}

void CGuiObject::MultiplyO2P(const CTransform4f& xf) {
  x4_localXF = xf * x4_localXF;
  RecalculateTransforms();
}

void CGuiObject::AddChildObject(CGuiObject* child, const bool makeWorldLocal, const bool atEnd) {
  child->SetParent(this);

  CGuiObject* cur = x68_child;
  if (cur == nullptr) {
    x68_child = child;
  } else if (atEnd) {
    do {
      CGuiObject* next = cur->x6c_nextSibling;
      if (next == nullptr) {
        cur->x6c_nextSibling = child;
        break;
      }
      cur = next;
    } while (true);
  } else {
    child->x6c_nextSibling = x68_child;
    x68_child = child;
  }

  if (makeWorldLocal) {
    const CGuiObject* parent = child->GetParent();
    CTransform4f worldLocalXf = CTransform4f::Identity();
    CVector3f position = parent->x34_worldXF.GetTranslation() * -1.f;
    const float upMag = parent->x34_worldXF.GetUp().Magnitude();
    const float forwardMag = parent->x34_worldXF.GetForward().Magnitude();
    const float rightMag = parent->x34_worldXF.GetRight().Magnitude();
    const CVector3f _tmp1 = parent->x34_worldXF.GetColumn(kDZ);
    const CVector3f m2 = (1.f / upMag) * _tmp1;
    const CVector3f _tmp2 = parent->x34_worldXF.GetColumn(kDY);
    const CVector3f m1 = (1.f / forwardMag) * _tmp2;
    const CVector3f _tmp3 = parent->x34_worldXF.GetColumn(kDX);
    const CVector3f m0 = (1.f / rightMag) * _tmp3;
    const CMatrix3f tmpMtx(m0, m1, m2);
    const CVector3f pos = tmpMtx * position;

    worldLocalXf = CTransform4f(tmpMtx.Get00(), tmpMtx.Get01(), tmpMtx.Get02(), pos.GetX(), //
                                tmpMtx.Get10(), tmpMtx.Get11(), tmpMtx.Get12(), pos.GetY(), //
                                tmpMtx.Get20(), tmpMtx.Get21(), tmpMtx.Get22(), pos.GetZ());
    child->x4_localXF = worldLocalXf * child->x34_worldXF;
  }

  RecalculateTransforms();
}

const CGuiObject* CGuiObject::GetChildObject() const { return x68_child; }

CGuiObject* CGuiObject::ChildObject() { return x68_child; }
const CGuiObject* CGuiObject::GetNextSibling() const { return x6c_nextSibling; }
CGuiObject* CGuiObject::NextSibling() { return x6c_nextSibling; }

CGuiObject* CGuiObject::Parent() { return x64_parent; }

void CGuiObject::RecalculateTransforms() {}

void CGuiObject::SetLocalTransform(const CTransform4f& xf) {
  x4_localXF = xf;
  RecalculateTransforms();
}

void CGuiObject::SetO2WTransform(const CTransform4f& worldXf) {
  const CTransform4f invXf = x64_parent->x34_worldXF.GetQuickInverse();
  const CTransform4f localXf = invXf * worldXf;
  SetLocalTransform(localXf);
}
