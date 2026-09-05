#ifndef _CIKCHAIN
#define _CIKCHAIN

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CAnimData;
class CTransform4f;

class CIkChain {
public:
  CIkChain()
  : x0_bone(CSegId::Invalid())
  , x1_p1(CSegId::Invalid())
  , x2_p2(CSegId::Invalid())
  , x4_p2p1Dir(CVector3f::Forward())
  , x10_p1BoneDir(CVector3f::Forward())
  , x1c_p2p1Length(1.f)
  , x20_p1BoneLength(1.f)
  , x24_holdRot(CQuaternion::NoRotation())
  , x34_holdPos(CVector3f::Zero())
  , x40_time(0.f)
  , x44_24_activated(false) {}

  bool GetActive() const { return x44_24_activated; }
  void Update(float dt);
  void Deactivate();
  void Activate(const CAnimData& data, CSegId bone, const CTransform4f& xf);
  void PreRender(CAnimData& data, const CTransform4f& xf, const CVector3f& scale);
  void Solve(CQuaternion& q1, CQuaternion& q2, const CVector3f& pos);

private:
  CSegId x0_bone;
  CSegId x1_p1;
  CSegId x2_p2;
  CVector3f x4_p2p1Dir;
  CVector3f x10_p1BoneDir;
  float x1c_p2p1Length;
  float x20_p1BoneLength;
  CQuaternion x24_holdRot;
  CVector3f x34_holdPos;
  float x40_time;
  bool x44_24_activated : 1;
};
CHECK_SIZEOF(CIkChain, 0x48)

#endif // _CIKCHAIN
