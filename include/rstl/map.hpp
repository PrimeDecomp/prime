#ifndef _RSTL_MAP
#define _RSTL_MAP

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/red_black_tree.hpp"
#include "rstl/allocator.hpp"
namespace rstl {
template < typename K, typename V, typename Cmp = less< K >, typename Alloc = rmemory_allocator >
class map {
public:
  typedef pair< K, V > value_type;

private:
  typedef red_black_tree< K, value_type, false, select1st< value_type >, Cmp, Alloc >
      rep_type;

public:
  typedef typename rep_type::iterator iterator;
  typedef typename rep_type::const_iterator const_iterator;

  explicit map(const Cmp& cmp = Cmp(), const Alloc& alloc = Alloc())
  : inner(select1st< value_type >(), cmp, alloc) {}
  map(CInputStream& in, const Cmp& cmp = Cmp(), const Alloc& alloc = Alloc())
  : inner(in, select1st< value_type >(), cmp, alloc) {}
  ~map() {}

  pair< iterator, bool > insert(const value_type& item) { return inner.insert(item); }

  iterator begin() { return inner.begin(); }
  iterator end() { return inner.end(); }
  const_iterator begin() const { return inner.begin(); }
  const_iterator end() const { return inner.end(); }
  int size() const { return inner.size(); }

  iterator find(const K& key) { return inner.find(key); }
  const_iterator find(const K& key) const { return inner.find(key); }

  iterator erase(iterator it) { return inner.erase(it); }
  int erase(const K& key) { return inner.erase(key); }
  void clear() { inner.clear(); }

private:
  rep_type inner;
};

typedef map< char, char > unk_map;
CHECK_SIZEOF(unk_map, 0x14)
} // namespace rstl

#endif // _RSTL_MAP
