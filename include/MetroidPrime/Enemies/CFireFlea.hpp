#ifndef _CFIREFLEA
#define _CFIREFLEA

#include "Kyoto/Graphics/CColor.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"

class CFireFlea : public CPatterned {
public:
  class CDeathCameraEffect : public CEntity {
    static const CColor skEndFadeColor;
    static const CColor skStartFadeColor;
    static CColor sCurrentFadeColor;

    CDeathCameraEffect(const TUniqueId uid, const TAreaId aid, const rstl::string& name);
    ~CDeathCameraEffect() {}

    void PreThink(float, CStateManager& mgr) override;
    void Think(float, CStateManager& mgr) override;
    void Accept(IVisitor& visitor) override;

  private:
    uint x34_startFadeTime;
    uint x38_fadeDuration;
    uint x3c_reverseFadeDuration;
    uint x40_totalFadeDuration;
    uint x44_currentTime;
  };

  CFireFlea(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
            const CTransform4f& xf, const CModelData& mData, const CActorParameters& actParams,
            const CPatternedInfo& pInfo, float f1);

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;

  bool HearShot(CStateManager& mgr, float arg) override;
  void Patrol(CStateManager& mgr, EStateMsg msg, float arg) override;

private:
  CVector3f AdjustMovementVec(CStateManager& mgr, const CVector3f& forward);
  bool MoveTooCloseToWater(CStateManager& mgr, const CVector3f& forward);
  const bool HeardShot() const { return !(x570_nearList.size() <= 0); }
  float x568_;
  float x56c_;
  TEntityList x570_nearList;
  CVector3f xd74_;
  CVector3f xd80_targetPos;
  CPathFindSearch xd8c_pathFind;

  static int sLightIdx;
};

#endif // _CFIREFLEA
