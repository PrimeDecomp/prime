#ifndef _CPARTICLEGENINFO
#define _CPARTICLEGENINFO

#include "Kyoto/Particles/CParticleData.hpp"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/SObjectTag.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/string.hpp"

enum EParticleGenType { kPGT_Normal, kPGT_Auxiliary };

class CStateManager;
class CColor;
class CAABox;
class CParticleGen;

class CParticleGenInfo {
public:
  CParticleGenInfo(const SObjectTag& part, int frameCount, const rstl::string& boneName,
                   const CVector3f& scale, CParticleData::EParentedMode parentMode, int flags,
                   EParticleGenType type);
  virtual ~CParticleGenInfo() {}

  virtual void AddToRenderer() = 0;
  virtual void Render() = 0;
  virtual void Update(float dt, CStateManager& stateMgr) = 0;
  virtual void SetOrientation(const CTransform4f& xf, CStateManager& stateMgr) = 0;
  virtual void SetTranslation(const CVector3f& trans, CStateManager& stateMgr) = 0;
  virtual void SetGlobalOrientation(const CTransform4f& xf, CStateManager& stateMgr) = 0;
  virtual void SetGlobalTranslation(const CVector3f& trans, CStateManager& stateMgr) = 0;
  virtual void SetGlobalScale(const CVector3f& scale) = 0;
  virtual void SetParticleEmission(bool isActive, CStateManager& stateMgr) = 0;
  virtual bool IsSystemDeletable() const = 0;
  virtual rstl::optional_object< CAABox >
  GetBounds() const = 0; // This should match CParticleGen::GetBounds result
  virtual bool HasActiveParticles() const = 0;
  virtual void DestroyParticles() = 0;
  virtual bool HasLight() const = 0;
  virtual TUniqueId GetLightId() const = 0;
  virtual void DeleteLight(CStateManager& stateMgr) = 0;
  virtual void SetModulationColor(const CColor& color) = 0;

  EParticleGenType GetType() const { return x80_type; }
  bool GetIsActive() const { return x24_active; }
  void SetIsActive(bool active) { x24_active = active; }
  bool GetIsGrabInitialData() const { return x40_grabInitialData; }
  void SetIsGrabInitialData(bool grab) { x40_grabInitialData = grab; }
  const rstl::string& GetLocatorName() const { return x10_boneName; }
  CParticleData::EParentedMode GetParentedMode() const { return x28_parentMode; }
  uint GetFlags() const { return x2c_flags; }
  void SetFlags(int flags) { x2c_flags = flags; }
  const CVector3f& GetScale() const { return x30_particleScale; }
  const CTransform4f& GetCurTransform() const { return x44_transform; }
  void SetCurTransform(const CTransform4f& xf) { x44_transform = xf; }
  const CVector3f& GetCurOffset() const { return x74_offset; }
  void SetCurOffset(const CVector3f& offset) { x74_offset = offset; }
  float GetInactiveStartTime() const { return xc_seconds; }
  float GetCurrentTime() const { return x20_curTime; }
  float GetFinishTime() const { return x3c_finishTime; }
  void ResetTime() { x20_curTime = 0.f; }
  void OffsetTime(float dt) { x20_curTime += dt; }
  void MarkFinishTime() { x3c_finishTime = x20_curTime; }

private:
  SObjectTag x4_part;
  float xc_seconds;
  rstl::string x10_boneName;
  float x20_curTime;
  bool x24_active;
  CParticleData::EParentedMode x28_parentMode;
  s32 x2c_flags;
  CVector3f x30_particleScale;
  float x3c_finishTime;
  bool x40_grabInitialData;
  CTransform4f x44_transform;
  CVector3f x74_offset;
  EParticleGenType x80_type;
};
CHECK_SIZEOF(CParticleGenInfo, 0x84)

TUniqueId _initializeLight(const rstl::ncrc_ptr< CParticleGen >&, CStateManager&, TAreaId,
                           int lightId);

#endif // _CPARTICLEGENINFO
