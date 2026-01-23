#ifndef _CTEAMAIMGR_HPP
#define _CTEAMAIMGR_HPP
#include "MetroidPrime/CEntity.hpp"

class CTeamAiMgr : public CEntity {
  void GetTeamAiRole(const CStateManager& mgr, TUniqueId teamMgrId, TUniqueId memberId) const;
};
#endif
