#ifndef _CSEGSTATEMENTSET
#define _CSEGSTATEMENTSET

#include "CCharLayoutInfo.hpp"
#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Animation/CSegStatement.hpp"

class CSegStatementSet {
public:
  CSegStatementSet(void* ptr);
  inline virtual ~CSegStatementSet() {}

  CSegStatement& operator[](const CSegId& id) { return mSegData[id.val()]; }
  const CSegStatement& operator[](const CSegId& id) const { return mSegData[id.val()]; }

  void Set(const CSegId& id, const CSegStatement& seg);
  
  void Set(const CSegId& id, const CVector3f& vec) {
    mSegData[id.val()].Set(vec);
  }

  void Add(const CSegIdList& list, const CCharLayoutInfo& info, const CSegStatementSet& set,
           float weight);

protected:
  CSegStatement* mSegData;
};

class CStackSegStatementSet : public CSegStatementSet {
public:
  CStackSegStatementSet();
  ~CStackSegStatementSet();
};

#endif // _CSEGSTATEMENTSET
