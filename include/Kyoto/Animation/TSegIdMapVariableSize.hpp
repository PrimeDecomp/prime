#ifndef _TSEGIDMAPVARIABLESIZE
#define _TSEGIDMAPVARIABLESIZE

#include "Kyoto/Animation/CSegId.hpp"
#include <rstl/pair.hpp>
#include <rstl/reserved_vector.hpp>
#include <rstl/single_ptr.hpp>

template < typename T >
struct TSegIdMapVariableSize {
public:
  typedef rstl::pair< signed char, signed char > link_node;
  TSegIdMapVariableSize(uchar count)
  : mNextId(0), mCount(count), mLinks(link_node(0xFF, 0xFF)), mItems(nullptr), mLastInserted(0) {
    mItems = reinterpret_cast< T* >(rs_new uchar[count * sizeof(T)]);
  }
  ~TSegIdMapVariableSize() { delete mItems; }

  void Clear();

  void Insert(const CSegId& seg, const T& item);

  const T& GetElementAt(const CSegId& seg) const { return mItems[(uchar)mLinks[seg.val()].second]; }

  bool ContainsDataFor(const CSegId& seg) const {
    return !(mLinks[seg.val()] == link_node(-1, -1));
  }

private:
  uchar mNextId;
  uchar mCount;
  rstl::reserved_vector< link_node, 100 > mLinks;
  T* mItems;
  uchar mLastInserted;
};

template < typename T >
void TSegIdMapVariableSize< T >::Clear() {
  uchar cur = mLastInserted;

  while (cur) {
    uchar tmp = cur;
    cur = mLinks[cur].first;
    mLinks[tmp] = link_node(-1, -1);
  }
  mLastInserted = 0;
  mNextId = 0;
}

template < typename T >
void TSegIdMapVariableSize< T >::Insert(const CSegId& seg, const T& item) {
  new (&mItems[mNextId]) T(item);
  mLinks[mNextId] = link_node(mLastInserted, mNextId);
  mLastInserted = seg.val();
  mNextId++;
}
#endif // _TSEGIDMAPVARIABLESIZE
