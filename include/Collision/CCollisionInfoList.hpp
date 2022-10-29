#ifndef _CCOLLISIONINFOLIST
#define _CCOLLISIONINFOLIST

#include "Collision/CCollisionInfo.hpp"

#include "rstl/reserved_vector.hpp"

class CCollisionInfoList {
  rstl::reserved_vector< CCollisionInfo, 32 > x0_list;

public:
  typedef rstl::reserved_vector< CCollisionInfo, 32 >::iterator iterator;
  typedef rstl::reserved_vector< CCollisionInfo, 32 >::const_iterator const_iterator;

  void Add(const CCollisionInfo& info, bool swap) {
    if (x0_list.size() == 32)
      return;
    if (!swap)
      x0_list.push_back(info);
    else
      x0_list.push_back(info.GetSwapped());
  }
  int GetCount() const { return x0_list.size(); }

  iterator End() { return x0_list.end(); }
  const_iterator End() const { return x0_list.end(); }
  iterator Begin() { return x0_list.begin(); }
  const_iterator Begin() const { return x0_list.begin(); }
};

#endif // _CCOLLISIONINFOLIST
