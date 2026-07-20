#ifndef _CSEGIDLIST
#define _CSEGIDLIST

#include "Kyoto/Animation/CSegId.hpp"
#include "rstl/vector.hpp"

class CInputStream;
class CSegIdList {
public:
  typedef rstl::vector< CSegId >::const_iterator const_iterator;
  typedef rstl::vector< CSegId >::iterator iterator;
  typedef rstl::vector< CSegId >::size_type size_type;
  typedef rstl::vector< CSegId >::value_type value_type;

  CSegIdList(CInputStream& in);

  const CSegId& operator[](int idx) const { return mSegIds[idx]; }

  size_type size() const { return mSegIds.size(); }
  size_t Size() const { return mSegIds.size(); }

  iterator begin() { return mSegIds.begin(); }
  const_iterator begin() const { return mSegIds.begin(); }
  iterator end() { return mSegIds.end(); }
  const_iterator end() const { return mSegIds.end(); }

private:
  rstl::vector< CSegId > mSegIds;
};

#endif // _CSEGIDLIST
