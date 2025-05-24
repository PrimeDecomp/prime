#ifndef _CSCRIPTSPIDERBALLWAYPOINT
#define _CSCRIPTSPIDERBALLWAYPOINT

#include "MetroidPrime/CActor.hpp"

class CScriptSpiderBallWaypoint : public CActor {
public:
  CScriptSpiderBallWaypoint(TUniqueId, const rstl::string&, const CEntityInfo&,
                            const CTransform4f& xf, const bool active, uint w1);

  void ClearWaypoints();
  void BuildWaypointListAndBounds(CStateManager& mgr);

private:
  enum ECheckActiveWaypoint {
    kCAW_Check,
    kCAW_SkipCheck,
  };

  uint xe8_;
  rstl::vector< TUniqueId > xec_waypoints;
  rstl::optional_object< CAABox > xfc_aabox;
};

#endif // _CSCRIPTSPIDERBALLWAYPOINT
