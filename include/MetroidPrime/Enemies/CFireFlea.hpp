#ifndef _CFIREFLEA
#define _CFIREFLEA

#include "Kyoto/Graphics/CColor.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

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
    void Accept(IVisitor& visitor);

  private:
    uint x34_;
    uint x38_;
    uint x3c_;
    uint x40_;
    uint x44_;
  };
};

#endif // _CFIREFLEA
