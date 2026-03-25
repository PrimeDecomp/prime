#ifndef _CSEGSTATEMENTSET
#define _CSEGSTATEMENTSET

#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Animation/CSegStatement.hpp"

class CSegStatementSet {
public:
  CSegStatementSet(void* ptr);
  inline virtual ~CSegStatementSet() {}

  CSegStatement& operator[](const CSegId& id) { return mSegData[id.val()]; }
  const CSegStatement& operator[](const CSegId& id) const { return mSegData[id.val()]; }

protected:
  CSegStatement* mSegData;
};

class CStackSegStatementSet : public CSegStatementSet {
public:
  CStackSegStatementSet();
  ~CStackSegStatementSet();
};

#endif // _CSEGSTATEMENTSET
