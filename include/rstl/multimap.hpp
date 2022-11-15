#ifndef _RSTL_MULTIMAP
#define _RSTL_MULTIMAP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/red_black_tree.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename K, typename V, typename Cmp = less< K >, typename Alloc = rmemory_allocator >
class multimap {
public:
  typedef pair< K, V > value_type;

private:
  typedef red_black_tree< K, value_type, 1, select1st< value_type >, Cmp, Alloc > rep_type;

public:
  typedef typename rep_type::iterator iterator;
  typedef typename rep_type::const_iterator const_iterator;

  iterator insert(const value_type& item) { return inner.insert(item); }

  const_iterator begin() const { return inner.begin(); }
  const_iterator end() const { return inner.end(); }

  iterator find(const K& key) { return inner.find(key); }
  const_iterator find(const K& key) const { return inner.find(key); }

  void erase(iterator it) { inner.erase(it); }

  rep_type& get_inner() { return inner; }  // hack for CWeaponMgr inlining depth
private:
  rep_type inner;
};

typedef multimap< char, char > unk_multimap;
CHECK_SIZEOF(unk_multimap, 0x14)
} // namespace rstl

#endif // _RSTL_MULTIMAP
