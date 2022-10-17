#include "MetroidPrime/CParticleGenInfoGeneric.hpp"

#include "MetroidPrime/CGameLight.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "MetaRender/CCubeRenderer.hpp"

CParticleGenInfoGeneric::CParticleGenInfoGeneric(const SObjectTag& part,
                                                 rstl::ncrc_ptr< CParticleGen > system, int frames,
                                                 const rstl::string& boneName, CVector3f scale,
                                                 CParticleData::EParentedMode parentMode, int flags,
                                                 CStateManager& stateMgr, TAreaId areaId,
                                                 int lightId, EParticleGenType state)

: CParticleGenInfo(part, frames, boneName, scale, parentMode, flags, state)
, x84_system(system)
, x88_lightId(lightId == 0xffffffff ? kInvalidUniqueId
                                    : _initializeLight(system, stateMgr, areaId, lightId)) {}

CParticleGenInfoGeneric::~CParticleGenInfoGeneric() {}

void CParticleGenInfoGeneric::AddToRenderer() { gpRender->AddParticleGen(*x84_system.GetPtr()); }

void CParticleGenInfoGeneric::Render() { x84_system->Render(); }

void CParticleGenInfoGeneric::Update(float dt, CStateManager& stateMgr) {
  x84_system->Update(dt);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    gl->SetLight(x84_system->GetLight());
  }
}

void CParticleGenInfoGeneric::SetOrientation(const CTransform4f& xf, CStateManager& stateMgr) {
  x84_system->SetOrientation(xf);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    CMatrix3f m1 = xf.BuildMatrix3f();
    gl->SetRotation(CQuaternion::FromMatrix(m1.Orthonormalized()));
  }
}

void CParticleGenInfoGeneric::SetTranslation(const CVector3f& vec, CStateManager& stateMgr) {
  x84_system->SetTranslation(vec);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    gl->SetTranslation(vec);
  }
}

void CParticleGenInfoGeneric::SetGlobalOrientation(const CTransform4f& xf,
                                                   CStateManager& stateMgr) {
  x84_system->SetGlobalOrientation(xf);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    gl->SetRotation(CQuaternion::FromMatrix(xf));
  }
}

void CParticleGenInfoGeneric::SetGlobalTranslation(const CVector3f& vec, CStateManager& stateMgr) {
  x84_system->SetGlobalTranslation(vec);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    gl->SetTranslation(vec);
  }
}

void CParticleGenInfoGeneric::SetGlobalScale(const CVector3f& vec) {
  x84_system->SetGlobalScale(vec);
}

void CParticleGenInfoGeneric::SetParticleEmission(bool isActive, CStateManager& stateMgr) {
  x84_system->SetParticleEmission(isActive);

  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  if (CGameLight* gl = TCastToPtr< CGameLight >(stateMgr.ObjectById(x88_lightId))) {
    gl->SetActive(isActive);
  }
}

void CParticleGenInfoGeneric::DeleteLight(CStateManager& stateMgr) {
  if (x88_lightId == kInvalidUniqueId) {
    return;
  }

  stateMgr.FreeScriptObject(x88_lightId);
  x88_lightId = kInvalidUniqueId;
}

TUniqueId CParticleGenInfoGeneric::GetLightId() const { return x88_lightId; }

void CParticleGenInfoGeneric::SetModulationColor(const CColor& color) {
  x84_system->SetModulationColor(color);
}

bool CParticleGenInfoGeneric::HasLight() const { return x84_system->SystemHasLight(); }

void CParticleGenInfoGeneric::DestroyParticles() { x84_system->DestroyParticles(); }

bool CParticleGenInfoGeneric::HasActiveParticles() const {
  return x84_system->GetParticleCount() > 0;
}

CAABox CParticleGenInfoGeneric::GetBounds() const { return x84_system->GetBounds(); }

bool CParticleGenInfoGeneric::IsSystemDeletable() const { return x84_system->IsSystemDeletable(); }
