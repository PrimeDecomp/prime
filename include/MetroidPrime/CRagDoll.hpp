#ifndef _CRAGDOLL
#define _CRAGDOLL

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "rstl/vector.hpp"

class CCharLayoutInfo;
class CHierarchyPoseBuilder;
class CModelData;
class CStateManager;

class CRagDoll {
public:
  virtual void Prime(CStateManager& mgr, const CTransform4f& xf, CModelData& mData);
  virtual void Update(CStateManager& mgr, float dt, float waterTop);
  virtual void PreRender(const CVector3f& pos, CModelData& mData);
  CRagDoll(float normalGravity, float floatingGravity, float overTime, uint flags);
  ~CRagDoll() {}

  CAABox CalculateRenderBounds() const;
  bool IsPrimed() const { return x68_26_primed; }
  bool WillContinueSmallMovements() const { return x68_27_continueSmallMovements; }
  bool IsOver() const { return x68_25_over; }
  void SetNoOverTimer(bool b) { x68_28_noOverTimer = b; }
  void SetContinueSmallMovements(bool b) { x68_27_continueSmallMovements = b; }
  uint GetImpactCount() const { return x4c_impactCount; }

protected:
  class CRagDollParticle {
    friend class CRagDoll;
    CSegId x0_id;
    CVector3f x4_curPos;
    float x10_radius;
    CVector3f x14_prevPos;
    CVector3f x20_velocity;
    CVector3f x2c_impactResponseDelta;
    float x38_impactFrameVel;
    bool x3c_24_impactPending : 1;
    bool x3c_25_ : 1;

  public:
    CRagDollParticle(CSegId id, const CVector3f& curPos, float radius, const CVector3f& prevPos)
    : x0_id(id)
    , x4_curPos(curPos)
    , x10_radius(radius)
    , x14_prevPos(prevPos)
    , x20_velocity(CVector3f::Zero())
    , x2c_impactResponseDelta(CVector3f::Zero())
    , x38_impactFrameVel(0.f)
    , x3c_24_impactPending(false)
    , x3c_25_(false) {}
    const CSegId& GetBone() const { return x0_id; }
    const CVector3f& GetPosition() const { return x4_curPos; }
    CVector3f& Position() { return x4_curPos; }
    const CVector3f& GetVelocity() const { return x20_velocity; }
    CVector3f& Velocity() { return x20_velocity; }
    float GetRadius() const { return x10_radius; }
  };
  class CRagDollLengthConstraint {
    friend class CRagDoll;
    CRagDollParticle* x0_p1;
    CRagDollParticle* x4_p2;
    float x8_length;
    int xc_ineqType;

  public:
    CRagDollLengthConstraint(CRagDollParticle* p1, CRagDollParticle* p2, float f1, int i1)
    : x0_p1(p1), x4_p2(p2), x8_length(f1), xc_ineqType(i1) {}
    void Update();
    float GetLength() const { return x8_length; }
  };
  class CRagDollJointConstraint {
    friend class CRagDoll;
    CRagDollParticle* x0_p1;  // Shoulder plane 0
    CRagDollParticle* x4_p2;  // Shoulder plane 1
    CRagDollParticle* x8_p3;  // Shoulder plane 2
    CRagDollParticle* xc_p4;  // Shoulder
    CRagDollParticle* x10_p5; // Elbow
    CRagDollParticle* x14_p6; // Wrist
  public:
    CRagDollJointConstraint(CRagDollParticle* p1, CRagDollParticle* p2, CRagDollParticle* p3,
                            CRagDollParticle* p4, CRagDollParticle* p5, CRagDollParticle* p6)
    : x0_p1(p1), x4_p2(p2), x8_p3(p3), xc_p4(p4), x10_p5(p5), x14_p6(p6) {}
    void Update();
  };
  class CRagDollPlaneConstraint {
    friend class CRagDoll;
    CRagDollParticle* x0_p1;
    CRagDollParticle* x4_p2;
    CRagDollParticle* x8_p3;
    CRagDollParticle* xc_p4;
    CRagDollParticle* x10_p5;

  public:
    CRagDollPlaneConstraint(CRagDollParticle* p1, CRagDollParticle* p2, CRagDollParticle* p3,
                            CRagDollParticle* p4, CRagDollParticle* p5)
    : x0_p1(p1), x4_p2(p2), x8_p3(p3), xc_p4(p4), x10_p5(p5) {}
    void Update();
  };
  rstl::vector< CRagDollParticle > x4_particles;
  rstl::vector< CRagDollLengthConstraint > x14_lengthConstraints;
  rstl::vector< CRagDollJointConstraint > x24_jointConstraints;
  rstl::vector< CRagDollPlaneConstraint > x34_planeConstraints;
  float x44_normalGravity;
  float x48_floatingGravity;
  uint x4c_impactCount;
  float x50_overTimer;
  float x54_impactVel;
  CVector3f x58_averageVel;
  float x64_angTimer;
  bool x68_24_prevMovingSlowly : 1;
  bool x68_25_over : 1;
  bool x68_26_primed : 1;
  bool x68_27_continueSmallMovements : 1;
  bool x68_28_noOverTimer : 1;
  bool x68_29_noAiCollision : 1;
  void AccumulateForces(float dt, float waterTop);
  void SetNumParticles(int num) { x4_particles.reserve(num); }
  void AddParticle(const CSegId& id, const CVector3f& prevPos, const CVector3f& curPos,
                   float radius);
  void SetNumLengthConstraints(int num) { x14_lengthConstraints.reserve(num); }
  void AddLengthConstraint(int i1, int i2);
  void AddMaxLengthConstraint(int i1, int i2, float length);
  void AddMinLengthConstraint(int i1, int i2, float length);
  void SetNumJointConstraints(int num) { x24_jointConstraints.reserve(num); }
  void AddJointConstraint(int i1, int i2, int i3, int i4, int i5, int i6);
  CQuaternion BoneAlign(CHierarchyPoseBuilder& pb, const CCharLayoutInfo& charInfo, int i1, int i2,
                        const CQuaternion& q);
  void CheckStatic(float dt);
  void ClearForces();
  void SatisfyConstraints(CStateManager& mgr);
  bool SatisfyWorldConstraints(CStateManager& mgr, int pass);
  void SatisfyWorldConstraintsOnConstruction(CStateManager& mgr);
  void Verlet(float dt);

  float GetConstraintLength(int index) const { return x14_lengthConstraints[index].GetLength(); }
};
CHECK_SIZEOF(CRagDoll, 0x6c)

#endif // _CRAGDOLL
