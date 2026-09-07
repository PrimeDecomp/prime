#ifndef _CSEGSTATEMENTSET
#define _CSEGSTATEMENTSET

#include "CCharLayoutInfo.hpp"
#include "Kyoto/Animation/CSegId.hpp"
#include "Kyoto/Animation/CSegStatement.hpp"

class CSegStatementSet {
public:
  virtual ~CSegStatementSet() = 0;
  CSegStatementSet(void* ptr);

  CSegStatement& operator[](const CSegId& id) { return mSegData[id.val()]; }
  const CSegStatement& operator[](const CSegId& id) const { return mSegData[id.val()]; }

  CSegStatement& Statement(const CSegId& id) { return mSegData[id.val()]; }
  const CSegStatement& GetData(const CSegId& id) const { return mSegData[id.val()]; }
  void Set(const CSegId& id, const CQuaternion& rotation) { Statement(id).Set(rotation); }
  void Set(const CSegId& id, const CSegStatement& seg) { Statement(id) = seg; }

  void Set(const CSegId& id, const CVector3f& vec) { mSegData[id.val()].Set(vec); }

  void Add(const CSegIdList& list, const CCharLayoutInfo& info, const CSegStatementSet& set,
           float weight);

protected:
  CSegStatement* mSegData;
};
CHECK_SIZEOF(CSegStatementSet, 0x8)

inline CSegStatementSet::~CSegStatementSet() {}

class CStackSegStatementSet : public CSegStatementSet {
public:
  ~CStackSegStatementSet() override;
  CStackSegStatementSet();
};
CHECK_SIZEOF(CStackSegStatementSet, 0x8)

#endif // _CSEGSTATEMENTSET
