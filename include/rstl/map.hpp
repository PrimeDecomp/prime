#ifndef _RSTL_MAP
#define _RSTL_MAP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/red_black_tree.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename K, typename V, typename Cmp = less< K >, typename Alloc = rmemory_allocator >
class map {
public:
  typedef pair< K, V > value_type;

private:
  // TODO: some things use a 0, others use a 1
  typedef red_black_tree< K, value_type, 0, select1st< value_type >, Cmp, Alloc > rep_type;

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

typedef map< char, char > unk_map;
CHECK_SIZEOF(unk_map, 0x14)
} // namespace rstl

#endif // _RSTL_MAP
