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
  ~TSegIdMapVariableSize() {
    uchar cur = mLastInserted;
    while (cur) {
      cur = mLinks[cur].first;
    }
    delete mItems;
  }

  void Clear();

  void Insert(const CSegId& seg, const T& item);

  T& AccessElement(const uchar idx) { return mItems[idx]; }
  const T& AccessElement(const uchar idx) const { return mItems[idx]; }
  const T& GetElementAt(const CSegId& seg) const { return AccessElement(GetIdAfter(seg)); }

  bool ContainsDataFor(const CSegId& seg) const {
    return !(mLinks[seg.val()] == link_node(-1, -1));
  }

  uchar GetIdAfter(const CSegId& seg) const { return mLinks[seg.val()].second; }

private:
  char mNextId;
  char mCount;
  rstl::reserved_vector< link_node, 100 > mLinks;
  T* mItems;
  char mLastInserted;
};
template < typename T >
void TSegIdMapVariableSize< T >::Clear() {
  for (uchar cur = mLastInserted; cur != 0;) {
    const uchar prev = cur;
    cur = mLinks[prev].first;
    mLinks[prev] = link_node(-1, -1);
  }
  mLastInserted = 0;
  mNextId = 0;
}

template < typename T >
void TSegIdMapVariableSize< T >::Insert(const CSegId& seg, const T& item) {
  uchar tmp = seg.val();
  T* element = &mItems[mNextId];
  new (element) T(item);
  mLinks[tmp] = link_node(mLastInserted, mNextId);
  mLastInserted = tmp;
  ++mNextId;
}
#endif // _TSEGIDMAPVARIABLESIZE
