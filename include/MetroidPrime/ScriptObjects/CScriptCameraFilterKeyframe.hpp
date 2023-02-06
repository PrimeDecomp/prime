#ifndef _CSCRIPTCAMERAFILTERKEYFRAME
#define _CSCRIPTCAMERAFILTERKEYFRAME

#include "MetroidPrime/CEntity.hpp"

#include "MetroidPrime/Cameras/CCameraFilterPass.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Graphics/CColor.hpp"

class CScriptCameraFilterKeyframe : public CEntity {
  CCameraFilterPass::EFilterType x34_type;
  CCameraFilterPass::EFilterShape x38_shape;
  CStateManager::ECameraFilterStage x3c_filterIdx;
  uint x40_;
  CColor x44_color;
  float x48_timeIn;
  float x4c_timeOut;
  CAssetId x50_txtr;

public:
  CScriptCameraFilterKeyframe(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                              CCameraFilterPass::EFilterType type,
                              CCameraFilterPass::EFilterShape shape, CStateManager::ECameraFilterStage filterIdx, uint unk,
                              float colorR, float colorG, float colorB, float colorA, float timeIn,
                              float timeOut, CAssetId txtr, bool active);
  ~CScriptCameraFilterKeyframe();

  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  void Accept(IVisitor& visitor);
};

#endif // _CSCRIPTCAMERAFILTERKEYFRAME
