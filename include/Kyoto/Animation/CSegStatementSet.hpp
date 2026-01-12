#ifndef _CSEGSTATEMENTSET
#define _CSEGSTATEMENTSET

#include "Kyoto/Animation/CSegStatement.hpp"

class CSegStatementSet {
public:
  CSegStatementSet(void* ptr);
  inline virtual ~CSegStatementSet() {}

protected:
  CSegStatement* mSegData;
};

class CStackSegStatementSet : public CSegStatementSet {
public:
  CStackSegStatementSet();
  ~CStackSegStatementSet();
};

#endif // _CSEGSTATEMENTSET
